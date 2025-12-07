uint64_t closure #76 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterFunctionStmt = type metadata accessor for PgQuery_AlterFunctionStmt(0);
  v6 = *(AlterFunctionStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterFunctionStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterFunctionStmt;
  v33 = AlterFunctionStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 75)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterFunctionStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterFunctionStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFunctionStmt and conformance PgQuery_AlterFunctionStmt, type metadata accessor for PgQuery_AlterFunctionStmt, &protocol conformance descriptor for PgQuery_AlterFunctionStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterFunctionStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterFunctionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #77 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  DoStmt = type metadata accessor for PgQuery_DoStmt(0);
  v6 = *(DoStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](DoStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = DoStmt;
  v33 = DoStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 76)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_DoStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_DoStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DoStmt and conformance PgQuery_DoStmt, type metadata accessor for PgQuery_DoStmt, &protocol conformance descriptor for PgQuery_DoStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_DoStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_DoStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #78 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  RenameStmt = type metadata accessor for PgQuery_RenameStmt(0);
  v6 = *(RenameStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](RenameStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = RenameStmt;
  v33 = RenameStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 77)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_RenameStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_RenameStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RenameStmt and conformance PgQuery_RenameStmt, type metadata accessor for PgQuery_RenameStmt, &protocol conformance descriptor for PgQuery_RenameStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_RenameStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_RenameStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #79 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  RuleStmt = type metadata accessor for PgQuery_RuleStmt(0);
  v6 = *(RuleStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](RuleStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = RuleStmt;
  v33 = RuleStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 78)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_RuleStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_RuleStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RuleStmt and conformance PgQuery_RuleStmt, type metadata accessor for PgQuery_RuleStmt, &protocol conformance descriptor for PgQuery_RuleStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_RuleStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_RuleStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #80 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  NotifyStmt = type metadata accessor for PgQuery_NotifyStmt(0);
  v6 = *(NotifyStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](NotifyStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = NotifyStmt;
  v33 = NotifyStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 79)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_NotifyStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_NotifyStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NotifyStmt and conformance PgQuery_NotifyStmt, type metadata accessor for PgQuery_NotifyStmt, &protocol conformance descriptor for PgQuery_NotifyStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_NotifyStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_NotifyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #81 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  ListenStmt = type metadata accessor for PgQuery_ListenStmt(0);
  v6 = *(ListenStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](ListenStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = ListenStmt;
  v33 = ListenStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 80)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_ListenStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_ListenStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ListenStmt and conformance PgQuery_ListenStmt, type metadata accessor for PgQuery_ListenStmt, &protocol conformance descriptor for PgQuery_ListenStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_ListenStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_ListenStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #82 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  UnlistenStmt = type metadata accessor for PgQuery_UnlistenStmt(0);
  v6 = *(UnlistenStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](UnlistenStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = UnlistenStmt;
  v33 = UnlistenStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 81)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_UnlistenStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_UnlistenStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UnlistenStmt and conformance PgQuery_UnlistenStmt, type metadata accessor for PgQuery_UnlistenStmt, &protocol conformance descriptor for PgQuery_UnlistenStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_UnlistenStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_UnlistenStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #83 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  TransactionStmt = type metadata accessor for PgQuery_TransactionStmt(0);
  v6 = *(TransactionStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](TransactionStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = TransactionStmt;
  v33 = TransactionStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 82)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_TransactionStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_TransactionStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TransactionStmt and conformance PgQuery_TransactionStmt, type metadata accessor for PgQuery_TransactionStmt, &protocol conformance descriptor for PgQuery_TransactionStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_TransactionStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_TransactionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #84 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  ViewStmt = type metadata accessor for PgQuery_ViewStmt(0);
  v6 = *(ViewStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](ViewStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = ViewStmt;
  v33 = ViewStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 83)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_ViewStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_ViewStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ViewStmt and conformance PgQuery_ViewStmt, type metadata accessor for PgQuery_ViewStmt, &protocol conformance descriptor for PgQuery_ViewStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_ViewStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_ViewStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #85 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  LoadStmt = type metadata accessor for PgQuery_LoadStmt(0);
  v6 = *(LoadStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](LoadStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = LoadStmt;
  v33 = LoadStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 84)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_LoadStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_LoadStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LoadStmt and conformance PgQuery_LoadStmt, type metadata accessor for PgQuery_LoadStmt, &protocol conformance descriptor for PgQuery_LoadStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_LoadStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_LoadStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #86 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  DomainStmt = type metadata accessor for PgQuery_CreateDomainStmt(0);
  v6 = *(DomainStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](DomainStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = DomainStmt;
  v33 = DomainStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 85)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateDomainStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateDomainStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateDomainStmt and conformance PgQuery_CreateDomainStmt, type metadata accessor for PgQuery_CreateDomainStmt, &protocol conformance descriptor for PgQuery_CreateDomainStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateDomainStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateDomainStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #87 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  CreatedbStmt = type metadata accessor for PgQuery_CreatedbStmt(0);
  v6 = *(CreatedbStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](CreatedbStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = CreatedbStmt;
  v33 = CreatedbStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 86)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreatedbStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreatedbStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatedbStmt and conformance PgQuery_CreatedbStmt, type metadata accessor for PgQuery_CreatedbStmt, &protocol conformance descriptor for PgQuery_CreatedbStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreatedbStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreatedbStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #88 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  DropdbStmt = type metadata accessor for PgQuery_DropdbStmt(0);
  v6 = *(DropdbStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](DropdbStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = DropdbStmt;
  v33 = DropdbStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 87)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_DropdbStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_DropdbStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropdbStmt and conformance PgQuery_DropdbStmt, type metadata accessor for PgQuery_DropdbStmt, &protocol conformance descriptor for PgQuery_DropdbStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_DropdbStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_DropdbStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #89 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  VacuumStmt = type metadata accessor for PgQuery_VacuumStmt(0);
  v6 = *(VacuumStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](VacuumStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = VacuumStmt;
  v33 = VacuumStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 88)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_VacuumStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_VacuumStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumStmt and conformance PgQuery_VacuumStmt, type metadata accessor for PgQuery_VacuumStmt, &protocol conformance descriptor for PgQuery_VacuumStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_VacuumStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_VacuumStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #90 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  ExplainStmt = type metadata accessor for PgQuery_ExplainStmt(0);
  v6 = *(ExplainStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](ExplainStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = ExplainStmt;
  v33 = ExplainStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 89)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_ExplainStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_ExplainStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExplainStmt and conformance PgQuery_ExplainStmt, type metadata accessor for PgQuery_ExplainStmt, &protocol conformance descriptor for PgQuery_ExplainStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_ExplainStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_ExplainStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #91 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  TableAsStmt = type metadata accessor for PgQuery_CreateTableAsStmt(0);
  v6 = *(TableAsStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](TableAsStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = TableAsStmt;
  v33 = TableAsStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 90)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateTableAsStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateTableAsStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableAsStmt and conformance PgQuery_CreateTableAsStmt, type metadata accessor for PgQuery_CreateTableAsStmt, &protocol conformance descriptor for PgQuery_CreateTableAsStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateTableAsStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateTableAsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #92 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  SeqStmt = type metadata accessor for PgQuery_CreateSeqStmt(0);
  v6 = *(SeqStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](SeqStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = SeqStmt;
  v33 = SeqStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 91)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateSeqStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateSeqStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSeqStmt and conformance PgQuery_CreateSeqStmt, type metadata accessor for PgQuery_CreateSeqStmt, &protocol conformance descriptor for PgQuery_CreateSeqStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateSeqStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateSeqStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #93 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterSeqStmt = type metadata accessor for PgQuery_AlterSeqStmt(0);
  v6 = *(AlterSeqStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterSeqStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterSeqStmt;
  v33 = AlterSeqStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 92)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterSeqStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterSeqStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSeqStmt and conformance PgQuery_AlterSeqStmt, type metadata accessor for PgQuery_AlterSeqStmt, &protocol conformance descriptor for PgQuery_AlterSeqStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterSeqStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterSeqStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #94 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v6 = *(VariableSetStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](VariableSetStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = VariableSetStmt;
  v33 = VariableSetStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 93)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_VariableSetStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_VariableSetStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_VariableSetStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_VariableSetStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #95 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  VariableShowStmt = type metadata accessor for PgQuery_VariableShowStmt(0);
  v6 = *(VariableShowStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](VariableShowStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = VariableShowStmt;
  v33 = VariableShowStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 94)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_VariableShowStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_VariableShowStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableShowStmt and conformance PgQuery_VariableShowStmt, type metadata accessor for PgQuery_VariableShowStmt, &protocol conformance descriptor for PgQuery_VariableShowStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_VariableShowStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_VariableShowStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #96 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  DiscardStmt = type metadata accessor for PgQuery_DiscardStmt(0);
  v6 = *(DiscardStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](DiscardStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = DiscardStmt;
  v33 = DiscardStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 95)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_DiscardStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_DiscardStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DiscardStmt and conformance PgQuery_DiscardStmt, type metadata accessor for PgQuery_DiscardStmt, &protocol conformance descriptor for PgQuery_DiscardStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_DiscardStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_DiscardStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #97 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  TrigStmt = type metadata accessor for PgQuery_CreateTrigStmt(0);
  v6 = *(TrigStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](TrigStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = TrigStmt;
  v33 = TrigStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 96)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateTrigStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateTrigStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTrigStmt and conformance PgQuery_CreateTrigStmt, type metadata accessor for PgQuery_CreateTrigStmt, &protocol conformance descriptor for PgQuery_CreateTrigStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateTrigStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateTrigStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #98 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  PLangStmt = type metadata accessor for PgQuery_CreatePLangStmt(0);
  v6 = *(PLangStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](PLangStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = PLangStmt;
  v33 = PLangStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 97)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreatePLangStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreatePLangStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePLangStmt and conformance PgQuery_CreatePLangStmt, type metadata accessor for PgQuery_CreatePLangStmt, &protocol conformance descriptor for PgQuery_CreatePLangStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreatePLangStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreatePLangStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #99 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  RoleStmt = type metadata accessor for PgQuery_CreateRoleStmt(0);
  v6 = *(RoleStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](RoleStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = RoleStmt;
  v33 = RoleStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 98)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateRoleStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateRoleStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRoleStmt and conformance PgQuery_CreateRoleStmt, type metadata accessor for PgQuery_CreateRoleStmt, &protocol conformance descriptor for PgQuery_CreateRoleStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateRoleStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateRoleStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #100 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterRoleStmt = type metadata accessor for PgQuery_AlterRoleStmt(0);
  v6 = *(AlterRoleStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterRoleStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterRoleStmt;
  v33 = AlterRoleStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 99)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterRoleStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterRoleStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleStmt and conformance PgQuery_AlterRoleStmt, type metadata accessor for PgQuery_AlterRoleStmt, &protocol conformance descriptor for PgQuery_AlterRoleStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterRoleStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterRoleStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #101 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  DropRoleStmt = type metadata accessor for PgQuery_DropRoleStmt(0);
  v6 = *(DropRoleStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](DropRoleStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = DropRoleStmt;
  v33 = DropRoleStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 100)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_DropRoleStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_DropRoleStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropRoleStmt and conformance PgQuery_DropRoleStmt, type metadata accessor for PgQuery_DropRoleStmt, &protocol conformance descriptor for PgQuery_DropRoleStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_DropRoleStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_DropRoleStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #102 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  LockStmt = type metadata accessor for PgQuery_LockStmt(0);
  v6 = *(LockStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](LockStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = LockStmt;
  v33 = LockStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 101)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_LockStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_LockStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockStmt and conformance PgQuery_LockStmt, type metadata accessor for PgQuery_LockStmt, &protocol conformance descriptor for PgQuery_LockStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_LockStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_LockStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #103 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  ConstraintsSetStmt = type metadata accessor for PgQuery_ConstraintsSetStmt(0);
  v6 = *(ConstraintsSetStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](ConstraintsSetStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = ConstraintsSetStmt;
  v33 = ConstraintsSetStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 102)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_ConstraintsSetStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_ConstraintsSetStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConstraintsSetStmt and conformance PgQuery_ConstraintsSetStmt, type metadata accessor for PgQuery_ConstraintsSetStmt, &protocol conformance descriptor for PgQuery_ConstraintsSetStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_ConstraintsSetStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_ConstraintsSetStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #104 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  ReindexStmt = type metadata accessor for PgQuery_ReindexStmt(0);
  v6 = *(ReindexStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](ReindexStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = ReindexStmt;
  v33 = ReindexStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 103)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_ReindexStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_ReindexStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReindexStmt and conformance PgQuery_ReindexStmt, type metadata accessor for PgQuery_ReindexStmt, &protocol conformance descriptor for PgQuery_ReindexStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_ReindexStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_ReindexStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #105 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for PgQuery_CheckPointStmt(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 104)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CheckPointStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CheckPointStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CheckPointStmt and conformance PgQuery_CheckPointStmt, type metadata accessor for PgQuery_CheckPointStmt, &protocol conformance descriptor for PgQuery_CheckPointStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CheckPointStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CheckPointStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #106 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  SchemaStmt = type metadata accessor for PgQuery_CreateSchemaStmt(0);
  v6 = *(SchemaStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](SchemaStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = SchemaStmt;
  v33 = SchemaStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 105)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateSchemaStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateSchemaStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSchemaStmt and conformance PgQuery_CreateSchemaStmt, type metadata accessor for PgQuery_CreateSchemaStmt, &protocol conformance descriptor for PgQuery_CreateSchemaStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateSchemaStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateSchemaStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #107 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterDatabaseStmt = type metadata accessor for PgQuery_AlterDatabaseStmt(0);
  v6 = *(AlterDatabaseStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterDatabaseStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterDatabaseStmt;
  v33 = AlterDatabaseStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 106)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterDatabaseStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterDatabaseStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseStmt and conformance PgQuery_AlterDatabaseStmt, type metadata accessor for PgQuery_AlterDatabaseStmt, &protocol conformance descriptor for PgQuery_AlterDatabaseStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterDatabaseStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterDatabaseStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #108 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterDatabaseSetStmt = type metadata accessor for PgQuery_AlterDatabaseSetStmt(0);
  v6 = *(AlterDatabaseSetStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterDatabaseSetStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterDatabaseSetStmt;
  v33 = AlterDatabaseSetStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 107)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterDatabaseSetStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterDatabaseSetStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseSetStmt and conformance PgQuery_AlterDatabaseSetStmt, type metadata accessor for PgQuery_AlterDatabaseSetStmt, &protocol conformance descriptor for PgQuery_AlterDatabaseSetStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterDatabaseSetStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterDatabaseSetStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #109 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterRoleSetStmt = type metadata accessor for PgQuery_AlterRoleSetStmt(0);
  v6 = *(AlterRoleSetStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterRoleSetStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterRoleSetStmt;
  v33 = AlterRoleSetStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 108)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterRoleSetStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterRoleSetStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleSetStmt and conformance PgQuery_AlterRoleSetStmt, type metadata accessor for PgQuery_AlterRoleSetStmt, &protocol conformance descriptor for PgQuery_AlterRoleSetStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterRoleSetStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterRoleSetStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #110 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  ConversionStmt = type metadata accessor for PgQuery_CreateConversionStmt(0);
  v6 = *(ConversionStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](ConversionStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = ConversionStmt;
  v33 = ConversionStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 109)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateConversionStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateConversionStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateConversionStmt and conformance PgQuery_CreateConversionStmt, type metadata accessor for PgQuery_CreateConversionStmt, &protocol conformance descriptor for PgQuery_CreateConversionStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateConversionStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateConversionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #111 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  CastStmt = type metadata accessor for PgQuery_CreateCastStmt(0);
  v6 = *(CastStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](CastStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = CastStmt;
  v33 = CastStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 110)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateCastStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateCastStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateCastStmt and conformance PgQuery_CreateCastStmt, type metadata accessor for PgQuery_CreateCastStmt, &protocol conformance descriptor for PgQuery_CreateCastStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateCastStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateCastStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #112 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  OpClassStmt = type metadata accessor for PgQuery_CreateOpClassStmt(0);
  v6 = *(OpClassStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](OpClassStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = OpClassStmt;
  v33 = OpClassStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 111)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateOpClassStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateOpClassStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassStmt and conformance PgQuery_CreateOpClassStmt, type metadata accessor for PgQuery_CreateOpClassStmt, &protocol conformance descriptor for PgQuery_CreateOpClassStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateOpClassStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateOpClassStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #113 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  OpFamilyStmt = type metadata accessor for PgQuery_CreateOpFamilyStmt(0);
  v6 = *(OpFamilyStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](OpFamilyStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = OpFamilyStmt;
  v33 = OpFamilyStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 112)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateOpFamilyStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateOpFamilyStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpFamilyStmt and conformance PgQuery_CreateOpFamilyStmt, type metadata accessor for PgQuery_CreateOpFamilyStmt, &protocol conformance descriptor for PgQuery_CreateOpFamilyStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateOpFamilyStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateOpFamilyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #114 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterOpFamilyStmt = type metadata accessor for PgQuery_AlterOpFamilyStmt(0);
  v6 = *(AlterOpFamilyStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterOpFamilyStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterOpFamilyStmt;
  v33 = AlterOpFamilyStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 113)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterOpFamilyStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterOpFamilyStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOpFamilyStmt and conformance PgQuery_AlterOpFamilyStmt, type metadata accessor for PgQuery_AlterOpFamilyStmt, &protocol conformance descriptor for PgQuery_AlterOpFamilyStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterOpFamilyStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterOpFamilyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #115 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  PrepareStmt = type metadata accessor for PgQuery_PrepareStmt(0);
  v6 = *(PrepareStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](PrepareStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = PrepareStmt;
  v33 = PrepareStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 114)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_PrepareStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_PrepareStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PrepareStmt and conformance PgQuery_PrepareStmt, type metadata accessor for PgQuery_PrepareStmt, &protocol conformance descriptor for PgQuery_PrepareStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_PrepareStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_PrepareStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #116 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  ExecuteStmt = type metadata accessor for PgQuery_ExecuteStmt(0);
  v6 = *(ExecuteStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](ExecuteStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = ExecuteStmt;
  v33 = ExecuteStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 115)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_ExecuteStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_ExecuteStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExecuteStmt and conformance PgQuery_ExecuteStmt, type metadata accessor for PgQuery_ExecuteStmt, &protocol conformance descriptor for PgQuery_ExecuteStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_ExecuteStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_ExecuteStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #117 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  DeallocateStmt = type metadata accessor for PgQuery_DeallocateStmt(0);
  v6 = *(DeallocateStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](DeallocateStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = DeallocateStmt;
  v33 = DeallocateStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 116)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_DeallocateStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_DeallocateStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeallocateStmt and conformance PgQuery_DeallocateStmt, type metadata accessor for PgQuery_DeallocateStmt, &protocol conformance descriptor for PgQuery_DeallocateStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_DeallocateStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_DeallocateStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #118 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  DeclareCursorStmt = type metadata accessor for PgQuery_DeclareCursorStmt(0);
  v6 = *(DeclareCursorStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](DeclareCursorStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = DeclareCursorStmt;
  v33 = DeclareCursorStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 117)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_DeclareCursorStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_DeclareCursorStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeclareCursorStmt and conformance PgQuery_DeclareCursorStmt, type metadata accessor for PgQuery_DeclareCursorStmt, &protocol conformance descriptor for PgQuery_DeclareCursorStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_DeclareCursorStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_DeclareCursorStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #119 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  TableSpaceStmt = type metadata accessor for PgQuery_CreateTableSpaceStmt(0);
  v6 = *(TableSpaceStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](TableSpaceStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = TableSpaceStmt;
  v33 = TableSpaceStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 118)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateTableSpaceStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateTableSpaceStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableSpaceStmt and conformance PgQuery_CreateTableSpaceStmt, type metadata accessor for PgQuery_CreateTableSpaceStmt, &protocol conformance descriptor for PgQuery_CreateTableSpaceStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateTableSpaceStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateTableSpaceStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #120 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  DropTableSpaceStmt = type metadata accessor for PgQuery_DropTableSpaceStmt(0);
  v6 = *(DropTableSpaceStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](DropTableSpaceStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = DropTableSpaceStmt;
  v33 = DropTableSpaceStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 119)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_DropTableSpaceStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_DropTableSpaceStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropTableSpaceStmt and conformance PgQuery_DropTableSpaceStmt, type metadata accessor for PgQuery_DropTableSpaceStmt, &protocol conformance descriptor for PgQuery_DropTableSpaceStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_DropTableSpaceStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_DropTableSpaceStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #121 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterObjectDependsStmt = type metadata accessor for PgQuery_AlterObjectDependsStmt(0);
  v6 = *(AlterObjectDependsStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterObjectDependsStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterObjectDependsStmt;
  v33 = AlterObjectDependsStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 120)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterObjectDependsStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterObjectDependsStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectDependsStmt and conformance PgQuery_AlterObjectDependsStmt, type metadata accessor for PgQuery_AlterObjectDependsStmt, &protocol conformance descriptor for PgQuery_AlterObjectDependsStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterObjectDependsStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterObjectDependsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #122 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterObjectSchemaStmt = type metadata accessor for PgQuery_AlterObjectSchemaStmt(0);
  v6 = *(AlterObjectSchemaStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterObjectSchemaStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterObjectSchemaStmt;
  v33 = AlterObjectSchemaStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 121)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterObjectSchemaStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterObjectSchemaStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectSchemaStmt and conformance PgQuery_AlterObjectSchemaStmt, type metadata accessor for PgQuery_AlterObjectSchemaStmt, &protocol conformance descriptor for PgQuery_AlterObjectSchemaStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterObjectSchemaStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterObjectSchemaStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #123 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterOwnerStmt = type metadata accessor for PgQuery_AlterOwnerStmt(0);
  v6 = *(AlterOwnerStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterOwnerStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterOwnerStmt;
  v33 = AlterOwnerStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 122)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterOwnerStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterOwnerStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOwnerStmt and conformance PgQuery_AlterOwnerStmt, type metadata accessor for PgQuery_AlterOwnerStmt, &protocol conformance descriptor for PgQuery_AlterOwnerStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterOwnerStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterOwnerStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #124 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterOperatorStmt = type metadata accessor for PgQuery_AlterOperatorStmt(0);
  v6 = *(AlterOperatorStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterOperatorStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterOperatorStmt;
  v33 = AlterOperatorStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 123)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterOperatorStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterOperatorStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOperatorStmt and conformance PgQuery_AlterOperatorStmt, type metadata accessor for PgQuery_AlterOperatorStmt, &protocol conformance descriptor for PgQuery_AlterOperatorStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterOperatorStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterOperatorStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #125 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterTypeStmt = type metadata accessor for PgQuery_AlterTypeStmt(0);
  v6 = *(AlterTypeStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterTypeStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterTypeStmt;
  v33 = AlterTypeStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 124)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterTypeStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterTypeStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTypeStmt and conformance PgQuery_AlterTypeStmt, type metadata accessor for PgQuery_AlterTypeStmt, &protocol conformance descriptor for PgQuery_AlterTypeStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterTypeStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterTypeStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #126 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  DropOwnedStmt = type metadata accessor for PgQuery_DropOwnedStmt(0);
  v6 = *(DropOwnedStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](DropOwnedStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = DropOwnedStmt;
  v33 = DropOwnedStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 125)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_DropOwnedStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_DropOwnedStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropOwnedStmt and conformance PgQuery_DropOwnedStmt, type metadata accessor for PgQuery_DropOwnedStmt, &protocol conformance descriptor for PgQuery_DropOwnedStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_DropOwnedStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_DropOwnedStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #127 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  ReassignOwnedStmt = type metadata accessor for PgQuery_ReassignOwnedStmt(0);
  v6 = *(ReassignOwnedStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](ReassignOwnedStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = ReassignOwnedStmt;
  v33 = ReassignOwnedStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 126)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_ReassignOwnedStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_ReassignOwnedStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReassignOwnedStmt and conformance PgQuery_ReassignOwnedStmt, type metadata accessor for PgQuery_ReassignOwnedStmt, &protocol conformance descriptor for PgQuery_ReassignOwnedStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_ReassignOwnedStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_ReassignOwnedStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #128 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  CompositeTypeStmt = type metadata accessor for PgQuery_CompositeTypeStmt(0);
  v6 = *(CompositeTypeStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](CompositeTypeStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = CompositeTypeStmt;
  v33 = CompositeTypeStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 127)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CompositeTypeStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CompositeTypeStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CompositeTypeStmt and conformance PgQuery_CompositeTypeStmt, type metadata accessor for PgQuery_CompositeTypeStmt, &protocol conformance descriptor for PgQuery_CompositeTypeStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CompositeTypeStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CompositeTypeStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #129 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  EnumStmt = type metadata accessor for PgQuery_CreateEnumStmt(0);
  v6 = *(EnumStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](EnumStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = EnumStmt;
  v33 = EnumStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 128)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateEnumStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateEnumStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEnumStmt and conformance PgQuery_CreateEnumStmt, type metadata accessor for PgQuery_CreateEnumStmt, &protocol conformance descriptor for PgQuery_CreateEnumStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateEnumStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateEnumStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #130 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  RangeStmt = type metadata accessor for PgQuery_CreateRangeStmt(0);
  v6 = *(RangeStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](RangeStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = RangeStmt;
  v33 = RangeStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 129)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateRangeStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateRangeStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRangeStmt and conformance PgQuery_CreateRangeStmt, type metadata accessor for PgQuery_CreateRangeStmt, &protocol conformance descriptor for PgQuery_CreateRangeStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateRangeStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateRangeStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #131 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterEnumStmt = type metadata accessor for PgQuery_AlterEnumStmt(0);
  v6 = *(AlterEnumStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterEnumStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterEnumStmt;
  v33 = AlterEnumStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 130)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterEnumStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterEnumStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEnumStmt and conformance PgQuery_AlterEnumStmt, type metadata accessor for PgQuery_AlterEnumStmt, &protocol conformance descriptor for PgQuery_AlterEnumStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterEnumStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterEnumStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #132 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterTSDictionaryStmt = type metadata accessor for PgQuery_AlterTSDictionaryStmt(0);
  v6 = *(AlterTSDictionaryStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterTSDictionaryStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterTSDictionaryStmt;
  v33 = AlterTSDictionaryStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 131)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterTSDictionaryStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterTSDictionaryStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSDictionaryStmt and conformance PgQuery_AlterTSDictionaryStmt, type metadata accessor for PgQuery_AlterTSDictionaryStmt, &protocol conformance descriptor for PgQuery_AlterTSDictionaryStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterTSDictionaryStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterTSDictionaryStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #133 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterTSConfigurationStmt = type metadata accessor for PgQuery_AlterTSConfigurationStmt(0);
  v6 = *(AlterTSConfigurationStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterTSConfigurationStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterTSConfigurationStmt;
  v33 = AlterTSConfigurationStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 132)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterTSConfigurationStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterTSConfigurationStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSConfigurationStmt and conformance PgQuery_AlterTSConfigurationStmt, type metadata accessor for PgQuery_AlterTSConfigurationStmt, &protocol conformance descriptor for PgQuery_AlterTSConfigurationStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterTSConfigurationStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterTSConfigurationStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #134 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  FdwStmt = type metadata accessor for PgQuery_CreateFdwStmt(0);
  v6 = *(FdwStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](FdwStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = FdwStmt;
  v33 = FdwStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 133)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateFdwStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateFdwStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFdwStmt and conformance PgQuery_CreateFdwStmt, type metadata accessor for PgQuery_CreateFdwStmt, &protocol conformance descriptor for PgQuery_CreateFdwStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateFdwStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateFdwStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #135 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterFdwStmt = type metadata accessor for PgQuery_AlterFdwStmt(0);
  v6 = *(AlterFdwStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterFdwStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterFdwStmt;
  v33 = AlterFdwStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 134)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterFdwStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterFdwStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFdwStmt and conformance PgQuery_AlterFdwStmt, type metadata accessor for PgQuery_AlterFdwStmt, &protocol conformance descriptor for PgQuery_AlterFdwStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterFdwStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterFdwStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #136 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  ForeignServerStmt = type metadata accessor for PgQuery_CreateForeignServerStmt(0);
  v6 = *(ForeignServerStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](ForeignServerStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = ForeignServerStmt;
  v33 = ForeignServerStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 135)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateForeignServerStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateForeignServerStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignServerStmt and conformance PgQuery_CreateForeignServerStmt, type metadata accessor for PgQuery_CreateForeignServerStmt, &protocol conformance descriptor for PgQuery_CreateForeignServerStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateForeignServerStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateForeignServerStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #137 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterForeignServerStmt = type metadata accessor for PgQuery_AlterForeignServerStmt(0);
  v6 = *(AlterForeignServerStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterForeignServerStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterForeignServerStmt;
  v33 = AlterForeignServerStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 136)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterForeignServerStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterForeignServerStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterForeignServerStmt and conformance PgQuery_AlterForeignServerStmt, type metadata accessor for PgQuery_AlterForeignServerStmt, &protocol conformance descriptor for PgQuery_AlterForeignServerStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterForeignServerStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterForeignServerStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #138 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  UserMappingStmt = type metadata accessor for PgQuery_CreateUserMappingStmt(0);
  v6 = *(UserMappingStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](UserMappingStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = UserMappingStmt;
  v33 = UserMappingStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 137)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateUserMappingStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateUserMappingStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateUserMappingStmt and conformance PgQuery_CreateUserMappingStmt, type metadata accessor for PgQuery_CreateUserMappingStmt, &protocol conformance descriptor for PgQuery_CreateUserMappingStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateUserMappingStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateUserMappingStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #139 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterUserMappingStmt = type metadata accessor for PgQuery_AlterUserMappingStmt(0);
  v6 = *(AlterUserMappingStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterUserMappingStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterUserMappingStmt;
  v33 = AlterUserMappingStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 138)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterUserMappingStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterUserMappingStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterUserMappingStmt and conformance PgQuery_AlterUserMappingStmt, type metadata accessor for PgQuery_AlterUserMappingStmt, &protocol conformance descriptor for PgQuery_AlterUserMappingStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterUserMappingStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterUserMappingStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #140 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  DropUserMappingStmt = type metadata accessor for PgQuery_DropUserMappingStmt(0);
  v6 = *(DropUserMappingStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](DropUserMappingStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = DropUserMappingStmt;
  v33 = DropUserMappingStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 139)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_DropUserMappingStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_DropUserMappingStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropUserMappingStmt and conformance PgQuery_DropUserMappingStmt, type metadata accessor for PgQuery_DropUserMappingStmt, &protocol conformance descriptor for PgQuery_DropUserMappingStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_DropUserMappingStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_DropUserMappingStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #141 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterTableSpaceOptionsStmt = type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt(0);
  v6 = *(AlterTableSpaceOptionsStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterTableSpaceOptionsStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterTableSpaceOptionsStmt;
  v33 = AlterTableSpaceOptionsStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 140)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableSpaceOptionsStmt and conformance PgQuery_AlterTableSpaceOptionsStmt, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt, &protocol conformance descriptor for PgQuery_AlterTableSpaceOptionsStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #142 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterTableMoveAllStmt = type metadata accessor for PgQuery_AlterTableMoveAllStmt(0);
  v6 = *(AlterTableMoveAllStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterTableMoveAllStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterTableMoveAllStmt;
  v33 = AlterTableMoveAllStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 141)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterTableMoveAllStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterTableMoveAllStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableMoveAllStmt and conformance PgQuery_AlterTableMoveAllStmt, type metadata accessor for PgQuery_AlterTableMoveAllStmt, &protocol conformance descriptor for PgQuery_AlterTableMoveAllStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterTableMoveAllStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterTableMoveAllStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #143 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  SecLabelStmt = type metadata accessor for PgQuery_SecLabelStmt(0);
  v6 = *(SecLabelStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](SecLabelStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = SecLabelStmt;
  v33 = SecLabelStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 142)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_SecLabelStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_SecLabelStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SecLabelStmt and conformance PgQuery_SecLabelStmt, type metadata accessor for PgQuery_SecLabelStmt, &protocol conformance descriptor for PgQuery_SecLabelStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_SecLabelStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_SecLabelStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #144 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  ForeignTableStmt = type metadata accessor for PgQuery_CreateForeignTableStmt(0);
  v6 = *(ForeignTableStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](ForeignTableStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = ForeignTableStmt;
  v33 = ForeignTableStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 143)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateForeignTableStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateForeignTableStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignTableStmt and conformance PgQuery_CreateForeignTableStmt, type metadata accessor for PgQuery_CreateForeignTableStmt, &protocol conformance descriptor for PgQuery_CreateForeignTableStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateForeignTableStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateForeignTableStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #145 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  ImportForeignSchemaStmt = type metadata accessor for PgQuery_ImportForeignSchemaStmt(0);
  v6 = *(ImportForeignSchemaStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](ImportForeignSchemaStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = ImportForeignSchemaStmt;
  v33 = ImportForeignSchemaStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 144)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_ImportForeignSchemaStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_ImportForeignSchemaStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaStmt and conformance PgQuery_ImportForeignSchemaStmt, type metadata accessor for PgQuery_ImportForeignSchemaStmt, &protocol conformance descriptor for PgQuery_ImportForeignSchemaStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_ImportForeignSchemaStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_ImportForeignSchemaStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #146 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  ExtensionStmt = type metadata accessor for PgQuery_CreateExtensionStmt(0);
  v6 = *(ExtensionStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](ExtensionStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = ExtensionStmt;
  v33 = ExtensionStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 145)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateExtensionStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateExtensionStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateExtensionStmt and conformance PgQuery_CreateExtensionStmt, type metadata accessor for PgQuery_CreateExtensionStmt, &protocol conformance descriptor for PgQuery_CreateExtensionStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateExtensionStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateExtensionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #147 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterExtensionStmt = type metadata accessor for PgQuery_AlterExtensionStmt(0);
  v6 = *(AlterExtensionStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterExtensionStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterExtensionStmt;
  v33 = AlterExtensionStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 146)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterExtensionStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterExtensionStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionStmt and conformance PgQuery_AlterExtensionStmt, type metadata accessor for PgQuery_AlterExtensionStmt, &protocol conformance descriptor for PgQuery_AlterExtensionStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterExtensionStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterExtensionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #148 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterExtensionContentsStmt = type metadata accessor for PgQuery_AlterExtensionContentsStmt(0);
  v6 = *(AlterExtensionContentsStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterExtensionContentsStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterExtensionContentsStmt;
  v33 = AlterExtensionContentsStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 147)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterExtensionContentsStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterExtensionContentsStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionContentsStmt and conformance PgQuery_AlterExtensionContentsStmt, type metadata accessor for PgQuery_AlterExtensionContentsStmt, &protocol conformance descriptor for PgQuery_AlterExtensionContentsStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterExtensionContentsStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterExtensionContentsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #149 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  EventTrigStmt = type metadata accessor for PgQuery_CreateEventTrigStmt(0);
  v6 = *(EventTrigStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](EventTrigStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = EventTrigStmt;
  v33 = EventTrigStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 148)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateEventTrigStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateEventTrigStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEventTrigStmt and conformance PgQuery_CreateEventTrigStmt, type metadata accessor for PgQuery_CreateEventTrigStmt, &protocol conformance descriptor for PgQuery_CreateEventTrigStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateEventTrigStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateEventTrigStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #150 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterEventTrigStmt = type metadata accessor for PgQuery_AlterEventTrigStmt(0);
  v6 = *(AlterEventTrigStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterEventTrigStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterEventTrigStmt;
  v33 = AlterEventTrigStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 149)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterEventTrigStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterEventTrigStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEventTrigStmt and conformance PgQuery_AlterEventTrigStmt, type metadata accessor for PgQuery_AlterEventTrigStmt, &protocol conformance descriptor for PgQuery_AlterEventTrigStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterEventTrigStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterEventTrigStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #151 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  RefreshMatViewStmt = type metadata accessor for PgQuery_RefreshMatViewStmt(0);
  v6 = *(RefreshMatViewStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](RefreshMatViewStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = RefreshMatViewStmt;
  v33 = RefreshMatViewStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 150)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_RefreshMatViewStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_RefreshMatViewStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RefreshMatViewStmt and conformance PgQuery_RefreshMatViewStmt, type metadata accessor for PgQuery_RefreshMatViewStmt, &protocol conformance descriptor for PgQuery_RefreshMatViewStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_RefreshMatViewStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_RefreshMatViewStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #152 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  ReplicaIdentityStmt = type metadata accessor for PgQuery_ReplicaIdentityStmt(0);
  v6 = *(ReplicaIdentityStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](ReplicaIdentityStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = ReplicaIdentityStmt;
  v33 = ReplicaIdentityStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 151)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_ReplicaIdentityStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_ReplicaIdentityStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReplicaIdentityStmt and conformance PgQuery_ReplicaIdentityStmt, type metadata accessor for PgQuery_ReplicaIdentityStmt, &protocol conformance descriptor for PgQuery_ReplicaIdentityStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_ReplicaIdentityStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_ReplicaIdentityStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #153 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterSystemStmt = type metadata accessor for PgQuery_AlterSystemStmt(0);
  v6 = *(AlterSystemStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterSystemStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterSystemStmt;
  v33 = AlterSystemStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 152)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterSystemStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterSystemStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSystemStmt and conformance PgQuery_AlterSystemStmt, type metadata accessor for PgQuery_AlterSystemStmt, &protocol conformance descriptor for PgQuery_AlterSystemStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterSystemStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterSystemStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #154 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  PolicyStmt = type metadata accessor for PgQuery_CreatePolicyStmt(0);
  v6 = *(PolicyStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](PolicyStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = PolicyStmt;
  v33 = PolicyStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 153)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreatePolicyStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreatePolicyStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePolicyStmt and conformance PgQuery_CreatePolicyStmt, type metadata accessor for PgQuery_CreatePolicyStmt, &protocol conformance descriptor for PgQuery_CreatePolicyStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreatePolicyStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreatePolicyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #155 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterPolicyStmt = type metadata accessor for PgQuery_AlterPolicyStmt(0);
  v6 = *(AlterPolicyStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterPolicyStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterPolicyStmt;
  v33 = AlterPolicyStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 154)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterPolicyStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterPolicyStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPolicyStmt and conformance PgQuery_AlterPolicyStmt, type metadata accessor for PgQuery_AlterPolicyStmt, &protocol conformance descriptor for PgQuery_AlterPolicyStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterPolicyStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterPolicyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #156 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  TransformStmt = type metadata accessor for PgQuery_CreateTransformStmt(0);
  v6 = *(TransformStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](TransformStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = TransformStmt;
  v33 = TransformStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 155)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateTransformStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateTransformStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTransformStmt and conformance PgQuery_CreateTransformStmt, type metadata accessor for PgQuery_CreateTransformStmt, &protocol conformance descriptor for PgQuery_CreateTransformStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateTransformStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateTransformStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #157 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AmStmt = type metadata accessor for PgQuery_CreateAmStmt(0);
  v6 = *(AmStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AmStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AmStmt;
  v33 = AmStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 156)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateAmStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateAmStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateAmStmt and conformance PgQuery_CreateAmStmt, type metadata accessor for PgQuery_CreateAmStmt, &protocol conformance descriptor for PgQuery_CreateAmStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateAmStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateAmStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #158 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  PublicationStmt = type metadata accessor for PgQuery_CreatePublicationStmt(0);
  v6 = *(PublicationStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](PublicationStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = PublicationStmt;
  v33 = PublicationStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 157)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreatePublicationStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreatePublicationStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePublicationStmt and conformance PgQuery_CreatePublicationStmt, type metadata accessor for PgQuery_CreatePublicationStmt, &protocol conformance descriptor for PgQuery_CreatePublicationStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreatePublicationStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreatePublicationStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #159 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterPublicationStmt = type metadata accessor for PgQuery_AlterPublicationStmt(0);
  v6 = *(AlterPublicationStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterPublicationStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterPublicationStmt;
  v33 = AlterPublicationStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 158)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterPublicationStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterPublicationStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPublicationStmt and conformance PgQuery_AlterPublicationStmt, type metadata accessor for PgQuery_AlterPublicationStmt, &protocol conformance descriptor for PgQuery_AlterPublicationStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterPublicationStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterPublicationStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #160 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  SubscriptionStmt = type metadata accessor for PgQuery_CreateSubscriptionStmt(0);
  v6 = *(SubscriptionStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](SubscriptionStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = SubscriptionStmt;
  v33 = SubscriptionStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 159)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateSubscriptionStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateSubscriptionStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSubscriptionStmt and conformance PgQuery_CreateSubscriptionStmt, type metadata accessor for PgQuery_CreateSubscriptionStmt, &protocol conformance descriptor for PgQuery_CreateSubscriptionStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateSubscriptionStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateSubscriptionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #161 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterSubscriptionStmt = type metadata accessor for PgQuery_AlterSubscriptionStmt(0);
  v6 = *(AlterSubscriptionStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterSubscriptionStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterSubscriptionStmt;
  v33 = AlterSubscriptionStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 160)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterSubscriptionStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterSubscriptionStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionStmt and conformance PgQuery_AlterSubscriptionStmt, type metadata accessor for PgQuery_AlterSubscriptionStmt, &protocol conformance descriptor for PgQuery_AlterSubscriptionStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterSubscriptionStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterSubscriptionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #162 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  DropSubscriptionStmt = type metadata accessor for PgQuery_DropSubscriptionStmt(0);
  v6 = *(DropSubscriptionStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](DropSubscriptionStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = DropSubscriptionStmt;
  v33 = DropSubscriptionStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 161)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_DropSubscriptionStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_DropSubscriptionStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropSubscriptionStmt and conformance PgQuery_DropSubscriptionStmt, type metadata accessor for PgQuery_DropSubscriptionStmt, &protocol conformance descriptor for PgQuery_DropSubscriptionStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_DropSubscriptionStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_DropSubscriptionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #163 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  StatsStmt = type metadata accessor for PgQuery_CreateStatsStmt(0);
  v6 = *(StatsStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](StatsStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = StatsStmt;
  v33 = StatsStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 162)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CreateStatsStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CreateStatsStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStatsStmt and conformance PgQuery_CreateStatsStmt, type metadata accessor for PgQuery_CreateStatsStmt, &protocol conformance descriptor for PgQuery_CreateStatsStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CreateStatsStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CreateStatsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #164 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterCollationStmt = type metadata accessor for PgQuery_AlterCollationStmt(0);
  v6 = *(AlterCollationStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterCollationStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterCollationStmt;
  v33 = AlterCollationStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 163)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterCollationStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterCollationStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterCollationStmt and conformance PgQuery_AlterCollationStmt, type metadata accessor for PgQuery_AlterCollationStmt, &protocol conformance descriptor for PgQuery_AlterCollationStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterCollationStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterCollationStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #165 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for PgQuery_CallStmt(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 164)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_CallStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_CallStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallStmt and conformance PgQuery_CallStmt, type metadata accessor for PgQuery_CallStmt, &protocol conformance descriptor for PgQuery_CallStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_CallStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_CallStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #166 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  AlterStatsStmt = type metadata accessor for PgQuery_AlterStatsStmt(0);
  v6 = *(AlterStatsStmt - 8);
  v8 = MEMORY[0x1EEE9AC00](AlterStatsStmt, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = AlterStatsStmt;
  v33 = AlterStatsStmt;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 165)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_AlterStatsStmt);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_AlterStatsStmt);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterStatsStmt and conformance PgQuery_AlterStatsStmt, type metadata accessor for PgQuery_AlterStatsStmt, &protocol conformance descriptor for PgQuery_AlterStatsStmt);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_AlterStatsStmt);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_AlterStatsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #167 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  A_Expr = type metadata accessor for PgQuery_A_Expr(0);
  v6 = *(A_Expr - 8);
  v8 = MEMORY[0x1EEE9AC00](A_Expr, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = A_Expr;
  v33 = A_Expr;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 166)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_A_Expr);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_A_Expr);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Expr and conformance PgQuery_A_Expr, type metadata accessor for PgQuery_A_Expr, &protocol conformance descriptor for PgQuery_A_Expr);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_A_Expr);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_A_Expr);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #168 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  ColumnRef = type metadata accessor for PgQuery_ColumnRef(0);
  v6 = *(ColumnRef - 8);
  v8 = MEMORY[0x1EEE9AC00](ColumnRef, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = ColumnRef;
  v33 = ColumnRef;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 167)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_ColumnRef);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_ColumnRef);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnRef and conformance PgQuery_ColumnRef, type metadata accessor for PgQuery_ColumnRef, &protocol conformance descriptor for PgQuery_ColumnRef);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_ColumnRef);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_ColumnRef);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #169 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  ParamRef = type metadata accessor for PgQuery_ParamRef(0);
  v6 = *(ParamRef - 8);
  v8 = MEMORY[0x1EEE9AC00](ParamRef, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = ParamRef;
  v33 = ParamRef;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 168)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_ParamRef);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_ParamRef);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ParamRef and conformance PgQuery_ParamRef, type metadata accessor for PgQuery_ParamRef, &protocol conformance descriptor for PgQuery_ParamRef);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_ParamRef);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_ParamRef);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #170 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  A_Const = type metadata accessor for PgQuery_A_Const(0);
  v6 = *(A_Const - 8);
  v8 = MEMORY[0x1EEE9AC00](A_Const, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = A_Const;
  v33 = A_Const;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 169)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_A_Const);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_A_Const);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Const and conformance PgQuery_A_Const, type metadata accessor for PgQuery_A_Const, &protocol conformance descriptor for PgQuery_A_Const);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_A_Const);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_A_Const);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #171 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for PgQuery_FuncCall(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_FuncCall);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_FuncCall);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall, &protocol conformance descriptor for PgQuery_FuncCall);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_FuncCall);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_FuncCall);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #172 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  A_Star = type metadata accessor for PgQuery_A_Star(0);
  v6 = *(A_Star - 8);
  v8 = MEMORY[0x1EEE9AC00](A_Star, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = A_Star;
  v33 = A_Star;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 171)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_A_Star);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_A_Star);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Star and conformance PgQuery_A_Star, type metadata accessor for PgQuery_A_Star, &protocol conformance descriptor for PgQuery_A_Star);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_A_Star);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_A_Star);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #173 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  A_Indices = type metadata accessor for PgQuery_A_Indices(0);
  v6 = *(A_Indices - 8);
  v8 = MEMORY[0x1EEE9AC00](A_Indices, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = A_Indices;
  v33 = A_Indices;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 172)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_A_Indices);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_A_Indices);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indices and conformance PgQuery_A_Indices, type metadata accessor for PgQuery_A_Indices, &protocol conformance descriptor for PgQuery_A_Indices);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_A_Indices);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_A_Indices);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}

uint64_t closure #174 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  A_Indirection = type metadata accessor for PgQuery_A_Indirection(0);
  v6 = *(A_Indirection - 8);
  v8 = MEMORY[0x1EEE9AC00](A_Indirection, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v45 - v14;
  v16 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v52 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v45 - v30;
  v51 = v6;
  v32 = *(v6 + 56);
  v54 = A_Indirection;
  v33 = A_Indirection;
  v34 = v32;
  v32(&v45 - v30, 1, 1, v33);
  v48 = a1;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v47 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v36 = v54;
    v37 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v24, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v24, v21, type metadata accessor for PgQuery_Node.OneOf_Node);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 173)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
      v38 = v50;
      outlined init with take of PgQuery_OidList(v21, v50, type metadata accessor for PgQuery_A_Indirection);
      outlined init with take of PgQuery_OidList(v38, v31, type metadata accessor for PgQuery_A_Indirection);
      v36 = v54;
      v34(v31, 0, 1, v54);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node.OneOf_Node);
      v36 = v54;
    }
  }

  v39 = v52;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indirection and conformance PgQuery_A_Indirection, type metadata accessor for PgQuery_A_Indirection, &protocol conformance descriptor for PgQuery_A_Indirection);
  v40 = v53;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v31, v39, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
  if ((*(v51 + 48))(v39, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
    return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
  }

  else
  {
    v42 = v49;
    outlined init with take of PgQuery_OidList(v39, v49, type metadata accessor for PgQuery_A_Indirection);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
    v43 = v48;
    v44 = v46;
    _s10Foundation4UUIDVSgWOhTm_0(v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v42, v43 + v44, type metadata accessor for PgQuery_A_Indirection);
    swift_storeEnumTagMultiPayload();
    return (*(v47 + 56))(v43 + v44, 0, 1, v37);
  }
}
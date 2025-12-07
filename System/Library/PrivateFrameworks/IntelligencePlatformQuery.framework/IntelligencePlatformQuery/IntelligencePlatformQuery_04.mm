uint64_t closure #76 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterFunctionStmt = type metadata accessor for PgQuery_AlterFunctionStmt(0);
  v6 = *(AlterFunctionStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterFunctionStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterFunctionStmt;
  v26 = AlterFunctionStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 75)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterFunctionStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterFunctionStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFunctionStmt and conformance PgQuery_AlterFunctionStmt, type metadata accessor for PgQuery_AlterFunctionStmt, &protocol conformance descriptor for PgQuery_AlterFunctionStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterFunctionStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterFunctionStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterFunctionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #77 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  DoStmt = type metadata accessor for PgQuery_DoStmt(0);
  v6 = *(DoStmt - 8);
  v7 = MEMORY[0x28223BE20](DoStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = DoStmt;
  v26 = DoStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 76)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_DoStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_DoStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DoStmt and conformance PgQuery_DoStmt, type metadata accessor for PgQuery_DoStmt, &protocol conformance descriptor for PgQuery_DoStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_DoStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMd, &_s14BiomeSQLParser14PgQuery_DoStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_DoStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #78 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RenameStmt = type metadata accessor for PgQuery_RenameStmt(0);
  v6 = *(RenameStmt - 8);
  v7 = MEMORY[0x28223BE20](RenameStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RenameStmt;
  v26 = RenameStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 77)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RenameStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RenameStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RenameStmt and conformance PgQuery_RenameStmt, type metadata accessor for PgQuery_RenameStmt, &protocol conformance descriptor for PgQuery_RenameStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RenameStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMd, &_s14BiomeSQLParser18PgQuery_RenameStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RenameStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #79 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RuleStmt = type metadata accessor for PgQuery_RuleStmt(0);
  v6 = *(RuleStmt - 8);
  v7 = MEMORY[0x28223BE20](RuleStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RuleStmt;
  v26 = RuleStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 78)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RuleStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RuleStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RuleStmt and conformance PgQuery_RuleStmt, type metadata accessor for PgQuery_RuleStmt, &protocol conformance descriptor for PgQuery_RuleStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RuleStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMd, &_s14BiomeSQLParser16PgQuery_RuleStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RuleStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #80 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  NotifyStmt = type metadata accessor for PgQuery_NotifyStmt(0);
  v6 = *(NotifyStmt - 8);
  v7 = MEMORY[0x28223BE20](NotifyStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = NotifyStmt;
  v26 = NotifyStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 79)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_NotifyStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_NotifyStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NotifyStmt and conformance PgQuery_NotifyStmt, type metadata accessor for PgQuery_NotifyStmt, &protocol conformance descriptor for PgQuery_NotifyStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_NotifyStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMd, &_s14BiomeSQLParser18PgQuery_NotifyStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_NotifyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #81 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ListenStmt = type metadata accessor for PgQuery_ListenStmt(0);
  v6 = *(ListenStmt - 8);
  v7 = MEMORY[0x28223BE20](ListenStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ListenStmt;
  v26 = ListenStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 80)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ListenStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ListenStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ListenStmt and conformance PgQuery_ListenStmt, type metadata accessor for PgQuery_ListenStmt, &protocol conformance descriptor for PgQuery_ListenStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ListenStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMd, &_s14BiomeSQLParser18PgQuery_ListenStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ListenStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #82 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  UnlistenStmt = type metadata accessor for PgQuery_UnlistenStmt(0);
  v6 = *(UnlistenStmt - 8);
  v7 = MEMORY[0x28223BE20](UnlistenStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = UnlistenStmt;
  v26 = UnlistenStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 81)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_UnlistenStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_UnlistenStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UnlistenStmt and conformance PgQuery_UnlistenStmt, type metadata accessor for PgQuery_UnlistenStmt, &protocol conformance descriptor for PgQuery_UnlistenStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_UnlistenStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMd, &_s14BiomeSQLParser20PgQuery_UnlistenStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_UnlistenStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #83 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  TransactionStmt = type metadata accessor for PgQuery_TransactionStmt(0);
  v6 = *(TransactionStmt - 8);
  v7 = MEMORY[0x28223BE20](TransactionStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = TransactionStmt;
  v26 = TransactionStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 82)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_TransactionStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_TransactionStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TransactionStmt and conformance PgQuery_TransactionStmt, type metadata accessor for PgQuery_TransactionStmt, &protocol conformance descriptor for PgQuery_TransactionStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_TransactionStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMd, &_s14BiomeSQLParser23PgQuery_TransactionStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_TransactionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #84 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ViewStmt = type metadata accessor for PgQuery_ViewStmt(0);
  v6 = *(ViewStmt - 8);
  v7 = MEMORY[0x28223BE20](ViewStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ViewStmt;
  v26 = ViewStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 83)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ViewStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ViewStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ViewStmt and conformance PgQuery_ViewStmt, type metadata accessor for PgQuery_ViewStmt, &protocol conformance descriptor for PgQuery_ViewStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ViewStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMd, &_s14BiomeSQLParser16PgQuery_ViewStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ViewStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #85 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  LoadStmt = type metadata accessor for PgQuery_LoadStmt(0);
  v6 = *(LoadStmt - 8);
  v7 = MEMORY[0x28223BE20](LoadStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = LoadStmt;
  v26 = LoadStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 84)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_LoadStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_LoadStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LoadStmt and conformance PgQuery_LoadStmt, type metadata accessor for PgQuery_LoadStmt, &protocol conformance descriptor for PgQuery_LoadStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_LoadStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LoadStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_LoadStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #86 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  DomainStmt = type metadata accessor for PgQuery_CreateDomainStmt(0);
  v6 = *(DomainStmt - 8);
  v7 = MEMORY[0x28223BE20](DomainStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = DomainStmt;
  v26 = DomainStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 85)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateDomainStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateDomainStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateDomainStmt and conformance PgQuery_CreateDomainStmt, type metadata accessor for PgQuery_CreateDomainStmt, &protocol conformance descriptor for PgQuery_CreateDomainStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateDomainStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateDomainStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateDomainStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #87 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  CreatedbStmt = type metadata accessor for PgQuery_CreatedbStmt(0);
  v6 = *(CreatedbStmt - 8);
  v7 = MEMORY[0x28223BE20](CreatedbStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = CreatedbStmt;
  v26 = CreatedbStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 86)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreatedbStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreatedbStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatedbStmt and conformance PgQuery_CreatedbStmt, type metadata accessor for PgQuery_CreatedbStmt, &protocol conformance descriptor for PgQuery_CreatedbStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreatedbStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreatedbStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreatedbStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #88 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  DropdbStmt = type metadata accessor for PgQuery_DropdbStmt(0);
  v6 = *(DropdbStmt - 8);
  v7 = MEMORY[0x28223BE20](DropdbStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = DropdbStmt;
  v26 = DropdbStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 87)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_DropdbStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_DropdbStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropdbStmt and conformance PgQuery_DropdbStmt, type metadata accessor for PgQuery_DropdbStmt, &protocol conformance descriptor for PgQuery_DropdbStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_DropdbStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DropdbStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_DropdbStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #89 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  VacuumStmt = type metadata accessor for PgQuery_VacuumStmt(0);
  v6 = *(VacuumStmt - 8);
  v7 = MEMORY[0x28223BE20](VacuumStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = VacuumStmt;
  v26 = VacuumStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 88)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_VacuumStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_VacuumStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumStmt and conformance PgQuery_VacuumStmt, type metadata accessor for PgQuery_VacuumStmt, &protocol conformance descriptor for PgQuery_VacuumStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_VacuumStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMd, &_s14BiomeSQLParser18PgQuery_VacuumStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_VacuumStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #90 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ExplainStmt = type metadata accessor for PgQuery_ExplainStmt(0);
  v6 = *(ExplainStmt - 8);
  v7 = MEMORY[0x28223BE20](ExplainStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ExplainStmt;
  v26 = ExplainStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 89)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ExplainStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ExplainStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExplainStmt and conformance PgQuery_ExplainStmt, type metadata accessor for PgQuery_ExplainStmt, &protocol conformance descriptor for PgQuery_ExplainStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ExplainStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExplainStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ExplainStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #91 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  TableAsStmt = type metadata accessor for PgQuery_CreateTableAsStmt(0);
  v6 = *(TableAsStmt - 8);
  v7 = MEMORY[0x28223BE20](TableAsStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = TableAsStmt;
  v26 = TableAsStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 90)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateTableAsStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateTableAsStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableAsStmt and conformance PgQuery_CreateTableAsStmt, type metadata accessor for PgQuery_CreateTableAsStmt, &protocol conformance descriptor for PgQuery_CreateTableAsStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateTableAsStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateTableAsStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateTableAsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #92 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  SeqStmt = type metadata accessor for PgQuery_CreateSeqStmt(0);
  v6 = *(SeqStmt - 8);
  v7 = MEMORY[0x28223BE20](SeqStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = SeqStmt;
  v26 = SeqStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 91)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateSeqStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateSeqStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSeqStmt and conformance PgQuery_CreateSeqStmt, type metadata accessor for PgQuery_CreateSeqStmt, &protocol conformance descriptor for PgQuery_CreateSeqStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateSeqStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateSeqStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateSeqStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #93 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterSeqStmt = type metadata accessor for PgQuery_AlterSeqStmt(0);
  v6 = *(AlterSeqStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterSeqStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterSeqStmt;
  v26 = AlterSeqStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 92)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterSeqStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterSeqStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSeqStmt and conformance PgQuery_AlterSeqStmt, type metadata accessor for PgQuery_AlterSeqStmt, &protocol conformance descriptor for PgQuery_AlterSeqStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterSeqStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterSeqStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterSeqStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #94 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v6 = *(VariableSetStmt - 8);
  v7 = MEMORY[0x28223BE20](VariableSetStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = VariableSetStmt;
  v26 = VariableSetStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 93)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_VariableSetStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_VariableSetStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_VariableSetStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_VariableSetStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #95 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  VariableShowStmt = type metadata accessor for PgQuery_VariableShowStmt(0);
  v6 = *(VariableShowStmt - 8);
  v7 = MEMORY[0x28223BE20](VariableShowStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = VariableShowStmt;
  v26 = VariableShowStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 94)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_VariableShowStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_VariableShowStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableShowStmt and conformance PgQuery_VariableShowStmt, type metadata accessor for PgQuery_VariableShowStmt, &protocol conformance descriptor for PgQuery_VariableShowStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_VariableShowStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMd, &_s14BiomeSQLParser24PgQuery_VariableShowStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_VariableShowStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #96 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  DiscardStmt = type metadata accessor for PgQuery_DiscardStmt(0);
  v6 = *(DiscardStmt - 8);
  v7 = MEMORY[0x28223BE20](DiscardStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = DiscardStmt;
  v26 = DiscardStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 95)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_DiscardStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_DiscardStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DiscardStmt and conformance PgQuery_DiscardStmt, type metadata accessor for PgQuery_DiscardStmt, &protocol conformance descriptor for PgQuery_DiscardStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_DiscardStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMd, &_s14BiomeSQLParser19PgQuery_DiscardStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_DiscardStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #97 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  TrigStmt = type metadata accessor for PgQuery_CreateTrigStmt(0);
  v6 = *(TrigStmt - 8);
  v7 = MEMORY[0x28223BE20](TrigStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = TrigStmt;
  v26 = TrigStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 96)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateTrigStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateTrigStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTrigStmt and conformance PgQuery_CreateTrigStmt, type metadata accessor for PgQuery_CreateTrigStmt, &protocol conformance descriptor for PgQuery_CreateTrigStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateTrigStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateTrigStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateTrigStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #98 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  PLangStmt = type metadata accessor for PgQuery_CreatePLangStmt(0);
  v6 = *(PLangStmt - 8);
  v7 = MEMORY[0x28223BE20](PLangStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = PLangStmt;
  v26 = PLangStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 97)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreatePLangStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreatePLangStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePLangStmt and conformance PgQuery_CreatePLangStmt, type metadata accessor for PgQuery_CreatePLangStmt, &protocol conformance descriptor for PgQuery_CreatePLangStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreatePLangStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreatePLangStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreatePLangStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #99 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RoleStmt = type metadata accessor for PgQuery_CreateRoleStmt(0);
  v6 = *(RoleStmt - 8);
  v7 = MEMORY[0x28223BE20](RoleStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RoleStmt;
  v26 = RoleStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 98)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateRoleStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateRoleStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRoleStmt and conformance PgQuery_CreateRoleStmt, type metadata accessor for PgQuery_CreateRoleStmt, &protocol conformance descriptor for PgQuery_CreateRoleStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateRoleStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateRoleStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateRoleStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #100 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterRoleStmt = type metadata accessor for PgQuery_AlterRoleStmt(0);
  v6 = *(AlterRoleStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterRoleStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterRoleStmt;
  v26 = AlterRoleStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 99)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterRoleStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterRoleStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleStmt and conformance PgQuery_AlterRoleStmt, type metadata accessor for PgQuery_AlterRoleStmt, &protocol conformance descriptor for PgQuery_AlterRoleStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterRoleStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterRoleStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterRoleStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #101 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  DropRoleStmt = type metadata accessor for PgQuery_DropRoleStmt(0);
  v6 = *(DropRoleStmt - 8);
  v7 = MEMORY[0x28223BE20](DropRoleStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = DropRoleStmt;
  v26 = DropRoleStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 100)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_DropRoleStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_DropRoleStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropRoleStmt and conformance PgQuery_DropRoleStmt, type metadata accessor for PgQuery_DropRoleStmt, &protocol conformance descriptor for PgQuery_DropRoleStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_DropRoleStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMd, &_s14BiomeSQLParser20PgQuery_DropRoleStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_DropRoleStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #102 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  LockStmt = type metadata accessor for PgQuery_LockStmt(0);
  v6 = *(LockStmt - 8);
  v7 = MEMORY[0x28223BE20](LockStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = LockStmt;
  v26 = LockStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 101)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_LockStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_LockStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockStmt and conformance PgQuery_LockStmt, type metadata accessor for PgQuery_LockStmt, &protocol conformance descriptor for PgQuery_LockStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_LockStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMd, &_s14BiomeSQLParser16PgQuery_LockStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_LockStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #103 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ConstraintsSetStmt = type metadata accessor for PgQuery_ConstraintsSetStmt(0);
  v6 = *(ConstraintsSetStmt - 8);
  v7 = MEMORY[0x28223BE20](ConstraintsSetStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ConstraintsSetStmt;
  v26 = ConstraintsSetStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 102)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ConstraintsSetStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ConstraintsSetStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConstraintsSetStmt and conformance PgQuery_ConstraintsSetStmt, type metadata accessor for PgQuery_ConstraintsSetStmt, &protocol conformance descriptor for PgQuery_ConstraintsSetStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ConstraintsSetStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMd, &_s14BiomeSQLParser26PgQuery_ConstraintsSetStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ConstraintsSetStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #104 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ReindexStmt = type metadata accessor for PgQuery_ReindexStmt(0);
  v6 = *(ReindexStmt - 8);
  v7 = MEMORY[0x28223BE20](ReindexStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ReindexStmt;
  v26 = ReindexStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 103)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ReindexStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ReindexStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReindexStmt and conformance PgQuery_ReindexStmt, type metadata accessor for PgQuery_ReindexStmt, &protocol conformance descriptor for PgQuery_ReindexStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ReindexStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ReindexStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ReindexStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #105 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  v5 = type metadata accessor for PgQuery_CheckPointStmt(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 104)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CheckPointStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CheckPointStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CheckPointStmt and conformance PgQuery_CheckPointStmt, type metadata accessor for PgQuery_CheckPointStmt, &protocol conformance descriptor for PgQuery_CheckPointStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CheckPointStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CheckPointStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CheckPointStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #106 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  SchemaStmt = type metadata accessor for PgQuery_CreateSchemaStmt(0);
  v6 = *(SchemaStmt - 8);
  v7 = MEMORY[0x28223BE20](SchemaStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = SchemaStmt;
  v26 = SchemaStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 105)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateSchemaStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateSchemaStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSchemaStmt and conformance PgQuery_CreateSchemaStmt, type metadata accessor for PgQuery_CreateSchemaStmt, &protocol conformance descriptor for PgQuery_CreateSchemaStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateSchemaStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreateSchemaStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateSchemaStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #107 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterDatabaseStmt = type metadata accessor for PgQuery_AlterDatabaseStmt(0);
  v6 = *(AlterDatabaseStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterDatabaseStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterDatabaseStmt;
  v26 = AlterDatabaseStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 106)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterDatabaseStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterDatabaseStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseStmt and conformance PgQuery_AlterDatabaseStmt, type metadata accessor for PgQuery_AlterDatabaseStmt, &protocol conformance descriptor for PgQuery_AlterDatabaseStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterDatabaseStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterDatabaseStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterDatabaseStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #108 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterDatabaseSetStmt = type metadata accessor for PgQuery_AlterDatabaseSetStmt(0);
  v6 = *(AlterDatabaseSetStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterDatabaseSetStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterDatabaseSetStmt;
  v26 = AlterDatabaseSetStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 107)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterDatabaseSetStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterDatabaseSetStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseSetStmt and conformance PgQuery_AlterDatabaseSetStmt, type metadata accessor for PgQuery_AlterDatabaseSetStmt, &protocol conformance descriptor for PgQuery_AlterDatabaseSetStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterDatabaseSetStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterDatabaseSetStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterDatabaseSetStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #109 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterRoleSetStmt = type metadata accessor for PgQuery_AlterRoleSetStmt(0);
  v6 = *(AlterRoleSetStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterRoleSetStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterRoleSetStmt;
  v26 = AlterRoleSetStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 108)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterRoleSetStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterRoleSetStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleSetStmt and conformance PgQuery_AlterRoleSetStmt, type metadata accessor for PgQuery_AlterRoleSetStmt, &protocol conformance descriptor for PgQuery_AlterRoleSetStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterRoleSetStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMd, &_s14BiomeSQLParser24PgQuery_AlterRoleSetStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterRoleSetStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #110 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ConversionStmt = type metadata accessor for PgQuery_CreateConversionStmt(0);
  v6 = *(ConversionStmt - 8);
  v7 = MEMORY[0x28223BE20](ConversionStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ConversionStmt;
  v26 = ConversionStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 109)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateConversionStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateConversionStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateConversionStmt and conformance PgQuery_CreateConversionStmt, type metadata accessor for PgQuery_CreateConversionStmt, &protocol conformance descriptor for PgQuery_CreateConversionStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateConversionStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateConversionStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateConversionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #111 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  CastStmt = type metadata accessor for PgQuery_CreateCastStmt(0);
  v6 = *(CastStmt - 8);
  v7 = MEMORY[0x28223BE20](CastStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = CastStmt;
  v26 = CastStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 110)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateCastStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateCastStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateCastStmt and conformance PgQuery_CreateCastStmt, type metadata accessor for PgQuery_CreateCastStmt, &protocol conformance descriptor for PgQuery_CreateCastStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateCastStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateCastStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateCastStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #112 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  OpClassStmt = type metadata accessor for PgQuery_CreateOpClassStmt(0);
  v6 = *(OpClassStmt - 8);
  v7 = MEMORY[0x28223BE20](OpClassStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = OpClassStmt;
  v26 = OpClassStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 111)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateOpClassStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateOpClassStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassStmt and conformance PgQuery_CreateOpClassStmt, type metadata accessor for PgQuery_CreateOpClassStmt, &protocol conformance descriptor for PgQuery_CreateOpClassStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateOpClassStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateOpClassStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #113 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  OpFamilyStmt = type metadata accessor for PgQuery_CreateOpFamilyStmt(0);
  v6 = *(OpFamilyStmt - 8);
  v7 = MEMORY[0x28223BE20](OpFamilyStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = OpFamilyStmt;
  v26 = OpFamilyStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 112)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateOpFamilyStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateOpFamilyStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpFamilyStmt and conformance PgQuery_CreateOpFamilyStmt, type metadata accessor for PgQuery_CreateOpFamilyStmt, &protocol conformance descriptor for PgQuery_CreateOpFamilyStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateOpFamilyStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateOpFamilyStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateOpFamilyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #114 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterOpFamilyStmt = type metadata accessor for PgQuery_AlterOpFamilyStmt(0);
  v6 = *(AlterOpFamilyStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterOpFamilyStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterOpFamilyStmt;
  v26 = AlterOpFamilyStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 113)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterOpFamilyStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterOpFamilyStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOpFamilyStmt and conformance PgQuery_AlterOpFamilyStmt, type metadata accessor for PgQuery_AlterOpFamilyStmt, &protocol conformance descriptor for PgQuery_AlterOpFamilyStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterOpFamilyStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOpFamilyStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterOpFamilyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #115 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  PrepareStmt = type metadata accessor for PgQuery_PrepareStmt(0);
  v6 = *(PrepareStmt - 8);
  v7 = MEMORY[0x28223BE20](PrepareStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = PrepareStmt;
  v26 = PrepareStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 114)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_PrepareStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_PrepareStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PrepareStmt and conformance PgQuery_PrepareStmt, type metadata accessor for PgQuery_PrepareStmt, &protocol conformance descriptor for PgQuery_PrepareStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_PrepareStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMd, &_s14BiomeSQLParser19PgQuery_PrepareStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_PrepareStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #116 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ExecuteStmt = type metadata accessor for PgQuery_ExecuteStmt(0);
  v6 = *(ExecuteStmt - 8);
  v7 = MEMORY[0x28223BE20](ExecuteStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ExecuteStmt;
  v26 = ExecuteStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 115)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ExecuteStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ExecuteStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExecuteStmt and conformance PgQuery_ExecuteStmt, type metadata accessor for PgQuery_ExecuteStmt, &protocol conformance descriptor for PgQuery_ExecuteStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ExecuteStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ExecuteStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ExecuteStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #117 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  DeallocateStmt = type metadata accessor for PgQuery_DeallocateStmt(0);
  v6 = *(DeallocateStmt - 8);
  v7 = MEMORY[0x28223BE20](DeallocateStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = DeallocateStmt;
  v26 = DeallocateStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 116)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_DeallocateStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_DeallocateStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeallocateStmt and conformance PgQuery_DeallocateStmt, type metadata accessor for PgQuery_DeallocateStmt, &protocol conformance descriptor for PgQuery_DeallocateStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_DeallocateStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMd, &_s14BiomeSQLParser22PgQuery_DeallocateStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_DeallocateStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #118 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  DeclareCursorStmt = type metadata accessor for PgQuery_DeclareCursorStmt(0);
  v6 = *(DeclareCursorStmt - 8);
  v7 = MEMORY[0x28223BE20](DeclareCursorStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = DeclareCursorStmt;
  v26 = DeclareCursorStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 117)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_DeclareCursorStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_DeclareCursorStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeclareCursorStmt and conformance PgQuery_DeclareCursorStmt, type metadata accessor for PgQuery_DeclareCursorStmt, &protocol conformance descriptor for PgQuery_DeclareCursorStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_DeclareCursorStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_DeclareCursorStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_DeclareCursorStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #119 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  TableSpaceStmt = type metadata accessor for PgQuery_CreateTableSpaceStmt(0);
  v6 = *(TableSpaceStmt - 8);
  v7 = MEMORY[0x28223BE20](TableSpaceStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = TableSpaceStmt;
  v26 = TableSpaceStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 118)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateTableSpaceStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateTableSpaceStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableSpaceStmt and conformance PgQuery_CreateTableSpaceStmt, type metadata accessor for PgQuery_CreateTableSpaceStmt, &protocol conformance descriptor for PgQuery_CreateTableSpaceStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateTableSpaceStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMd, &_s14BiomeSQLParser28PgQuery_CreateTableSpaceStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateTableSpaceStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #120 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  DropTableSpaceStmt = type metadata accessor for PgQuery_DropTableSpaceStmt(0);
  v6 = *(DropTableSpaceStmt - 8);
  v7 = MEMORY[0x28223BE20](DropTableSpaceStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = DropTableSpaceStmt;
  v26 = DropTableSpaceStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 119)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_DropTableSpaceStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_DropTableSpaceStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropTableSpaceStmt and conformance PgQuery_DropTableSpaceStmt, type metadata accessor for PgQuery_DropTableSpaceStmt, &protocol conformance descriptor for PgQuery_DropTableSpaceStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_DropTableSpaceStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMd, &_s14BiomeSQLParser26PgQuery_DropTableSpaceStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_DropTableSpaceStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #121 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterObjectDependsStmt = type metadata accessor for PgQuery_AlterObjectDependsStmt(0);
  v6 = *(AlterObjectDependsStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterObjectDependsStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterObjectDependsStmt;
  v26 = AlterObjectDependsStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 120)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterObjectDependsStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterObjectDependsStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectDependsStmt and conformance PgQuery_AlterObjectDependsStmt, type metadata accessor for PgQuery_AlterObjectDependsStmt, &protocol conformance descriptor for PgQuery_AlterObjectDependsStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterObjectDependsStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterObjectDependsStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterObjectDependsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #122 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterObjectSchemaStmt = type metadata accessor for PgQuery_AlterObjectSchemaStmt(0);
  v6 = *(AlterObjectSchemaStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterObjectSchemaStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterObjectSchemaStmt;
  v26 = AlterObjectSchemaStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 121)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterObjectSchemaStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterObjectSchemaStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectSchemaStmt and conformance PgQuery_AlterObjectSchemaStmt, type metadata accessor for PgQuery_AlterObjectSchemaStmt, &protocol conformance descriptor for PgQuery_AlterObjectSchemaStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterObjectSchemaStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterObjectSchemaStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #123 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterOwnerStmt = type metadata accessor for PgQuery_AlterOwnerStmt(0);
  v6 = *(AlterOwnerStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterOwnerStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterOwnerStmt;
  v26 = AlterOwnerStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 122)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterOwnerStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterOwnerStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOwnerStmt and conformance PgQuery_AlterOwnerStmt, type metadata accessor for PgQuery_AlterOwnerStmt, &protocol conformance descriptor for PgQuery_AlterOwnerStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterOwnerStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterOwnerStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterOwnerStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #124 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterOperatorStmt = type metadata accessor for PgQuery_AlterOperatorStmt(0);
  v6 = *(AlterOperatorStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterOperatorStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterOperatorStmt;
  v26 = AlterOperatorStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 123)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterOperatorStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterOperatorStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOperatorStmt and conformance PgQuery_AlterOperatorStmt, type metadata accessor for PgQuery_AlterOperatorStmt, &protocol conformance descriptor for PgQuery_AlterOperatorStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterOperatorStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMd, &_s14BiomeSQLParser25PgQuery_AlterOperatorStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterOperatorStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #125 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterTypeStmt = type metadata accessor for PgQuery_AlterTypeStmt(0);
  v6 = *(AlterTypeStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterTypeStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterTypeStmt;
  v26 = AlterTypeStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 124)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterTypeStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterTypeStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTypeStmt and conformance PgQuery_AlterTypeStmt, type metadata accessor for PgQuery_AlterTypeStmt, &protocol conformance descriptor for PgQuery_AlterTypeStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterTypeStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTypeStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterTypeStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #126 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  DropOwnedStmt = type metadata accessor for PgQuery_DropOwnedStmt(0);
  v6 = *(DropOwnedStmt - 8);
  v7 = MEMORY[0x28223BE20](DropOwnedStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = DropOwnedStmt;
  v26 = DropOwnedStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 125)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_DropOwnedStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_DropOwnedStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropOwnedStmt and conformance PgQuery_DropOwnedStmt, type metadata accessor for PgQuery_DropOwnedStmt, &protocol conformance descriptor for PgQuery_DropOwnedStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_DropOwnedStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMd, &_s14BiomeSQLParser21PgQuery_DropOwnedStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_DropOwnedStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #127 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ReassignOwnedStmt = type metadata accessor for PgQuery_ReassignOwnedStmt(0);
  v6 = *(ReassignOwnedStmt - 8);
  v7 = MEMORY[0x28223BE20](ReassignOwnedStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ReassignOwnedStmt;
  v26 = ReassignOwnedStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 126)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ReassignOwnedStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ReassignOwnedStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReassignOwnedStmt and conformance PgQuery_ReassignOwnedStmt, type metadata accessor for PgQuery_ReassignOwnedStmt, &protocol conformance descriptor for PgQuery_ReassignOwnedStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ReassignOwnedStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMd, &_s14BiomeSQLParser25PgQuery_ReassignOwnedStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ReassignOwnedStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #128 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  CompositeTypeStmt = type metadata accessor for PgQuery_CompositeTypeStmt(0);
  v6 = *(CompositeTypeStmt - 8);
  v7 = MEMORY[0x28223BE20](CompositeTypeStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = CompositeTypeStmt;
  v26 = CompositeTypeStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 127)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CompositeTypeStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CompositeTypeStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CompositeTypeStmt and conformance PgQuery_CompositeTypeStmt, type metadata accessor for PgQuery_CompositeTypeStmt, &protocol conformance descriptor for PgQuery_CompositeTypeStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CompositeTypeStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMd, &_s14BiomeSQLParser25PgQuery_CompositeTypeStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CompositeTypeStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #129 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  EnumStmt = type metadata accessor for PgQuery_CreateEnumStmt(0);
  v6 = *(EnumStmt - 8);
  v7 = MEMORY[0x28223BE20](EnumStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = EnumStmt;
  v26 = EnumStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 128)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateEnumStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateEnumStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEnumStmt and conformance PgQuery_CreateEnumStmt, type metadata accessor for PgQuery_CreateEnumStmt, &protocol conformance descriptor for PgQuery_CreateEnumStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateEnumStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMd, &_s14BiomeSQLParser22PgQuery_CreateEnumStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateEnumStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #130 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RangeStmt = type metadata accessor for PgQuery_CreateRangeStmt(0);
  v6 = *(RangeStmt - 8);
  v7 = MEMORY[0x28223BE20](RangeStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RangeStmt;
  v26 = RangeStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 129)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateRangeStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateRangeStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRangeStmt and conformance PgQuery_CreateRangeStmt, type metadata accessor for PgQuery_CreateRangeStmt, &protocol conformance descriptor for PgQuery_CreateRangeStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateRangeStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateRangeStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateRangeStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #131 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterEnumStmt = type metadata accessor for PgQuery_AlterEnumStmt(0);
  v6 = *(AlterEnumStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterEnumStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterEnumStmt;
  v26 = AlterEnumStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 130)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterEnumStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterEnumStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEnumStmt and conformance PgQuery_AlterEnumStmt, type metadata accessor for PgQuery_AlterEnumStmt, &protocol conformance descriptor for PgQuery_AlterEnumStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterEnumStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMd, &_s14BiomeSQLParser21PgQuery_AlterEnumStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterEnumStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #132 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterTSDictionaryStmt = type metadata accessor for PgQuery_AlterTSDictionaryStmt(0);
  v6 = *(AlterTSDictionaryStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterTSDictionaryStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterTSDictionaryStmt;
  v26 = AlterTSDictionaryStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 131)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterTSDictionaryStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterTSDictionaryStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSDictionaryStmt and conformance PgQuery_AlterTSDictionaryStmt, type metadata accessor for PgQuery_AlterTSDictionaryStmt, &protocol conformance descriptor for PgQuery_AlterTSDictionaryStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterTSDictionaryStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTSDictionaryStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterTSDictionaryStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #133 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterTSConfigurationStmt = type metadata accessor for PgQuery_AlterTSConfigurationStmt(0);
  v6 = *(AlterTSConfigurationStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterTSConfigurationStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterTSConfigurationStmt;
  v26 = AlterTSConfigurationStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 132)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterTSConfigurationStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterTSConfigurationStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSConfigurationStmt and conformance PgQuery_AlterTSConfigurationStmt, type metadata accessor for PgQuery_AlterTSConfigurationStmt, &protocol conformance descriptor for PgQuery_AlterTSConfigurationStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterTSConfigurationStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMd, &_s14BiomeSQLParser32PgQuery_AlterTSConfigurationStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterTSConfigurationStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #134 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  FdwStmt = type metadata accessor for PgQuery_CreateFdwStmt(0);
  v6 = *(FdwStmt - 8);
  v7 = MEMORY[0x28223BE20](FdwStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = FdwStmt;
  v26 = FdwStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 133)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateFdwStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateFdwStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFdwStmt and conformance PgQuery_CreateFdwStmt, type metadata accessor for PgQuery_CreateFdwStmt, &protocol conformance descriptor for PgQuery_CreateFdwStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateFdwStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMd, &_s14BiomeSQLParser21PgQuery_CreateFdwStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateFdwStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #135 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterFdwStmt = type metadata accessor for PgQuery_AlterFdwStmt(0);
  v6 = *(AlterFdwStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterFdwStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterFdwStmt;
  v26 = AlterFdwStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 134)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterFdwStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterFdwStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFdwStmt and conformance PgQuery_AlterFdwStmt, type metadata accessor for PgQuery_AlterFdwStmt, &protocol conformance descriptor for PgQuery_AlterFdwStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterFdwStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMd, &_s14BiomeSQLParser20PgQuery_AlterFdwStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterFdwStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #136 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ForeignServerStmt = type metadata accessor for PgQuery_CreateForeignServerStmt(0);
  v6 = *(ForeignServerStmt - 8);
  v7 = MEMORY[0x28223BE20](ForeignServerStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ForeignServerStmt;
  v26 = ForeignServerStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 135)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateForeignServerStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateForeignServerStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignServerStmt and conformance PgQuery_CreateForeignServerStmt, type metadata accessor for PgQuery_CreateForeignServerStmt, &protocol conformance descriptor for PgQuery_CreateForeignServerStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateForeignServerStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMd, &_s14BiomeSQLParser31PgQuery_CreateForeignServerStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateForeignServerStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #137 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterForeignServerStmt = type metadata accessor for PgQuery_AlterForeignServerStmt(0);
  v6 = *(AlterForeignServerStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterForeignServerStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterForeignServerStmt;
  v26 = AlterForeignServerStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 136)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterForeignServerStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterForeignServerStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterForeignServerStmt and conformance PgQuery_AlterForeignServerStmt, type metadata accessor for PgQuery_AlterForeignServerStmt, &protocol conformance descriptor for PgQuery_AlterForeignServerStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterForeignServerStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMd, &_s14BiomeSQLParser30PgQuery_AlterForeignServerStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterForeignServerStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #138 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  UserMappingStmt = type metadata accessor for PgQuery_CreateUserMappingStmt(0);
  v6 = *(UserMappingStmt - 8);
  v7 = MEMORY[0x28223BE20](UserMappingStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = UserMappingStmt;
  v26 = UserMappingStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 137)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateUserMappingStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateUserMappingStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateUserMappingStmt and conformance PgQuery_CreateUserMappingStmt, type metadata accessor for PgQuery_CreateUserMappingStmt, &protocol conformance descriptor for PgQuery_CreateUserMappingStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateUserMappingStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreateUserMappingStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateUserMappingStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #139 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterUserMappingStmt = type metadata accessor for PgQuery_AlterUserMappingStmt(0);
  v6 = *(AlterUserMappingStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterUserMappingStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterUserMappingStmt;
  v26 = AlterUserMappingStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 138)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterUserMappingStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterUserMappingStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterUserMappingStmt and conformance PgQuery_AlterUserMappingStmt, type metadata accessor for PgQuery_AlterUserMappingStmt, &protocol conformance descriptor for PgQuery_AlterUserMappingStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterUserMappingStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterUserMappingStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterUserMappingStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #140 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  DropUserMappingStmt = type metadata accessor for PgQuery_DropUserMappingStmt(0);
  v6 = *(DropUserMappingStmt - 8);
  v7 = MEMORY[0x28223BE20](DropUserMappingStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = DropUserMappingStmt;
  v26 = DropUserMappingStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 139)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_DropUserMappingStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_DropUserMappingStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropUserMappingStmt and conformance PgQuery_DropUserMappingStmt, type metadata accessor for PgQuery_DropUserMappingStmt, &protocol conformance descriptor for PgQuery_DropUserMappingStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_DropUserMappingStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMd, &_s14BiomeSQLParser27PgQuery_DropUserMappingStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_DropUserMappingStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #141 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterTableSpaceOptionsStmt = type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt(0);
  v6 = *(AlterTableSpaceOptionsStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterTableSpaceOptionsStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterTableSpaceOptionsStmt;
  v26 = AlterTableSpaceOptionsStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 140)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableSpaceOptionsStmt and conformance PgQuery_AlterTableSpaceOptionsStmt, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt, &protocol conformance descriptor for PgQuery_AlterTableSpaceOptionsStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterTableSpaceOptionsStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #142 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterTableMoveAllStmt = type metadata accessor for PgQuery_AlterTableMoveAllStmt(0);
  v6 = *(AlterTableMoveAllStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterTableMoveAllStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterTableMoveAllStmt;
  v26 = AlterTableMoveAllStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 141)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterTableMoveAllStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterTableMoveAllStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableMoveAllStmt and conformance PgQuery_AlterTableMoveAllStmt, type metadata accessor for PgQuery_AlterTableMoveAllStmt, &protocol conformance descriptor for PgQuery_AlterTableMoveAllStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterTableMoveAllStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterTableMoveAllStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterTableMoveAllStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #143 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  SecLabelStmt = type metadata accessor for PgQuery_SecLabelStmt(0);
  v6 = *(SecLabelStmt - 8);
  v7 = MEMORY[0x28223BE20](SecLabelStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = SecLabelStmt;
  v26 = SecLabelStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 142)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_SecLabelStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_SecLabelStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SecLabelStmt and conformance PgQuery_SecLabelStmt, type metadata accessor for PgQuery_SecLabelStmt, &protocol conformance descriptor for PgQuery_SecLabelStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_SecLabelStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMd, &_s14BiomeSQLParser20PgQuery_SecLabelStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_SecLabelStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #144 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ForeignTableStmt = type metadata accessor for PgQuery_CreateForeignTableStmt(0);
  v6 = *(ForeignTableStmt - 8);
  v7 = MEMORY[0x28223BE20](ForeignTableStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ForeignTableStmt;
  v26 = ForeignTableStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 143)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateForeignTableStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateForeignTableStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignTableStmt and conformance PgQuery_CreateForeignTableStmt, type metadata accessor for PgQuery_CreateForeignTableStmt, &protocol conformance descriptor for PgQuery_CreateForeignTableStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateForeignTableStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateForeignTableStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateForeignTableStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #145 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ImportForeignSchemaStmt = type metadata accessor for PgQuery_ImportForeignSchemaStmt(0);
  v6 = *(ImportForeignSchemaStmt - 8);
  v7 = MEMORY[0x28223BE20](ImportForeignSchemaStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ImportForeignSchemaStmt;
  v26 = ImportForeignSchemaStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 144)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ImportForeignSchemaStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ImportForeignSchemaStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaStmt and conformance PgQuery_ImportForeignSchemaStmt, type metadata accessor for PgQuery_ImportForeignSchemaStmt, &protocol conformance descriptor for PgQuery_ImportForeignSchemaStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ImportForeignSchemaStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMd, &_s14BiomeSQLParser31PgQuery_ImportForeignSchemaStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ImportForeignSchemaStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #146 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ExtensionStmt = type metadata accessor for PgQuery_CreateExtensionStmt(0);
  v6 = *(ExtensionStmt - 8);
  v7 = MEMORY[0x28223BE20](ExtensionStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ExtensionStmt;
  v26 = ExtensionStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 145)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateExtensionStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateExtensionStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateExtensionStmt and conformance PgQuery_CreateExtensionStmt, type metadata accessor for PgQuery_CreateExtensionStmt, &protocol conformance descriptor for PgQuery_CreateExtensionStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateExtensionStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateExtensionStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateExtensionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #147 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterExtensionStmt = type metadata accessor for PgQuery_AlterExtensionStmt(0);
  v6 = *(AlterExtensionStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterExtensionStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterExtensionStmt;
  v26 = AlterExtensionStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 146)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterExtensionStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterExtensionStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionStmt and conformance PgQuery_AlterExtensionStmt, type metadata accessor for PgQuery_AlterExtensionStmt, &protocol conformance descriptor for PgQuery_AlterExtensionStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterExtensionStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterExtensionStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterExtensionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #148 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterExtensionContentsStmt = type metadata accessor for PgQuery_AlterExtensionContentsStmt(0);
  v6 = *(AlterExtensionContentsStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterExtensionContentsStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterExtensionContentsStmt;
  v26 = AlterExtensionContentsStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 147)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterExtensionContentsStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterExtensionContentsStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionContentsStmt and conformance PgQuery_AlterExtensionContentsStmt, type metadata accessor for PgQuery_AlterExtensionContentsStmt, &protocol conformance descriptor for PgQuery_AlterExtensionContentsStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterExtensionContentsStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterExtensionContentsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #149 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  EventTrigStmt = type metadata accessor for PgQuery_CreateEventTrigStmt(0);
  v6 = *(EventTrigStmt - 8);
  v7 = MEMORY[0x28223BE20](EventTrigStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = EventTrigStmt;
  v26 = EventTrigStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 148)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateEventTrigStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateEventTrigStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEventTrigStmt and conformance PgQuery_CreateEventTrigStmt, type metadata accessor for PgQuery_CreateEventTrigStmt, &protocol conformance descriptor for PgQuery_CreateEventTrigStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateEventTrigStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateEventTrigStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateEventTrigStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #150 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterEventTrigStmt = type metadata accessor for PgQuery_AlterEventTrigStmt(0);
  v6 = *(AlterEventTrigStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterEventTrigStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterEventTrigStmt;
  v26 = AlterEventTrigStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 149)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterEventTrigStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterEventTrigStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEventTrigStmt and conformance PgQuery_AlterEventTrigStmt, type metadata accessor for PgQuery_AlterEventTrigStmt, &protocol conformance descriptor for PgQuery_AlterEventTrigStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterEventTrigStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterEventTrigStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterEventTrigStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #151 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RefreshMatViewStmt = type metadata accessor for PgQuery_RefreshMatViewStmt(0);
  v6 = *(RefreshMatViewStmt - 8);
  v7 = MEMORY[0x28223BE20](RefreshMatViewStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RefreshMatViewStmt;
  v26 = RefreshMatViewStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 150)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RefreshMatViewStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RefreshMatViewStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RefreshMatViewStmt and conformance PgQuery_RefreshMatViewStmt, type metadata accessor for PgQuery_RefreshMatViewStmt, &protocol conformance descriptor for PgQuery_RefreshMatViewStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RefreshMatViewStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMd, &_s14BiomeSQLParser26PgQuery_RefreshMatViewStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RefreshMatViewStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #152 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ReplicaIdentityStmt = type metadata accessor for PgQuery_ReplicaIdentityStmt(0);
  v6 = *(ReplicaIdentityStmt - 8);
  v7 = MEMORY[0x28223BE20](ReplicaIdentityStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ReplicaIdentityStmt;
  v26 = ReplicaIdentityStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 151)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ReplicaIdentityStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ReplicaIdentityStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReplicaIdentityStmt and conformance PgQuery_ReplicaIdentityStmt, type metadata accessor for PgQuery_ReplicaIdentityStmt, &protocol conformance descriptor for PgQuery_ReplicaIdentityStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ReplicaIdentityStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMd, &_s14BiomeSQLParser27PgQuery_ReplicaIdentityStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ReplicaIdentityStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #153 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterSystemStmt = type metadata accessor for PgQuery_AlterSystemStmt(0);
  v6 = *(AlterSystemStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterSystemStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterSystemStmt;
  v26 = AlterSystemStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 152)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterSystemStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterSystemStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSystemStmt and conformance PgQuery_AlterSystemStmt, type metadata accessor for PgQuery_AlterSystemStmt, &protocol conformance descriptor for PgQuery_AlterSystemStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterSystemStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterSystemStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterSystemStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #154 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  PolicyStmt = type metadata accessor for PgQuery_CreatePolicyStmt(0);
  v6 = *(PolicyStmt - 8);
  v7 = MEMORY[0x28223BE20](PolicyStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = PolicyStmt;
  v26 = PolicyStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 153)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreatePolicyStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreatePolicyStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePolicyStmt and conformance PgQuery_CreatePolicyStmt, type metadata accessor for PgQuery_CreatePolicyStmt, &protocol conformance descriptor for PgQuery_CreatePolicyStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreatePolicyStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMd, &_s14BiomeSQLParser24PgQuery_CreatePolicyStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreatePolicyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #155 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterPolicyStmt = type metadata accessor for PgQuery_AlterPolicyStmt(0);
  v6 = *(AlterPolicyStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterPolicyStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterPolicyStmt;
  v26 = AlterPolicyStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 154)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterPolicyStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterPolicyStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPolicyStmt and conformance PgQuery_AlterPolicyStmt, type metadata accessor for PgQuery_AlterPolicyStmt, &protocol conformance descriptor for PgQuery_AlterPolicyStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterPolicyStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterPolicyStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterPolicyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #156 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  TransformStmt = type metadata accessor for PgQuery_CreateTransformStmt(0);
  v6 = *(TransformStmt - 8);
  v7 = MEMORY[0x28223BE20](TransformStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = TransformStmt;
  v26 = TransformStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 155)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateTransformStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateTransformStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTransformStmt and conformance PgQuery_CreateTransformStmt, type metadata accessor for PgQuery_CreateTransformStmt, &protocol conformance descriptor for PgQuery_CreateTransformStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateTransformStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMd, &_s14BiomeSQLParser27PgQuery_CreateTransformStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateTransformStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #157 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AmStmt = type metadata accessor for PgQuery_CreateAmStmt(0);
  v6 = *(AmStmt - 8);
  v7 = MEMORY[0x28223BE20](AmStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AmStmt;
  v26 = AmStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 156)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateAmStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateAmStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateAmStmt and conformance PgQuery_CreateAmStmt, type metadata accessor for PgQuery_CreateAmStmt, &protocol conformance descriptor for PgQuery_CreateAmStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateAmStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMd, &_s14BiomeSQLParser20PgQuery_CreateAmStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateAmStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #158 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  PublicationStmt = type metadata accessor for PgQuery_CreatePublicationStmt(0);
  v6 = *(PublicationStmt - 8);
  v7 = MEMORY[0x28223BE20](PublicationStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = PublicationStmt;
  v26 = PublicationStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 157)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreatePublicationStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreatePublicationStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePublicationStmt and conformance PgQuery_CreatePublicationStmt, type metadata accessor for PgQuery_CreatePublicationStmt, &protocol conformance descriptor for PgQuery_CreatePublicationStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreatePublicationStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMd, &_s14BiomeSQLParser29PgQuery_CreatePublicationStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreatePublicationStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #159 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterPublicationStmt = type metadata accessor for PgQuery_AlterPublicationStmt(0);
  v6 = *(AlterPublicationStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterPublicationStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterPublicationStmt;
  v26 = AlterPublicationStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 158)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterPublicationStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterPublicationStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPublicationStmt and conformance PgQuery_AlterPublicationStmt, type metadata accessor for PgQuery_AlterPublicationStmt, &protocol conformance descriptor for PgQuery_AlterPublicationStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterPublicationStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMd, &_s14BiomeSQLParser28PgQuery_AlterPublicationStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterPublicationStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #160 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  SubscriptionStmt = type metadata accessor for PgQuery_CreateSubscriptionStmt(0);
  v6 = *(SubscriptionStmt - 8);
  v7 = MEMORY[0x28223BE20](SubscriptionStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = SubscriptionStmt;
  v26 = SubscriptionStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 159)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateSubscriptionStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateSubscriptionStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSubscriptionStmt and conformance PgQuery_CreateSubscriptionStmt, type metadata accessor for PgQuery_CreateSubscriptionStmt, &protocol conformance descriptor for PgQuery_CreateSubscriptionStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateSubscriptionStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMd, &_s14BiomeSQLParser30PgQuery_CreateSubscriptionStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateSubscriptionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #161 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterSubscriptionStmt = type metadata accessor for PgQuery_AlterSubscriptionStmt(0);
  v6 = *(AlterSubscriptionStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterSubscriptionStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterSubscriptionStmt;
  v26 = AlterSubscriptionStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 160)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterSubscriptionStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterSubscriptionStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionStmt and conformance PgQuery_AlterSubscriptionStmt, type metadata accessor for PgQuery_AlterSubscriptionStmt, &protocol conformance descriptor for PgQuery_AlterSubscriptionStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterSubscriptionStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMd, &_s14BiomeSQLParser29PgQuery_AlterSubscriptionStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterSubscriptionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #162 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  DropSubscriptionStmt = type metadata accessor for PgQuery_DropSubscriptionStmt(0);
  v6 = *(DropSubscriptionStmt - 8);
  v7 = MEMORY[0x28223BE20](DropSubscriptionStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = DropSubscriptionStmt;
  v26 = DropSubscriptionStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 161)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_DropSubscriptionStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_DropSubscriptionStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropSubscriptionStmt and conformance PgQuery_DropSubscriptionStmt, type metadata accessor for PgQuery_DropSubscriptionStmt, &protocol conformance descriptor for PgQuery_DropSubscriptionStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_DropSubscriptionStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMd, &_s14BiomeSQLParser28PgQuery_DropSubscriptionStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_DropSubscriptionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #163 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  StatsStmt = type metadata accessor for PgQuery_CreateStatsStmt(0);
  v6 = *(StatsStmt - 8);
  v7 = MEMORY[0x28223BE20](StatsStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = StatsStmt;
  v26 = StatsStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 162)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateStatsStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateStatsStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStatsStmt and conformance PgQuery_CreateStatsStmt, type metadata accessor for PgQuery_CreateStatsStmt, &protocol conformance descriptor for PgQuery_CreateStatsStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateStatsStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMd, &_s14BiomeSQLParser23PgQuery_CreateStatsStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateStatsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #164 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterCollationStmt = type metadata accessor for PgQuery_AlterCollationStmt(0);
  v6 = *(AlterCollationStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterCollationStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterCollationStmt;
  v26 = AlterCollationStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 163)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterCollationStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterCollationStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterCollationStmt and conformance PgQuery_AlterCollationStmt, type metadata accessor for PgQuery_AlterCollationStmt, &protocol conformance descriptor for PgQuery_AlterCollationStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterCollationStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMd, &_s14BiomeSQLParser26PgQuery_AlterCollationStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterCollationStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #165 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  v5 = type metadata accessor for PgQuery_CallStmt(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 164)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CallStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CallStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallStmt and conformance PgQuery_CallStmt, type metadata accessor for PgQuery_CallStmt, &protocol conformance descriptor for PgQuery_CallStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CallStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CallStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CallStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #166 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterStatsStmt = type metadata accessor for PgQuery_AlterStatsStmt(0);
  v6 = *(AlterStatsStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterStatsStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterStatsStmt;
  v26 = AlterStatsStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 165)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterStatsStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterStatsStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterStatsStmt and conformance PgQuery_AlterStatsStmt, type metadata accessor for PgQuery_AlterStatsStmt, &protocol conformance descriptor for PgQuery_AlterStatsStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterStatsStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterStatsStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterStatsStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #167 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  A_Expr = type metadata accessor for PgQuery_A_Expr(0);
  v6 = *(A_Expr - 8);
  v7 = MEMORY[0x28223BE20](A_Expr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = A_Expr;
  v26 = A_Expr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 166)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_A_Expr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_A_Expr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Expr and conformance PgQuery_A_Expr, type metadata accessor for PgQuery_A_Expr, &protocol conformance descriptor for PgQuery_A_Expr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_A_Expr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMd, &_s14BiomeSQLParser14PgQuery_A_ExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_A_Expr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #168 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ColumnRef = type metadata accessor for PgQuery_ColumnRef(0);
  v6 = *(ColumnRef - 8);
  v7 = MEMORY[0x28223BE20](ColumnRef);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ColumnRef;
  v26 = ColumnRef;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 167)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ColumnRef);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ColumnRef);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnRef and conformance PgQuery_ColumnRef, type metadata accessor for PgQuery_ColumnRef, &protocol conformance descriptor for PgQuery_ColumnRef);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ColumnRef);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnRefVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ColumnRef);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #169 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ParamRef = type metadata accessor for PgQuery_ParamRef(0);
  v6 = *(ParamRef - 8);
  v7 = MEMORY[0x28223BE20](ParamRef);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ParamRef;
  v26 = ParamRef;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 168)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ParamRef);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ParamRef);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ParamRef and conformance PgQuery_ParamRef, type metadata accessor for PgQuery_ParamRef, &protocol conformance descriptor for PgQuery_ParamRef);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ParamRef);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMd, &_s14BiomeSQLParser16PgQuery_ParamRefVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ParamRef);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #170 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  A_Const = type metadata accessor for PgQuery_A_Const(0);
  v6 = *(A_Const - 8);
  v7 = MEMORY[0x28223BE20](A_Const);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = A_Const;
  v26 = A_Const;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 169)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_A_Const);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_A_Const);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Const and conformance PgQuery_A_Const, type metadata accessor for PgQuery_A_Const, &protocol conformance descriptor for PgQuery_A_Const);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_A_Const);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMd, &_s14BiomeSQLParser15PgQuery_A_ConstVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_A_Const);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #171 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  v5 = type metadata accessor for PgQuery_FuncCall(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 170)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_FuncCall);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_FuncCall);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall, &protocol conformance descriptor for PgQuery_FuncCall);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_FuncCall);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_FuncCall);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #172 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  A_Star = type metadata accessor for PgQuery_A_Star(0);
  v6 = *(A_Star - 8);
  v7 = MEMORY[0x28223BE20](A_Star);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = A_Star;
  v26 = A_Star;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 171)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_A_Star);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_A_Star);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Star and conformance PgQuery_A_Star, type metadata accessor for PgQuery_A_Star, &protocol conformance descriptor for PgQuery_A_Star);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_A_Star);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_A_StarVSgMd, &_s14BiomeSQLParser14PgQuery_A_StarVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_A_Star);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #173 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  A_Indices = type metadata accessor for PgQuery_A_Indices(0);
  v6 = *(A_Indices - 8);
  v7 = MEMORY[0x28223BE20](A_Indices);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = A_Indices;
  v26 = A_Indices;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 172)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_A_Indices);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_A_Indices);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indices and conformance PgQuery_A_Indices, type metadata accessor for PgQuery_A_Indices, &protocol conformance descriptor for PgQuery_A_Indices);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_A_Indices);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMd, &_s14BiomeSQLParser17PgQuery_A_IndicesVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_A_Indices);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #174 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  A_Indirection = type metadata accessor for PgQuery_A_Indirection(0);
  v6 = *(A_Indirection - 8);
  v7 = MEMORY[0x28223BE20](A_Indirection);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = A_Indirection;
  v26 = A_Indirection;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 173)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_A_Indirection);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_A_Indirection);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indirection and conformance PgQuery_A_Indirection, type metadata accessor for PgQuery_A_Indirection, &protocol conformance descriptor for PgQuery_A_Indirection);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_A_Indirection);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMd, &_s14BiomeSQLParser21PgQuery_A_IndirectionVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_A_Indirection);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}
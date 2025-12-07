uint64_t closure #175 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  A_ArrayExpr = type metadata accessor for PgQuery_A_ArrayExpr(0);
  v6 = *(A_ArrayExpr - 8);
  v7 = MEMORY[0x28223BE20](A_ArrayExpr);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMd, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = A_ArrayExpr;
  v26 = A_ArrayExpr;
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
    if (swift_getEnumCaseMultiPayload() == 174)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMd, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_A_ArrayExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_A_ArrayExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_ArrayExpr and conformance PgQuery_A_ArrayExpr, type metadata accessor for PgQuery_A_ArrayExpr, &protocol conformance descriptor for PgQuery_A_ArrayExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMd, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMd, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMd, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMd, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_A_ArrayExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMd, &_s14BiomeSQLParser19PgQuery_A_ArrayExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_A_ArrayExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #176 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ResTarget = type metadata accessor for PgQuery_ResTarget(0);
  v6 = *(ResTarget - 8);
  v7 = MEMORY[0x28223BE20](ResTarget);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_ResTargetVSgMd, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ResTarget;
  v26 = ResTarget;
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
    if (swift_getEnumCaseMultiPayload() == 175)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMd, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ResTarget);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ResTarget);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ResTarget and conformance PgQuery_ResTarget, type metadata accessor for PgQuery_ResTarget, &protocol conformance descriptor for PgQuery_ResTarget);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMd, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMd, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMd, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMd, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ResTarget);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMd, &_s14BiomeSQLParser17PgQuery_ResTargetVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ResTarget);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #177 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  MultiAssignRef = type metadata accessor for PgQuery_MultiAssignRef(0);
  v6 = *(MultiAssignRef - 8);
  v7 = MEMORY[0x28223BE20](MultiAssignRef);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMd, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = MultiAssignRef;
  v26 = MultiAssignRef;
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
    if (swift_getEnumCaseMultiPayload() == 176)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMd, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_MultiAssignRef);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_MultiAssignRef);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MultiAssignRef and conformance PgQuery_MultiAssignRef, type metadata accessor for PgQuery_MultiAssignRef, &protocol conformance descriptor for PgQuery_MultiAssignRef);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMd, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMd, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMd, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMd, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_MultiAssignRef);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMd, &_s14BiomeSQLParser22PgQuery_MultiAssignRefVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_MultiAssignRef);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #178 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  TypeCast = type metadata accessor for PgQuery_TypeCast(0);
  v6 = *(TypeCast - 8);
  v7 = MEMORY[0x28223BE20](TypeCast);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeCastVSgMd, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = TypeCast;
  v26 = TypeCast;
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
    if (swift_getEnumCaseMultiPayload() == 177)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMd, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_TypeCast);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_TypeCast);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeCast and conformance PgQuery_TypeCast, type metadata accessor for PgQuery_TypeCast, &protocol conformance descriptor for PgQuery_TypeCast);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMd, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMd, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMd, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMd, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_TypeCast);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMd, &_s14BiomeSQLParser16PgQuery_TypeCastVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_TypeCast);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #179 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  v6 = *(CollateClause - 8);
  v7 = MEMORY[0x28223BE20](CollateClause);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = CollateClause;
  v26 = CollateClause;
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
    if (swift_getEnumCaseMultiPayload() == 178)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CollateClause);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CollateClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause, &protocol conformance descriptor for PgQuery_CollateClause);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CollateClause);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CollateClause);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #180 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  SortBy = type metadata accessor for PgQuery_SortBy(0);
  v6 = *(SortBy - 8);
  v7 = MEMORY[0x28223BE20](SortBy);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_SortByVSgMd, &_s14BiomeSQLParser14PgQuery_SortByVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = SortBy;
  v26 = SortBy;
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
    if (swift_getEnumCaseMultiPayload() == 179)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_SortByVSgMd, &_s14BiomeSQLParser14PgQuery_SortByVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_SortBy);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_SortBy);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortBy and conformance PgQuery_SortBy, type metadata accessor for PgQuery_SortBy, &protocol conformance descriptor for PgQuery_SortBy);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_SortByVSgMd, &_s14BiomeSQLParser14PgQuery_SortByVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser14PgQuery_SortByVSgMd, &_s14BiomeSQLParser14PgQuery_SortByVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_SortByVSgMd, &_s14BiomeSQLParser14PgQuery_SortByVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser14PgQuery_SortByVSgMd, &_s14BiomeSQLParser14PgQuery_SortByVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_SortBy);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_SortByVSgMd, &_s14BiomeSQLParser14PgQuery_SortByVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_SortBy);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #181 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  WindowDef = type metadata accessor for PgQuery_WindowDef(0);
  v6 = *(WindowDef - 8);
  v7 = MEMORY[0x28223BE20](WindowDef);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = WindowDef;
  v26 = WindowDef;
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
    if (swift_getEnumCaseMultiPayload() == 180)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_WindowDef);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_WindowDef);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowDef and conformance PgQuery_WindowDef, type metadata accessor for PgQuery_WindowDef, &protocol conformance descriptor for PgQuery_WindowDef);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_WindowDef);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_WindowDef);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #182 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RangeSubselect = type metadata accessor for PgQuery_RangeSubselect(0);
  v6 = *(RangeSubselect - 8);
  v7 = MEMORY[0x28223BE20](RangeSubselect);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMd, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RangeSubselect;
  v26 = RangeSubselect;
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
    if (swift_getEnumCaseMultiPayload() == 181)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMd, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RangeSubselect);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RangeSubselect);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeSubselect and conformance PgQuery_RangeSubselect, type metadata accessor for PgQuery_RangeSubselect, &protocol conformance descriptor for PgQuery_RangeSubselect);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMd, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMd, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMd, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMd, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RangeSubselect);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMd, &_s14BiomeSQLParser22PgQuery_RangeSubselectVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RangeSubselect);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #183 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RangeFunction = type metadata accessor for PgQuery_RangeFunction(0);
  v6 = *(RangeFunction - 8);
  v7 = MEMORY[0x28223BE20](RangeFunction);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RangeFunction;
  v26 = RangeFunction;
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
    if (swift_getEnumCaseMultiPayload() == 182)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RangeFunction);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RangeFunction);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeFunction and conformance PgQuery_RangeFunction, type metadata accessor for PgQuery_RangeFunction, &protocol conformance descriptor for PgQuery_RangeFunction);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RangeFunction);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMd, &_s14BiomeSQLParser21PgQuery_RangeFunctionVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RangeFunction);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #184 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RangeTableSample = type metadata accessor for PgQuery_RangeTableSample(0);
  v6 = *(RangeTableSample - 8);
  v7 = MEMORY[0x28223BE20](RangeTableSample);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RangeTableSample;
  v26 = RangeTableSample;
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
    if (swift_getEnumCaseMultiPayload() == 183)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RangeTableSample);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RangeTableSample);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableSample and conformance PgQuery_RangeTableSample, type metadata accessor for PgQuery_RangeTableSample, &protocol conformance descriptor for PgQuery_RangeTableSample);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RangeTableSample);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTableSampleVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RangeTableSample);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #185 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RangeTableFunc = type metadata accessor for PgQuery_RangeTableFunc(0);
  v6 = *(RangeTableFunc - 8);
  v7 = MEMORY[0x28223BE20](RangeTableFunc);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMd, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RangeTableFunc;
  v26 = RangeTableFunc;
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
    if (swift_getEnumCaseMultiPayload() == 184)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMd, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RangeTableFunc);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RangeTableFunc);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFunc and conformance PgQuery_RangeTableFunc, type metadata accessor for PgQuery_RangeTableFunc, &protocol conformance descriptor for PgQuery_RangeTableFunc);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMd, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMd, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMd, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMd, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RangeTableFunc);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMd, &_s14BiomeSQLParser22PgQuery_RangeTableFuncVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RangeTableFunc);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #186 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RangeTableFuncCol = type metadata accessor for PgQuery_RangeTableFuncCol(0);
  v6 = *(RangeTableFuncCol - 8);
  v7 = MEMORY[0x28223BE20](RangeTableFuncCol);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMd, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RangeTableFuncCol;
  v26 = RangeTableFuncCol;
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
    if (swift_getEnumCaseMultiPayload() == 185)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMd, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RangeTableFuncCol);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RangeTableFuncCol);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFuncCol and conformance PgQuery_RangeTableFuncCol, type metadata accessor for PgQuery_RangeTableFuncCol, &protocol conformance descriptor for PgQuery_RangeTableFuncCol);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMd, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMd, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMd, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMd, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RangeTableFuncCol);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMd, &_s14BiomeSQLParser25PgQuery_RangeTableFuncColVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RangeTableFuncCol);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #187 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v6 = *(TypeName - 8);
  v7 = MEMORY[0x28223BE20](TypeName);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = TypeName;
  v26 = TypeName;
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
    if (swift_getEnumCaseMultiPayload() == 186)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_TypeName);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_TypeName);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_TypeName);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_TypeName);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #188 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ColumnDef = type metadata accessor for PgQuery_ColumnDef(0);
  v6 = *(ColumnDef - 8);
  v7 = MEMORY[0x28223BE20](ColumnDef);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_ColumnDefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ColumnDef;
  v26 = ColumnDef;
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
    if (swift_getEnumCaseMultiPayload() == 187)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ColumnDef);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ColumnDef);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnDef and conformance PgQuery_ColumnDef, type metadata accessor for PgQuery_ColumnDef, &protocol conformance descriptor for PgQuery_ColumnDef);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ColumnDef);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMd, &_s14BiomeSQLParser17PgQuery_ColumnDefVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ColumnDef);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #189 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  IndexElem = type metadata accessor for PgQuery_IndexElem(0);
  v6 = *(IndexElem - 8);
  v7 = MEMORY[0x28223BE20](IndexElem);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_IndexElemVSgMd, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = IndexElem;
  v26 = IndexElem;
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
    if (swift_getEnumCaseMultiPayload() == 188)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMd, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_IndexElem);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_IndexElem);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexElem and conformance PgQuery_IndexElem, type metadata accessor for PgQuery_IndexElem, &protocol conformance descriptor for PgQuery_IndexElem);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMd, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMd, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMd, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMd, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_IndexElem);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMd, &_s14BiomeSQLParser17PgQuery_IndexElemVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_IndexElem);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #190 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  Constraint = type metadata accessor for PgQuery_Constraint(0);
  v6 = *(Constraint - 8);
  v7 = MEMORY[0x28223BE20](Constraint);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_ConstraintVSgMd, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = Constraint;
  v26 = Constraint;
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
    if (swift_getEnumCaseMultiPayload() == 189)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMd, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_Constraint);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_Constraint);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Constraint and conformance PgQuery_Constraint, type metadata accessor for PgQuery_Constraint, &protocol conformance descriptor for PgQuery_Constraint);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMd, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMd, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMd, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMd, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_Constraint);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMd, &_s14BiomeSQLParser18PgQuery_ConstraintVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_Constraint);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #191 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  DefElem = type metadata accessor for PgQuery_DefElem(0);
  v6 = *(DefElem - 8);
  v7 = MEMORY[0x28223BE20](DefElem);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_DefElemVSgMd, &_s14BiomeSQLParser15PgQuery_DefElemVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = DefElem;
  v26 = DefElem;
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
    if (swift_getEnumCaseMultiPayload() == 190)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_DefElemVSgMd, &_s14BiomeSQLParser15PgQuery_DefElemVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_DefElem);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_DefElem);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefElem and conformance PgQuery_DefElem, type metadata accessor for PgQuery_DefElem, &protocol conformance descriptor for PgQuery_DefElem);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_DefElemVSgMd, &_s14BiomeSQLParser15PgQuery_DefElemVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser15PgQuery_DefElemVSgMd, &_s14BiomeSQLParser15PgQuery_DefElemVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_DefElemVSgMd, &_s14BiomeSQLParser15PgQuery_DefElemVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser15PgQuery_DefElemVSgMd, &_s14BiomeSQLParser15PgQuery_DefElemVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_DefElem);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_DefElemVSgMd, &_s14BiomeSQLParser15PgQuery_DefElemVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_DefElem);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #192 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RangeTblEntry = type metadata accessor for PgQuery_RangeTblEntry(0);
  v6 = *(RangeTblEntry - 8);
  v7 = MEMORY[0x28223BE20](RangeTblEntry);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMd, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RangeTblEntry;
  v26 = RangeTblEntry;
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
    if (swift_getEnumCaseMultiPayload() == 191)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMd, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RangeTblEntry);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RangeTblEntry);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblEntry and conformance PgQuery_RangeTblEntry, type metadata accessor for PgQuery_RangeTblEntry, &protocol conformance descriptor for PgQuery_RangeTblEntry);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMd, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMd, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMd, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMd, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RangeTblEntry);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMd, &_s14BiomeSQLParser21PgQuery_RangeTblEntryVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RangeTblEntry);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #193 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RangeTblFunction = type metadata accessor for PgQuery_RangeTblFunction(0);
  v6 = *(RangeTblFunction - 8);
  v7 = MEMORY[0x28223BE20](RangeTblFunction);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RangeTblFunction;
  v26 = RangeTblFunction;
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
    if (swift_getEnumCaseMultiPayload() == 192)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RangeTblFunction);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RangeTblFunction);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblFunction and conformance PgQuery_RangeTblFunction, type metadata accessor for PgQuery_RangeTblFunction, &protocol conformance descriptor for PgQuery_RangeTblFunction);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RangeTblFunction);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_RangeTblFunctionVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RangeTblFunction);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #194 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  TableSampleClause = type metadata accessor for PgQuery_TableSampleClause(0);
  v6 = *(TableSampleClause - 8);
  v7 = MEMORY[0x28223BE20](TableSampleClause);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = TableSampleClause;
  v26 = TableSampleClause;
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
    if (swift_getEnumCaseMultiPayload() == 193)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_TableSampleClause);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_TableSampleClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableSampleClause and conformance PgQuery_TableSampleClause, type metadata accessor for PgQuery_TableSampleClause, &protocol conformance descriptor for PgQuery_TableSampleClause);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_TableSampleClause);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_TableSampleClause);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #195 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  v5 = type metadata accessor for PgQuery_WithCheckOption(0);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMd, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMR);
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
    if (swift_getEnumCaseMultiPayload() == 194)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMd, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_WithCheckOption);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_WithCheckOption);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithCheckOption and conformance PgQuery_WithCheckOption, type metadata accessor for PgQuery_WithCheckOption, &protocol conformance descriptor for PgQuery_WithCheckOption);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMd, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMd, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMd, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMd, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_WithCheckOption);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMd, &_s14BiomeSQLParser23PgQuery_WithCheckOptionVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_WithCheckOption);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #196 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  SortGroupClause = type metadata accessor for PgQuery_SortGroupClause(0);
  v6 = *(SortGroupClause - 8);
  v7 = MEMORY[0x28223BE20](SortGroupClause);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMd, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = SortGroupClause;
  v26 = SortGroupClause;
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
    if (swift_getEnumCaseMultiPayload() == 195)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMd, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_SortGroupClause);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_SortGroupClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortGroupClause and conformance PgQuery_SortGroupClause, type metadata accessor for PgQuery_SortGroupClause, &protocol conformance descriptor for PgQuery_SortGroupClause);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMd, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMd, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMd, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMd, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_SortGroupClause);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMd, &_s14BiomeSQLParser23PgQuery_SortGroupClauseVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_SortGroupClause);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #197 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  GroupingSet = type metadata accessor for PgQuery_GroupingSet(0);
  v6 = *(GroupingSet - 8);
  v7 = MEMORY[0x28223BE20](GroupingSet);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_GroupingSetVSgMd, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = GroupingSet;
  v26 = GroupingSet;
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
    if (swift_getEnumCaseMultiPayload() == 196)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMd, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_GroupingSet);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_GroupingSet);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GroupingSet and conformance PgQuery_GroupingSet, type metadata accessor for PgQuery_GroupingSet, &protocol conformance descriptor for PgQuery_GroupingSet);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMd, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMd, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMd, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMd, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_GroupingSet);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMd, &_s14BiomeSQLParser19PgQuery_GroupingSetVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_GroupingSet);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #198 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  WindowClause = type metadata accessor for PgQuery_WindowClause(0);
  v6 = *(WindowClause - 8);
  v7 = MEMORY[0x28223BE20](WindowClause);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_WindowClauseVSgMd, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = WindowClause;
  v26 = WindowClause;
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
    if (swift_getEnumCaseMultiPayload() == 197)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMd, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_WindowClause);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_WindowClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowClause and conformance PgQuery_WindowClause, type metadata accessor for PgQuery_WindowClause, &protocol conformance descriptor for PgQuery_WindowClause);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMd, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMd, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMd, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMd, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_WindowClause);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMd, &_s14BiomeSQLParser20PgQuery_WindowClauseVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_WindowClause);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #199 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v6 = *(ObjectWithArgs - 8);
  v7 = MEMORY[0x28223BE20](ObjectWithArgs);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ObjectWithArgs;
  v26 = ObjectWithArgs;
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
    if (swift_getEnumCaseMultiPayload() == 198)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ObjectWithArgs);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ObjectWithArgs);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ObjectWithArgs);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #200 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AccessPriv = type metadata accessor for PgQuery_AccessPriv(0);
  v6 = *(AccessPriv - 8);
  v7 = MEMORY[0x28223BE20](AccessPriv);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_AccessPrivVSgMd, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AccessPriv;
  v26 = AccessPriv;
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
    if (swift_getEnumCaseMultiPayload() == 199)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMd, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AccessPriv);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AccessPriv);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AccessPriv and conformance PgQuery_AccessPriv, type metadata accessor for PgQuery_AccessPriv, &protocol conformance descriptor for PgQuery_AccessPriv);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMd, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMd, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMd, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMd, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AccessPriv);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMd, &_s14BiomeSQLParser18PgQuery_AccessPrivVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AccessPriv);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #201 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  OpClassItem = type metadata accessor for PgQuery_CreateOpClassItem(0);
  v6 = *(OpClassItem - 8);
  v7 = MEMORY[0x28223BE20](OpClassItem);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = OpClassItem;
  v26 = OpClassItem;
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
    if (swift_getEnumCaseMultiPayload() == 200)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateOpClassItem);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateOpClassItem);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassItem and conformance PgQuery_CreateOpClassItem, type metadata accessor for PgQuery_CreateOpClassItem, &protocol conformance descriptor for PgQuery_CreateOpClassItem);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateOpClassItem);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMd, &_s14BiomeSQLParser25PgQuery_CreateOpClassItemVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateOpClassItem);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #202 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  TableLikeClause = type metadata accessor for PgQuery_TableLikeClause(0);
  v6 = *(TableLikeClause - 8);
  v7 = MEMORY[0x28223BE20](TableLikeClause);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMd, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = TableLikeClause;
  v26 = TableLikeClause;
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
    if (swift_getEnumCaseMultiPayload() == 201)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMd, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_TableLikeClause);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_TableLikeClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableLikeClause and conformance PgQuery_TableLikeClause, type metadata accessor for PgQuery_TableLikeClause, &protocol conformance descriptor for PgQuery_TableLikeClause);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMd, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMd, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMd, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMd, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_TableLikeClause);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMd, &_s14BiomeSQLParser23PgQuery_TableLikeClauseVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_TableLikeClause);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #203 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  FunctionParameter = type metadata accessor for PgQuery_FunctionParameter(0);
  v6 = *(FunctionParameter - 8);
  v7 = MEMORY[0x28223BE20](FunctionParameter);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMd, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = FunctionParameter;
  v26 = FunctionParameter;
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
    if (swift_getEnumCaseMultiPayload() == 202)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMd, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_FunctionParameter);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_FunctionParameter);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FunctionParameter and conformance PgQuery_FunctionParameter, type metadata accessor for PgQuery_FunctionParameter, &protocol conformance descriptor for PgQuery_FunctionParameter);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMd, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMd, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMd, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMd, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_FunctionParameter);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMd, &_s14BiomeSQLParser25PgQuery_FunctionParameterVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_FunctionParameter);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #204 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  LockingClause = type metadata accessor for PgQuery_LockingClause(0);
  v6 = *(LockingClause - 8);
  v7 = MEMORY[0x28223BE20](LockingClause);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_LockingClauseVSgMd, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = LockingClause;
  v26 = LockingClause;
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
    if (swift_getEnumCaseMultiPayload() == 203)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMd, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_LockingClause);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_LockingClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockingClause and conformance PgQuery_LockingClause, type metadata accessor for PgQuery_LockingClause, &protocol conformance descriptor for PgQuery_LockingClause);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMd, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMd, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMd, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMd, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_LockingClause);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMd, &_s14BiomeSQLParser21PgQuery_LockingClauseVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_LockingClause);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #205 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RowMarkClause = type metadata accessor for PgQuery_RowMarkClause(0);
  v6 = *(RowMarkClause - 8);
  v7 = MEMORY[0x28223BE20](RowMarkClause);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMd, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RowMarkClause;
  v26 = RowMarkClause;
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
    if (swift_getEnumCaseMultiPayload() == 204)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMd, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RowMarkClause);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RowMarkClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowMarkClause and conformance PgQuery_RowMarkClause, type metadata accessor for PgQuery_RowMarkClause, &protocol conformance descriptor for PgQuery_RowMarkClause);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMd, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMd, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMd, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMd, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RowMarkClause);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMd, &_s14BiomeSQLParser21PgQuery_RowMarkClauseVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RowMarkClause);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #206 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  XmlSerialize = type metadata accessor for PgQuery_XmlSerialize(0);
  v6 = *(XmlSerialize - 8);
  v7 = MEMORY[0x28223BE20](XmlSerialize);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMd, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = XmlSerialize;
  v26 = XmlSerialize;
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
    if (swift_getEnumCaseMultiPayload() == 205)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMd, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_XmlSerialize);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_XmlSerialize);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlSerialize and conformance PgQuery_XmlSerialize, type metadata accessor for PgQuery_XmlSerialize, &protocol conformance descriptor for PgQuery_XmlSerialize);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMd, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMd, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMd, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMd, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_XmlSerialize);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMd, &_s14BiomeSQLParser20PgQuery_XmlSerializeVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_XmlSerialize);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #207 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  v5 = type metadata accessor for PgQuery_WithClause(0);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
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
    if (swift_getEnumCaseMultiPayload() == 206)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_WithClause);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_WithClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause, &protocol conformance descriptor for PgQuery_WithClause);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_WithClause);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_WithClause);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #208 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  InferClause = type metadata accessor for PgQuery_InferClause(0);
  v6 = *(InferClause - 8);
  v7 = MEMORY[0x28223BE20](InferClause);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = InferClause;
  v26 = InferClause;
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
    if (swift_getEnumCaseMultiPayload() == 207)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_InferClause);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_InferClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferClause and conformance PgQuery_InferClause, type metadata accessor for PgQuery_InferClause, &protocol conformance descriptor for PgQuery_InferClause);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_InferClause);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_InferClause);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #209 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  v5 = type metadata accessor for PgQuery_OnConflictClause(0);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
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
    if (swift_getEnumCaseMultiPayload() == 208)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_OnConflictClause);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_OnConflictClause);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictClause and conformance PgQuery_OnConflictClause, type metadata accessor for PgQuery_OnConflictClause, &protocol conformance descriptor for PgQuery_OnConflictClause);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_OnConflictClause);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_OnConflictClause);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #210 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  CommonTableExpr = type metadata accessor for PgQuery_CommonTableExpr(0);
  v6 = *(CommonTableExpr - 8);
  v7 = MEMORY[0x28223BE20](CommonTableExpr);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMd, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = CommonTableExpr;
  v26 = CommonTableExpr;
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
    if (swift_getEnumCaseMultiPayload() == 209)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMd, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CommonTableExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CommonTableExpr);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommonTableExpr and conformance PgQuery_CommonTableExpr, type metadata accessor for PgQuery_CommonTableExpr, &protocol conformance descriptor for PgQuery_CommonTableExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMd, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMd, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMd, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMd, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CommonTableExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMd, &_s14BiomeSQLParser23PgQuery_CommonTableExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CommonTableExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #211 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v6 = *(RoleSpec - 8);
  v7 = MEMORY[0x28223BE20](RoleSpec);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RoleSpec;
  v26 = RoleSpec;
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
    if (swift_getEnumCaseMultiPayload() == 210)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RoleSpec);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RoleSpec);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RoleSpec);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RoleSpec);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #212 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  TriggerTransition = type metadata accessor for PgQuery_TriggerTransition(0);
  v6 = *(TriggerTransition - 8);
  v7 = MEMORY[0x28223BE20](TriggerTransition);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMd, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = TriggerTransition;
  v26 = TriggerTransition;
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
    if (swift_getEnumCaseMultiPayload() == 211)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMd, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_TriggerTransition);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_TriggerTransition);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TriggerTransition and conformance PgQuery_TriggerTransition, type metadata accessor for PgQuery_TriggerTransition, &protocol conformance descriptor for PgQuery_TriggerTransition);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMd, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMd, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMd, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMd, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_TriggerTransition);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMd, &_s14BiomeSQLParser25PgQuery_TriggerTransitionVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_TriggerTransition);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #213 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  PartitionElem = type metadata accessor for PgQuery_PartitionElem(0);
  v6 = *(PartitionElem - 8);
  v7 = MEMORY[0x28223BE20](PartitionElem);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_PartitionElemVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = PartitionElem;
  v26 = PartitionElem;
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
    if (swift_getEnumCaseMultiPayload() == 212)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_PartitionElem);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_PartitionElem);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionElem and conformance PgQuery_PartitionElem, type metadata accessor for PgQuery_PartitionElem, &protocol conformance descriptor for PgQuery_PartitionElem);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_PartitionElem);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionElemVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_PartitionElem);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #214 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  PartitionSpec = type metadata accessor for PgQuery_PartitionSpec(0);
  v6 = *(PartitionSpec - 8);
  v7 = MEMORY[0x28223BE20](PartitionSpec);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = PartitionSpec;
  v26 = PartitionSpec;
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
    if (swift_getEnumCaseMultiPayload() == 213)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_PartitionSpec);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_PartitionSpec);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionSpec and conformance PgQuery_PartitionSpec, type metadata accessor for PgQuery_PartitionSpec, &protocol conformance descriptor for PgQuery_PartitionSpec);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_PartitionSpec);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_PartitionSpec);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #215 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  v6 = *(PartitionBoundSpec - 8);
  v7 = MEMORY[0x28223BE20](PartitionBoundSpec);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = PartitionBoundSpec;
  v26 = PartitionBoundSpec;
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
    if (swift_getEnumCaseMultiPayload() == 214)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_PartitionBoundSpec);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_PartitionBoundSpec);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec, type metadata accessor for PgQuery_PartitionBoundSpec, &protocol conformance descriptor for PgQuery_PartitionBoundSpec);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_PartitionBoundSpec);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_PartitionBoundSpec);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #216 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  PartitionRangeDatum = type metadata accessor for PgQuery_PartitionRangeDatum(0);
  v6 = *(PartitionRangeDatum - 8);
  v7 = MEMORY[0x28223BE20](PartitionRangeDatum);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMd, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = PartitionRangeDatum;
  v26 = PartitionRangeDatum;
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
    if (swift_getEnumCaseMultiPayload() == 215)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMd, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_PartitionRangeDatum);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_PartitionRangeDatum);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatum and conformance PgQuery_PartitionRangeDatum, type metadata accessor for PgQuery_PartitionRangeDatum, &protocol conformance descriptor for PgQuery_PartitionRangeDatum);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMd, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMd, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMd, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMd, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_PartitionRangeDatum);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMd, &_s14BiomeSQLParser27PgQuery_PartitionRangeDatumVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_PartitionRangeDatum);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #217 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  PartitionCmd = type metadata accessor for PgQuery_PartitionCmd(0);
  v6 = *(PartitionCmd - 8);
  v7 = MEMORY[0x28223BE20](PartitionCmd);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMd, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = PartitionCmd;
  v26 = PartitionCmd;
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
    if (swift_getEnumCaseMultiPayload() == 216)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMd, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_PartitionCmd);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_PartitionCmd);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionCmd and conformance PgQuery_PartitionCmd, type metadata accessor for PgQuery_PartitionCmd, &protocol conformance descriptor for PgQuery_PartitionCmd);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMd, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMd, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMd, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMd, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_PartitionCmd);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMd, &_s14BiomeSQLParser20PgQuery_PartitionCmdVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_PartitionCmd);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #218 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  VacuumRelation = type metadata accessor for PgQuery_VacuumRelation(0);
  v6 = *(VacuumRelation - 8);
  v7 = MEMORY[0x28223BE20](VacuumRelation);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMd, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = VacuumRelation;
  v26 = VacuumRelation;
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
    if (swift_getEnumCaseMultiPayload() == 217)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMd, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_VacuumRelation);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_VacuumRelation);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumRelation and conformance PgQuery_VacuumRelation, type metadata accessor for PgQuery_VacuumRelation, &protocol conformance descriptor for PgQuery_VacuumRelation);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMd, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMd, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMd, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMd, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_VacuumRelation);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMd, &_s14BiomeSQLParser22PgQuery_VacuumRelationVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_VacuumRelation);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #219 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  InlineCodeBlock = type metadata accessor for PgQuery_InlineCodeBlock(0);
  v6 = *(InlineCodeBlock - 8);
  v7 = MEMORY[0x28223BE20](InlineCodeBlock);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMd, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = InlineCodeBlock;
  v26 = InlineCodeBlock;
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
    if (swift_getEnumCaseMultiPayload() == 218)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMd, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_InlineCodeBlock);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_InlineCodeBlock);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InlineCodeBlock and conformance PgQuery_InlineCodeBlock, type metadata accessor for PgQuery_InlineCodeBlock, &protocol conformance descriptor for PgQuery_InlineCodeBlock);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMd, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMd, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMd, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMd, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_InlineCodeBlock);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMd, &_s14BiomeSQLParser23PgQuery_InlineCodeBlockVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_InlineCodeBlock);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #220 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  v5 = type metadata accessor for PgQuery_CallContext(0);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_CallContextVSgMd, &_s14BiomeSQLParser19PgQuery_CallContextVSgMR);
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
    if (swift_getEnumCaseMultiPayload() == 219)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_CallContextVSgMd, &_s14BiomeSQLParser19PgQuery_CallContextVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CallContext);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CallContext);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallContext and conformance PgQuery_CallContext, type metadata accessor for PgQuery_CallContext, &protocol conformance descriptor for PgQuery_CallContext);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_CallContextVSgMd, &_s14BiomeSQLParser19PgQuery_CallContextVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_CallContextVSgMd, &_s14BiomeSQLParser19PgQuery_CallContextVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_CallContextVSgMd, &_s14BiomeSQLParser19PgQuery_CallContextVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_CallContextVSgMd, &_s14BiomeSQLParser19PgQuery_CallContextVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CallContext);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_CallContextVSgMd, &_s14BiomeSQLParser19PgQuery_CallContextVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CallContext);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #221 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  Integer = type metadata accessor for PgQuery_Integer(0);
  v6 = *(Integer - 8);
  v7 = MEMORY[0x28223BE20](Integer);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_IntegerVSgMd, &_s14BiomeSQLParser15PgQuery_IntegerVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = Integer;
  v26 = Integer;
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
    if (swift_getEnumCaseMultiPayload() == 220)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_IntegerVSgMd, &_s14BiomeSQLParser15PgQuery_IntegerVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_Integer);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_Integer);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Integer and conformance PgQuery_Integer, type metadata accessor for PgQuery_Integer, &protocol conformance descriptor for PgQuery_Integer);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_IntegerVSgMd, &_s14BiomeSQLParser15PgQuery_IntegerVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser15PgQuery_IntegerVSgMd, &_s14BiomeSQLParser15PgQuery_IntegerVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_IntegerVSgMd, &_s14BiomeSQLParser15PgQuery_IntegerVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser15PgQuery_IntegerVSgMd, &_s14BiomeSQLParser15PgQuery_IntegerVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_Integer);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_IntegerVSgMd, &_s14BiomeSQLParser15PgQuery_IntegerVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_Integer);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #222 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  Float = type metadata accessor for PgQuery_Float(0);
  v6 = *(Float - 8);
  v7 = MEMORY[0x28223BE20](Float);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_FloatVSgMd, &_s14BiomeSQLParser13PgQuery_FloatVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = Float;
  v26 = Float;
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
    if (swift_getEnumCaseMultiPayload() == 221)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser13PgQuery_FloatVSgMd, &_s14BiomeSQLParser13PgQuery_FloatVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_Float);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_Float);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Float and conformance PgQuery_Float, type metadata accessor for PgQuery_Float, &protocol conformance descriptor for PgQuery_Float);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser13PgQuery_FloatVSgMd, &_s14BiomeSQLParser13PgQuery_FloatVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser13PgQuery_FloatVSgMd, &_s14BiomeSQLParser13PgQuery_FloatVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser13PgQuery_FloatVSgMd, &_s14BiomeSQLParser13PgQuery_FloatVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser13PgQuery_FloatVSgMd, &_s14BiomeSQLParser13PgQuery_FloatVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_Float);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser13PgQuery_FloatVSgMd, &_s14BiomeSQLParser13PgQuery_FloatVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_Float);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #223 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  String = type metadata accessor for PgQuery_String(0);
  v6 = *(String - 8);
  v7 = MEMORY[0x28223BE20](String);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_StringVSgMd, &_s14BiomeSQLParser14PgQuery_StringVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = String;
  v26 = String;
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
    if (swift_getEnumCaseMultiPayload() == 222)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_StringVSgMd, &_s14BiomeSQLParser14PgQuery_StringVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_String);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_String);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_String and conformance PgQuery_String, type metadata accessor for PgQuery_String, &protocol conformance descriptor for PgQuery_String);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_StringVSgMd, &_s14BiomeSQLParser14PgQuery_StringVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser14PgQuery_StringVSgMd, &_s14BiomeSQLParser14PgQuery_StringVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_StringVSgMd, &_s14BiomeSQLParser14PgQuery_StringVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser14PgQuery_StringVSgMd, &_s14BiomeSQLParser14PgQuery_StringVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_String);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_StringVSgMd, &_s14BiomeSQLParser14PgQuery_StringVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_String);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #224 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  BitString = type metadata accessor for PgQuery_BitString(0);
  v6 = *(BitString - 8);
  v7 = MEMORY[0x28223BE20](BitString);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_BitStringVSgMd, &_s14BiomeSQLParser17PgQuery_BitStringVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = BitString;
  v26 = BitString;
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
    if (swift_getEnumCaseMultiPayload() == 223)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_BitStringVSgMd, &_s14BiomeSQLParser17PgQuery_BitStringVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_BitString);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_BitString);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BitString and conformance PgQuery_BitString, type metadata accessor for PgQuery_BitString, &protocol conformance descriptor for PgQuery_BitString);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_BitStringVSgMd, &_s14BiomeSQLParser17PgQuery_BitStringVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser17PgQuery_BitStringVSgMd, &_s14BiomeSQLParser17PgQuery_BitStringVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_BitStringVSgMd, &_s14BiomeSQLParser17PgQuery_BitStringVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser17PgQuery_BitStringVSgMd, &_s14BiomeSQLParser17PgQuery_BitStringVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_BitString);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_BitStringVSgMd, &_s14BiomeSQLParser17PgQuery_BitStringVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_BitString);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #225 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  Null = type metadata accessor for PgQuery_Null(0);
  v6 = *(Null - 8);
  v7 = MEMORY[0x28223BE20](Null);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NullVSgMd, &_s14BiomeSQLParser12PgQuery_NullVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = Null;
  v26 = Null;
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
    if (swift_getEnumCaseMultiPayload() == 224)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_NullVSgMd, &_s14BiomeSQLParser12PgQuery_NullVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_Null);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_Null);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Null and conformance PgQuery_Null, type metadata accessor for PgQuery_Null, &protocol conformance descriptor for PgQuery_Null);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_NullVSgMd, &_s14BiomeSQLParser12PgQuery_NullVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser12PgQuery_NullVSgMd, &_s14BiomeSQLParser12PgQuery_NullVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_NullVSgMd, &_s14BiomeSQLParser12PgQuery_NullVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser12PgQuery_NullVSgMd, &_s14BiomeSQLParser12PgQuery_NullVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_Null);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_NullVSgMd, &_s14BiomeSQLParser12PgQuery_NullVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_Null);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #226 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  List = type metadata accessor for PgQuery_List(0);
  v6 = *(List - 8);
  v7 = MEMORY[0x28223BE20](List);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_ListVSgMd, &_s14BiomeSQLParser12PgQuery_ListVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = List;
  v26 = List;
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
    if (swift_getEnumCaseMultiPayload() == 225)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_ListVSgMd, &_s14BiomeSQLParser12PgQuery_ListVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_List);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_List);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_List and conformance PgQuery_List, type metadata accessor for PgQuery_List, &protocol conformance descriptor for PgQuery_List);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_ListVSgMd, &_s14BiomeSQLParser12PgQuery_ListVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser12PgQuery_ListVSgMd, &_s14BiomeSQLParser12PgQuery_ListVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_ListVSgMd, &_s14BiomeSQLParser12PgQuery_ListVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser12PgQuery_ListVSgMd, &_s14BiomeSQLParser12PgQuery_ListVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_List);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_ListVSgMd, &_s14BiomeSQLParser12PgQuery_ListVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_List);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #227 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  IntList = type metadata accessor for PgQuery_IntList(0);
  v6 = *(IntList - 8);
  v7 = MEMORY[0x28223BE20](IntList);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_IntListVSgMd, &_s14BiomeSQLParser15PgQuery_IntListVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = IntList;
  v26 = IntList;
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
    if (swift_getEnumCaseMultiPayload() == 226)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_IntListVSgMd, &_s14BiomeSQLParser15PgQuery_IntListVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_IntList);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_IntList);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntList and conformance PgQuery_IntList, type metadata accessor for PgQuery_IntList, &protocol conformance descriptor for PgQuery_IntList);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_IntListVSgMd, &_s14BiomeSQLParser15PgQuery_IntListVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser15PgQuery_IntListVSgMd, &_s14BiomeSQLParser15PgQuery_IntListVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_IntListVSgMd, &_s14BiomeSQLParser15PgQuery_IntListVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser15PgQuery_IntListVSgMd, &_s14BiomeSQLParser15PgQuery_IntListVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_IntList);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_IntListVSgMd, &_s14BiomeSQLParser15PgQuery_IntListVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_IntList);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #228 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  OidList = type metadata accessor for PgQuery_OidList(0);
  v6 = *(OidList - 8);
  v7 = MEMORY[0x28223BE20](OidList);
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
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_OidListVSgMd, &_s14BiomeSQLParser15PgQuery_OidListVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = OidList;
  v26 = OidList;
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
    if (swift_getEnumCaseMultiPayload() == 227)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_OidListVSgMd, &_s14BiomeSQLParser15PgQuery_OidListVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_OidList);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_OidList);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OidList and conformance PgQuery_OidList, type metadata accessor for PgQuery_OidList, &protocol conformance descriptor for PgQuery_OidList);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_OidListVSgMd, &_s14BiomeSQLParser15PgQuery_OidListVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser15PgQuery_OidListVSgMd, &_s14BiomeSQLParser15PgQuery_OidListVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_OidListVSgMd, &_s14BiomeSQLParser15PgQuery_OidListVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser15PgQuery_OidListVSgMd, &_s14BiomeSQLParser15PgQuery_OidListVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_OidList);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_OidListVSgMd, &_s14BiomeSQLParser15PgQuery_OidListVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_OidList);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, &v13 - v9, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  result = (*(*(v11 - 8) + 48))(v10, 1, v11);
  if (result != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        closure #2 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 2u:
        closure #3 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 3u:
        closure #4 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 4u:
        closure #5 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 5u:
        closure #6 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 6u:
        closure #7 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 7u:
        closure #8 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 8u:
        closure #9 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 9u:
        closure #10 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xAu:
        closure #11 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xBu:
        closure #12 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xCu:
        closure #13 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xDu:
        closure #14 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xEu:
        closure #15 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xFu:
        closure #16 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x10u:
        closure #17 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x11u:
        closure #18 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x12u:
        closure #19 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x13u:
        closure #20 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x14u:
        closure #21 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x15u:
        closure #22 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x16u:
        closure #23 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x17u:
        closure #24 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x18u:
        closure #25 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x19u:
        closure #26 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x1Au:
        closure #27 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x1Bu:
        closure #28 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x1Cu:
        closure #29 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x1Du:
        closure #30 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x1Eu:
        closure #31 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x1Fu:
        closure #32 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x20u:
        closure #33 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x21u:
        closure #34 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x22u:
        closure #35 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x23u:
        closure #36 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x24u:
        closure #37 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x25u:
        closure #38 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x26u:
        closure #39 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x27u:
        closure #40 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x28u:
        closure #41 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x29u:
        closure #42 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x2Au:
        closure #43 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x2Bu:
        closure #44 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x2Cu:
        closure #45 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x2Du:
        closure #46 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x2Eu:
        closure #47 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x2Fu:
        closure #48 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x30u:
        closure #49 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x31u:
        closure #50 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x32u:
        closure #51 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x33u:
        closure #52 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x34u:
        closure #53 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x35u:
        closure #54 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x36u:
        closure #55 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x37u:
        closure #56 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x38u:
        closure #57 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x39u:
        closure #58 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x3Au:
        closure #59 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x3Bu:
        closure #60 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x3Cu:
        closure #61 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x3Du:
        closure #62 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x3Eu:
        closure #63 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x3Fu:
        closure #64 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x40u:
        closure #65 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x41u:
        closure #66 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x42u:
        closure #67 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x43u:
        closure #68 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x44u:
        closure #69 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x45u:
        closure #70 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x46u:
        closure #71 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x47u:
        closure #72 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x48u:
        closure #73 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x49u:
        closure #74 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x4Au:
        closure #75 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x4Bu:
        closure #76 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x4Cu:
        closure #77 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x4Du:
        closure #78 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x4Eu:
        closure #79 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x4Fu:
        closure #80 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x50u:
        closure #81 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x51u:
        closure #82 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x52u:
        closure #83 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x53u:
        closure #84 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x54u:
        closure #85 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x55u:
        closure #86 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x56u:
        closure #87 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x57u:
        closure #88 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x58u:
        closure #89 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x59u:
        closure #90 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x5Au:
        closure #91 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x5Bu:
        closure #92 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x5Cu:
        closure #93 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x5Du:
        closure #94 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x5Eu:
        closure #95 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x5Fu:
        closure #96 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x60u:
        closure #97 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x61u:
        closure #98 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x62u:
        closure #99 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x63u:
        closure #100 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x64u:
        closure #101 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x65u:
        closure #102 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x66u:
        closure #103 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x67u:
        closure #104 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x68u:
        closure #105 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x69u:
        closure #106 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x6Au:
        closure #107 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x6Bu:
        closure #108 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x6Cu:
        closure #109 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x6Du:
        closure #110 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x6Eu:
        closure #111 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x6Fu:
        closure #112 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x70u:
        closure #113 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x71u:
        closure #114 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x72u:
        closure #115 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x73u:
        closure #116 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x74u:
        closure #117 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x75u:
        closure #118 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x76u:
        closure #119 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x77u:
        closure #120 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x78u:
        closure #121 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x79u:
        closure #122 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x7Au:
        closure #123 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x7Bu:
        closure #124 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x7Cu:
        closure #125 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x7Du:
        closure #126 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x7Eu:
        closure #127 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x7Fu:
        closure #128 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x80u:
        closure #129 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x81u:
        closure #130 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x82u:
        closure #131 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x83u:
        closure #132 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x84u:
        closure #133 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x85u:
        closure #134 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x86u:
        closure #135 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x87u:
        closure #136 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x88u:
        closure #137 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x89u:
        closure #138 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x8Au:
        closure #139 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x8Bu:
        closure #140 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x8Cu:
        closure #141 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x8Du:
        closure #142 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x8Eu:
        closure #143 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x8Fu:
        closure #144 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x90u:
        closure #145 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x91u:
        closure #146 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x92u:
        closure #147 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x93u:
        closure #148 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x94u:
        closure #149 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x95u:
        closure #150 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x96u:
        closure #151 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x97u:
        closure #152 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x98u:
        closure #153 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x99u:
        closure #154 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x9Au:
        closure #155 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x9Bu:
        closure #156 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x9Cu:
        closure #157 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x9Du:
        closure #158 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x9Eu:
        closure #159 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0x9Fu:
        closure #160 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA0u:
        closure #161 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA1u:
        closure #162 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA2u:
        closure #163 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA3u:
        closure #164 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA4u:
        closure #165 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA5u:
        closure #166 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA6u:
        closure #167 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA7u:
        closure #168 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA8u:
        closure #169 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xA9u:
        closure #170 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xAAu:
        closure #171 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xABu:
        closure #172 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xACu:
        closure #173 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xADu:
        closure #174 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xAEu:
        closure #175 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xAFu:
        closure #176 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB0u:
        closure #177 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB1u:
        closure #178 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB2u:
        closure #179 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB3u:
        closure #180 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB4u:
        closure #181 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB5u:
        closure #182 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB6u:
        closure #183 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB7u:
        closure #184 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB8u:
        closure #185 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xB9u:
        closure #186 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xBAu:
        closure #187 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xBBu:
        closure #188 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xBCu:
        closure #189 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xBDu:
        closure #190 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xBEu:
        closure #191 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xBFu:
        closure #192 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC0u:
        closure #193 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC1u:
        closure #194 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC2u:
        closure #195 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC3u:
        closure #196 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC4u:
        closure #197 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC5u:
        closure #198 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC6u:
        closure #199 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC7u:
        closure #200 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC8u:
        closure #201 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xC9u:
        closure #202 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xCAu:
        closure #203 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xCBu:
        closure #204 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xCCu:
        closure #205 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xCDu:
        closure #206 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xCEu:
        closure #207 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xCFu:
        closure #208 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD0u:
        closure #209 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD1u:
        closure #210 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD2u:
        closure #211 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD3u:
        closure #212 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD4u:
        closure #213 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD5u:
        closure #214 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD6u:
        closure #215 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD7u:
        closure #216 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD8u:
        closure #217 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xD9u:
        closure #218 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xDAu:
        closure #219 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xDBu:
        closure #220 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xDCu:
        closure #221 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xDDu:
        closure #222 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xDEu:
        closure #223 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xDFu:
        closure #224 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xE0u:
        closure #225 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xE1u:
        closure #226 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xE2u:
        closure #227 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      case 0xE3u:
        closure #228 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
      default:
        closure #1 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(a1, a2, a3, a4);
        break;
    }

    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node.OneOf_Node);
  }

  return result;
}

uint64_t closure #1 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  Alias = type metadata accessor for PgQuery_Alias(0);
  MEMORY[0x28223BE20](Alias);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_Alias);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Alias);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #2 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  MEMORY[0x28223BE20](RangeVar);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RangeVar);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #3 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  TableFunc = type metadata accessor for PgQuery_TableFunc(0);
  MEMORY[0x28223BE20](TableFunc);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_TableFunc);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableFunc and conformance PgQuery_TableFunc, type metadata accessor for PgQuery_TableFunc, &protocol conformance descriptor for PgQuery_TableFunc);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_TableFunc);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #4 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  Expr = type metadata accessor for PgQuery_Expr(0);
  MEMORY[0x28223BE20](Expr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_Expr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Expr and conformance PgQuery_Expr, type metadata accessor for PgQuery_Expr, &protocol conformance descriptor for PgQuery_Expr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Expr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #5 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  Var = type metadata accessor for PgQuery_Var(0);
  MEMORY[0x28223BE20](Var);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_Var);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Var and conformance PgQuery_Var, type metadata accessor for PgQuery_Var, &protocol conformance descriptor for PgQuery_Var);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Var);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #6 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  Param = type metadata accessor for PgQuery_Param(0);
  MEMORY[0x28223BE20](Param);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_Param);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Param and conformance PgQuery_Param, type metadata accessor for PgQuery_Param, &protocol conformance descriptor for PgQuery_Param);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Param);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #7 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  Aggref = type metadata accessor for PgQuery_Aggref(0);
  MEMORY[0x28223BE20](Aggref);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_Aggref);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Aggref and conformance PgQuery_Aggref, type metadata accessor for PgQuery_Aggref, &protocol conformance descriptor for PgQuery_Aggref);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Aggref);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #8 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  GroupingFunc = type metadata accessor for PgQuery_GroupingFunc(0);
  MEMORY[0x28223BE20](GroupingFunc);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_GroupingFunc);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GroupingFunc and conformance PgQuery_GroupingFunc, type metadata accessor for PgQuery_GroupingFunc, &protocol conformance descriptor for PgQuery_GroupingFunc);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_GroupingFunc);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #9 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  WindowFunc = type metadata accessor for PgQuery_WindowFunc(0);
  MEMORY[0x28223BE20](WindowFunc);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_WindowFunc);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowFunc and conformance PgQuery_WindowFunc, type metadata accessor for PgQuery_WindowFunc, &protocol conformance descriptor for PgQuery_WindowFunc);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_WindowFunc);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #10 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  SubscriptingRef = type metadata accessor for PgQuery_SubscriptingRef(0);
  MEMORY[0x28223BE20](SubscriptingRef);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_SubscriptingRef);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubscriptingRef and conformance PgQuery_SubscriptingRef, type metadata accessor for PgQuery_SubscriptingRef, &protocol conformance descriptor for PgQuery_SubscriptingRef);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_SubscriptingRef);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #11 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  FuncExpr = type metadata accessor for PgQuery_FuncExpr(0);
  MEMORY[0x28223BE20](FuncExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_FuncExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncExpr and conformance PgQuery_FuncExpr, type metadata accessor for PgQuery_FuncExpr, &protocol conformance descriptor for PgQuery_FuncExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_FuncExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #12 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  NamedArgExpr = type metadata accessor for PgQuery_NamedArgExpr(0);
  MEMORY[0x28223BE20](NamedArgExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_NamedArgExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NamedArgExpr and conformance PgQuery_NamedArgExpr, type metadata accessor for PgQuery_NamedArgExpr, &protocol conformance descriptor for PgQuery_NamedArgExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_NamedArgExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #13 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  OpExpr = type metadata accessor for PgQuery_OpExpr(0);
  MEMORY[0x28223BE20](OpExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_OpExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OpExpr and conformance PgQuery_OpExpr, type metadata accessor for PgQuery_OpExpr, &protocol conformance descriptor for PgQuery_OpExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_OpExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #14 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DistinctExpr = type metadata accessor for PgQuery_DistinctExpr(0);
  MEMORY[0x28223BE20](DistinctExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_DistinctExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DistinctExpr and conformance PgQuery_DistinctExpr, type metadata accessor for PgQuery_DistinctExpr, &protocol conformance descriptor for PgQuery_DistinctExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_DistinctExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #15 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  NullIfExpr = type metadata accessor for PgQuery_NullIfExpr(0);
  MEMORY[0x28223BE20](NullIfExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_NullIfExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullIfExpr and conformance PgQuery_NullIfExpr, type metadata accessor for PgQuery_NullIfExpr, &protocol conformance descriptor for PgQuery_NullIfExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_NullIfExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #16 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  ScalarArrayOpExpr = type metadata accessor for PgQuery_ScalarArrayOpExpr(0);
  MEMORY[0x28223BE20](ScalarArrayOpExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_ScalarArrayOpExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScalarArrayOpExpr and conformance PgQuery_ScalarArrayOpExpr, type metadata accessor for PgQuery_ScalarArrayOpExpr, &protocol conformance descriptor for PgQuery_ScalarArrayOpExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_ScalarArrayOpExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #17 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  BoolExpr = type metadata accessor for PgQuery_BoolExpr(0);
  MEMORY[0x28223BE20](BoolExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_BoolExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BoolExpr and conformance PgQuery_BoolExpr, type metadata accessor for PgQuery_BoolExpr, &protocol conformance descriptor for PgQuery_BoolExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_BoolExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #18 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  SubLink = type metadata accessor for PgQuery_SubLink(0);
  MEMORY[0x28223BE20](SubLink);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_SubLink);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubLink and conformance PgQuery_SubLink, type metadata accessor for PgQuery_SubLink, &protocol conformance descriptor for PgQuery_SubLink);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_SubLink);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #19 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  SubPlan = type metadata accessor for PgQuery_SubPlan(0);
  MEMORY[0x28223BE20](SubPlan);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 18)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_SubPlan);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubPlan and conformance PgQuery_SubPlan, type metadata accessor for PgQuery_SubPlan, &protocol conformance descriptor for PgQuery_SubPlan);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_SubPlan);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #20 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlternativeSubPlan = type metadata accessor for PgQuery_AlternativeSubPlan(0);
  MEMORY[0x28223BE20](AlternativeSubPlan);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 19)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlternativeSubPlan);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlternativeSubPlan and conformance PgQuery_AlternativeSubPlan, type metadata accessor for PgQuery_AlternativeSubPlan, &protocol conformance descriptor for PgQuery_AlternativeSubPlan);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlternativeSubPlan);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #21 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  FieldSelect = type metadata accessor for PgQuery_FieldSelect(0);
  MEMORY[0x28223BE20](FieldSelect);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 20)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_FieldSelect);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldSelect and conformance PgQuery_FieldSelect, type metadata accessor for PgQuery_FieldSelect, &protocol conformance descriptor for PgQuery_FieldSelect);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_FieldSelect);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #22 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  FieldStore = type metadata accessor for PgQuery_FieldStore(0);
  MEMORY[0x28223BE20](FieldStore);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 21)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_FieldStore);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldStore and conformance PgQuery_FieldStore, type metadata accessor for PgQuery_FieldStore, &protocol conformance descriptor for PgQuery_FieldStore);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_FieldStore);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #23 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  RelabelType = type metadata accessor for PgQuery_RelabelType(0);
  MEMORY[0x28223BE20](RelabelType);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 22)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_RelabelType);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RelabelType and conformance PgQuery_RelabelType, type metadata accessor for PgQuery_RelabelType, &protocol conformance descriptor for PgQuery_RelabelType);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RelabelType);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #24 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  CoerceViaIO = type metadata accessor for PgQuery_CoerceViaIO(0);
  MEMORY[0x28223BE20](CoerceViaIO);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 23)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CoerceViaIO);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceViaIO and conformance PgQuery_CoerceViaIO, type metadata accessor for PgQuery_CoerceViaIO, &protocol conformance descriptor for PgQuery_CoerceViaIO);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CoerceViaIO);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #25 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  ArrayCoerceExpr = type metadata accessor for PgQuery_ArrayCoerceExpr(0);
  MEMORY[0x28223BE20](ArrayCoerceExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 24)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_ArrayCoerceExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayCoerceExpr and conformance PgQuery_ArrayCoerceExpr, type metadata accessor for PgQuery_ArrayCoerceExpr, &protocol conformance descriptor for PgQuery_ArrayCoerceExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_ArrayCoerceExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #26 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  ConvertRowtypeExpr = type metadata accessor for PgQuery_ConvertRowtypeExpr(0);
  MEMORY[0x28223BE20](ConvertRowtypeExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 25)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_ConvertRowtypeExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConvertRowtypeExpr and conformance PgQuery_ConvertRowtypeExpr, type metadata accessor for PgQuery_ConvertRowtypeExpr, &protocol conformance descriptor for PgQuery_ConvertRowtypeExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_ConvertRowtypeExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #27 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  CollateExpr = type metadata accessor for PgQuery_CollateExpr(0);
  MEMORY[0x28223BE20](CollateExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 26)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CollateExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateExpr and conformance PgQuery_CollateExpr, type metadata accessor for PgQuery_CollateExpr, &protocol conformance descriptor for PgQuery_CollateExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CollateExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #28 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  CaseExpr = type metadata accessor for PgQuery_CaseExpr(0);
  MEMORY[0x28223BE20](CaseExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 27)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CaseExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseExpr and conformance PgQuery_CaseExpr, type metadata accessor for PgQuery_CaseExpr, &protocol conformance descriptor for PgQuery_CaseExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CaseExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #29 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  CaseWhen = type metadata accessor for PgQuery_CaseWhen(0);
  MEMORY[0x28223BE20](CaseWhen);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 28)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CaseWhen);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseWhen and conformance PgQuery_CaseWhen, type metadata accessor for PgQuery_CaseWhen, &protocol conformance descriptor for PgQuery_CaseWhen);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CaseWhen);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #30 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  CaseTestExpr = type metadata accessor for PgQuery_CaseTestExpr(0);
  MEMORY[0x28223BE20](CaseTestExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 29)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CaseTestExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseTestExpr and conformance PgQuery_CaseTestExpr, type metadata accessor for PgQuery_CaseTestExpr, &protocol conformance descriptor for PgQuery_CaseTestExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CaseTestExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #31 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  ArrayExpr = type metadata accessor for PgQuery_ArrayExpr(0);
  MEMORY[0x28223BE20](ArrayExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 30)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_ArrayExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayExpr and conformance PgQuery_ArrayExpr, type metadata accessor for PgQuery_ArrayExpr, &protocol conformance descriptor for PgQuery_ArrayExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_ArrayExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #32 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  RowExpr = type metadata accessor for PgQuery_RowExpr(0);
  MEMORY[0x28223BE20](RowExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 31)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_RowExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowExpr and conformance PgQuery_RowExpr, type metadata accessor for PgQuery_RowExpr, &protocol conformance descriptor for PgQuery_RowExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RowExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #33 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  RowCompareExpr = type metadata accessor for PgQuery_RowCompareExpr(0);
  MEMORY[0x28223BE20](RowCompareExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 32)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_RowCompareExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowCompareExpr and conformance PgQuery_RowCompareExpr, type metadata accessor for PgQuery_RowCompareExpr, &protocol conformance descriptor for PgQuery_RowCompareExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RowCompareExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #34 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  CoalesceExpr = type metadata accessor for PgQuery_CoalesceExpr(0);
  MEMORY[0x28223BE20](CoalesceExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 33)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CoalesceExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoalesceExpr and conformance PgQuery_CoalesceExpr, type metadata accessor for PgQuery_CoalesceExpr, &protocol conformance descriptor for PgQuery_CoalesceExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CoalesceExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #35 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  MinMaxExpr = type metadata accessor for PgQuery_MinMaxExpr(0);
  MEMORY[0x28223BE20](MinMaxExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 34)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_MinMaxExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MinMaxExpr and conformance PgQuery_MinMaxExpr, type metadata accessor for PgQuery_MinMaxExpr, &protocol conformance descriptor for PgQuery_MinMaxExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_MinMaxExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #36 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  SQLValueFunction = type metadata accessor for PgQuery_SQLValueFunction(0);
  MEMORY[0x28223BE20](SQLValueFunction);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 35)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_SQLValueFunction);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SQLValueFunction and conformance PgQuery_SQLValueFunction, type metadata accessor for PgQuery_SQLValueFunction, &protocol conformance descriptor for PgQuery_SQLValueFunction);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_SQLValueFunction);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #37 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  XmlExpr = type metadata accessor for PgQuery_XmlExpr(0);
  MEMORY[0x28223BE20](XmlExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 36)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_XmlExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlExpr and conformance PgQuery_XmlExpr, type metadata accessor for PgQuery_XmlExpr, &protocol conformance descriptor for PgQuery_XmlExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_XmlExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #38 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  NullTest = type metadata accessor for PgQuery_NullTest(0);
  MEMORY[0x28223BE20](NullTest);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 37)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_NullTest);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullTest and conformance PgQuery_NullTest, type metadata accessor for PgQuery_NullTest, &protocol conformance descriptor for PgQuery_NullTest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_NullTest);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #39 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  BooleanTest = type metadata accessor for PgQuery_BooleanTest(0);
  MEMORY[0x28223BE20](BooleanTest);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 38)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_BooleanTest);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BooleanTest and conformance PgQuery_BooleanTest, type metadata accessor for PgQuery_BooleanTest, &protocol conformance descriptor for PgQuery_BooleanTest);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_BooleanTest);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #40 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  CoerceToDomain = type metadata accessor for PgQuery_CoerceToDomain(0);
  MEMORY[0x28223BE20](CoerceToDomain);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 39)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CoerceToDomain);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomain and conformance PgQuery_CoerceToDomain, type metadata accessor for PgQuery_CoerceToDomain, &protocol conformance descriptor for PgQuery_CoerceToDomain);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CoerceToDomain);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #41 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  CoerceToDomainValue = type metadata accessor for PgQuery_CoerceToDomainValue(0);
  MEMORY[0x28223BE20](CoerceToDomainValue);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 40)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CoerceToDomainValue);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomainValue and conformance PgQuery_CoerceToDomainValue, type metadata accessor for PgQuery_CoerceToDomainValue, &protocol conformance descriptor for PgQuery_CoerceToDomainValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CoerceToDomainValue);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #42 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  SetToDefault = type metadata accessor for PgQuery_SetToDefault(0);
  MEMORY[0x28223BE20](SetToDefault);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 41)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_SetToDefault);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetToDefault and conformance PgQuery_SetToDefault, type metadata accessor for PgQuery_SetToDefault, &protocol conformance descriptor for PgQuery_SetToDefault);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_SetToDefault);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #43 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  CurrentOfExpr = type metadata accessor for PgQuery_CurrentOfExpr(0);
  MEMORY[0x28223BE20](CurrentOfExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 42)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CurrentOfExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CurrentOfExpr and conformance PgQuery_CurrentOfExpr, type metadata accessor for PgQuery_CurrentOfExpr, &protocol conformance descriptor for PgQuery_CurrentOfExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CurrentOfExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #44 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  NextValueExpr = type metadata accessor for PgQuery_NextValueExpr(0);
  MEMORY[0x28223BE20](NextValueExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 43)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_NextValueExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NextValueExpr and conformance PgQuery_NextValueExpr, type metadata accessor for PgQuery_NextValueExpr, &protocol conformance descriptor for PgQuery_NextValueExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_NextValueExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #45 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  InferenceElem = type metadata accessor for PgQuery_InferenceElem(0);
  MEMORY[0x28223BE20](InferenceElem);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 44)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_InferenceElem);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferenceElem and conformance PgQuery_InferenceElem, type metadata accessor for PgQuery_InferenceElem, &protocol conformance descriptor for PgQuery_InferenceElem);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_InferenceElem);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #46 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  TargetEntry = type metadata accessor for PgQuery_TargetEntry(0);
  MEMORY[0x28223BE20](TargetEntry);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 45)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_TargetEntry);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TargetEntry and conformance PgQuery_TargetEntry, type metadata accessor for PgQuery_TargetEntry, &protocol conformance descriptor for PgQuery_TargetEntry);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_TargetEntry);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #47 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  RangeTblRef = type metadata accessor for PgQuery_RangeTblRef(0);
  MEMORY[0x28223BE20](RangeTblRef);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 46)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_RangeTblRef);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblRef and conformance PgQuery_RangeTblRef, type metadata accessor for PgQuery_RangeTblRef, &protocol conformance descriptor for PgQuery_RangeTblRef);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RangeTblRef);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #48 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  JoinExpr = type metadata accessor for PgQuery_JoinExpr(0);
  MEMORY[0x28223BE20](JoinExpr);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 47)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_JoinExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_JoinExpr and conformance PgQuery_JoinExpr, type metadata accessor for PgQuery_JoinExpr, &protocol conformance descriptor for PgQuery_JoinExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_JoinExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #49 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for PgQuery_FromExpr(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 48)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_FromExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FromExpr and conformance PgQuery_FromExpr, type metadata accessor for PgQuery_FromExpr, &protocol conformance descriptor for PgQuery_FromExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_FromExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #50 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for PgQuery_OnConflictExpr(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 49)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_OnConflictExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr, &protocol conformance descriptor for PgQuery_OnConflictExpr);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_OnConflictExpr);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #51 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  MEMORY[0x28223BE20](IntoClause);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 50)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_IntoClause);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause, &protocol conformance descriptor for PgQuery_IntoClause);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_IntoClause);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #52 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  RawStmt = type metadata accessor for PgQuery_RawStmt(0);
  MEMORY[0x28223BE20](RawStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 51)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_RawStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RawStmt and conformance PgQuery_RawStmt, type metadata accessor for PgQuery_RawStmt, &protocol conformance descriptor for PgQuery_RawStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RawStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #53 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  Query = type metadata accessor for PgQuery_Query(0);
  MEMORY[0x28223BE20](Query);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 52)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_Query);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query, &protocol conformance descriptor for PgQuery_Query);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Query);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #54 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  InsertStmt = type metadata accessor for PgQuery_InsertStmt(0);
  MEMORY[0x28223BE20](InsertStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 53)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_InsertStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InsertStmt and conformance PgQuery_InsertStmt, type metadata accessor for PgQuery_InsertStmt, &protocol conformance descriptor for PgQuery_InsertStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_InsertStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #55 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for PgQuery_DeleteStmt(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 54)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_DeleteStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeleteStmt and conformance PgQuery_DeleteStmt, type metadata accessor for PgQuery_DeleteStmt, &protocol conformance descriptor for PgQuery_DeleteStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_DeleteStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #56 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  UpdateStmt = type metadata accessor for PgQuery_UpdateStmt(0);
  MEMORY[0x28223BE20](UpdateStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 55)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_UpdateStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UpdateStmt and conformance PgQuery_UpdateStmt, type metadata accessor for PgQuery_UpdateStmt, &protocol conformance descriptor for PgQuery_UpdateStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_UpdateStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #57 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  MEMORY[0x28223BE20](SelectStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 56)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_SelectStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt, &protocol conformance descriptor for PgQuery_SelectStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_SelectStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #58 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlterTableStmt = type metadata accessor for PgQuery_AlterTableStmt(0);
  MEMORY[0x28223BE20](AlterTableStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 57)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlterTableStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableStmt and conformance PgQuery_AlterTableStmt, type metadata accessor for PgQuery_AlterTableStmt, &protocol conformance descriptor for PgQuery_AlterTableStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlterTableStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #59 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlterTableCmd = type metadata accessor for PgQuery_AlterTableCmd(0);
  MEMORY[0x28223BE20](AlterTableCmd);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 58)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlterTableCmd);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableCmd and conformance PgQuery_AlterTableCmd, type metadata accessor for PgQuery_AlterTableCmd, &protocol conformance descriptor for PgQuery_AlterTableCmd);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlterTableCmd);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #60 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlterDomainStmt = type metadata accessor for PgQuery_AlterDomainStmt(0);
  MEMORY[0x28223BE20](AlterDomainStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 59)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlterDomainStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDomainStmt and conformance PgQuery_AlterDomainStmt, type metadata accessor for PgQuery_AlterDomainStmt, &protocol conformance descriptor for PgQuery_AlterDomainStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlterDomainStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #61 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  SetOperationStmt = type metadata accessor for PgQuery_SetOperationStmt(0);
  MEMORY[0x28223BE20](SetOperationStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 60)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_SetOperationStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetOperationStmt and conformance PgQuery_SetOperationStmt, type metadata accessor for PgQuery_SetOperationStmt, &protocol conformance descriptor for PgQuery_SetOperationStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_SetOperationStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #62 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  GrantStmt = type metadata accessor for PgQuery_GrantStmt(0);
  MEMORY[0x28223BE20](GrantStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 61)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_GrantStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantStmt and conformance PgQuery_GrantStmt, type metadata accessor for PgQuery_GrantStmt, &protocol conformance descriptor for PgQuery_GrantStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_GrantStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #63 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  GrantRoleStmt = type metadata accessor for PgQuery_GrantRoleStmt(0);
  MEMORY[0x28223BE20](GrantRoleStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 62)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_GrantRoleStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantRoleStmt and conformance PgQuery_GrantRoleStmt, type metadata accessor for PgQuery_GrantRoleStmt, &protocol conformance descriptor for PgQuery_GrantRoleStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_GrantRoleStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #64 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlterDefaultPrivilegesStmt = type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt(0);
  MEMORY[0x28223BE20](AlterDefaultPrivilegesStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 63)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDefaultPrivilegesStmt and conformance PgQuery_AlterDefaultPrivilegesStmt, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt, &protocol conformance descriptor for PgQuery_AlterDefaultPrivilegesStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #65 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  ClosePortalStmt = type metadata accessor for PgQuery_ClosePortalStmt(0);
  MEMORY[0x28223BE20](ClosePortalStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 64)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_ClosePortalStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClosePortalStmt and conformance PgQuery_ClosePortalStmt, type metadata accessor for PgQuery_ClosePortalStmt, &protocol conformance descriptor for PgQuery_ClosePortalStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_ClosePortalStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #66 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  ClusterStmt = type metadata accessor for PgQuery_ClusterStmt(0);
  MEMORY[0x28223BE20](ClusterStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 65)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_ClusterStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClusterStmt and conformance PgQuery_ClusterStmt, type metadata accessor for PgQuery_ClusterStmt, &protocol conformance descriptor for PgQuery_ClusterStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_ClusterStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #67 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  CopyStmt = type metadata accessor for PgQuery_CopyStmt(0);
  MEMORY[0x28223BE20](CopyStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 66)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CopyStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CopyStmt and conformance PgQuery_CopyStmt, type metadata accessor for PgQuery_CopyStmt, &protocol conformance descriptor for PgQuery_CopyStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CopyStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #68 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  Stmt = type metadata accessor for PgQuery_CreateStmt(0);
  MEMORY[0x28223BE20](Stmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 67)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CreateStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt, &protocol conformance descriptor for PgQuery_CreateStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CreateStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #69 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DefineStmt = type metadata accessor for PgQuery_DefineStmt(0);
  MEMORY[0x28223BE20](DefineStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 68)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_DefineStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefineStmt and conformance PgQuery_DefineStmt, type metadata accessor for PgQuery_DefineStmt, &protocol conformance descriptor for PgQuery_DefineStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_DefineStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #70 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DropStmt = type metadata accessor for PgQuery_DropStmt(0);
  MEMORY[0x28223BE20](DropStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 69)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_DropStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropStmt and conformance PgQuery_DropStmt, type metadata accessor for PgQuery_DropStmt, &protocol conformance descriptor for PgQuery_DropStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_DropStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #71 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  TruncateStmt = type metadata accessor for PgQuery_TruncateStmt(0);
  MEMORY[0x28223BE20](TruncateStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 70)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_TruncateStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TruncateStmt and conformance PgQuery_TruncateStmt, type metadata accessor for PgQuery_TruncateStmt, &protocol conformance descriptor for PgQuery_TruncateStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_TruncateStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #72 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  CommentStmt = type metadata accessor for PgQuery_CommentStmt(0);
  MEMORY[0x28223BE20](CommentStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 71)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CommentStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommentStmt and conformance PgQuery_CommentStmt, type metadata accessor for PgQuery_CommentStmt, &protocol conformance descriptor for PgQuery_CommentStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CommentStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #73 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  Stmt = type metadata accessor for PgQuery_FetchStmt(0);
  MEMORY[0x28223BE20](Stmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 72)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_FetchStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FetchStmt and conformance PgQuery_FetchStmt, type metadata accessor for PgQuery_FetchStmt, &protocol conformance descriptor for PgQuery_FetchStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_FetchStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #74 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  IndexStmt = type metadata accessor for PgQuery_IndexStmt(0);
  MEMORY[0x28223BE20](IndexStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 73)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_IndexStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexStmt and conformance PgQuery_IndexStmt, type metadata accessor for PgQuery_IndexStmt, &protocol conformance descriptor for PgQuery_IndexStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_IndexStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #75 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  FunctionStmt = type metadata accessor for PgQuery_CreateFunctionStmt(0);
  MEMORY[0x28223BE20](FunctionStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 74)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CreateFunctionStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFunctionStmt and conformance PgQuery_CreateFunctionStmt, type metadata accessor for PgQuery_CreateFunctionStmt, &protocol conformance descriptor for PgQuery_CreateFunctionStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CreateFunctionStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #76 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlterFunctionStmt = type metadata accessor for PgQuery_AlterFunctionStmt(0);
  MEMORY[0x28223BE20](AlterFunctionStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 75)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlterFunctionStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFunctionStmt and conformance PgQuery_AlterFunctionStmt, type metadata accessor for PgQuery_AlterFunctionStmt, &protocol conformance descriptor for PgQuery_AlterFunctionStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlterFunctionStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #77 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DoStmt = type metadata accessor for PgQuery_DoStmt(0);
  MEMORY[0x28223BE20](DoStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 76)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_DoStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DoStmt and conformance PgQuery_DoStmt, type metadata accessor for PgQuery_DoStmt, &protocol conformance descriptor for PgQuery_DoStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_DoStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #78 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  RenameStmt = type metadata accessor for PgQuery_RenameStmt(0);
  MEMORY[0x28223BE20](RenameStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 77)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_RenameStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RenameStmt and conformance PgQuery_RenameStmt, type metadata accessor for PgQuery_RenameStmt, &protocol conformance descriptor for PgQuery_RenameStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RenameStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #79 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  RuleStmt = type metadata accessor for PgQuery_RuleStmt(0);
  MEMORY[0x28223BE20](RuleStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 78)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_RuleStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RuleStmt and conformance PgQuery_RuleStmt, type metadata accessor for PgQuery_RuleStmt, &protocol conformance descriptor for PgQuery_RuleStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RuleStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #80 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  NotifyStmt = type metadata accessor for PgQuery_NotifyStmt(0);
  MEMORY[0x28223BE20](NotifyStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 79)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_NotifyStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NotifyStmt and conformance PgQuery_NotifyStmt, type metadata accessor for PgQuery_NotifyStmt, &protocol conformance descriptor for PgQuery_NotifyStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_NotifyStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #81 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  ListenStmt = type metadata accessor for PgQuery_ListenStmt(0);
  MEMORY[0x28223BE20](ListenStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 80)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_ListenStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ListenStmt and conformance PgQuery_ListenStmt, type metadata accessor for PgQuery_ListenStmt, &protocol conformance descriptor for PgQuery_ListenStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_ListenStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #82 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  UnlistenStmt = type metadata accessor for PgQuery_UnlistenStmt(0);
  MEMORY[0x28223BE20](UnlistenStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 81)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_UnlistenStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UnlistenStmt and conformance PgQuery_UnlistenStmt, type metadata accessor for PgQuery_UnlistenStmt, &protocol conformance descriptor for PgQuery_UnlistenStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_UnlistenStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #83 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  TransactionStmt = type metadata accessor for PgQuery_TransactionStmt(0);
  MEMORY[0x28223BE20](TransactionStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 82)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_TransactionStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TransactionStmt and conformance PgQuery_TransactionStmt, type metadata accessor for PgQuery_TransactionStmt, &protocol conformance descriptor for PgQuery_TransactionStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_TransactionStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #84 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  ViewStmt = type metadata accessor for PgQuery_ViewStmt(0);
  MEMORY[0x28223BE20](ViewStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 83)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_ViewStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ViewStmt and conformance PgQuery_ViewStmt, type metadata accessor for PgQuery_ViewStmt, &protocol conformance descriptor for PgQuery_ViewStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_ViewStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #85 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  LoadStmt = type metadata accessor for PgQuery_LoadStmt(0);
  MEMORY[0x28223BE20](LoadStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 84)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_LoadStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LoadStmt and conformance PgQuery_LoadStmt, type metadata accessor for PgQuery_LoadStmt, &protocol conformance descriptor for PgQuery_LoadStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_LoadStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #86 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DomainStmt = type metadata accessor for PgQuery_CreateDomainStmt(0);
  MEMORY[0x28223BE20](DomainStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 85)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CreateDomainStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateDomainStmt and conformance PgQuery_CreateDomainStmt, type metadata accessor for PgQuery_CreateDomainStmt, &protocol conformance descriptor for PgQuery_CreateDomainStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CreateDomainStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #87 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  CreatedbStmt = type metadata accessor for PgQuery_CreatedbStmt(0);
  MEMORY[0x28223BE20](CreatedbStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 86)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CreatedbStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatedbStmt and conformance PgQuery_CreatedbStmt, type metadata accessor for PgQuery_CreatedbStmt, &protocol conformance descriptor for PgQuery_CreatedbStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CreatedbStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #88 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DropdbStmt = type metadata accessor for PgQuery_DropdbStmt(0);
  MEMORY[0x28223BE20](DropdbStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 87)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_DropdbStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropdbStmt and conformance PgQuery_DropdbStmt, type metadata accessor for PgQuery_DropdbStmt, &protocol conformance descriptor for PgQuery_DropdbStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_DropdbStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #89 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  VacuumStmt = type metadata accessor for PgQuery_VacuumStmt(0);
  MEMORY[0x28223BE20](VacuumStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 88)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_VacuumStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumStmt and conformance PgQuery_VacuumStmt, type metadata accessor for PgQuery_VacuumStmt, &protocol conformance descriptor for PgQuery_VacuumStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_VacuumStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #90 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  ExplainStmt = type metadata accessor for PgQuery_ExplainStmt(0);
  MEMORY[0x28223BE20](ExplainStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 89)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_ExplainStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExplainStmt and conformance PgQuery_ExplainStmt, type metadata accessor for PgQuery_ExplainStmt, &protocol conformance descriptor for PgQuery_ExplainStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_ExplainStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #91 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  TableAsStmt = type metadata accessor for PgQuery_CreateTableAsStmt(0);
  MEMORY[0x28223BE20](TableAsStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 90)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CreateTableAsStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableAsStmt and conformance PgQuery_CreateTableAsStmt, type metadata accessor for PgQuery_CreateTableAsStmt, &protocol conformance descriptor for PgQuery_CreateTableAsStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CreateTableAsStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #92 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  SeqStmt = type metadata accessor for PgQuery_CreateSeqStmt(0);
  MEMORY[0x28223BE20](SeqStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 91)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CreateSeqStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSeqStmt and conformance PgQuery_CreateSeqStmt, type metadata accessor for PgQuery_CreateSeqStmt, &protocol conformance descriptor for PgQuery_CreateSeqStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CreateSeqStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #93 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlterSeqStmt = type metadata accessor for PgQuery_AlterSeqStmt(0);
  MEMORY[0x28223BE20](AlterSeqStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 92)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlterSeqStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSeqStmt and conformance PgQuery_AlterSeqStmt, type metadata accessor for PgQuery_AlterSeqStmt, &protocol conformance descriptor for PgQuery_AlterSeqStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlterSeqStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #94 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  MEMORY[0x28223BE20](VariableSetStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 93)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_VariableSetStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_VariableSetStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #95 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  VariableShowStmt = type metadata accessor for PgQuery_VariableShowStmt(0);
  MEMORY[0x28223BE20](VariableShowStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 94)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_VariableShowStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableShowStmt and conformance PgQuery_VariableShowStmt, type metadata accessor for PgQuery_VariableShowStmt, &protocol conformance descriptor for PgQuery_VariableShowStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_VariableShowStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #96 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DiscardStmt = type metadata accessor for PgQuery_DiscardStmt(0);
  MEMORY[0x28223BE20](DiscardStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 95)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_DiscardStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DiscardStmt and conformance PgQuery_DiscardStmt, type metadata accessor for PgQuery_DiscardStmt, &protocol conformance descriptor for PgQuery_DiscardStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_DiscardStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #97 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  TrigStmt = type metadata accessor for PgQuery_CreateTrigStmt(0);
  MEMORY[0x28223BE20](TrigStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 96)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CreateTrigStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTrigStmt and conformance PgQuery_CreateTrigStmt, type metadata accessor for PgQuery_CreateTrigStmt, &protocol conformance descriptor for PgQuery_CreateTrigStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CreateTrigStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #98 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  PLangStmt = type metadata accessor for PgQuery_CreatePLangStmt(0);
  MEMORY[0x28223BE20](PLangStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 97)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CreatePLangStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePLangStmt and conformance PgQuery_CreatePLangStmt, type metadata accessor for PgQuery_CreatePLangStmt, &protocol conformance descriptor for PgQuery_CreatePLangStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CreatePLangStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #99 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  RoleStmt = type metadata accessor for PgQuery_CreateRoleStmt(0);
  MEMORY[0x28223BE20](RoleStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 98)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CreateRoleStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRoleStmt and conformance PgQuery_CreateRoleStmt, type metadata accessor for PgQuery_CreateRoleStmt, &protocol conformance descriptor for PgQuery_CreateRoleStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CreateRoleStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #100 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlterRoleStmt = type metadata accessor for PgQuery_AlterRoleStmt(0);
  MEMORY[0x28223BE20](AlterRoleStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 99)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlterRoleStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleStmt and conformance PgQuery_AlterRoleStmt, type metadata accessor for PgQuery_AlterRoleStmt, &protocol conformance descriptor for PgQuery_AlterRoleStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlterRoleStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #101 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DropRoleStmt = type metadata accessor for PgQuery_DropRoleStmt(0);
  MEMORY[0x28223BE20](DropRoleStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 100)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_DropRoleStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropRoleStmt and conformance PgQuery_DropRoleStmt, type metadata accessor for PgQuery_DropRoleStmt, &protocol conformance descriptor for PgQuery_DropRoleStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_DropRoleStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #102 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  LockStmt = type metadata accessor for PgQuery_LockStmt(0);
  MEMORY[0x28223BE20](LockStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 101)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_LockStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockStmt and conformance PgQuery_LockStmt, type metadata accessor for PgQuery_LockStmt, &protocol conformance descriptor for PgQuery_LockStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_LockStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #103 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  ConstraintsSetStmt = type metadata accessor for PgQuery_ConstraintsSetStmt(0);
  MEMORY[0x28223BE20](ConstraintsSetStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 102)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_ConstraintsSetStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConstraintsSetStmt and conformance PgQuery_ConstraintsSetStmt, type metadata accessor for PgQuery_ConstraintsSetStmt, &protocol conformance descriptor for PgQuery_ConstraintsSetStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_ConstraintsSetStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #104 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  ReindexStmt = type metadata accessor for PgQuery_ReindexStmt(0);
  MEMORY[0x28223BE20](ReindexStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 103)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_ReindexStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReindexStmt and conformance PgQuery_ReindexStmt, type metadata accessor for PgQuery_ReindexStmt, &protocol conformance descriptor for PgQuery_ReindexStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_ReindexStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #105 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for PgQuery_CheckPointStmt(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 104)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CheckPointStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CheckPointStmt and conformance PgQuery_CheckPointStmt, type metadata accessor for PgQuery_CheckPointStmt, &protocol conformance descriptor for PgQuery_CheckPointStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CheckPointStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #106 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  SchemaStmt = type metadata accessor for PgQuery_CreateSchemaStmt(0);
  MEMORY[0x28223BE20](SchemaStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 105)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CreateSchemaStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSchemaStmt and conformance PgQuery_CreateSchemaStmt, type metadata accessor for PgQuery_CreateSchemaStmt, &protocol conformance descriptor for PgQuery_CreateSchemaStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CreateSchemaStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #107 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlterDatabaseStmt = type metadata accessor for PgQuery_AlterDatabaseStmt(0);
  MEMORY[0x28223BE20](AlterDatabaseStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 106)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlterDatabaseStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseStmt and conformance PgQuery_AlterDatabaseStmt, type metadata accessor for PgQuery_AlterDatabaseStmt, &protocol conformance descriptor for PgQuery_AlterDatabaseStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlterDatabaseStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #108 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlterDatabaseSetStmt = type metadata accessor for PgQuery_AlterDatabaseSetStmt(0);
  MEMORY[0x28223BE20](AlterDatabaseSetStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 107)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlterDatabaseSetStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseSetStmt and conformance PgQuery_AlterDatabaseSetStmt, type metadata accessor for PgQuery_AlterDatabaseSetStmt, &protocol conformance descriptor for PgQuery_AlterDatabaseSetStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlterDatabaseSetStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #109 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlterRoleSetStmt = type metadata accessor for PgQuery_AlterRoleSetStmt(0);
  MEMORY[0x28223BE20](AlterRoleSetStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 108)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlterRoleSetStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleSetStmt and conformance PgQuery_AlterRoleSetStmt, type metadata accessor for PgQuery_AlterRoleSetStmt, &protocol conformance descriptor for PgQuery_AlterRoleSetStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlterRoleSetStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #110 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  ConversionStmt = type metadata accessor for PgQuery_CreateConversionStmt(0);
  MEMORY[0x28223BE20](ConversionStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 109)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CreateConversionStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateConversionStmt and conformance PgQuery_CreateConversionStmt, type metadata accessor for PgQuery_CreateConversionStmt, &protocol conformance descriptor for PgQuery_CreateConversionStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CreateConversionStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #111 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  CastStmt = type metadata accessor for PgQuery_CreateCastStmt(0);
  MEMORY[0x28223BE20](CastStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 110)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CreateCastStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateCastStmt and conformance PgQuery_CreateCastStmt, type metadata accessor for PgQuery_CreateCastStmt, &protocol conformance descriptor for PgQuery_CreateCastStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CreateCastStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #112 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  OpClassStmt = type metadata accessor for PgQuery_CreateOpClassStmt(0);
  MEMORY[0x28223BE20](OpClassStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 111)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CreateOpClassStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassStmt and conformance PgQuery_CreateOpClassStmt, type metadata accessor for PgQuery_CreateOpClassStmt, &protocol conformance descriptor for PgQuery_CreateOpClassStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CreateOpClassStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #113 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  OpFamilyStmt = type metadata accessor for PgQuery_CreateOpFamilyStmt(0);
  MEMORY[0x28223BE20](OpFamilyStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 112)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CreateOpFamilyStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpFamilyStmt and conformance PgQuery_CreateOpFamilyStmt, type metadata accessor for PgQuery_CreateOpFamilyStmt, &protocol conformance descriptor for PgQuery_CreateOpFamilyStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CreateOpFamilyStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #114 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlterOpFamilyStmt = type metadata accessor for PgQuery_AlterOpFamilyStmt(0);
  MEMORY[0x28223BE20](AlterOpFamilyStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 113)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlterOpFamilyStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOpFamilyStmt and conformance PgQuery_AlterOpFamilyStmt, type metadata accessor for PgQuery_AlterOpFamilyStmt, &protocol conformance descriptor for PgQuery_AlterOpFamilyStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlterOpFamilyStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #115 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  PrepareStmt = type metadata accessor for PgQuery_PrepareStmt(0);
  MEMORY[0x28223BE20](PrepareStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 114)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_PrepareStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PrepareStmt and conformance PgQuery_PrepareStmt, type metadata accessor for PgQuery_PrepareStmt, &protocol conformance descriptor for PgQuery_PrepareStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_PrepareStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #116 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  ExecuteStmt = type metadata accessor for PgQuery_ExecuteStmt(0);
  MEMORY[0x28223BE20](ExecuteStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 115)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_ExecuteStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExecuteStmt and conformance PgQuery_ExecuteStmt, type metadata accessor for PgQuery_ExecuteStmt, &protocol conformance descriptor for PgQuery_ExecuteStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_ExecuteStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #117 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DeallocateStmt = type metadata accessor for PgQuery_DeallocateStmt(0);
  MEMORY[0x28223BE20](DeallocateStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 116)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_DeallocateStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeallocateStmt and conformance PgQuery_DeallocateStmt, type metadata accessor for PgQuery_DeallocateStmt, &protocol conformance descriptor for PgQuery_DeallocateStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_DeallocateStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #118 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DeclareCursorStmt = type metadata accessor for PgQuery_DeclareCursorStmt(0);
  MEMORY[0x28223BE20](DeclareCursorStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 117)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_DeclareCursorStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeclareCursorStmt and conformance PgQuery_DeclareCursorStmt, type metadata accessor for PgQuery_DeclareCursorStmt, &protocol conformance descriptor for PgQuery_DeclareCursorStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_DeclareCursorStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #119 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  TableSpaceStmt = type metadata accessor for PgQuery_CreateTableSpaceStmt(0);
  MEMORY[0x28223BE20](TableSpaceStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 118)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_CreateTableSpaceStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableSpaceStmt and conformance PgQuery_CreateTableSpaceStmt, type metadata accessor for PgQuery_CreateTableSpaceStmt, &protocol conformance descriptor for PgQuery_CreateTableSpaceStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_CreateTableSpaceStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #120 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DropTableSpaceStmt = type metadata accessor for PgQuery_DropTableSpaceStmt(0);
  MEMORY[0x28223BE20](DropTableSpaceStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 119)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_DropTableSpaceStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropTableSpaceStmt and conformance PgQuery_DropTableSpaceStmt, type metadata accessor for PgQuery_DropTableSpaceStmt, &protocol conformance descriptor for PgQuery_DropTableSpaceStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_DropTableSpaceStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #121 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlterObjectDependsStmt = type metadata accessor for PgQuery_AlterObjectDependsStmt(0);
  MEMORY[0x28223BE20](AlterObjectDependsStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 120)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlterObjectDependsStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectDependsStmt and conformance PgQuery_AlterObjectDependsStmt, type metadata accessor for PgQuery_AlterObjectDependsStmt, &protocol conformance descriptor for PgQuery_AlterObjectDependsStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlterObjectDependsStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #122 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlterObjectSchemaStmt = type metadata accessor for PgQuery_AlterObjectSchemaStmt(0);
  MEMORY[0x28223BE20](AlterObjectSchemaStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 121)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlterObjectSchemaStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectSchemaStmt and conformance PgQuery_AlterObjectSchemaStmt, type metadata accessor for PgQuery_AlterObjectSchemaStmt, &protocol conformance descriptor for PgQuery_AlterObjectSchemaStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlterObjectSchemaStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #123 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlterOwnerStmt = type metadata accessor for PgQuery_AlterOwnerStmt(0);
  MEMORY[0x28223BE20](AlterOwnerStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 122)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlterOwnerStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOwnerStmt and conformance PgQuery_AlterOwnerStmt, type metadata accessor for PgQuery_AlterOwnerStmt, &protocol conformance descriptor for PgQuery_AlterOwnerStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlterOwnerStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #124 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlterOperatorStmt = type metadata accessor for PgQuery_AlterOperatorStmt(0);
  MEMORY[0x28223BE20](AlterOperatorStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 123)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlterOperatorStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOperatorStmt and conformance PgQuery_AlterOperatorStmt, type metadata accessor for PgQuery_AlterOperatorStmt, &protocol conformance descriptor for PgQuery_AlterOperatorStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlterOperatorStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #125 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  AlterTypeStmt = type metadata accessor for PgQuery_AlterTypeStmt(0);
  MEMORY[0x28223BE20](AlterTypeStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 124)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_AlterTypeStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTypeStmt and conformance PgQuery_AlterTypeStmt, type metadata accessor for PgQuery_AlterTypeStmt, &protocol conformance descriptor for PgQuery_AlterTypeStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_AlterTypeStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #126 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  DropOwnedStmt = type metadata accessor for PgQuery_DropOwnedStmt(0);
  MEMORY[0x28223BE20](DropOwnedStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 125)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_DropOwnedStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropOwnedStmt and conformance PgQuery_DropOwnedStmt, type metadata accessor for PgQuery_DropOwnedStmt, &protocol conformance descriptor for PgQuery_DropOwnedStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_DropOwnedStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}

uint64_t closure #127 in closure #1 in PgQuery_Node.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  ReassignOwnedStmt = type metadata accessor for PgQuery_ReassignOwnedStmt(0);
  MEMORY[0x28223BE20](ReassignOwnedStmt);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v11 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 126)
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_ReassignOwnedStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReassignOwnedStmt and conformance PgQuery_ReassignOwnedStmt, type metadata accessor for PgQuery_ReassignOwnedStmt, &protocol conformance descriptor for PgQuery_ReassignOwnedStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_ReassignOwnedStmt);
  }

  result = outlined destroy of PgQuery_OidList(v7, type metadata accessor for PgQuery_Node.OneOf_Node);
  __break(1u);
  return result;
}
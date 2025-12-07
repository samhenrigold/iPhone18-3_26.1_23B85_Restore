uint64_t PgQuery_RawStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = *(type metadata accessor for PgQuery_RawStmt(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_RawStmt._StorageClass(0);
    v9 = swift_allocObject();
    v10 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmt;
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmt;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v9 + v10, 1, 1, Node);
    v18 = v4;
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation;
    *(v9 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation) = 0;
    v13 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen;
    *(v9 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen) = 0;
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmt;

    outlined assign with copy of PgQuery_Node?(v8 + v14, v9 + v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v9 + v12) = *(v8 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation);
    LODWORD(v12) = *(v8 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen);

    *(v9 + v13) = v12;
    v5 = v18;

    *(v3 + v6) = v9;
  }

  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v16 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }

    else if (result == 2 || result == 3)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_MultiAssignRef.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void *a5, void *a6, void *a7)
{
  v15 = a4(0);
  result = closure #1 in PgQuery_NextValueExpr.traverse<A>(visitor:)(*(v7 + *(v15 + 20)), a1, a2, a3, a5, a6, MEMORY[0x1E69AAD90], a7);
  if (!v8)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RawStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RawStmt and conformance PgQuery_RawStmt, type metadata accessor for PgQuery_RawStmt, &protocol conformance descriptor for PgQuery_RawStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RawStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RawStmt and conformance PgQuery_RawStmt, type metadata accessor for PgQuery_RawStmt, &protocol conformance descriptor for PgQuery_RawStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RawStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RawStmt and conformance PgQuery_RawStmt, type metadata accessor for PgQuery_RawStmt, &protocol conformance descriptor for PgQuery_RawStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_Query._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultRelation) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasAggs_p) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasWindowFuncs_p) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasTargetSrfs_p) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasSubLinks_p) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasDistinctOn_p) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRecursive_p) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasModifyingCte_p) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasForUpdate_p) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRowSecurity_p) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cteList) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtable) = v4;
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree;
  v6 = type metadata accessor for PgQuery_FromExpr(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) = v4;
  v7 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict;
  v9 = type metadata accessor for PgQuery_OnConflictExpr(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupingSets) = v4;
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__distinctClause) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause) = v4;
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, 1, 1, Node);
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, 1, 1, Node);
  v10 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowMarks) = v4;
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraintDeps) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOptions) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen) = 0;
  return v0;
}

uint64_t PgQuery_Query._StorageClass.deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  return v0;
}

void type metadata completion function for PgQuery_Query._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_FromExpr?, type metadata accessor for PgQuery_FromExpr, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_OnConflictExpr?, type metadata accessor for PgQuery_OnConflictExpr, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t closure #1 in PgQuery_Query.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    v7 = v11;
    while ((v6 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v8 = v7;
          v9 = v4;
          lazy protocol witness table accessor for type PgQuery_CmdType and conformance PgQuery_CmdType();
          goto LABEL_32;
        case 2:
          v8 = v7;
          v9 = v4;
          lazy protocol witness table accessor for type PgQuery_QuerySource and conformance PgQuery_QuerySource();
          goto LABEL_32;
        case 3:
          v8 = v7;
          goto LABEL_27;
        case 4:
        case 24:
        case 28:
        case 29:
        case 32:
          v10 = v4;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          goto LABEL_30;
        case 5:
          v8 = v7;
          goto LABEL_15;
        case 6:
          v8 = v7;
          goto LABEL_27;
        case 7:
          v8 = v7;
          goto LABEL_27;
        case 8:
          v8 = v7;
          goto LABEL_27;
        case 9:
          v8 = v7;
          goto LABEL_27;
        case 10:
          v8 = v7;
          goto LABEL_27;
        case 11:
          v8 = v7;
          goto LABEL_27;
        case 12:
          v8 = v7;
          goto LABEL_27;
        case 13:
          v8 = v7;
          goto LABEL_27;
        case 14:
          v8 = v7;
LABEL_27:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 15:
        case 16:
        case 18:
        case 21:
        case 22:
        case 23:
        case 25:
        case 26:
        case 27:
        case 31:
        case 33:
        case 34:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        case 17:
          v10 = v4;
          type metadata accessor for PgQuery_FromExpr(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FromExpr and conformance PgQuery_FromExpr, type metadata accessor for PgQuery_FromExpr, &protocol conformance descriptor for PgQuery_FromExpr);
          goto LABEL_30;
        case 19:
          v8 = v7;
          v9 = v4;
          lazy protocol witness table accessor for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind();
          goto LABEL_32;
        case 20:
          v10 = v4;
          type metadata accessor for PgQuery_OnConflictExpr(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr, &protocol conformance descriptor for PgQuery_OnConflictExpr);
LABEL_30:
          v4 = v10;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_5:
          v8 = v11;
          break;
        case 30:
          v8 = v7;
          v9 = v4;
          lazy protocol witness table accessor for type PgQuery_LimitOption and conformance PgQuery_LimitOption();
LABEL_32:
          v4 = v9;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 35:
          v8 = v7;
          goto LABEL_15;
        case 36:
          v8 = v7;
LABEL_15:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        default:
          v8 = v7;
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
      v7 = v8;
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_Query.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v114 = &v98 - v9;
  v115 = type metadata accessor for PgQuery_OnConflictExpr(0);
  v110 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v10);
  v111 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v116 = &v98 - v14;
  v15 = type metadata accessor for PgQuery_FromExpr(0);
  v113 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v112 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v103 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v106 = &v98 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v107 = &v98 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v109 = &v98 - v30;
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v98 - v32;
  Node = type metadata accessor for PgQuery_Node(0);
  v35 = *(Node - 8);
  v37 = MEMORY[0x1EEE9AC00](Node, v36);
  v102 = &v98 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v104 = &v98 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v105 = &v98 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v108 = &v98 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v50 = a1;
  v52 = &v98 - v51;
  v53 = *(v50 + 16);
  v119 = v49;
  if (v53)
  {
    v54 = *(v50 + 24);
    v117 = v53;
    v118 = v54;
    v55 = v50;
    lazy protocol witness table accessor for type PgQuery_CmdType and conformance PgQuery_CmdType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
    v50 = v55;
    Node = v119;
  }

  if (*(v50 + 32))
  {
    v57 = *(v50 + 40);
    v117 = *(v50 + 32);
    v118 = v57;
    v58 = v50;
    lazy protocol witness table accessor for type PgQuery_QuerySource and conformance PgQuery_QuerySource();
    v59 = v5;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    v50 = v58;
    Node = v119;
  }

  else
  {
    v59 = v5;
  }

  v60 = *(v50 + 41);
  v101 = v50;
  if (v60 == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v59)
    {
      return result;
    }

    v61 = 0;
    v50 = v101;
  }

  else
  {
    v61 = v59;
  }

  outlined init with copy of PgQuery_Alias?(v50 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt, v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v99 = *(v35 + 48);
  v100 = v35 + 48;
  if (v99(v33, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v33, v52, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v61)
    {
      return outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
  }

  v62 = v101;
  if (*(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultRelation))
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v61)
    {
      return result;
    }

    v62 = v101;
  }

  v63 = v15;
  if (*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasAggs_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    v64 = v116;
    if (v61)
    {
      return result;
    }

    v62 = v101;
  }

  else
  {
    v64 = v116;
  }

  if (*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasWindowFuncs_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v61)
    {
      return result;
    }

    v62 = v101;
  }

  if (*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasTargetSrfs_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v61)
    {
      return result;
    }

    v62 = v101;
  }

  if (*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasSubLinks_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v61)
    {
      return result;
    }

    v62 = v101;
  }

  if (*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasDistinctOn_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v61)
    {
      return result;
    }

    v62 = v101;
  }

  if (*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRecursive_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v61)
    {
      return result;
    }

    v62 = v101;
  }

  if (*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasModifyingCte_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v61)
    {
      return result;
    }

    v62 = v101;
  }

  if (*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasForUpdate_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v61)
    {
      return result;
    }

    v62 = v101;
  }

  if (*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRowSecurity_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v61)
    {
      return result;
    }

    v62 = v101;
  }

  if (*(*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cteList) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v61)
    {
    }

    v62 = v101;
  }

  v116 = v61;
  if (*(*(v62 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtable) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v65 = v116;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v116 = v65;
    if (v65)
    {
    }

    v62 = v101;
  }

  outlined init with copy of PgQuery_Alias?(v62 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree, v64, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  if ((*(v113 + 48))(v64, 1, v63) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v64, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
    v67 = v114;
    v66 = v115;
  }

  else
  {
    v68 = v64;
    v69 = v112;
    outlined init with take of PgQuery_OidList(v68, v112, type metadata accessor for PgQuery_FromExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FromExpr and conformance PgQuery_FromExpr, type metadata accessor for PgQuery_FromExpr, &protocol conformance descriptor for PgQuery_FromExpr);
    v70 = v116;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v116 = v70;
    v67 = v114;
    v66 = v115;
    if (v70)
    {
      v71 = type metadata accessor for PgQuery_FromExpr;
      return outlined destroy of PgQuery_OidList(v69, v71);
    }

    outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_FromExpr);
  }

  v72 = v101;
  if (*(*(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v73 = v116;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v116 = v73;
    if (v73)
    {
    }

    v72 = v101;
  }

  v69 = v111;
  if (*(v72 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override))
  {
    v74 = *(v72 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override + 8);
    v117 = *(v72 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
    v118 = v74;
    lazy protocol witness table accessor for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind();
    v75 = v116;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v75)
    {
      return result;
    }

    v116 = 0;
    v72 = v101;
  }

  outlined init with copy of PgQuery_Alias?(v72 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict, v67, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  if ((*(v110 + 48))(v67, 1, v66) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v67, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
    goto LABEL_72;
  }

  outlined init with take of PgQuery_OidList(v67, v69, type metadata accessor for PgQuery_OnConflictExpr);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr, &protocol conformance descriptor for PgQuery_OnConflictExpr);
  v76 = v116;
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  v116 = v76;
  if (v76)
  {
    v71 = type metadata accessor for PgQuery_OnConflictExpr;
    return outlined destroy of PgQuery_OidList(v69, v71);
  }

  outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_OnConflictExpr);
LABEL_72:
  v77 = v101;
  if (*(*(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v78 = v116;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v116 = v78;
    if (v78)
    {
    }

    v77 = v101;
  }

  if (*(*(v77 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v79 = v116;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v116 = v79;
    if (v79)
    {
    }
  }

  if (*(*(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupingSets) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v80 = v116;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v116 = v80;
    if (v80)
    {
    }
  }

  v81 = v109;
  outlined init with copy of PgQuery_Alias?(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual, v109, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v99(v81, 1, v119) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v109, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v109, v108, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v82 = v116;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v116 = v82;
    if (v82)
    {
      return outlined destroy of PgQuery_OidList(v108, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v108, type metadata accessor for PgQuery_Node);
  }

  if (*(*(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v83 = v116;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v116 = v83;
    if (v83)
    {
    }
  }

  if (!*(*(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__distinctClause) + 16))
  {
    goto LABEL_92;
  }

  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

  v84 = v116;
  dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  v116 = v84;
  if (v84)
  {
  }

LABEL_92:
  if (*(*(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v85 = v116;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v116 = v85;
    if (v85)
    {
    }
  }

  v86 = v107;
  outlined init with copy of PgQuery_Alias?(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, v107, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v99(v86, 1, v119) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v107, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v107, v105, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v87 = v116;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v116 = v87;
    if (v87)
    {
      return outlined destroy of PgQuery_OidList(v105, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v105, type metadata accessor for PgQuery_Node);
  }

  v88 = v106;
  outlined init with copy of PgQuery_Alias?(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, v106, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v99(v88, 1, v119) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v106, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v106, v104, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v89 = v116;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v116 = v89;
    if (v89)
    {
      return outlined destroy of PgQuery_OidList(v104, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v104, type metadata accessor for PgQuery_Node);
  }

  if (!*(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption) || (v90 = *(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption + 8), v117 = *(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption), v118 = v90, lazy protocol witness table accessor for type PgQuery_LimitOption and conformance PgQuery_LimitOption(), v91 = v116, result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), (v116 = v91) == 0))
  {
    if (*(*(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowMarks) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

      v92 = v116;
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      v116 = v92;
      if (v92)
      {
      }
    }

    v93 = v103;
    outlined init with copy of PgQuery_Alias?(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations, v103, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v99(v93, 1, v119) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v103, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v103, v102, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      v94 = v116;
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      v116 = v94;
      if (v94)
      {
        return outlined destroy of PgQuery_OidList(v102, type metadata accessor for PgQuery_Node);
      }

      outlined destroy of PgQuery_OidList(v102, type metadata accessor for PgQuery_Node);
    }

    if (*(*(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraintDeps) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

      v95 = v116;
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      v116 = v95;
      if (v95)
      {
      }
    }

    if (*(*(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOptions) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

      v96 = v116;
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      v116 = v96;
      if (v96)
      {
      }
    }

    if (!*(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation) || (v97 = v116, result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), (v116 = v97) == 0))
    {
      result = *(v101 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_Query.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v231 = type metadata accessor for PgQuery_OnConflictExpr(0);
  v229 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231, v4);
  v227 = &v210 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v230 = &v210 - v8;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_OnConflictExprVSg_ADtMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v228, v9);
  v232 = &v210 - v10;
  v237 = type metadata accessor for PgQuery_FromExpr(0);
  v235 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237, v11);
  v233 = &v210 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v236 = &v210 - v15;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FromExprVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_FromExprVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v234, v16);
  v238 = &v210 - v17;
  Node = type metadata accessor for PgQuery_Node(0);
  v19 = *(Node - 8);
  v21 = MEMORY[0x1EEE9AC00](Node, v20);
  v23 = &v210 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v210 - v26;
  v29 = MEMORY[0x1EEE9AC00](v25, v28);
  v225 = &v210 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v223 = &v210 - v33;
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v210 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v41 = &v210 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v226 = &v210 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v224 = &v210 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v222 = &v210 - v50;
  MEMORY[0x1EEE9AC00](v49, v51);
  v53 = &v210 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v56 = MEMORY[0x1EEE9AC00](v54, v55);
  v58 = MEMORY[0x1EEE9AC00](v56, v57);
  v60 = MEMORY[0x1EEE9AC00](v58, v59);
  v62 = MEMORY[0x1EEE9AC00](v60, v61);
  v64 = MEMORY[0x1EEE9AC00](v62, &v210 - v63);
  v70 = &v210 - v66;
  v71 = *(a1 + 16);
  v72 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v72 > 3)
    {
      if (v72 > 5)
      {
        if (v72 == 6)
        {
          if (v71 != 6)
          {
            return 0;
          }
        }

        else if (v71 != 7)
        {
          return 0;
        }
      }

      else if (v72 == 4)
      {
        if (v71 != 4)
        {
          return 0;
        }
      }

      else if (v71 != 5)
      {
        return 0;
      }
    }

    else if (v72 > 1)
    {
      if (v72 == 2)
      {
        if (v71 != 2)
        {
          return 0;
        }
      }

      else if (v71 != 3)
      {
        return 0;
      }
    }

    else if (v72)
    {
      if (v71 != 1)
      {
        return 0;
      }
    }

    else if (v71)
    {
      return 0;
    }
  }

  else if (v71 != v72)
  {
    return 0;
  }

  v73 = *(a1 + 32);
  v74 = *(a2 + 32);
  if (*(a2 + 40) != 1)
  {
    if (v73 == v74)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v74 > 2)
  {
    if (v74 == 3)
    {
      if (v73 != 3)
      {
        return 0;
      }
    }

    else if (v74 == 4)
    {
      if (v73 != 4)
      {
        return 0;
      }
    }

    else if (v73 != 5)
    {
      return 0;
    }
  }

  else if (v74)
  {
    if (v74 == 1)
    {
      if (v73 != 1)
      {
        return 0;
      }
    }

    else if (v73 != 2)
    {
      return 0;
    }
  }

  else if (v73)
  {
    return 0;
  }

LABEL_19:
  if (*(a1 + 41) != *(a2 + 41))
  {
    return 0;
  }

  v220 = v65;
  v213 = v69;
  v214 = v68;
  v215 = v27;
  v216 = v67;
  v217 = v41;
  v218 = v23;
  v219 = v64;
  v221 = a2;
  v75 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt;
  v76 = *(v64 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt, &v210 - v66, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v77 = v221 + v75;
  v78 = v221;
  outlined init with copy of PgQuery_Alias?(v77, &v70[v76], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v79 = *(v19 + 48);
  if (v79(v70, 1, Node) == 1)
  {
    v212 = Node;
    v211 = v79;
    v80 = v79(&v70[v76], 1, Node);

    v81 = a1;
    if (v80 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v70, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_56;
    }

    goto LABEL_43;
  }

  outlined init with copy of PgQuery_Alias?(v70, v53, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v79(&v70[v76], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
LABEL_43:
    v82 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v83 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_44:
    _s10Foundation4UUIDVSgWOhTm_0(v70, v82, v83);
    goto LABEL_66;
  }

  v211 = v79;
  outlined init with take of PgQuery_OidList(&v70[v76], v36, type metadata accessor for PgQuery_Node);
  v212 = Node;
  v84 = *(Node + 20);
  v85 = *&v53[v84];
  v86 = *&v36[v84];
  v81 = a1;

  if (v85 != v86)
  {

    v87 = closure #1 in static PgQuery_Node.== infix(_:_:)(v85, v86);

    if (!v87)
    {
      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
      v82 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v83 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_44;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v88 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v70, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v88 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_56:
  if (*(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultRelation) != *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultRelation))
  {
    goto LABEL_66;
  }

  if (*(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasAggs_p) != *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasAggs_p))
  {
    goto LABEL_66;
  }

  if (*(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasWindowFuncs_p) != *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasWindowFuncs_p))
  {
    goto LABEL_66;
  }

  if (*(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasTargetSrfs_p) != *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasTargetSrfs_p))
  {
    goto LABEL_66;
  }

  if (*(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasSubLinks_p) != *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasSubLinks_p))
  {
    goto LABEL_66;
  }

  if (*(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasDistinctOn_p) != *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasDistinctOn_p))
  {
    goto LABEL_66;
  }

  if (*(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRecursive_p) != *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRecursive_p))
  {
    goto LABEL_66;
  }

  if (*(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasModifyingCte_p) != *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasModifyingCte_p))
  {
    goto LABEL_66;
  }

  if (*(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasForUpdate_p) != *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasForUpdate_p))
  {
    goto LABEL_66;
  }

  if (*(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRowSecurity_p) != *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRowSecurity_p))
  {
    goto LABEL_66;
  }

  v90 = *(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cteList);
  v91 = *(v78 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cteList);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v90, v91);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_66;
  }

  v93 = *(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtable);
  v94 = *(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtable);

  v95 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v93, v94);

  if ((v95 & 1) == 0)
  {
    goto LABEL_66;
  }

  v96 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree;
  v97 = *(v234 + 48);
  v98 = v238;
  outlined init with copy of PgQuery_Alias?(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree, v238, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  outlined init with copy of PgQuery_Alias?(v221 + v96, v98 + v97, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  v99 = *(v235 + 48);
  if (v99(v98, 1, v237) == 1)
  {
    if (v99(v238 + v97, 1, v237) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v238, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
      goto LABEL_82;
    }

    goto LABEL_76;
  }

  v100 = v238;
  outlined init with copy of PgQuery_Alias?(v238, v236, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  if (v99(v100 + v97, 1, v237) == 1)
  {
    outlined destroy of PgQuery_OidList(v236, type metadata accessor for PgQuery_FromExpr);
LABEL_76:
    v101 = &_s14BiomeSQLParser16PgQuery_FromExprVSg_ADtMd;
    v102 = &_s14BiomeSQLParser16PgQuery_FromExprVSg_ADtMR;
LABEL_77:
    v103 = v238;
LABEL_78:
    _s10Foundation4UUIDVSgWOhTm_0(v103, v101, v102);
    goto LABEL_66;
  }

  v104 = v233;
  outlined init with take of PgQuery_OidList(v238 + v97, v233, type metadata accessor for PgQuery_FromExpr);
  v105 = *(v237 + 20);
  v106 = *(v236 + v105);
  v107 = *(v104 + v105);
  if (v106 != v107)
  {

    v108 = closure #1 in static PgQuery_FromExpr.== infix(_:_:)(v106, v107);

    if ((v108 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v233, type metadata accessor for PgQuery_FromExpr);
      outlined destroy of PgQuery_OidList(v236, type metadata accessor for PgQuery_FromExpr);
      v101 = &_s14BiomeSQLParser16PgQuery_FromExprVSgMd;
      v102 = &_s14BiomeSQLParser16PgQuery_FromExprVSgMR;
      goto LABEL_77;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v109 = v236;
  v110 = v233;
  v111 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v110, type metadata accessor for PgQuery_FromExpr);
  outlined destroy of PgQuery_OidList(v109, type metadata accessor for PgQuery_FromExpr);
  _s10Foundation4UUIDVSgWOhTm_0(v238, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  if ((v111 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_82:
  v112 = *(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);
  v113 = *(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  v114 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v112, v113);

  if ((v114 & 1) == 0)
  {
    goto LABEL_66;
  }

  v115 = *(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
  v116 = *(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
  if (*(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override + 8) == 1)
  {
    if (v116 > 1)
    {
      if (v116 == 2)
      {
        if (v115 != 2)
        {
          goto LABEL_66;
        }
      }

      else if (v115 != 3)
      {
        goto LABEL_66;
      }
    }

    else if (v116)
    {
      if (v115 != 1)
      {
        goto LABEL_66;
      }
    }

    else if (v115)
    {
      goto LABEL_66;
    }
  }

  else if (v115 != v116)
  {
    goto LABEL_66;
  }

  v117 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict;
  v118 = *(v228 + 48);
  v119 = v232;
  outlined init with copy of PgQuery_Alias?(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict, v232, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  outlined init with copy of PgQuery_Alias?(v221 + v117, v119 + v118, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  v120 = *(v229 + 48);
  if (v120(v119, 1, v231) == 1)
  {
    if (v120(v232 + v118, 1, v231) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v232, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
      goto LABEL_107;
    }

    goto LABEL_98;
  }

  v121 = v232;
  outlined init with copy of PgQuery_Alias?(v232, v230, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  if (v120(v121 + v118, 1, v231) == 1)
  {
    outlined destroy of PgQuery_OidList(v230, type metadata accessor for PgQuery_OnConflictExpr);
LABEL_98:
    v101 = &_s14BiomeSQLParser22PgQuery_OnConflictExprVSg_ADtMd;
    v102 = &_s14BiomeSQLParser22PgQuery_OnConflictExprVSg_ADtMR;
LABEL_99:
    v103 = v232;
    goto LABEL_78;
  }

  v122 = v227;
  outlined init with take of PgQuery_OidList(v232 + v118, v227, type metadata accessor for PgQuery_OnConflictExpr);
  v123 = *(v231 + 20);
  v124 = *(v230 + v123);
  v125 = *(v122 + v123);
  if (v124 != v125)
  {

    v126 = closure #1 in static PgQuery_OnConflictExpr.== infix(_:_:)(v124, v125);

    if ((v126 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v227, type metadata accessor for PgQuery_OnConflictExpr);
      outlined destroy of PgQuery_OidList(v230, type metadata accessor for PgQuery_OnConflictExpr);
      v101 = &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd;
      v102 = &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR;
      goto LABEL_99;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v127 = v230;
  v128 = v227;
  v129 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v128, type metadata accessor for PgQuery_OnConflictExpr);
  outlined destroy of PgQuery_OidList(v127, type metadata accessor for PgQuery_OnConflictExpr);
  _s10Foundation4UUIDVSgWOhTm_0(v232, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  if ((v129 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_107:
  v130 = *(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);
  v131 = *(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  v132 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v130, v131);

  if ((v132 & 1) == 0)
  {
    goto LABEL_66;
  }

  v133 = *(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);
  v134 = *(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);

  v135 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v133, v134);

  if ((v135 & 1) == 0)
  {
    goto LABEL_66;
  }

  v136 = *(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupingSets);
  v137 = *(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupingSets);

  v138 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v136, v137);

  if ((v138 & 1) == 0)
  {
    goto LABEL_66;
  }

  v139 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual;
  v140 = v220;
  v141 = *(v219 + 48);
  outlined init with copy of PgQuery_Alias?(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual, v220, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v221 + v139, v140 + v141, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v211(v140, 1, v212) == 1)
  {
    if (v211(v220 + v141, 1, v212) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v220, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_121;
    }

    goto LABEL_116;
  }

  v142 = v220;
  outlined init with copy of PgQuery_Alias?(v220, v222, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v211(v142 + v141, 1, v212) == 1)
  {
    outlined destroy of PgQuery_OidList(v222, type metadata accessor for PgQuery_Node);
LABEL_116:
    v101 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v102 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_117:
    v103 = v220;
    goto LABEL_78;
  }

  v143 = v223;
  outlined init with take of PgQuery_OidList(v220 + v141, v223, type metadata accessor for PgQuery_Node);
  v144 = *(v212 + 20);
  v145 = *(v222 + v144);
  v146 = *(v143 + v144);
  if (v145 != v146)
  {

    v147 = closure #1 in static PgQuery_Node.== infix(_:_:)(v145, v146);

    if (!v147)
    {
      outlined destroy of PgQuery_OidList(v223, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v222, type metadata accessor for PgQuery_Node);
      v101 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v102 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_117;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v149 = v222;
  v148 = v223;
  v150 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v148, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v149, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v220, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v150 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_121:
  v151 = *(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);
  v152 = *(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);

  v153 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v151, v152);

  if ((v153 & 1) == 0)
  {
    goto LABEL_66;
  }

  v154 = *(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__distinctClause);
  v155 = *(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__distinctClause);

  v156 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v154, v155);

  if ((v156 & 1) == 0)
  {
    goto LABEL_66;
  }

  v157 = *(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);
  v158 = *(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);

  v159 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v157, v158);

  if ((v159 & 1) == 0)
  {
    goto LABEL_66;
  }

  v160 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset;
  v161 = *(v219 + 48);
  v162 = v213;
  outlined init with copy of PgQuery_Alias?(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, v213, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v221 + v160, v162 + v161, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v211(v162, 1, v212) == 1)
  {
    if (v211(v213 + v161, 1, v212) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v213, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_134;
    }

LABEL_130:
    v101 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v102 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v164 = &v239;
LABEL_150:
    v103 = *(v164 - 32);
    goto LABEL_78;
  }

  v163 = v213;
  outlined init with copy of PgQuery_Alias?(v213, v224, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v211(v163 + v161, 1, v212) == 1)
  {
    outlined destroy of PgQuery_OidList(v224, type metadata accessor for PgQuery_Node);
    goto LABEL_130;
  }

  v165 = v225;
  outlined init with take of PgQuery_OidList(v213 + v161, v225, type metadata accessor for PgQuery_Node);
  v166 = *(v212 + 20);
  v167 = *(v224 + v166);
  v168 = *(v165 + v166);
  if (v167 != v168)
  {

    v169 = closure #1 in static PgQuery_Node.== infix(_:_:)(v167, v168);

    if (!v169)
    {
      outlined destroy of PgQuery_OidList(v225, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v224, type metadata accessor for PgQuery_Node);
      v101 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v102 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v164 = &v239;
      goto LABEL_150;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v171 = v224;
  v170 = v225;
  v172 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v170, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v171, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v213, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v172 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_134:
  v173 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount;
  v174 = *(v219 + 48);
  v175 = v214;
  outlined init with copy of PgQuery_Alias?(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, v214, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v221 + v173, v175 + v174, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v211(v175, 1, v212) == 1)
  {
    if (v211(v214 + v174, 1, v212) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v214, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_144;
    }

    goto LABEL_139;
  }

  v176 = v214;
  outlined init with copy of PgQuery_Alias?(v214, v226, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v211(v176 + v174, 1, v212) == 1)
  {
    outlined destroy of PgQuery_OidList(v226, type metadata accessor for PgQuery_Node);
LABEL_139:
    v101 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v102 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_140:
    v164 = &v240;
    goto LABEL_150;
  }

  v177 = v215;
  outlined init with take of PgQuery_OidList(v214 + v174, v215, type metadata accessor for PgQuery_Node);
  v178 = *(v212 + 20);
  v179 = *(v226 + v178);
  v180 = *(v177 + v178);
  if (v179 != v180)
  {

    v181 = closure #1 in static PgQuery_Node.== infix(_:_:)(v179, v180);

    if (!v181)
    {
      outlined destroy of PgQuery_OidList(v215, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v226, type metadata accessor for PgQuery_Node);
      v101 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v102 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_140;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v182 = v226;
  v183 = v215;
  v184 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v183, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v182, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v214, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v184 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_144:
  v185 = *(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption);
  v186 = *(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption);
  if (*(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption + 8) == 1)
  {
    if (v186 > 1)
    {
      if (v186 == 2)
      {
        if (v185 != 2)
        {
          goto LABEL_66;
        }
      }

      else if (v185 != 3)
      {
        goto LABEL_66;
      }
    }

    else if (v186)
    {
      if (v185 != 1)
      {
        goto LABEL_66;
      }
    }

    else if (v185)
    {
      goto LABEL_66;
    }
  }

  else if (v185 != v186)
  {
    goto LABEL_66;
  }

  v187 = *(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowMarks);
  v188 = *(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowMarks);

  v189 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v187, v188);

  if ((v189 & 1) == 0)
  {
    goto LABEL_66;
  }

  v190 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations;
  v191 = *(v219 + 48);
  v192 = v216;
  outlined init with copy of PgQuery_Alias?(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations, v216, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v221 + v190, v192 + v191, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v211(v192, 1, v212) != 1)
  {
    v193 = v216;
    outlined init with copy of PgQuery_Alias?(v216, v217, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v211(v193 + v191, 1, v212) == 1)
    {
      outlined destroy of PgQuery_OidList(v217, type metadata accessor for PgQuery_Node);
      goto LABEL_166;
    }

    v194 = v218;
    outlined init with take of PgQuery_OidList(v216 + v191, v218, type metadata accessor for PgQuery_Node);
    v195 = *(v212 + 20);
    v196 = *&v217[v195];
    v197 = *(v194 + v195);
    if (v196 != v197)
    {

      v198 = closure #1 in static PgQuery_Node.== infix(_:_:)(v196, v197);

      if (!v198)
      {
        outlined destroy of PgQuery_OidList(v218, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v217, type metadata accessor for PgQuery_Node);
        v101 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v102 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        v164 = &v241;
        goto LABEL_150;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v199 = v217;
    v200 = v218;
    v201 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v200, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v199, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v216, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v201)
    {
      goto LABEL_170;
    }

LABEL_66:

    return 0;
  }

  if (v211(v216 + v191, 1, v212) != 1)
  {
LABEL_166:
    v101 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v102 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v164 = &v241;
    goto LABEL_150;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v216, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_170:
  v202 = *(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraintDeps);
  v203 = *(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraintDeps);

  v204 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v202, v203);

  if ((v204 & 1) == 0)
  {
    goto LABEL_66;
  }

  v205 = *(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOptions);
  v206 = *(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOptions);

  v207 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v205, v206);

  if ((v207 & 1) == 0 || *(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation) != *(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation))
  {
    goto LABEL_66;
  }

  v208 = *(v81 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen);

  v209 = *(v221 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen);

  return v208 == v209;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_Query(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query, &protocol conformance descriptor for PgQuery_Query);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_Query(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query, &protocol conformance descriptor for PgQuery_Query);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_Query(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query, &protocol conformance descriptor for PgQuery_Query);

  return Message.hash(into:)();
}

uint64_t PgQuery_InsertStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectStmt, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictClause, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_InsertStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_OnConflictClause?, type metadata accessor for PgQuery_OnConflictClause, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_WithClause?, type metadata accessor for PgQuery_WithClause, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t closure #1 in PgQuery_InsertStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v6)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            v7 = v4;
            type metadata accessor for PgQuery_RangeVar(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
LABEL_5:
            v4 = v7;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 2:
            goto LABEL_21;
          case 3:
            v7 = v4;
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            goto LABEL_5;
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result == 4)
          {
            v7 = v4;
            type metadata accessor for PgQuery_OnConflictClause(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictClause and conformance PgQuery_OnConflictClause, type metadata accessor for PgQuery_OnConflictClause, &protocol conformance descriptor for PgQuery_OnConflictClause);
            goto LABEL_5;
          }

LABEL_21:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 6)
        {
          v7 = v4;
          type metadata accessor for PgQuery_WithClause(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause, &protocol conformance descriptor for PgQuery_WithClause);
          goto LABEL_5;
        }

        if (result == 7)
        {
          lazy protocol witness table accessor for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_InsertStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a3;
  v63 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v52 = &v47 - v7;
  v8 = type metadata accessor for PgQuery_WithClause(0);
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v47 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v57 = &v47 - v13;
  v56 = type metadata accessor for PgQuery_OnConflictClause(0);
  v53 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v14);
  v50 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v55 = &v47 - v18;
  Node = type metadata accessor for PgQuery_Node(0);
  v54 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v19);
  v51 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v47 - v23;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v26 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v27);
  v29 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v26 + 48))(v24, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v31 = v59;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v24, v29, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v32 = v59;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v31 = v32;
    result = outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_RangeVar);
    if (v32)
    {
      return result;
    }
  }

  v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols);
  v36 = v57;
  v35 = Node;
  if (!*(v34 + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v31))
  {
    v37 = v55;
    outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectStmt, v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v38 = (*(v54 + 48))(v37, 1, v35);
    v39 = v56;
    if (v38 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      v40 = v37;
      v41 = v51;
      outlined init with take of PgQuery_OidList(v40, v51, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
      if (v31)
      {
        return result;
      }
    }

    outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictClause, v36, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
    if ((*(v53 + 48))(v36, 1, v39) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
    }

    else
    {
      v42 = v36;
      v43 = v50;
      outlined init with take of PgQuery_OidList(v42, v50, type metadata accessor for PgQuery_OnConflictClause);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictClause and conformance PgQuery_OnConflictClause, type metadata accessor for PgQuery_OnConflictClause, &protocol conformance descriptor for PgQuery_OnConflictClause);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_OnConflictClause);
      if (v31)
      {
        return result;
      }
    }

    if (!*(*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v31))
    {
      v44 = v52;
      outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v52, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      if ((*(v48 + 48))(v44, 1, v49) == 1)
      {
        result = _s10Foundation4UUIDVSgWOhTm_0(v52, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      }

      else
      {
        v45 = v47;
        outlined init with take of PgQuery_OidList(v52, v47, type metadata accessor for PgQuery_WithClause);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause, &protocol conformance descriptor for PgQuery_WithClause);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_WithClause);
        if (v31)
        {
          return result;
        }
      }

      if (*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override))
      {
        v46 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override + 8);
        v61 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
        v62 = v46;
        lazy protocol witness table accessor for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind();
        return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_InsertStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v118 = a2;
  v3 = type metadata accessor for PgQuery_WithClause(0);
  v103 = *(v3 - 8);
  v104 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v100 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v101 = &v100 - v8;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v102, v9);
  v105 = &v100 - v10;
  v11 = type metadata accessor for PgQuery_OnConflictClause(0);
  v110 = *(v11 - 8);
  v111 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v106 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v108 = &v100 - v16;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_OnConflictClauseVSg_ADtMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v109, v17);
  v112 = &v100 - v18;
  Node = type metadata accessor for PgQuery_Node(0);
  v115 = *(Node - 8);
  v116 = Node;
  MEMORY[0x1EEE9AC00](Node, v20);
  v107 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v113 = &v100 - v24;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v114, v25);
  v117 = &v100 - v26;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v28 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v29);
  v31 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v100 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v40 = &v100 - v39;
  v41 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v42 = *(v38 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v100 - v39, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v43 = v118 + v41;
  v44 = v118;
  outlined init with copy of PgQuery_Alias?(v43, &v40[v42], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v45 = *(v28 + 48);
  if (v45(v40, 1, RangeVar) == 1)
  {
    v46 = v45(&v40[v42], 1, RangeVar);

    if (v46 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    v47 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v48 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_7:
    v49 = v40;
LABEL_8:
    _s10Foundation4UUIDVSgWOhTm_0(v49, v47, v48);
LABEL_48:

    return 0;
  }

  outlined init with copy of PgQuery_Alias?(v40, v35, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v45(&v40[v42], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  outlined init with take of PgQuery_OidList(&v40[v42], v31, type metadata accessor for PgQuery_RangeVar);

  v50 = specialized static PgQuery_RangeVar.== infix(_:_:)(v35, v31);
  outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v50 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_10:
  v51 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols);
  v52 = *(v44 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v51, v52);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_48;
  }

  v54 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectStmt;
  v55 = *(v114 + 48);
  v40 = v117;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectStmt, v117, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v44 + v54, &v40[v55], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v56 = v116;
  v57 = *(v115 + 48);
  if (v57(v40, 1, v116) == 1)
  {
    if (v57(&v40[v55], 1, v56) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v58 = v113;
  outlined init with copy of PgQuery_Alias?(v40, v113, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v57(&v40[v55], 1, v56) == 1)
  {
    outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
LABEL_16:
    v47 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v48 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v59 = &v40[v55];
  v60 = v107;
  outlined init with take of PgQuery_OidList(v59, v107, type metadata accessor for PgQuery_Node);
  v61 = *(v56 + 20);
  v62 = *(v58 + v61);
  v63 = *(v60 + v61);
  if (v62 != v63)
  {

    v64 = closure #1 in static PgQuery_Node.== infix(_:_:)(v62, v63);

    if (!v64)
    {
      outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
      v47 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v48 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v65 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v65 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_20:
  v66 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictClause;
  v67 = *(v109 + 48);
  v68 = v112;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictClause, v112, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  v69 = v44 + v66;
  v70 = v68;
  outlined init with copy of PgQuery_Alias?(v69, v68 + v67, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  v71 = *(v110 + 48);
  v72 = v68;
  v73 = v111;
  if (v71(v72, 1, v111) == 1)
  {
    if (v71(v70 + v67, 1, v73) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v70, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
      goto LABEL_30;
    }

LABEL_25:
    v47 = &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSg_ADtMd;
    v48 = &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSg_ADtMR;
LABEL_26:
    v49 = v70;
    goto LABEL_8;
  }

  v74 = v108;
  outlined init with copy of PgQuery_Alias?(v70, v108, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  if (v71(v70 + v67, 1, v73) == 1)
  {
    outlined destroy of PgQuery_OidList(v74, type metadata accessor for PgQuery_OnConflictClause);
    goto LABEL_25;
  }

  v75 = v73;
  v76 = v106;
  outlined init with take of PgQuery_OidList(v70 + v67, v106, type metadata accessor for PgQuery_OnConflictClause);
  v77 = *(v75 + 20);
  v78 = *(v74 + v77);
  v79 = *(v76 + v77);
  if (v78 != v79)
  {

    v80 = closure #1 in static PgQuery_OnConflictClause.== infix(_:_:)(v78, v79);

    if (!v80)
    {
      outlined destroy of PgQuery_OidList(v76, type metadata accessor for PgQuery_OnConflictClause);
      outlined destroy of PgQuery_OidList(v108, type metadata accessor for PgQuery_OnConflictClause);
      v47 = &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd;
      v48 = &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR;
      goto LABEL_26;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v81 = v108;
  v82 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v76, type metadata accessor for PgQuery_OnConflictClause);
  outlined destroy of PgQuery_OidList(v81, type metadata accessor for PgQuery_OnConflictClause);
  _s10Foundation4UUIDVSgWOhTm_0(v70, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  if ((v82 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_30:
  v83 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);
  v84 = *(v44 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  v85 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v83, v84);

  if ((v85 & 1) == 0)
  {
    goto LABEL_48;
  }

  v86 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v87 = *(v102 + 48);
  v88 = v105;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v105, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v89 = v44 + v86;
  v70 = v88;
  outlined init with copy of PgQuery_Alias?(v89, v88 + v87, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v90 = v104;
  v91 = *(v103 + 48);
  if (v91(v88, 1, v104) == 1)
  {
    if (v91(v88 + v87, 1, v90) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v88, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      goto LABEL_34;
    }

    goto LABEL_42;
  }

  v95 = v101;
  outlined init with copy of PgQuery_Alias?(v70, v101, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if (v91(v70 + v87, 1, v90) == 1)
  {
    outlined destroy of PgQuery_OidList(v95, type metadata accessor for PgQuery_WithClause);
LABEL_42:
    v47 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd;
    v48 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR;
    goto LABEL_26;
  }

  v96 = v70 + v87;
  v97 = v100;
  outlined init with take of PgQuery_OidList(v96, v100, type metadata accessor for PgQuery_WithClause);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v95, *v97) & 1) == 0 || *(v95 + 8) != *(v97 + 8) || *(v95 + 12) != *(v97 + 12))
  {
    outlined destroy of PgQuery_OidList(v97, type metadata accessor for PgQuery_WithClause);
    outlined destroy of PgQuery_OidList(v95, type metadata accessor for PgQuery_WithClause);
    v47 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd;
    v48 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR;
    goto LABEL_26;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v98 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v97, type metadata accessor for PgQuery_WithClause);
  outlined destroy of PgQuery_OidList(v95, type metadata accessor for PgQuery_WithClause);
  _s10Foundation4UUIDVSgWOhTm_0(v70, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if ((v98 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_34:
  v92 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);

  v93 = *(v44 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
  v94 = *(v44 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override + 8);

  if (v94 == 1)
  {
    if (v93 > 1)
    {
      if (v93 == 2)
      {
        if (v92 == 2)
        {
          return 1;
        }
      }

      else if (v92 == 3)
      {
        return 1;
      }
    }

    else if (v93)
    {
      if (v92 == 1)
      {
        return 1;
      }
    }

    else if (!v92)
    {
      return 1;
    }

    return 0;
  }

  return v92 == v93;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_InsertStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InsertStmt and conformance PgQuery_InsertStmt, type metadata accessor for PgQuery_InsertStmt, &protocol conformance descriptor for PgQuery_InsertStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_InsertStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InsertStmt and conformance PgQuery_InsertStmt, type metadata accessor for PgQuery_InsertStmt, &protocol conformance descriptor for PgQuery_InsertStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_InsertStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InsertStmt and conformance PgQuery_InsertStmt, type metadata accessor for PgQuery_InsertStmt, &protocol conformance descriptor for PgQuery_InsertStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DeleteStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v17 - v5;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v7, 1, 1, RangeVar);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause;
  v10 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause) = MEMORY[0x1E69E7CC0];
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v11, 1, 1, Node);
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) = v10;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v15 = type metadata accessor for PgQuery_WithClause(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v1 + v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v13) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v6, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);

  outlined assign with take of PgQuery_Node?(v6, v1 + v14, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  return v1;
}

uint64_t PgQuery_DeleteStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_DeleteStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_WithClause?, type metadata accessor for PgQuery_WithClause, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t closure #1 in PgQuery_DeleteStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v6)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          v7 = v4;
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
          goto LABEL_15;
        }

        if (result == 2)
        {
LABEL_13:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v7 = v4;
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_15:
            v4 = v7;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 4:
            goto LABEL_13;
          case 5:
            type metadata accessor for PgQuery_WithClause(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause, &protocol conformance descriptor for PgQuery_WithClause);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_DeleteStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v39 = &v35 - v7;
  v8 = type metadata accessor for PgQuery_WithClause(0);
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v35 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v41 = &v35 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v40 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v14);
  v38 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v35 - v18;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v21 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v22);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v21 + 48))(v19, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v25 = v43;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v19, v24, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v26 = v43;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v25 = v26;
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
    if (v26)
    {
      return result;
    }
  }

  v28 = Node;
  if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v25))
  {
    v29 = v41;
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v40 + 48))(v29, 1, v28) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      v30 = v29;
      v31 = v38;
      outlined init with take of PgQuery_OidList(v30, v38, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_Node);
      if (v25)
      {
        return result;
      }
    }

    v32 = v39;
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v25))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v32, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      if ((*(v36 + 48))(v32, 1, v37) == 1)
      {
        return _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      }

      else
      {
        v33 = v32;
        v34 = v35;
        outlined init with take of PgQuery_OidList(v33, v35, type metadata accessor for PgQuery_WithClause);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause, &protocol conformance descriptor for PgQuery_WithClause);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        return outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_WithClause);
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_DeleteStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  v3 = type metadata accessor for PgQuery_WithClause(0);
  v80 = *(v3 - 8);
  v81 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v77 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v78 = &v76 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v79, v9);
  v82 = &v76 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v86 = *(Node - 8);
  v87 = Node;
  MEMORY[0x1EEE9AC00](Node, v12);
  v83 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v84 = &v76 - v16;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v85, v17);
  v88 = &v76 - v18;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v20 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v21);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v76 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v32 = &v76 - v31;
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v34 = *(v30 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v76 - v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v35 = v89 + v33;
  v36 = v89;
  outlined init with copy of PgQuery_Alias?(v35, &v32[v34], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v37 = *(v20 + 48);
  if (v37(v32, 1, RangeVar) == 1)
  {
    v38 = v37(&v32[v34], 1, RangeVar);

    if (v38 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v39 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v40 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v41 = v32;
LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v41, v39, v40);
LABEL_25:

    return 0;
  }

  outlined init with copy of PgQuery_Alias?(v32, v27, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v37(&v32[v34], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  outlined init with take of PgQuery_OidList(&v32[v34], v23, type metadata accessor for PgQuery_RangeVar);

  v42 = specialized static PgQuery_RangeVar.== infix(_:_:)(v27, v23);
  outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v42 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  v43 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);
  v44 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v43, v44);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_25;
  }

  v46 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v47 = *(v85 + 48);
  v48 = v88;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v88, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v36 + v46, v48 + v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v49 = v87;
  v50 = *(v86 + 48);
  if (v50(v48, 1, v87) == 1)
  {
    if (v50(v48 + v47, 1, v49) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v51 = v84;
  outlined init with copy of PgQuery_Alias?(v48, v84, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v50(v48 + v47, 1, v49) == 1)
  {
    outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
LABEL_15:
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    v41 = v48;
    goto LABEL_7;
  }

  v52 = v48 + v47;
  v53 = v83;
  outlined init with take of PgQuery_OidList(v52, v83, type metadata accessor for PgQuery_Node);
  v54 = *(v49 + 20);
  v55 = *(v51 + v54);
  v56 = *(v53 + v54);
  if (v55 != v56)
  {

    v57 = closure #1 in static PgQuery_Node.== infix(_:_:)(v55, v56);

    if (!v57)
    {
      outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
      v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v58 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  v59 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);
  v60 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  v61 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v59, v60);

  if ((v61 & 1) == 0)
  {
    goto LABEL_25;
  }

  v62 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v63 = *(v79 + 48);
  v64 = v82;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v82, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v65 = v36 + v62;
  v66 = v64;
  outlined init with copy of PgQuery_Alias?(v65, v64 + v63, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v67 = v81;
  v68 = *(v80 + 48);
  if (v68(v64, 1, v81) == 1)
  {

    if (v68(v64 + v63, 1, v67) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v64, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      return 1;
    }

    goto LABEL_30;
  }

  v70 = v78;
  outlined init with copy of PgQuery_Alias?(v66, v78, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if (v68(v66 + v63, 1, v67) == 1)
  {

    outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_WithClause);
LABEL_30:
    v71 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd;
    v72 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR;
LABEL_38:
    _s10Foundation4UUIDVSgWOhTm_0(v66, v71, v72);
    return 0;
  }

  v73 = v66 + v63;
  v74 = v77;
  outlined init with take of PgQuery_OidList(v73, v77, type metadata accessor for PgQuery_WithClause);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v70, *v74) & 1) == 0 || *(v70 + 8) != *(v74 + 8) || *(v70 + 12) != *(v74 + 12))
  {

    outlined destroy of PgQuery_OidList(v74, type metadata accessor for PgQuery_WithClause);
    outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_WithClause);
    v71 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd;
    v72 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR;
    goto LABEL_38;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined destroy of PgQuery_OidList(v74, type metadata accessor for PgQuery_WithClause);
  outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_WithClause);
  _s10Foundation4UUIDVSgWOhTm_0(v66, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  return (v75 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DeleteStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeleteStmt and conformance PgQuery_DeleteStmt, type metadata accessor for PgQuery_DeleteStmt, &protocol conformance descriptor for PgQuery_DeleteStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DeleteStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeleteStmt and conformance PgQuery_DeleteStmt, type metadata accessor for PgQuery_DeleteStmt, &protocol conformance descriptor for PgQuery_DeleteStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DeleteStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeleteStmt and conformance PgQuery_DeleteStmt, type metadata accessor for PgQuery_DeleteStmt, &protocol conformance descriptor for PgQuery_DeleteStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_UpdateStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18 - v5;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v7, 1, 1, RangeVar);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList;
  v10 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) = MEMORY[0x1E69E7CC0];
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v11, 1, 1, Node);
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause) = v10;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) = v10;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v16 = type metadata accessor for PgQuery_WithClause(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v1 + v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v13) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);

  *(v1 + v14) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v6, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);

  outlined assign with take of PgQuery_Node?(v6, v1 + v15, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  return v1;
}

uint64_t PgQuery_UpdateStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_UpdateStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_WithClause?, type metadata accessor for PgQuery_WithClause, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t closure #1 in PgQuery_UpdateStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v6)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4 || result == 5)
        {
LABEL_4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 6)
        {
          type metadata accessor for PgQuery_WithClause(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause, &protocol conformance descriptor for PgQuery_WithClause);
LABEL_18:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v7 = v4;
            type metadata accessor for PgQuery_RangeVar(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
            goto LABEL_17;
          case 2:
            goto LABEL_4;
          case 3:
            v7 = v4;
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_17:
            v4 = v7;
            goto LABEL_18;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_UpdateStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v39 = &v35 - v7;
  v8 = type metadata accessor for PgQuery_WithClause(0);
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v35 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v41 = &v35 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v40 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v14);
  v38 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v35 - v18;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v21 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v22);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v21 + 48))(v19, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v25 = v43;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v19, v24, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v26 = v43;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v25 = v26;
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
    if (v26)
    {
      return result;
    }
  }

  v28 = Node;
  if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v25))
  {
    v29 = v41;
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v40 + 48))(v29, 1, v28) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      v30 = v29;
      v31 = v38;
      outlined init with take of PgQuery_OidList(v30, v38, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_Node);
      if (v25)
      {
        return result;
      }
    }

    v32 = v39;
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v25))
    {
      if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v25))
      {
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v32, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
        if ((*(v36 + 48))(v32, 1, v37) == 1)
        {
          return _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
        }

        else
        {
          v33 = v32;
          v34 = v35;
          outlined init with take of PgQuery_OidList(v33, v35, type metadata accessor for PgQuery_WithClause);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause, &protocol conformance descriptor for PgQuery_WithClause);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          return outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_WithClause);
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_UpdateStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v3 = type metadata accessor for PgQuery_WithClause(0);
  v82 = *(v3 - 8);
  v83 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v79 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v80 = &v78 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v81, v9);
  v84 = &v78 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v88 = *(Node - 8);
  v89 = Node;
  MEMORY[0x1EEE9AC00](Node, v12);
  v85 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v86 = &v78 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v87, v17);
  v90 = &v78 - v18;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v20 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v21);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v78 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v32 = &v78 - v31;
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v34 = *(v30 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v78 - v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v35 = v91 + v33;
  v36 = v91;
  outlined init with copy of PgQuery_Alias?(v35, &v32[v34], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v37 = *(v20 + 48);
  if (v37(v32, 1, RangeVar) == 1)
  {
    v38 = v37(&v32[v34], 1, RangeVar);

    v39 = a1;
    if (v38 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v40 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v41 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    goto LABEL_7;
  }

  outlined init with copy of PgQuery_Alias?(v32, v27, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v37(&v32[v34], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  outlined init with take of PgQuery_OidList(&v32[v34], v23, type metadata accessor for PgQuery_RangeVar);
  v39 = a1;

  v42 = specialized static PgQuery_RangeVar.== infix(_:_:)(v27, v23);
  outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v42 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  v43 = *(v39 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);
  v44 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v43, v44);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_25;
  }

  v46 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v47 = *(v87 + 48);
  v32 = v90;
  outlined init with copy of PgQuery_Alias?(v39 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v90, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v36 + v46, &v32[v47], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v48 = v89;
  v49 = *(v88 + 48);
  if (v49(v32, 1, v89) != 1)
  {
    v50 = v86;
    outlined init with copy of PgQuery_Alias?(v32, v86, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v49(&v32[v47], 1, v48) == 1)
    {
      outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
      goto LABEL_15;
    }

    v51 = &v32[v47];
    v52 = v85;
    outlined init with take of PgQuery_OidList(v51, v85, type metadata accessor for PgQuery_Node);
    v53 = *(v48 + 20);
    v54 = *(v50 + v53);
    v55 = *(v52 + v53);
    if (v54 == v55 || (, , v56 = closure #1 in static PgQuery_Node.== infix(_:_:)(v54, v55), , , v56))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v57 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v57)
      {
        goto LABEL_19;
      }

LABEL_25:

      return 0;
    }

    outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
    v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v32, v40, v41);
    goto LABEL_25;
  }

  if (v49(&v32[v47], 1, v48) != 1)
  {
LABEL_15:
    v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_19:
  v58 = *(v39 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);
  v59 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);

  v60 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v58, v59);

  if ((v60 & 1) == 0)
  {
    goto LABEL_25;
  }

  v61 = *(v39 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);
  v62 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  v63 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v61, v62);

  if ((v63 & 1) == 0)
  {
    goto LABEL_25;
  }

  v64 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v65 = *(v81 + 48);
  v66 = v84;
  outlined init with copy of PgQuery_Alias?(v39 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v84, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v67 = v36 + v64;
  v68 = v66;
  outlined init with copy of PgQuery_Alias?(v67, v66 + v65, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v69 = v83;
  v70 = *(v82 + 48);
  if (v70(v66, 1, v83) == 1)
  {

    if (v70(v66 + v65, 1, v69) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v66, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      return 1;
    }

    goto LABEL_31;
  }

  v72 = v80;
  outlined init with copy of PgQuery_Alias?(v68, v80, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if (v70(v68 + v65, 1, v69) == 1)
  {

    outlined destroy of PgQuery_OidList(v72, type metadata accessor for PgQuery_WithClause);
LABEL_31:
    v73 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd;
    v74 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR;
LABEL_38:
    _s10Foundation4UUIDVSgWOhTm_0(v68, v73, v74);
    return 0;
  }

  v75 = v68 + v65;
  v76 = v79;
  outlined init with take of PgQuery_OidList(v75, v79, type metadata accessor for PgQuery_WithClause);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v72, *v76) & 1) == 0 || *(v72 + 8) != *(v76 + 8) || *(v72 + 12) != *(v76 + 12))
  {

    outlined destroy of PgQuery_OidList(v76, type metadata accessor for PgQuery_WithClause);
    outlined destroy of PgQuery_OidList(v72, type metadata accessor for PgQuery_WithClause);
    v73 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd;
    v74 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR;
    goto LABEL_38;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v77 = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined destroy of PgQuery_OidList(v76, type metadata accessor for PgQuery_WithClause);
  outlined destroy of PgQuery_OidList(v72, type metadata accessor for PgQuery_WithClause);
  _s10Foundation4UUIDVSgWOhTm_0(v68, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  return (v77 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_UpdateStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UpdateStmt and conformance PgQuery_UpdateStmt, type metadata accessor for PgQuery_UpdateStmt, &protocol conformance descriptor for PgQuery_UpdateStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_UpdateStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UpdateStmt and conformance PgQuery_UpdateStmt, type metadata accessor for PgQuery_UpdateStmt, &protocol conformance descriptor for PgQuery_UpdateStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_UpdateStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UpdateStmt and conformance PgQuery_UpdateStmt, type metadata accessor for PgQuery_UpdateStmt, &protocol conformance descriptor for PgQuery_UpdateStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_SelectStmt._StorageClass.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  (*(*(IntoClause - 8) + 56))(v0 + v2, 1, 1, IntoClause);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) = v1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause) = v1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v0 + v4, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause) = v1;
  v6(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause) = v1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists) = v1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause) = v1;
  v6(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, 1, 1, Node);
  v6(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, 1, 1, Node);
  v7 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause) = v1;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v9 = type metadata accessor for PgQuery_WithClause(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  v10 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all) = 0;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  v13 = *(*(SelectStmt - 8) + 56);
  v13(v0 + v11, 1, 1, SelectStmt);
  v13(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, 1, 1, SelectStmt);
  return v0;
}

uint64_t PgQuery_SelectStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v41 = &v26 - v5;
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause;
  v27 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  (*(*(IntoClause - 8) + 56))(v1 + v7, 1, 1, IntoClause);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) = v6;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause) = v6;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(*(Node - 8) + 56);
  v12(v1 + v10, 1, 1, Node);
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause) = v6;
  v31 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause;
  v12(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, 1, 1, Node);
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause) = v6;
  v32 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists) = v6;
  v34 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause) = v6;
  v40 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset;
  v12(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, 1, 1, Node);
  v38 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount;
  v12(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, 1, 1, Node);
  v14 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption;
  *v14 = 0;
  *(v14 + 8) = 1;
  v37 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause) = v6;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v16 = type metadata accessor for PgQuery_WithClause(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op;
  *v17 = 0;
  *(v17 + 8) = 1;
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all) = 0;
  v18 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  v20 = *(*(SelectStmt - 8) + 56);
  v20(v1 + v18, 1, 1, SelectStmt);
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg;
  v20(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, 1, 1, SelectStmt);
  *(v1 + 16) = *(a1 + 16);
  v21 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause;

  outlined assign with copy of PgQuery_Node?(a1 + v21, v1 + v27, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  *(v1 + v28) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v1 + v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v13) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, v1 + v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v30) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);

  *(v1 + v32) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);

  *(v1 + v34) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, v1 + v40, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, v1 + v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption + 8);
  *v14 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption);
  *(v14 + 8) = v22;
  *(v1 + v37) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v1 + v39, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v23 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8);
  *v17 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  *(v17 + 8) = v23;
  *(v1 + v36) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v1 + v33, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  v24 = v41;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v41, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);

  outlined assign with take of PgQuery_Node?(v24, v1 + v35, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  return v1;
}

uint64_t PgQuery_SelectStmt._StorageClass.deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  return v0;
}

void type metadata completion function for PgQuery_SelectStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_IntoClause?, type metadata accessor for PgQuery_IntoClause, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_WithClause?, type metadata accessor for PgQuery_WithClause, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_SelectStmt?, type metadata accessor for PgQuery_SelectStmt, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t closure #1 in PgQuery_SelectStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v7 & 1) == 0)
    {
      v8 = v5;
      switch(result)
      {
        case 1:
        case 3:
        case 4:
        case 6:
        case 8:
        case 9:
        case 10:
        case 14:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_15;
        case 2:
          v9 = v4;
          type metadata accessor for PgQuery_IntoClause(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause, &protocol conformance descriptor for PgQuery_IntoClause);
          goto LABEL_13;
        case 5:
        case 7:
        case 11:
        case 12:
          v9 = v4;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          goto LABEL_13;
        case 13:
          v10 = v4;
          lazy protocol witness table accessor for type PgQuery_LimitOption and conformance PgQuery_LimitOption();
          goto LABEL_9;
        case 15:
          v9 = v4;
          type metadata accessor for PgQuery_WithClause(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause, &protocol conformance descriptor for PgQuery_WithClause);
          goto LABEL_13;
        case 16:
          v10 = v4;
          lazy protocol witness table accessor for type PgQuery_SetOperation and conformance PgQuery_SetOperation();
LABEL_9:
          v4 = v10;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_15;
        case 17:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_15;
        case 18:
        case 19:
          v9 = v4;
          type metadata accessor for PgQuery_SelectStmt(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt, &protocol conformance descriptor for PgQuery_SelectStmt);
LABEL_13:
          v4 = v9;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_15:
          v5 = v8;
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_SelectStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v104 = a4;
  v101 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v83 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v84 = &v81 - v11;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  v86 = *(SelectStmt - 8);
  v13 = MEMORY[0x1EEE9AC00](SelectStmt, v12);
  v81 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v82 = &v81 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v88 = &v81 - v19;
  v89 = type metadata accessor for PgQuery_WithClause(0);
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v20);
  v85 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v92 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v94 = &v81 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v97 = &v81 - v31;
  MEMORY[0x1EEE9AC00](v30, v32);
  v99 = &v81 - v33;
  Node = type metadata accessor for PgQuery_Node(0);
  v100 = *(Node - 8);
  v36 = MEMORY[0x1EEE9AC00](Node, v35);
  v90 = &v81 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v91 = &v81 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v96 = &v81 - v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v98 = &v81 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v49 = &v81 - v48;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v51 = *(IntoClause - 8);
  MEMORY[0x1EEE9AC00](IntoClause, v52);
  v54 = &v81 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(a1 + 16) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
    }

    v95 = Node;
  }

  else
  {
    v95 = Node;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause, v49, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  if ((*(v51 + 48))(v49, 1, IntoClause) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
    v56 = v4;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v49, v54, type metadata accessor for PgQuery_IntoClause);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause, &protocol conformance descriptor for PgQuery_IntoClause);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v56 = v4;
    if (v4)
    {
      return outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_IntoClause);
    }

    outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_IntoClause);
  }

  v57 = a1;
  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v58 = v95;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v56)
    {
    }
  }

  else
  {
    v58 = v95;
  }

  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v56)
    {
    }
  }

  v59 = v99;
  outlined init with copy of PgQuery_Alias?(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v99, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v60 = *(v100 + 48);
  if (v60(v59, 1, v58) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v61 = v59;
    v62 = v98;
    outlined init with take of PgQuery_OidList(v61, v98, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v56)
    {
      goto LABEL_28;
    }

    outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Node);
  }

  if (*(*(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v56)
    {
    }
  }

  v63 = v97;
  outlined init with copy of PgQuery_Alias?(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, v97, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v60(v63, 1, v58) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v64 = v63;
    v62 = v96;
    outlined init with take of PgQuery_OidList(v64, v96, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v56)
    {
      goto LABEL_28;
    }

    outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Node);
  }

  if (*(*(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v56)
    {
    }
  }

  if (!*(*(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists) + 16))
  {
    goto LABEL_37;
  }

  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

  dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  if (v56)
  {
  }

LABEL_37:
  if (*(*(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v56)
    {
    }
  }

  v66 = v94;
  outlined init with copy of PgQuery_Alias?(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, v94, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v60(v66, 1, v58) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v66, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v67 = v66;
    v62 = v91;
    outlined init with take of PgQuery_OidList(v67, v91, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v56)
    {
      goto LABEL_28;
    }

    outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Node);
  }

  v68 = v92;
  outlined init with copy of PgQuery_Alias?(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, v92, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v60(v68, 1, v58) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v68, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v69 = SelectStmt;
    goto LABEL_50;
  }

  v70 = v68;
  v62 = v90;
  outlined init with take of PgQuery_OidList(v70, v90, type metadata accessor for PgQuery_Node);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  v69 = SelectStmt;
  if (v56)
  {
LABEL_28:
    v65 = type metadata accessor for PgQuery_Node;
    return outlined destroy of PgQuery_OidList(v62, v65);
  }

  outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Node);
LABEL_50:
  if (!*(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption) || (v71 = *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption + 8), v102 = *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption), v103 = v71, lazy protocol witness table accessor for type PgQuery_LimitOption and conformance PgQuery_LimitOption(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v56))
  {
    if (!*(*(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v56))
    {
      v72 = v88;
      outlined init with copy of PgQuery_Alias?(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v88, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      if ((*(v87 + 48))(v72, 1, v89) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v72, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      }

      else
      {
        v73 = v72;
        v74 = v85;
        outlined init with take of PgQuery_OidList(v73, v85, type metadata accessor for PgQuery_WithClause);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause, &protocol conformance descriptor for PgQuery_WithClause);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v74, type metadata accessor for PgQuery_WithClause);
        if (v56)
        {
          return result;
        }
      }

      if (!*(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op) || (v75 = *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8), v102 = *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op), v103 = v75, lazy protocol witness table accessor for type PgQuery_SetOperation and conformance PgQuery_SetOperation(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v56))
      {
        if (*(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v56))
        {
          v76 = v84;
          outlined init with copy of PgQuery_Alias?(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v84, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
          v77 = *(v86 + 48);
          v86 += 48;
          if (v77(v76, 1, v69) == 1)
          {
            _s10Foundation4UUIDVSgWOhTm_0(v76, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
LABEL_64:
            v80 = v83;
            outlined init with copy of PgQuery_Alias?(v57 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v83, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
            if (v77(v80, 1, v69) == 1)
            {
              return _s10Foundation4UUIDVSgWOhTm_0(v80, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
            }

            v62 = v81;
            outlined init with take of PgQuery_OidList(v80, v81, type metadata accessor for PgQuery_SelectStmt);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt, &protocol conformance descriptor for PgQuery_SelectStmt);
            dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
            v65 = type metadata accessor for PgQuery_SelectStmt;
            return outlined destroy of PgQuery_OidList(v62, v65);
          }

          v78 = v76;
          v79 = v82;
          outlined init with take of PgQuery_OidList(v78, v82, type metadata accessor for PgQuery_SelectStmt);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt, &protocol conformance descriptor for PgQuery_SelectStmt);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v79, type metadata accessor for PgQuery_SelectStmt);
          if (!v56)
          {
            goto LABEL_64;
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_SelectStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  v208 = *(SelectStmt - 8);
  v5 = MEMORY[0x1EEE9AC00](SelectStmt, v4);
  v205 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v207 = &v204 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v206 = &v204 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v210 = &v204 - v14;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMR);
  v16 = MEMORY[0x1EEE9AC00](v211, v15);
  v209 = &v204 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v213 = &v204 - v19;
  v218 = type metadata accessor for PgQuery_WithClause(0);
  v216 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218, v20);
  v214 = &v204 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v217 = &v204 - v24;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v215, v25);
  v219 = &v204 - v26;
  Node = type metadata accessor for PgQuery_Node(0);
  v232 = *(Node - 8);
  v233 = Node;
  v29 = MEMORY[0x1EEE9AC00](Node, v28);
  v220 = &v204 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v221 = &v204 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v227 = &v204 - v36;
  MEMORY[0x1EEE9AC00](v35, v37);
  v230 = &v204 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v222 = &v204 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v225 = &v204 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v228 = &v204 - v48;
  MEMORY[0x1EEE9AC00](v47, v49);
  v231 = &v204 - v50;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v52 = MEMORY[0x1EEE9AC00](v234, v51);
  v224 = &v204 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v226 = &v204 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55, v57);
  v229 = &v204 - v59;
  MEMORY[0x1EEE9AC00](v58, v60);
  v235 = &v204 - v61;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v63 = *(IntoClause - 8);
  MEMORY[0x1EEE9AC00](IntoClause, v64);
  v236 = &v204 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  MEMORY[0x1EEE9AC00](v66 - 8, v67);
  v69 = &v204 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v70, v71);
  v73 = &v204 - v72;
  v74 = *(a1 + 16);
  v75 = *(a2 + 16);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v74, v75);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_51;
  }

  v77 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause;
  v78 = *(v70 + 48);
  v223 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause, v73, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v77, &v73[v78], &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v79 = *(v63 + 48);
  v80 = a2;
  if (v79(v73, 1, IntoClause) == 1)
  {
    v81 = v79(&v73[v78], 1, IntoClause);
    v82 = v223;
    if (v81 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v73, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  outlined init with copy of PgQuery_Alias?(v73, v69, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  if (v79(&v73[v78], 1, IntoClause) == 1)
  {
    outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_IntoClause);
LABEL_8:
    v83 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMd;
    v84 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMR;
LABEL_9:
    v85 = v73;
LABEL_10:
    _s10Foundation4UUIDVSgWOhTm_0(v85, v83, v84);
LABEL_51:

    return 0;
  }

  v86 = &v73[v78];
  v87 = v236;
  outlined init with take of PgQuery_OidList(v86, v236, type metadata accessor for PgQuery_IntoClause);
  v88 = *(IntoClause + 20);
  v89 = *&v69[v88];
  v90 = *(v87 + v88);
  v82 = v223;
  if (v89 != v90)
  {

    v91 = closure #1 in static PgQuery_IntoClause.== infix(_:_:)(v89, v90);

    if ((v91 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v87, type metadata accessor for PgQuery_IntoClause);
      outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_IntoClause);
      v83 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd;
      v84 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR;
      goto LABEL_9;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v92 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v87, type metadata accessor for PgQuery_IntoClause);
  outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_IntoClause);
  _s10Foundation4UUIDVSgWOhTm_0(v73, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  if ((v92 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_14:
  v93 = *(v82 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);
  v94 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  v95 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v93, v94);

  if ((v95 & 1) == 0)
  {
    goto LABEL_51;
  }

  v96 = *(v82 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);
  v97 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);

  v98 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v96, v97);

  if ((v98 & 1) == 0)
  {
    goto LABEL_51;
  }

  v99 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v100 = v235;
  v101 = *(v234 + 48);
  outlined init with copy of PgQuery_Alias?(v82 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v235, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v99, v100 + v101, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v102 = v233;
  v103 = *(v232 + 48);
  if (v103(v100, 1, v233) == 1)
  {
    if (v103(v100 + v101, 1, v102) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v100, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v104 = v231;
  outlined init with copy of PgQuery_Alias?(v100, v231, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v103(v100 + v101, 1, v102) == 1)
  {
    outlined destroy of PgQuery_OidList(v104, type metadata accessor for PgQuery_Node);
LABEL_22:
    v83 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v84 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v85 = v100;
    goto LABEL_10;
  }

  v105 = v100 + v101;
  v106 = v230;
  outlined init with take of PgQuery_OidList(v105, v230, type metadata accessor for PgQuery_Node);
  v107 = *(v102 + 20);
  v108 = *(v104 + v107);
  v109 = *(v106 + v107);
  if (v108 != v109)
  {

    v110 = closure #1 in static PgQuery_Node.== infix(_:_:)(v108, v109);

    if (!v110)
    {
      outlined destroy of PgQuery_OidList(v106, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v231, type metadata accessor for PgQuery_Node);
      v83 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v84 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v85 = v235;
      goto LABEL_10;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v111 = v231;
  v112 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v106, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v111, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v235, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v112 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_26:
  v113 = *(v82 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);
  v114 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);

  v115 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v113, v114);

  if ((v115 & 1) == 0)
  {
    goto LABEL_51;
  }

  v116 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause;
  v117 = *(v234 + 48);
  v118 = v229;
  outlined init with copy of PgQuery_Alias?(v82 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, v229, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v80 + v116, v118 + v117, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v103(v118, 1, v102) == 1)
  {
    if (v103(v118 + v117, 1, v102) != 1)
    {
LABEL_32:
      v83 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v84 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
      v85 = v118;
      goto LABEL_10;
    }

    _s10Foundation4UUIDVSgWOhTm_0(v118, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v119 = v228;
    outlined init with copy of PgQuery_Alias?(v118, v228, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v103(v118 + v117, 1, v102) == 1)
    {
LABEL_31:
      outlined destroy of PgQuery_OidList(v119, type metadata accessor for PgQuery_Node);
      goto LABEL_32;
    }

    v120 = v227;
    outlined init with take of PgQuery_OidList(v118 + v117, v227, type metadata accessor for PgQuery_Node);
    v121 = *(v102 + 20);
    v122 = *(v119 + v121);
    v123 = *(v120 + v121);
    if (v122 != v123)
    {

      v124 = closure #1 in static PgQuery_Node.== infix(_:_:)(v122, v123);

      if (!v124)
      {
        outlined destroy of PgQuery_OidList(v120, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v228, type metadata accessor for PgQuery_Node);
        v83 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v84 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        v85 = v229;
        goto LABEL_10;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v125 = v228;
    v126 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v120, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v125, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v229, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((v126 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v127 = *(v82 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);
  v128 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);

  v129 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v127, v128);

  if ((v129 & 1) == 0)
  {
    goto LABEL_51;
  }

  v130 = *(v82 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);
  v131 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);

  v132 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v130, v131);

  if ((v132 & 1) == 0)
  {
    goto LABEL_51;
  }

  v133 = *(v82 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);
  v134 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);

  v135 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v133, v134);

  if ((v135 & 1) == 0)
  {
    goto LABEL_51;
  }

  v136 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset;
  v137 = *(v234 + 48);
  v118 = v226;
  outlined init with copy of PgQuery_Alias?(v82 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, v226, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v80 + v136, v118 + v137, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v103(v118, 1, v102) == 1)
  {
    if (v103(v118 + v137, 1, v102) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v118, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_48;
    }

    goto LABEL_32;
  }

  v119 = v225;
  outlined init with copy of PgQuery_Alias?(v118, v225, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v103(v118 + v137, 1, v102) == 1)
  {
    goto LABEL_31;
  }

  v138 = v221;
  outlined init with take of PgQuery_OidList(v118 + v137, v221, type metadata accessor for PgQuery_Node);
  v139 = *(v102 + 20);
  v140 = *(v119 + v139);
  v141 = *(v138 + v139);
  if (v140 != v141)
  {

    v142 = closure #1 in static PgQuery_Node.== infix(_:_:)(v140, v141);

    if (!v142)
    {
      outlined destroy of PgQuery_OidList(v138, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v225, type metadata accessor for PgQuery_Node);
      v83 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v84 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v85 = v226;
      goto LABEL_10;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v143 = v225;
  v144 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v138, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v143, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v226, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v144 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v145 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount;
  v146 = *(v234 + 48);
  v147 = v224;
  outlined init with copy of PgQuery_Alias?(v82 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, v224, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v148 = v80;
  outlined init with copy of PgQuery_Alias?(v80 + v145, v147 + v146, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v103(v147, 1, v102) == 1)
  {
    if (v103(v147 + v146, 1, v102) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v147, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_61;
    }

    goto LABEL_55;
  }

  outlined init with copy of PgQuery_Alias?(v147, v222, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v103(v147 + v146, 1, v102) == 1)
  {
    outlined destroy of PgQuery_OidList(v222, type metadata accessor for PgQuery_Node);
    v147 = v224;
LABEL_55:
    v150 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v151 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v152 = v147;
LABEL_56:
    _s10Foundation4UUIDVSgWOhTm_0(v152, v150, v151);
    goto LABEL_51;
  }

  v153 = v220;
  outlined init with take of PgQuery_OidList(v224 + v146, v220, type metadata accessor for PgQuery_Node);
  v154 = *(v233 + 20);
  v155 = *(v222 + v154);
  v156 = *(v153 + v154);
  if (v155 != v156)
  {

    v157 = closure #1 in static PgQuery_Node.== infix(_:_:)(v155, v156);

    if (!v157)
    {
      outlined destroy of PgQuery_OidList(v220, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v222, type metadata accessor for PgQuery_Node);
      v150 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v151 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v152 = v224;
      goto LABEL_56;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v158 = v222;
  v159 = v220;
  v160 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v159, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v158, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v224, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v160 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_61:
  v161 = *(v223 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption);
  v162 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption);
  if (*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption + 8) == 1)
  {
    if (v162 > 1)
    {
      if (v162 == 2)
      {
        if (v161 != 2)
        {
          goto LABEL_51;
        }
      }

      else if (v161 != 3)
      {
        goto LABEL_51;
      }
    }

    else if (v162)
    {
      if (v161 != 1)
      {
        goto LABEL_51;
      }
    }

    else if (v161)
    {
      goto LABEL_51;
    }
  }

  else if (v161 != v162)
  {
    goto LABEL_51;
  }

  v163 = *(v223 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause);
  v164 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause);

  v165 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v163, v164);

  if ((v165 & 1) == 0)
  {
    goto LABEL_51;
  }

  v166 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v167 = *(v215 + 48);
  v168 = v219;
  outlined init with copy of PgQuery_Alias?(v223 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v219, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  outlined init with copy of PgQuery_Alias?(v80 + v166, v168 + v167, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v169 = *(v216 + 48);
  if (v169(v168, 1, v218) == 1)
  {
    if (v169(v219 + v167, 1, v218) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v219, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      goto LABEL_72;
    }

    goto LABEL_88;
  }

  v172 = v219;
  outlined init with copy of PgQuery_Alias?(v219, v217, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if (v169(v172 + v167, 1, v218) == 1)
  {
    outlined destroy of PgQuery_OidList(v217, type metadata accessor for PgQuery_WithClause);
LABEL_88:
    v150 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd;
    v151 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR;
    v152 = v219;
    goto LABEL_56;
  }

  v173 = v214;
  outlined init with take of PgQuery_OidList(v219 + v167, v214, type metadata accessor for PgQuery_WithClause);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v217, *v173) & 1) == 0 || *(v217 + 8) != *(v214 + 8) || *(v217 + 12) != *(v214 + 12))
  {
    outlined destroy of PgQuery_OidList(v214, type metadata accessor for PgQuery_WithClause);
    outlined destroy of PgQuery_OidList(v217, type metadata accessor for PgQuery_WithClause);
    v150 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd;
    v151 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR;
    v152 = v219;
    goto LABEL_56;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v174 = v217;
  v175 = v214;
  v176 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v175, type metadata accessor for PgQuery_WithClause);
  outlined destroy of PgQuery_OidList(v174, type metadata accessor for PgQuery_WithClause);
  _s10Foundation4UUIDVSgWOhTm_0(v219, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if ((v176 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_72:
  v170 = *(v223 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  v171 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  if (*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8) == 1)
  {
    if (v171 <= 1)
    {
      if (v171)
      {
        if (v170 != 1)
        {
          goto LABEL_51;
        }
      }

      else if (v170)
      {
        goto LABEL_51;
      }
    }

    else if (v171 == 2)
    {
      if (v170 != 2)
      {
        goto LABEL_51;
      }
    }

    else if (v171 == 3)
    {
      if (v170 != 3)
      {
        goto LABEL_51;
      }
    }

    else if (v170 != 4)
    {
      goto LABEL_51;
    }
  }

  else if (v170 != v171)
  {
    goto LABEL_51;
  }

  if (*(v223 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all) != *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all))
  {
    goto LABEL_51;
  }

  v177 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  v178 = *(v211 + 48);
  v179 = v213;
  outlined init with copy of PgQuery_Alias?(v223 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v213, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  outlined init with copy of PgQuery_Alias?(v80 + v177, v179 + v178, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  v180 = *(v208 + 48);
  if (v180(v179, 1, SelectStmt) == 1)
  {
    if (v180(v213 + v178, 1, SelectStmt) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v213, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
      goto LABEL_116;
    }

    goto LABEL_105;
  }

  v181 = v213;
  outlined init with copy of PgQuery_Alias?(v213, v210, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  if (v180(v181 + v178, 1, SelectStmt) == 1)
  {
    outlined destroy of PgQuery_OidList(v210, type metadata accessor for PgQuery_SelectStmt);
LABEL_105:
    v150 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMd;
    v151 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMR;
LABEL_106:
    v152 = v213;
    goto LABEL_56;
  }

  v182 = v207;
  outlined init with take of PgQuery_OidList(v213 + v178, v207, type metadata accessor for PgQuery_SelectStmt);
  v183 = *(SelectStmt + 20);
  v184 = *(v210 + v183);
  v185 = *(v182 + v183);
  if (v184 != v185)
  {

    v186 = closure #1 in static PgQuery_SelectStmt.== infix(_:_:)(v184, v185);

    if (!v186)
    {
      outlined destroy of PgQuery_OidList(v207, type metadata accessor for PgQuery_SelectStmt);
      outlined destroy of PgQuery_OidList(v210, type metadata accessor for PgQuery_SelectStmt);
      v150 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd;
      v151 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR;
      goto LABEL_106;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v187 = v210;
  v188 = v207;
  v189 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v188, type metadata accessor for PgQuery_SelectStmt);
  outlined destroy of PgQuery_OidList(v187, type metadata accessor for PgQuery_SelectStmt);
  _s10Foundation4UUIDVSgWOhTm_0(v213, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  if ((v189 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_116:
  v190 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg;
  v191 = *(v211 + 48);
  v192 = v209;
  outlined init with copy of PgQuery_Alias?(v223 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v209, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  outlined init with copy of PgQuery_Alias?(v148 + v190, v192 + v191, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  if (v180(v192, 1, SelectStmt) != 1)
  {
    v193 = v209;
    outlined init with copy of PgQuery_Alias?(v209, v206, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
    if (v180(v193 + v191, 1, SelectStmt) == 1)
    {

      outlined destroy of PgQuery_OidList(v206, type metadata accessor for PgQuery_SelectStmt);
      goto LABEL_121;
    }

    v196 = v205;
    outlined init with take of PgQuery_OidList(v209 + v191, v205, type metadata accessor for PgQuery_SelectStmt);
    v197 = *(SelectStmt + 20);
    v198 = *(v206 + v197);
    v199 = *(v196 + v197);
    if (v198 != v199)
    {

      v200 = closure #1 in static PgQuery_SelectStmt.== infix(_:_:)(v198, v199);

      if (!v200)
      {

        outlined destroy of PgQuery_OidList(v205, type metadata accessor for PgQuery_SelectStmt);
        outlined destroy of PgQuery_OidList(v206, type metadata accessor for PgQuery_SelectStmt);
        v194 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd;
        v195 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR;
        goto LABEL_122;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v201 = v206;
    v202 = v205;
    v203 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v202, type metadata accessor for PgQuery_SelectStmt);
    outlined destroy of PgQuery_OidList(v201, type metadata accessor for PgQuery_SelectStmt);
    _s10Foundation4UUIDVSgWOhTm_0(v209, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
    return (v203 & 1) != 0;
  }

  if (v180(v209 + v191, 1, SelectStmt) != 1)
  {
LABEL_121:
    v194 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMd;
    v195 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMR;
LABEL_122:
    _s10Foundation4UUIDVSgWOhTm_0(v209, v194, v195);
    return 0;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v209, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SelectStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt, &protocol conformance descriptor for PgQuery_SelectStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SelectStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt, &protocol conformance descriptor for PgQuery_SelectStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SelectStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt, &protocol conformance descriptor for PgQuery_SelectStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterTableStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for PgQuery_AlterTableStmt(0);
        type metadata accessor for PgQuery_RangeVar(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterTableStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v22 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v19 - v7;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v10 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterTableStmt = type metadata accessor for PgQuery_AlterTableStmt(0);
  v21 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterTableStmt + 32), v8, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v10 + 48))(v8, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_RangeVar);
    if (v4)
    {
      return result;
    }
  }

  v15 = v21;
  if (!*(*v21 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    destructiveProjectEnumData for StorableValue();
    if (!v18 || (v23 = v16, v24 = v17, lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      if (*(v15 + 17) != 1)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }

      result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      if (!v4)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterTableStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  UnknownStorage.init()();
  v4 = *(a1 + 32);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v6 = *(*(RangeVar - 8) + 56);

  return v6(a2 + v4, 1, 1, RangeVar);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTableStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableStmt and conformance PgQuery_AlterTableStmt, type metadata accessor for PgQuery_AlterTableStmt, &protocol conformance descriptor for PgQuery_AlterTableStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTableStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableStmt and conformance PgQuery_AlterTableStmt, type metadata accessor for PgQuery_AlterTableStmt, &protocol conformance descriptor for PgQuery_AlterTableStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTableStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableStmt and conformance PgQuery_AlterTableStmt, type metadata accessor for PgQuery_AlterTableStmt, &protocol conformance descriptor for PgQuery_AlterTableStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterTableCmd._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_AlterTableCmd._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RoleSpec?, type metadata accessor for PgQuery_RoleSpec, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_AlterTableCmd.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v6 & 1) == 0)
    {
      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            lazy protocol witness table accessor for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 2:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 3:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 7)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result == 4)
        {
          type metadata accessor for PgQuery_RoleSpec(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
        }

        else
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        }

        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_AlterTableCmd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v34 = &v31 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v33 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v9);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v31 - v13;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v36 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  destructiveProjectEnumData for StorableValue();
  if (!v20 || (v37 = v18, v38 = v19, lazy protocol witness table accessor for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v22 = *(a1 + 40);
    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
    }

    if (!v23 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
    {
      v24 = RoleSpec;
      if (!*(a1 + 48) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
      {
        v31 = v4;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, v14, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
        if ((*(v36 + 48))(v14, 1, v24) == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
        }

        else
        {
          outlined init with take of PgQuery_OidList(v14, v17, type metadata accessor for PgQuery_RoleSpec);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
          v25 = v31;
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_RoleSpec);
          if (v25)
          {
            return result;
          }

          v31 = 0;
        }

        v26 = v34;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def, v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((*(v33 + 48))(v26, 1, Node) == 1)
        {
          result = _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          v27 = v31;
        }

        else
        {
          v28 = v26;
          v29 = v32;
          outlined init with take of PgQuery_OidList(v28, v32, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          v27 = v31;
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_Node);
          if (v27)
          {
            return result;
          }
        }

        if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior) || (v30 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8), v37 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior), v38 = v30, lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v27))
        {
          if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) == 1)
          {
            return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_AlterTableCmd.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v62 = *(Node - 8);
  v63 = Node;
  MEMORY[0x1EEE9AC00](Node, v5);
  v59 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v60 = &v58 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v61, v10);
  v64 = &v58 - v11;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v65 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = (&v58 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v58 - v22;
  destructiveProjectEnumData for StorableValue();
  v25 = v24;
  destructiveProjectEnumData for StorableValue();
  if (v25 != v26 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_21;
  }

  v27 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner;
  v28 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, v23, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v29 = a2 + v27;
  v30 = a2;
  outlined init with copy of PgQuery_Alias?(v29, &v23[v28], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v31 = *(v65 + 48);
  if (v31(v23, 1, RoleSpec) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v23, v19, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if (v31(&v23[v28], 1, RoleSpec) != 1)
    {
      outlined init with take of PgQuery_OidList(&v23[v28], v15, type metadata accessor for PgQuery_RoleSpec);
      v33 = a1;

      v34 = specialized static PgQuery_RoleSpec.== infix(_:_:)(v19, v15);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_RoleSpec);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RoleSpec);
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      if ((v34 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RoleSpec);
LABEL_11:
    _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
    goto LABEL_20;
  }

  v32 = v31(&v23[v28], 1, RoleSpec);

  if (v32 != 1)
  {
    goto LABEL_11;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v33 = a1;
LABEL_13:
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def;
  v36 = *(v61 + 48);
  v37 = v33;
  v38 = v33 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def;
  v39 = v64;
  outlined init with copy of PgQuery_Alias?(v38, v64, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v30 + v35, v39 + v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v40 = v63;
  v41 = *(v62 + 48);
  if (v41(v39, 1, v63) == 1)
  {
    if (v41(v39 + v36, 1, v40) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  v42 = v60;
  outlined init with copy of PgQuery_Alias?(v39, v60, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v41(v39 + v36, 1, v40) == 1)
  {
    outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
LABEL_18:
    v43 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_19:
    _s10Foundation4UUIDVSgWOhTm_0(v39, v43, v44);
    goto LABEL_20;
  }

  v47 = v39 + v36;
  v48 = v59;
  outlined init with take of PgQuery_OidList(v47, v59, type metadata accessor for PgQuery_Node);
  v49 = *(v40 + 20);
  v50 = *(v42 + v49);
  v51 = *(v48 + v49);
  if (v50 != v51)
  {

    v52 = closure #1 in static PgQuery_Node.== infix(_:_:)(v50, v51);

    if (!v52)
    {
      outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
      v43 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v44 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_19;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v53)
  {
LABEL_26:
    v54 = *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
    v55 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
    if (*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8) == 1)
    {
      if (v55)
      {
        if (v55 == 1)
        {
          if (v54 == 1)
          {
            goto LABEL_37;
          }
        }

        else if (v54 == 2)
        {
LABEL_37:
          v56 = *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

          v57 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

          v45 = v56 ^ v57 ^ 1;
          return v45 & 1;
        }
      }

      else if (!v54)
      {
        goto LABEL_37;
      }
    }

    else if (v54 == v55)
    {
      goto LABEL_37;
    }
  }

LABEL_20:

LABEL_21:
  v45 = 0;
  return v45 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTableCmd(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableCmd and conformance PgQuery_AlterTableCmd, type metadata accessor for PgQuery_AlterTableCmd, &protocol conformance descriptor for PgQuery_AlterTableCmd);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTableCmd(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableCmd and conformance PgQuery_AlterTableCmd, type metadata accessor for PgQuery_AlterTableCmd, &protocol conformance descriptor for PgQuery_AlterTableCmd);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTableCmd(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableCmd and conformance PgQuery_AlterTableCmd, type metadata accessor for PgQuery_AlterTableCmd, &protocol conformance descriptor for PgQuery_AlterTableCmd);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterDomainStmt._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_AlterDomainStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_AlterDomainStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v6 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 5:
          lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 6:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          goto LABEL_14;
        case 2:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 3:
LABEL_14:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }
    }
  }
}

uint64_t closure #1 in PgQuery_AlterDomainStmt.traverse<A>(visitor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v22 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
  {
    if (!*(a1[4] + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
    {
      v17 = a1[6];
      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = a1[5] & 0xFFFFFFFFFFFFLL;
      }

      if (!v18 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
      {
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((*(v22 + 48))(v9, 1, Node) == 1)
        {
          result = _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          outlined init with take of PgQuery_OidList(v9, v13, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
          if (v4)
          {
            return result;
          }
        }

        if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior) || (v19 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8), v20 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior), v21 = v19, lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
        {
          if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) == 1)
          {
            return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_AlterDomainStmt.== infix(_:_:)(void *a1, void *a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v38 - v15;
  if (*(a1 + 1) == *(a2 + 1) || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), v18 = 0, (v17 & 1) != 0))
  {
    v39 = v8;
    v19 = a1[4];
    v20 = a2[4];

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v19, v20);

    if ((NodeV_Tt1g5 & 1) == 0 || (a1[5] != a2[5] || a1[6] != a2[6]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_14;
    }

    v22 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def;
    v23 = *(v13 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v22, &v16[v23], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v24 = *(v5 + 48);
    if (v24(v16, 1, Node) == 1)
    {
      if (v24(&v16[v23], 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        goto LABEL_19;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v24(&v16[v23], 1, Node) != 1)
      {
        v28 = v39;
        outlined init with take of PgQuery_OidList(&v16[v23], v39, type metadata accessor for PgQuery_Node);
        v29 = *(Node + 20);
        v30 = *&v12[v29];
        v31 = *(v28 + v29);
        if (v30 == v31 || (, , v32 = closure #1 in static PgQuery_Node.== infix(_:_:)(v30, v31), , , v32))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v33 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v33)
          {
LABEL_19:
            v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
            v35 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
            if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8) == 1)
            {
              if (v35)
              {
                if (v35 == 1)
                {
                  if (v34 == 1)
                  {
                    goto LABEL_30;
                  }
                }

                else if (v34 == 2)
                {
LABEL_30:
                  v36 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

                  v37 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

                  v18 = v36 ^ v37 ^ 1;
                  return v18 & 1;
                }
              }

              else if (!v34)
              {
                goto LABEL_30;
              }
            }

            else if (v34 == v35)
            {
              goto LABEL_30;
            }
          }

LABEL_14:

          v18 = 0;
          return v18 & 1;
        }

        outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
        v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v26 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_13:
        _s10Foundation4UUIDVSgWOhTm_0(v16, v25, v26);
        goto LABEL_14;
      }

      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    }

    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v26 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_13;
  }

  return v18 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterDomainStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDomainStmt and conformance PgQuery_AlterDomainStmt, type metadata accessor for PgQuery_AlterDomainStmt, &protocol conformance descriptor for PgQuery_AlterDomainStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterDomainStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDomainStmt and conformance PgQuery_AlterDomainStmt, type metadata accessor for PgQuery_AlterDomainStmt, &protocol conformance descriptor for PgQuery_AlterDomainStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterDomainStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDomainStmt and conformance PgQuery_AlterDomainStmt, type metadata accessor for PgQuery_AlterDomainStmt, &protocol conformance descriptor for PgQuery_AlterDomainStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_SetOperationStmt._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v1 + v3, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg;
  v5(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes;
  v8 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods) = v8;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations) = v8;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses) = v8;
  v12 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v12;
  *(v1 + 25) = *(a1 + 25);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes);

  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods);

  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations);

  v13 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses);

  *(v1 + v11) = v13;

  return v1;
}

uint64_t PgQuery_SetOperationStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_SetOperationStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_SetOperationStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v6 & 1) == 0)
    {
      if (result > 4)
      {
        if (result < 8 || result == 8)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result > 2)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        lazy protocol witness table accessor for type PgQuery_SetOperation and conformance PgQuery_SetOperation();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_SetOperationStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v36 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v16 = *(Node - 8);
  v18 = MEMORY[0x1EEE9AC00](Node, v17);
  v40 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v36 - v22;
  v24 = *(v21 + 16);
  if (v24)
  {
    v37 = v16;
    v38 = v24;
    v25 = v11;
    v26 = Node;
    v39 = *(v21 + 24);
    v27 = v21;
    lazy protocol witness table accessor for type PgQuery_SetOperation and conformance PgQuery_SetOperation();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v21 = v27;
    Node = v26;
    v11 = v25;
    v16 = v37;
  }

  if (*(v21 + 25) == 1)
  {
    v29 = v16;
    v30 = v11;
    v31 = Node;
    v32 = v21;
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v36 = a4;
    v21 = v32;
    Node = v31;
    v11 = v30;
    v16 = v29;
    v5 = 0;
  }

  else
  {
    v36 = a4;
  }

  v37 = v21;
  outlined init with copy of PgQuery_Alias?(v21 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = *(v16 + 48);
  if (v33(v14, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v23, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
    if (v5)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v37 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v33(v11, 1, Node) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v34 = v40;
    outlined init with take of PgQuery_OidList(v11, v40, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_Node);
    if (v5)
    {
      return result;
    }
  }

  v35 = v37;
  if (*(*(v37 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v5)
    {
      return result;
    }

    v35 = v37;
  }

  if (*(*(v35 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v5)
    {
      return result;
    }

    v35 = v37;
  }

  if (*(*(v35 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v5)
    {
      return result;
    }

    v35 = v37;
  }

  if (*(*(v35 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static PgQuery_SetOperationStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v7 = MEMORY[0x1EEE9AC00](Node, v6);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v82 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v82 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v28 = &v82 - v26;
  v29 = *(a1 + 16);
  v30 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v30 <= 1)
    {
      if (v30)
      {
        if (v29 != 1)
        {
          goto LABEL_45;
        }
      }

      else if (v29)
      {
        goto LABEL_45;
      }
    }

    else if (v30 == 2)
    {
      if (v29 != 2)
      {
        goto LABEL_45;
      }
    }

    else if (v30 == 3)
    {
      if (v29 != 3)
      {
        goto LABEL_45;
      }
    }

    else if (v29 != 4)
    {
      goto LABEL_45;
    }
  }

  else if (v29 != v30)
  {
LABEL_45:
    v80 = 0;
    return v80 & 1;
  }

  if (*(a1 + 25) != *(a2 + 25))
  {
    goto LABEL_45;
  }

  v84 = v12;
  v85 = v17;
  v86 = v27;
  v87 = v25;
  v83 = v9;
  v31 = a2;
  v32 = v5;
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  v34 = *(v25 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, &v82 - v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v31 + v33, &v28[v34], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v35 = *(v32 + 48);
  if (v35(v28, 1, Node) == 1)
  {
    v36 = Node;
    v37 = v35(&v28[v34], 1, Node);

    v38 = a1;
    if (v37 == 1)
    {
      v82 = v35;
      _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  v39 = a1;
  outlined init with copy of PgQuery_Alias?(v28, v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v35(&v28[v34], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
LABEL_17:
    v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_18:
    _s10Foundation4UUIDVSgWOhTm_0(v28, v40, v41);
    goto LABEL_44;
  }

  v82 = v35;
  v42 = &v28[v34];
  v43 = v84;
  outlined init with take of PgQuery_OidList(v42, v84, type metadata accessor for PgQuery_Node);
  v36 = Node;
  v44 = *(Node + 20);
  v45 = *&v20[v44];
  v46 = *(v43 + v44);
  v38 = v39;

  if (v45 != v46)
  {

    v47 = closure #1 in static PgQuery_Node.== infix(_:_:)(v45, v46);

    if (!v47)
    {
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
      v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_18;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v48 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_29:
  v49 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg;
  v50 = v86;
  v51 = v38;
  v52 = *(v87 + 48);
  v53 = v51;
  outlined init with copy of PgQuery_Alias?(v51 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v86, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v54 = v31 + v49;
  v55 = v50;
  outlined init with copy of PgQuery_Alias?(v54, v50 + v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v56 = v36;
  v57 = v36;
  v58 = v82;
  if (v82(v50, 1, v57) != 1)
  {
    v59 = v85;
    outlined init with copy of PgQuery_Alias?(v50, v85, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v58(v50 + v52, 1, v56) != 1)
    {
      v60 = v31;
      v61 = v50 + v52;
      v62 = v83;
      outlined init with take of PgQuery_OidList(v61, v83, type metadata accessor for PgQuery_Node);
      v63 = *(v56 + 20);
      v64 = *(v59 + v63);
      v65 = *(v62 + v63);
      if (v64 == v65 || (, , v66 = closure #1 in static PgQuery_Node.== infix(_:_:)(v64, v65), , , v66))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v67 = v85;
        v68 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v31 = v60;
        if (v68)
        {
          goto LABEL_38;
        }
      }

      else
      {
        outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v85, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

LABEL_44:

      goto LABEL_45;
    }

    outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
LABEL_34:
    _s10Foundation4UUIDVSgWOhTm_0(v50, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_44;
  }

  if (v58(v50 + v52, 1, v56) != 1)
  {
    goto LABEL_34;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_38:
  v69 = *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes);
  v70 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v69, v70);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_44;
  }

  v72 = *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods);
  v73 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods);

  v74 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v72, v73);

  if ((v74 & 1) == 0)
  {
    goto LABEL_44;
  }

  v75 = *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations);
  v76 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations);

  v77 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v75, v76);

  if ((v77 & 1) == 0)
  {
    goto LABEL_44;
  }

  v78 = *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses);
  v79 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses);

  v80 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v78, v79);

  return v80 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SetOperationStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetOperationStmt and conformance PgQuery_SetOperationStmt, type metadata accessor for PgQuery_SetOperationStmt, &protocol conformance descriptor for PgQuery_SetOperationStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SetOperationStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetOperationStmt and conformance PgQuery_SetOperationStmt, type metadata accessor for PgQuery_SetOperationStmt, &protocol conformance descriptor for PgQuery_SetOperationStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SetOperationStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetOperationStmt and conformance PgQuery_SetOperationStmt, type metadata accessor for PgQuery_SetOperationStmt, &protocol conformance descriptor for PgQuery_SetOperationStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_GrantStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 4)
      {
        if (result <= 6)
        {
          goto LABEL_15;
        }

        if (result == 7)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_5;
        }

        if (result == 8)
        {
          lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
LABEL_21:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
LABEL_15:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            goto LABEL_5;
          }

          v6 = v3;
          lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
          goto LABEL_20;
        }

        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          v6 = v3;
          lazy protocol witness table accessor for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType();
LABEL_20:
          v3 = v6;
          goto LABEL_21;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_GrantStmt.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (v5 = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    v6 = v4;
    if (*(v3 + 8))
    {
      lazy protocol witness table accessor for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType();
      v5 = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v4)
      {
        return v5;
      }

      v6 = 0;
    }

    destructiveProjectEnumData for StorableValue();
    if (v7)
    {
      lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
      v5 = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v6)
      {
        return v5;
      }

      v6 = 0;
    }

    if (*(*(v3 + 40) + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      v5 = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v6)
      {
        return v5;
      }

      v6 = 0;
    }

    if (*(*(v3 + 48) + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      v5 = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v6)
      {
        return v5;
      }

      v6 = 0;
    }

    if (*(*(v3 + 56) + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      v8 = v6;
      v5 = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v6)
      {
        return v5;
      }
    }

    else
    {
      v8 = v6;
    }

    if (*(v3 + 64) != 1 || (v5 = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v8))
    {
      if (!*(v3 + 72) || (lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), v5 = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v8))
      {
        type metadata accessor for PgQuery_GrantStmt(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return v5;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_GrantStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = MEMORY[0x1E69E7CC0];
  *(a1 + 48) = v1;
  *(a1 + 56) = v1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_GrantStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantStmt and conformance PgQuery_GrantStmt, type metadata accessor for PgQuery_GrantStmt, &protocol conformance descriptor for PgQuery_GrantStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_GrantStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantStmt and conformance PgQuery_GrantStmt, type metadata accessor for PgQuery_GrantStmt, &protocol conformance descriptor for PgQuery_GrantStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_GrantStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantStmt and conformance PgQuery_GrantStmt, type metadata accessor for PgQuery_GrantStmt, &protocol conformance descriptor for PgQuery_GrantStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_GrantRoleStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            goto LABEL_17;
          case 5:
            type metadata accessor for PgQuery_GrantRoleStmt(0);
            type metadata accessor for PgQuery_RoleSpec(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 6:
            lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

      else
      {
        if (result != 1 && result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

LABEL_17:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_5;
        }

        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_GrantRoleStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - v9;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v21 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v3 + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(*(v3 + 8) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v15 = v5;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v15 = v5;
  }

  if (*(v3 + 16) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    v16 = RoleSpec;
    if (v15)
    {
      return result;
    }
  }

  else
  {
    v16 = RoleSpec;
  }

  if (*(v3 + 17) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v15))
  {
    GrantRoleStmt = type metadata accessor for PgQuery_GrantRoleStmt(0);
    outlined init with copy of PgQuery_Alias?(v6 + *(GrantRoleStmt + 40), v10, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if ((*(v21 + 48))(v10, 1, v16) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      v18 = *(v6 + 24);
      if (!v18)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }

    else
    {
      RoleSpec = GrantRoleStmt;
      outlined init with take of PgQuery_OidList(v10, v13, type metadata accessor for PgQuery_RoleSpec);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_RoleSpec);
      if (v15)
      {
        return result;
      }

      v18 = *(v6 + 24);
      if (!v18)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }

    v19 = *(v6 + 32);
    v22 = v18;
    v23 = v19;
    lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v15)
    {
      return result;
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_GrantRoleStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  UnknownStorage.init()();
  v5 = *(a1 + 40);
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v7 = *(*(RoleSpec - 8) + 56);

  return v7(a2 + v5, 1, 1, RoleSpec);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_GrantRoleStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantRoleStmt and conformance PgQuery_GrantRoleStmt, type metadata accessor for PgQuery_GrantRoleStmt, &protocol conformance descriptor for PgQuery_GrantRoleStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_GrantRoleStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantRoleStmt and conformance PgQuery_GrantRoleStmt, type metadata accessor for PgQuery_GrantRoleStmt, &protocol conformance descriptor for PgQuery_GrantRoleStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_GrantRoleStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantRoleStmt and conformance PgQuery_GrantRoleStmt, type metadata accessor for PgQuery_GrantRoleStmt, &protocol conformance descriptor for PgQuery_GrantRoleStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterDefaultPrivilegesStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 2)
      {
        type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt(0);
        type metadata accessor for PgQuery_GrantStmt(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantStmt and conformance PgQuery_GrantStmt, type metadata accessor for PgQuery_GrantStmt, &protocol conformance descriptor for PgQuery_GrantStmt);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterDefaultPrivilegesStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v18 - v6;
  GrantStmt = type metadata accessor for PgQuery_GrantStmt(0);
  v9 = *(GrantStmt - 8);
  MEMORY[0x1EEE9AC00](GrantStmt, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v19 = v3;
  if (v13)
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v14 = v20;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v14)
    {
      return result;
    }

    v20 = 0;
    v3 = v19;
  }

  AlterDefaultPrivilegesStmt = type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt(0);
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterDefaultPrivilegesStmt + 24), v7, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  if ((*(v9 + 48))(v7, 1, GrantStmt) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v12, type metadata accessor for PgQuery_GrantStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantStmt and conformance PgQuery_GrantStmt, type metadata accessor for PgQuery_GrantStmt, &protocol conformance descriptor for PgQuery_GrantStmt);
    v17 = v20;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_GrantStmt);
    if (v17)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterDefaultPrivilegesStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDefaultPrivilegesStmt and conformance PgQuery_AlterDefaultPrivilegesStmt, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt, &protocol conformance descriptor for PgQuery_AlterDefaultPrivilegesStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterDefaultPrivilegesStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDefaultPrivilegesStmt and conformance PgQuery_AlterDefaultPrivilegesStmt, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt, &protocol conformance descriptor for PgQuery_AlterDefaultPrivilegesStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterDefaultPrivilegesStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDefaultPrivilegesStmt and conformance PgQuery_AlterDefaultPrivilegesStmt, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt, &protocol conformance descriptor for PgQuery_AlterDefaultPrivilegesStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ClosePortalStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClosePortalStmt and conformance PgQuery_ClosePortalStmt, type metadata accessor for PgQuery_ClosePortalStmt, &protocol conformance descriptor for PgQuery_ClosePortalStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ClosePortalStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClosePortalStmt and conformance PgQuery_ClosePortalStmt, type metadata accessor for PgQuery_ClosePortalStmt, &protocol conformance descriptor for PgQuery_ClosePortalStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ClosePortalStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClosePortalStmt and conformance PgQuery_ClosePortalStmt, type metadata accessor for PgQuery_ClosePortalStmt, &protocol conformance descriptor for PgQuery_ClosePortalStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_ClusterStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          type metadata accessor for PgQuery_ClusterStmt(0);
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_ClusterStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v18 - v7;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v10 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = type metadata accessor for PgQuery_ClusterStmt(0);
  outlined init with copy of PgQuery_Alias?(v4 + *(v18[0] + 28), v8, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v10 + 48))(v8, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v14 = v19;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v14 = v19;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_RangeVar);
    if (v14)
    {
      return result;
    }
  }

  v16 = *(v4 + 8);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v14))
  {
    if (!*(v4 + 16))
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (!v14)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_ClusterStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v6 = *(*(RangeVar - 8) + 56);

  return v6(a2 + v4, 1, 1, RangeVar);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ClusterStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClusterStmt and conformance PgQuery_ClusterStmt, type metadata accessor for PgQuery_ClusterStmt, &protocol conformance descriptor for PgQuery_ClusterStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ClusterStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClusterStmt and conformance PgQuery_ClusterStmt, type metadata accessor for PgQuery_ClusterStmt, &protocol conformance descriptor for PgQuery_ClusterStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ClusterStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClusterStmt and conformance PgQuery_ClusterStmt, type metadata accessor for PgQuery_ClusterStmt, &protocol conformance descriptor for PgQuery_ClusterStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CopyStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v23 = &v20 - v5;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v21 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v6, 1, 1, RangeVar);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v20 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(*(Node - 8) + 56);
  v10(v1 + v8, 1, 1, Node);
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist;
  v12 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist) = MEMORY[0x1E69E7CC0];
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom) = 0;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram) = 0;
  v15 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v12;
  v22 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v10(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, 1, 1, Node);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v21, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v1 + v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist);

  *(v1 + v13) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom);
  *(v1 + v14) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram);
  v17 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename + 8);
  *v15 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename);
  v15[1] = v17;

  *(v1 + v16) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v18 = v23;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v18, v1 + v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return v1;
}

uint64_t PgQuery_CopyStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_CopyStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_CopyStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v6)
      {
        return result;
      }

      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            goto LABEL_22;
          }

          if (result == 8)
          {
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          }
        }

        else
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
LABEL_4:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            goto LABEL_5;
          }

LABEL_22:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 1)
        {
          v7 = v4;
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
          goto LABEL_21;
        }

        if (result == 2)
        {
          v7 = v4;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_21:
          v4 = v7;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CopyStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v42 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v45 = *(Node - 8);
  v46 = Node;
  v14 = MEMORY[0x1EEE9AC00](Node, v13);
  v42 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v44 = &v42 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v42 - v20;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v23 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v24);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v21, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v23 + 48))(v21, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v21, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v27 = v47;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v21, v26, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v28 = v47;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v27 = v28;
    result = outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_RangeVar);
    if (v28)
    {
      return result;
    }
  }

  v30 = v50;
  outlined init with copy of PgQuery_Alias?(v50 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v31 = v46;
  v32 = *(v45 + 48);
  if (v32(v11, 1, v46) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v33 = v11;
    v34 = v44;
    outlined init with take of PgQuery_OidList(v33, v44, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_Node);
    if (v27)
    {
      return result;
    }
  }

  if (!*(*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v27))
  {
    v35 = v50;
    if (*(v50 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v27))
    {
      if (*(v35 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v27))
      {
        v36 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename);
        v37 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename + 8);
        v38 = HIBYTE(v37) & 0xF;
        if ((v37 & 0x2000000000000000) == 0)
        {
          v38 = v36 & 0xFFFFFFFFFFFFLL;
        }

        if (!v38 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v27))
        {
          if (!*(*(v50 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v27))
          {
            v39 = v43;
            outlined init with copy of PgQuery_Alias?(v50 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v43, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v32(v39, 1, v31) == 1)
            {
              return _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            }

            else
            {
              v40 = v39;
              v41 = v42;
              outlined init with take of PgQuery_OidList(v40, v42, type metadata accessor for PgQuery_Node);
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
              dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
              return outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CopyStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  Node = type metadata accessor for PgQuery_Node(0);
  v90 = *(Node - 8);
  v91 = Node;
  v5 = MEMORY[0x1EEE9AC00](Node, v4);
  v84 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v87 = &v84 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v85 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v88 = &v84 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v16 = MEMORY[0x1EEE9AC00](v89, v15);
  v86 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v92 = &v84 - v19;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v21 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v22);
  v24 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v84 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v33 = &v84 - v32;
  v34 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v35 = *(v31 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v84 - v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v36 = v93 + v34;
  v37 = v93;
  outlined init with copy of PgQuery_Alias?(v36, &v33[v35], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v38 = *(v21 + 48);
  if (v38(v33, 1, RangeVar) == 1)
  {
    v39 = v38(&v33[v35], 1, RangeVar);

    v40 = a1;
    if (v39 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v33, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v41 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v42 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v43 = v33;
LABEL_14:
    _s10Foundation4UUIDVSgWOhTm_0(v43, v41, v42);
    goto LABEL_15;
  }

  outlined init with copy of PgQuery_Alias?(v33, v28, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v38(&v33[v35], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  outlined init with take of PgQuery_OidList(&v33[v35], v24, type metadata accessor for PgQuery_RangeVar);
  v40 = a1;

  v44 = specialized static PgQuery_RangeVar.== infix(_:_:)(v28, v24);
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v33, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v44 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v45 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v46 = v89;
  v47 = *(v89 + 48);
  v48 = v92;
  outlined init with copy of PgQuery_Alias?(v40 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v92, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v49 = v48;
  outlined init with copy of PgQuery_Alias?(v37 + v45, v48 + v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v50 = v91;
  v51 = *(v90 + 48);
  if (v51(v49, 1, v91) != 1)
  {
    v52 = v88;
    outlined init with copy of PgQuery_Alias?(v49, v88, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v51(v49 + v47, 1, v50) == 1)
    {
      outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
      goto LABEL_13;
    }

    v54 = v87;
    outlined init with take of PgQuery_OidList(v49 + v47, v87, type metadata accessor for PgQuery_Node);
    v55 = *(v50 + 20);
    v56 = *(v52 + v55);
    v57 = *(v54 + v55);
    if (v56 != v57)
    {

      v58 = closure #1 in static PgQuery_Node.== infix(_:_:)(v56, v57);

      if (!v58)
      {
        outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v88, type metadata accessor for PgQuery_Node);
        v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        v43 = v92;
        goto LABEL_14;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v59 = v88;
    v60 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v92, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v60)
    {
      goto LABEL_20;
    }

LABEL_15:

    return 0;
  }

  if (v51(v49 + v47, 1, v50) != 1)
  {
LABEL_13:
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v43 = v49;
    goto LABEL_14;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
  v61 = *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist);
  v62 = *(v37 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist);

  v63 = v37;
  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v61, v62);

  if ((NodeV_Tt1g5 & 1) == 0 || *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom) != *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom) || *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram) != *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram) || (*(v40 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename) != *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename) || *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename + 8) != *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v65 = *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
  v66 = *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v67 = v63;
  v68 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v65, v66);

  if ((v68 & 1) == 0)
  {
    goto LABEL_15;
  }

  v69 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v70 = *(v46 + 48);
  v71 = v86;
  outlined init with copy of PgQuery_Alias?(v40 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v86, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v72 = v71;
  outlined init with copy of PgQuery_Alias?(v67 + v69, v71 + v70, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v51(v71, 1, v50) != 1)
  {
    v73 = v71;
    v74 = v85;
    outlined init with copy of PgQuery_Alias?(v73, v85, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v51(v72 + v70, 1, v50) == 1)
    {

      outlined destroy of PgQuery_OidList(v74, type metadata accessor for PgQuery_Node);
      goto LABEL_35;
    }

    v78 = v84;
    outlined init with take of PgQuery_OidList(v72 + v70, v84, type metadata accessor for PgQuery_Node);
    v79 = *(v50 + 20);
    v80 = *(v74 + v79);
    v81 = *(v78 + v79);
    if (v80 != v81)
    {

      v82 = closure #1 in static PgQuery_Node.== infix(_:_:)(v80, v81);

      if (!v82)
      {

        outlined destroy of PgQuery_OidList(v78, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v74, type metadata accessor for PgQuery_Node);
        v75 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v76 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        v77 = v86;
        goto LABEL_36;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v83 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v78, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v74, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v86, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    return (v83 & 1) != 0;
  }

  if (v51(v71 + v70, 1, v50) != 1)
  {
LABEL_35:
    v75 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v76 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v77 = v72;
LABEL_36:
    _s10Foundation4UUIDVSgWOhTm_0(v77, v75, v76);
    return 0;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v71, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CopyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CopyStmt and conformance PgQuery_CopyStmt, type metadata accessor for PgQuery_CopyStmt, &protocol conformance descriptor for PgQuery_CopyStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CopyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CopyStmt and conformance PgQuery_CopyStmt, type metadata accessor for PgQuery_CopyStmt, &protocol conformance descriptor for PgQuery_CopyStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CopyStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CopyStmt and conformance PgQuery_CopyStmt, type metadata accessor for PgQuery_CopyStmt, &protocol conformance descriptor for PgQuery_CopyStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateStmt._StorageClass.init()()
{
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableElts) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhRelations) = v3;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound;
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  (*(*(PartitionBoundSpec - 8) + 56))(v0 + v4, 1, 1, PartitionBoundSpec);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec;
  PartitionSpec = type metadata accessor for PgQuery_PartitionSpec(0);
  (*(*(PartitionSpec - 8) + 56))(v0 + v6, 1, 1, PartitionSpec);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v0 + v8, 1, 1, TypeName);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) = v3;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v3;
  v10 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) = 0;
  return v0;
}

uint64_t PgQuery_CreateStmt._StorageClass.deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);

  return v0;
}

void type metadata completion function for PgQuery_CreateStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_PartitionBoundSpec?, type metadata accessor for PgQuery_PartitionBoundSpec, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_PartitionSpec?, type metadata accessor for PgQuery_PartitionSpec, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t closure #1 in PgQuery_CreateStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v6)
      {
        return result;
      }

      if (result > 6)
      {
        if (result <= 9)
        {
          if (result != 7 && result != 8)
          {
            lazy protocol witness table accessor for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            goto LABEL_6;
          }

LABEL_28:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 10 || result == 11)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }

        else if (result == 12)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result > 3)
        {
          if (result == 4)
          {
            v7 = v4;
            type metadata accessor for PgQuery_PartitionBoundSpec(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec, type metadata accessor for PgQuery_PartitionBoundSpec, &protocol conformance descriptor for PgQuery_PartitionBoundSpec);
          }

          else
          {
            v7 = v4;
            if (result == 5)
            {
              type metadata accessor for PgQuery_PartitionSpec(0);
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionSpec and conformance PgQuery_PartitionSpec, type metadata accessor for PgQuery_PartitionSpec, &protocol conformance descriptor for PgQuery_PartitionSpec);
            }

            else
            {
              type metadata accessor for PgQuery_TypeName(0);
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
            }
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          v7 = v4;
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
LABEL_5:
          v4 = v7;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 2 || result == 3)
        {
          goto LABEL_28;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CreateStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a3;
  v64 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v51 = &v48 - v7;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v50 = *(TypeName - 8);
  MEMORY[0x1EEE9AC00](TypeName, v8);
  v48 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v59 = &v48 - v12;
  PartitionSpec = type metadata accessor for PgQuery_PartitionSpec(0);
  v54 = *(PartitionSpec - 8);
  MEMORY[0x1EEE9AC00](PartitionSpec, v13);
  v49 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v56 = &v48 - v17;
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  v55 = *(PartitionBoundSpec - 8);
  MEMORY[0x1EEE9AC00](PartitionBoundSpec, v18);
  v53 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v48 - v22;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v25 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v26);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v25 + 48))(v23, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v29 = v60;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v23, v28, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v30 = v60;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v29 = v30;
    if (v30)
    {
      return outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_RangeVar);
    }

    outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_RangeVar);
  }

  v32 = v59;
  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableElts) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v33 = PartitionBoundSpec;
    if (v29)
    {
    }
  }

  else
  {
    v33 = PartitionBoundSpec;
  }

  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhRelations) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v29)
    {
    }
  }

  v34 = v56;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound, v56, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v35 = (*(v55 + 48))(v34, 1, v33);
  v36 = PartitionSpec;
  if (v35 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  }

  else
  {
    v37 = v53;
    outlined init with take of PgQuery_OidList(v34, v53, type metadata accessor for PgQuery_PartitionBoundSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec, type metadata accessor for PgQuery_PartitionBoundSpec, &protocol conformance descriptor for PgQuery_PartitionBoundSpec);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v29)
    {
      return outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_PartitionBoundSpec);
    }

    outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_PartitionBoundSpec);
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec, v32, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  if ((*(v54 + 48))(v32, 1, v36) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  }

  else
  {
    v38 = v32;
    v39 = v49;
    outlined init with take of PgQuery_OidList(v38, v49, type metadata accessor for PgQuery_PartitionSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionSpec and conformance PgQuery_PartitionSpec, type metadata accessor for PgQuery_PartitionSpec, &protocol conformance descriptor for PgQuery_PartitionSpec);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_PartitionSpec);
    if (v29)
    {
      return result;
    }
  }

  v40 = v51;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename, v51, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v50 + 48))(v40, 1, TypeName) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    v41 = v40;
    v42 = v48;
    outlined init with take of PgQuery_OidList(v41, v48, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_TypeName);
    if (v29)
    {
      return result;
    }
  }

  if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v29))
  {
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v29))
    {
      if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit) || (v43 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit + 8), v62 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit), v63 = v43, lazy protocol witness table accessor for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v29))
      {
        v44 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename + 8);
        v45 = HIBYTE(v44) & 0xF;
        if ((v44 & 0x2000000000000000) == 0)
        {
          v45 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename) & 0xFFFFFFFFFFFFLL;
        }

        if (!v45 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v29))
        {
          v46 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);
          v47 = HIBYTE(v46) & 0xF;
          if ((v46 & 0x2000000000000000) == 0)
          {
            v47 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) & 0xFFFFFFFFFFFFLL;
          }

          if (!v47 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v29))
          {
            if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) == 1)
            {
              return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_CreateStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v121 = a2;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v107 = *(TypeName - 8);
  v108 = TypeName;
  MEMORY[0x1EEE9AC00](TypeName, v4);
  v103 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v104 = &v103 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v106, v9);
  v109 = &v103 - v10;
  PartitionSpec = type metadata accessor for PgQuery_PartitionSpec(0);
  v113 = *(PartitionSpec - 8);
  v114 = PartitionSpec;
  MEMORY[0x1EEE9AC00](PartitionSpec, v12);
  v105 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v110 = &v103 - v16;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_PartitionSpecVSg_ADtMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v112, v17);
  v115 = &v103 - v18;
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  v118 = *(PartitionBoundSpec - 8);
  v119 = PartitionBoundSpec;
  MEMORY[0x1EEE9AC00](PartitionBoundSpec, v20);
  v111 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v116 = (&v103 - v24);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v117, v25);
  v120 = &v103 - v26;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v28 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v29);
  v31 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v103 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v40 = &v103 - v39;
  v41 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v42 = *(v38 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v103 - v39, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v43 = v121 + v41;
  v44 = v121;
  outlined init with copy of PgQuery_Alias?(v43, &v40[v42], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v45 = *(v28 + 48);
  if (v45(v40, 1, RangeVar) == 1)
  {
    v46 = v45(&v40[v42], 1, RangeVar);

    v47 = a1;
    if (v46 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v48 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v49 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v50 = v40;
LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v50, v48, v49);
    goto LABEL_64;
  }

  outlined init with copy of PgQuery_Alias?(v40, v35, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v45(&v40[v42], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  outlined init with take of PgQuery_OidList(&v40[v42], v31, type metadata accessor for PgQuery_RangeVar);
  v47 = a1;

  v51 = specialized static PgQuery_RangeVar.== infix(_:_:)(v35, v31);
  outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v51 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_9:
  v52 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableElts);
  v53 = *(v44 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableElts);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v52, v53);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_64;
  }

  v55 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhRelations);
  v56 = *(v44 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhRelations);

  v57 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v55, v56);

  if ((v57 & 1) == 0)
  {
    goto LABEL_64;
  }

  v58 = v44;
  v59 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound;
  v60 = *(v117 + 48);
  v61 = v120;
  outlined init with copy of PgQuery_Alias?(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound, v120, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v62 = v58 + v59;
  v63 = v58;
  outlined init with copy of PgQuery_Alias?(v62, v61 + v60, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v64 = v119;
  v65 = *(v118 + 48);
  if (v65(v61, 1, v119) == 1)
  {
    if (v65(v61 + v60, 1, v64) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v61, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v66 = v116;
  outlined init with copy of PgQuery_Alias?(v61, v116, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  if (v65(v61 + v60, 1, v64) == 1)
  {
    outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_PartitionBoundSpec);
LABEL_16:
    v48 = &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMd;
    v49 = &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMR;
    v50 = v61;
    goto LABEL_7;
  }

  v67 = v61 + v60;
  v68 = v111;
  outlined init with take of PgQuery_OidList(v67, v111, type metadata accessor for PgQuery_PartitionBoundSpec);
  v69 = specialized static PgQuery_PartitionBoundSpec.== infix(_:_:)(v66, v68);
  outlined destroy of PgQuery_OidList(v68, type metadata accessor for PgQuery_PartitionBoundSpec);
  outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_PartitionBoundSpec);
  _s10Foundation4UUIDVSgWOhTm_0(v61, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  if ((v69 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_18:
  v70 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec;
  v71 = *(v112 + 48);
  v72 = v115;
  outlined init with copy of PgQuery_Alias?(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec, v115, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  v73 = v63 + v70;
  v74 = v72;
  outlined init with copy of PgQuery_Alias?(v73, v72 + v71, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  v75 = v114;
  v76 = *(v113 + 48);
  if (v76(v72, 1, v114) == 1)
  {
    if (v76(v72 + v71, 1, v75) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v72, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  v83 = v110;
  outlined init with copy of PgQuery_Alias?(v74, v110, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  if (v76(v74 + v71, 1, v75) == 1)
  {
    outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_PartitionSpec);
LABEL_26:
    v48 = &_s14BiomeSQLParser21PgQuery_PartitionSpecVSg_ADtMd;
    v49 = &_s14BiomeSQLParser21PgQuery_PartitionSpecVSg_ADtMR;
LABEL_38:
    v50 = v74;
    goto LABEL_7;
  }

  v84 = v74 + v71;
  v85 = v105;
  outlined init with take of PgQuery_OidList(v84, v105, type metadata accessor for PgQuery_PartitionSpec);
  if ((*v83 != *v85 || *(v83 + 8) != *(v85 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v83 + 16), *(v85 + 16)) & 1) == 0 || *(v83 + 24) != *(v85 + 24))
  {
    outlined destroy of PgQuery_OidList(v85, type metadata accessor for PgQuery_PartitionSpec);
    outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_PartitionSpec);
    v48 = &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd;
    v49 = &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR;
    goto LABEL_38;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v86 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v85, type metadata accessor for PgQuery_PartitionSpec);
  outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_PartitionSpec);
  _s10Foundation4UUIDVSgWOhTm_0(v74, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  if ((v86 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_21:
  v77 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename;
  v78 = *(v106 + 48);
  v79 = v109;
  outlined init with copy of PgQuery_Alias?(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename, v109, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v80 = v63 + v77;
  v74 = v79;
  outlined init with copy of PgQuery_Alias?(v80, v79 + v78, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v81 = v108;
  v82 = *(v107 + 48);
  if (v82(v79, 1, v108) == 1)
  {
    if (v82(v79 + v78, 1, v81) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v79, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  v87 = v104;
  outlined init with copy of PgQuery_Alias?(v74, v104, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v82(v74 + v78, 1, v81) == 1)
  {
    outlined destroy of PgQuery_OidList(v87, type metadata accessor for PgQuery_TypeName);
LABEL_37:
    v48 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v49 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    goto LABEL_38;
  }

  v88 = v74 + v78;
  v89 = v103;
  outlined init with take of PgQuery_OidList(v88, v103, type metadata accessor for PgQuery_TypeName);
  v90 = specialized static PgQuery_TypeName.== infix(_:_:)(v87, v89);
  outlined destroy of PgQuery_OidList(v89, type metadata accessor for PgQuery_TypeName);
  outlined destroy of PgQuery_OidList(v87, type metadata accessor for PgQuery_TypeName);
  _s10Foundation4UUIDVSgWOhTm_0(v74, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((v90 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_40:
  v91 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);
  v92 = *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);

  v93 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v91, v92);

  if ((v93 & 1) == 0)
  {
    goto LABEL_64;
  }

  v94 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
  v95 = *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v96 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v94, v95);

  if ((v96 & 1) == 0)
  {
    goto LABEL_64;
  }

  v97 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit);
  v98 = *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit);
  if (*(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit + 8) == 1)
  {
    if (v98 > 1)
    {
      if (v98 == 2)
      {
        if (v97 == 2)
        {
          goto LABEL_49;
        }
      }

      else if (v98 == 3)
      {
        if (v97 == 3)
        {
          goto LABEL_49;
        }
      }

      else if (v97 == 4)
      {
        goto LABEL_49;
      }

LABEL_64:

      v101 = 0;
      return v101 & 1;
    }

    if (!v98)
    {
      if (!v97)
      {
        goto LABEL_49;
      }

      goto LABEL_64;
    }

    if (v97 != 1)
    {
      goto LABEL_64;
    }
  }

  else if (v97 != v98)
  {
    goto LABEL_64;
  }

LABEL_49:
  if ((*(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename) != *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename) || *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename + 8) != *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) != *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) || *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8) != *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_64;
  }

  v99 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists);

  v100 = *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists);

  v101 = v99 ^ v100 ^ 1;
  return v101 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt, &protocol conformance descriptor for PgQuery_CreateStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt, &protocol conformance descriptor for PgQuery_CreateStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt, &protocol conformance descriptor for PgQuery_CreateStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DefineStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 3)
      {
        v6 = v3;
        switch(result)
        {
          case 1:
            lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 2:
LABEL_18:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 3:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            goto LABEL_4;
        }
      }

      else
      {
        if (result <= 5)
        {
          v6 = v3;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_4:
          v3 = v6;
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 6 || result == 7)
        {
          goto LABEL_18;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_DefineStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  destructiveProjectEnumData for StorableValue();
  if (!v5 || (lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (*(v3 + 9) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      v7 = v4;
      if (*(*(v3 + 16) + 16))
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        v7 = 0;
      }

      if (*(*(v3 + 24) + 16))
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v7)
        {
          return result;
        }

        v7 = 0;
      }

      if (*(*(v3 + 32) + 16))
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        v8 = v7;
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v7)
        {
          return result;
        }
      }

      else
      {
        v8 = v7;
      }

      if (*(v3 + 40) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v8))
      {
        if (*(v3 + 41) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v8))
        {
          type metadata accessor for PgQuery_DefineStmt(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_DefineStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = v1;
  *(a1 + 40) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DefineStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefineStmt and conformance PgQuery_DefineStmt, type metadata accessor for PgQuery_DefineStmt, &protocol conformance descriptor for PgQuery_DefineStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DefineStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefineStmt and conformance PgQuery_DefineStmt, type metadata accessor for PgQuery_DefineStmt, &protocol conformance descriptor for PgQuery_DefineStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DefineStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefineStmt and conformance PgQuery_DefineStmt, type metadata accessor for PgQuery_DefineStmt, &protocol conformance descriptor for PgQuery_DefineStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DropStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v6 = v3;
          lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
LABEL_16:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result == 3)
        {
          v6 = v3;
          lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
          goto LABEL_16;
        }

        if (result == 4 || result == 5)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_DropStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  destructiveProjectEnumData for StorableValue();
  if (v7)
  {
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3 + 24))
  {
    lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
    v8 = v5;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v8 = v5;
  }

  if (*(v3 + 33) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v8))
  {
    if (*(v3 + 34) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v8))
    {
      type metadata accessor for PgQuery_DropStmt(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_DropStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 33) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropStmt and conformance PgQuery_DropStmt, type metadata accessor for PgQuery_DropStmt, &protocol conformance descriptor for PgQuery_DropStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropStmt and conformance PgQuery_DropStmt, type metadata accessor for PgQuery_DropStmt, &protocol conformance descriptor for PgQuery_DropStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropStmt and conformance PgQuery_DropStmt, type metadata accessor for PgQuery_DropStmt, &protocol conformance descriptor for PgQuery_DropStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_TruncateStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 1:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_TruncateStmt.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), v5 = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (*(v3 + 8) != 1 || (v5 = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      if (!*(v3 + 16) || (lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), v5 = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for PgQuery_TruncateStmt(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return v5;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_TruncateStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TruncateStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TruncateStmt and conformance PgQuery_TruncateStmt, type metadata accessor for PgQuery_TruncateStmt, &protocol conformance descriptor for PgQuery_TruncateStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TruncateStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TruncateStmt and conformance PgQuery_TruncateStmt, type metadata accessor for PgQuery_TruncateStmt, &protocol conformance descriptor for PgQuery_TruncateStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TruncateStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TruncateStmt and conformance PgQuery_TruncateStmt, type metadata accessor for PgQuery_TruncateStmt, &protocol conformance descriptor for PgQuery_TruncateStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CurrentOfExpr._StorageClass.__deallocating_deinit(void *a1)
{
  _s10Foundation4UUIDVSgWOhTm_0(v1 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t PgQuery_CommentStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = *(type metadata accessor for PgQuery_CommentStmt(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_CommentStmt._StorageClass(0);
    v19 = v4;
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 1;
    v10 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v9 + v10, 1, 1, Node);
    v12 = (v9 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment);
    *v12 = 0;
    v12[1] = 0xE000000000000000;
    v13 = *(v8 + 24);
    *(v9 + 16) = *(v8 + 16);
    *(v9 + 24) = v13;
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;

    outlined assign with copy of PgQuery_Node?(v8 + v14, v9 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v15 = *(v8 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment + 8);
    v18 = *(v8 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment);

    *v12 = v18;
    v12[1] = v15;

    *(v3 + v6) = v9;
    v5 = v19;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v5)
  {
    while ((v17 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 2:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 3:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CommentStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v22 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = a1;
  v15 = *(a1 + 24);
  destructiveProjectEnumData for StorableValue();
  if (v16)
  {
    v24 = v13;
    v25 = v15;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v17 = v26;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v17)
    {
      return result;
    }

    v26 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v14 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v9 + 48))(v8, 1, Node) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v19 = v26;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    if (v19)
    {
      return result;
    }
  }

  v20 = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment + 8);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment) & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_CommentStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v33 - v14;
  destructiveProjectEnumData for StorableValue();
  v17 = v16;
  destructiveProjectEnumData for StorableValue();
  if (v17 != v18)
  {
    return 0;
  }

  v19 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v20 = *(v12 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v19, &v15[v20], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v15, 1, Node) == 1)
  {
    v22 = v21(&v15[v20], 1, Node);

    if (v22 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  outlined init with copy of PgQuery_Alias?(v15, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v21(&v15[v20], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_7:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_8:
    _s10Foundation4UUIDVSgWOhTm_0(v15, v23, v24);
LABEL_9:

    return 0;
  }

  v26 = v34;
  outlined init with take of PgQuery_OidList(&v15[v20], v34, type metadata accessor for PgQuery_Node);
  v27 = *(Node + 20);
  v28 = *&v11[v27];
  v29 = *(v26 + v27);

  if (v28 != v29)
  {

    v30 = closure #1 in static PgQuery_Node.== infix(_:_:)(v28, v29);

    if (!v30)
    {
      outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_8;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v31 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment + 8) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment + 8))
  {

    return 1;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return (v32 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CommentStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommentStmt and conformance PgQuery_CommentStmt, type metadata accessor for PgQuery_CommentStmt, &protocol conformance descriptor for PgQuery_CommentStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CommentStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommentStmt and conformance PgQuery_CommentStmt, type metadata accessor for PgQuery_CommentStmt, &protocol conformance descriptor for PgQuery_CommentStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CommentStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommentStmt and conformance PgQuery_CommentStmt, type metadata accessor for PgQuery_CommentStmt, &protocol conformance descriptor for PgQuery_CommentStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_FetchStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1)
      {
        lazy protocol witness table accessor for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_FetchStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 16) || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v4))
    {
      v6 = *(v3 + 32);
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
      {
        if (*(v3 + 40) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
        {
          type metadata accessor for PgQuery_FetchStmt(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_FetchStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_FetchStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FetchStmt and conformance PgQuery_FetchStmt, type metadata accessor for PgQuery_FetchStmt, &protocol conformance descriptor for PgQuery_FetchStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_FetchStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FetchStmt and conformance PgQuery_FetchStmt, type metadata accessor for PgQuery_FetchStmt, &protocol conformance descriptor for PgQuery_FetchStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_FetchStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FetchStmt and conformance PgQuery_FetchStmt, type metadata accessor for PgQuery_FetchStmt, &protocol conformance descriptor for PgQuery_FetchStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_IndexStmt._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  v3 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexParams) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexIncludingParams) = v5;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v5;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v0 + v6, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__excludeOpNames) = v5;
  v8 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexOid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldNode) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldCreateSubid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldFirstRelfilenodeSubid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unique) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__primary) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transformed) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__concurrent) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc) = 0;
  return v0;
}

uint64_t PgQuery_IndexStmt._StorageClass.deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  return v0;
}

void type metadata completion function for PgQuery_IndexStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_IndexStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc;
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__concurrent;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    v7 = v13;
    v8 = v12;
    while ((v6 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v9 = v8;
          v10 = v7;
          goto LABEL_17;
        case 2:
          v11 = v4;
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
          goto LABEL_20;
        case 3:
          v9 = v8;
          v10 = v7;
          goto LABEL_17;
        case 4:
          v9 = v8;
          v10 = v7;
          goto LABEL_17;
        case 5:
        case 6:
        case 7:
        case 9:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_28;
        case 8:
          v11 = v4;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_20:
          v4 = v11;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_28:
          v10 = v13;
          v9 = v12;
          break;
        case 10:
          v9 = v8;
          v10 = v7;
LABEL_17:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 11:
          v9 = v8;
          v10 = v7;
          goto LABEL_5;
        case 12:
          v9 = v8;
          v10 = v7;
          goto LABEL_5;
        case 13:
          v9 = v8;
          v10 = v7;
          goto LABEL_5;
        case 14:
          v9 = v8;
          v10 = v7;
LABEL_5:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 15:
          v9 = v8;
          v10 = v7;
          goto LABEL_31;
        case 16:
          v9 = v8;
          v10 = v7;
          goto LABEL_31;
        case 17:
          v9 = v8;
          v10 = v7;
          goto LABEL_31;
        case 18:
          v9 = v8;
          v10 = v7;
          goto LABEL_31;
        case 19:
          v9 = v8;
          v10 = v7;
          goto LABEL_31;
        case 20:
          v9 = v8;
          v10 = v7;
          goto LABEL_31;
        case 21:
          v10 = v7;
          v9 = v8;
          goto LABEL_31;
        case 22:
          v9 = v8;
          v10 = v7;
          goto LABEL_31;
        case 23:
          v9 = v8;
          v10 = v7;
LABEL_31:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        default:
          v9 = v8;
          v10 = v7;
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
      v7 = v10;
      v8 = v9;
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_IndexStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v38 = &v36 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v36 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v10);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v36 - v14;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v17 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  outlined init with copy of PgQuery_Alias?(v40 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v15, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v17 + 48))(v15, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v20, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
    }

    outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
  }

  v25 = v40;
  v26 = *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) & 0xFFFFFFFFFFFFLL;
  }

  v29 = v38;
  v28 = Node;
  if (v27)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  v30 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace + 8);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace) & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  if (*(*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexParams) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  if (*(*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexIncludingParams) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  if (!*(*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16))
  {
    goto LABEL_30;
  }

  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

  dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  if (v5)
  {
  }

LABEL_30:
  outlined init with copy of PgQuery_Alias?(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v32 = (*(v36 + 48))(v29, 1, v28);
  v33 = v37;
  if (v32 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v29, v37, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_Node);
  }

  if (*(*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__excludeOpNames) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  v34 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment + 8);
  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment) & 0xFFFFFFFFFFFFLL;
  }

  if (!v35 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v5))
  {
    if (!*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexOid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v5))
    {
      if (!*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldNode) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v5))
      {
        if (!*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldCreateSubid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v5))
        {
          result = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldFirstRelfilenodeSubid);
          if (!result || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v5))
          {
            if (*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unique) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
            {
              if (*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__primary) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
              {
                if (*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
                {
                  if (*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
                  {
                    if (*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
                    {
                      if (*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transformed) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
                      {
                        if (*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__concurrent) == 1)
                        {
                          result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
                          if (v5)
                          {
                            return result;
                          }

                          v25 = v40;
                        }

                        if (*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
                        {
                          if (*(v40 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc) == 1)
                          {
                            return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_IndexStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v73 = *(Node - 8);
  v74 = Node;
  MEMORY[0x1EEE9AC00](Node, v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v71 = &v68 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v72, v11);
  v13 = &v68 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v15 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v68 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v68 - v25;
  if (*(a1 + 16) == *(a2 + 16) || (v27 = _stringCompareWithSmolCheck(_:_:expecting:)(), v28 = 0, (v27 & 1) != 0))
  {
    v69 = v7;
    v70 = v13;
    v75 = a2;
    v29 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
    v30 = *(v23 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v26, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v31 = v75 + v29;
    v32 = v75;
    outlined init with copy of PgQuery_Alias?(v31, &v26[v30], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v33 = *(v15 + 48);
    if (v33(v26, 1, RangeVar) == 1)
    {
      v34 = v33(&v26[v30], 1, RangeVar);

      if (v34 == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
        goto LABEL_13;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v26, v22, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if (v33(&v26[v30], 1, RangeVar) != 1)
      {
        outlined init with take of PgQuery_OidList(&v26[v30], v18, type metadata accessor for PgQuery_RangeVar);

        v39 = specialized static PgQuery_RangeVar.== infix(_:_:)(v22, v18);
        outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
        outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_RangeVar);
        _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
        if ((v39 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_13:
        if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) != *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8) != *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_10;
        }

        if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace) != *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace + 8) != *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_10;
        }

        v40 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexParams);
        v41 = *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexParams);

        NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v40, v41);

        if ((NodeV_Tt1g5 & 1) == 0)
        {
          goto LABEL_10;
        }

        v43 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexIncludingParams);
        v44 = *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexIncludingParams);

        v45 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v43, v44);

        if ((v45 & 1) == 0)
        {
          goto LABEL_10;
        }

        v46 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
        v47 = *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

        v48 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v46, v47);

        if ((v48 & 1) == 0)
        {
          goto LABEL_10;
        }

        v49 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
        v50 = *(v72 + 48);
        v51 = v70;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v70, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v52 = v75 + v49;
        v53 = v75;
        outlined init with copy of PgQuery_Alias?(v52, v51 + v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v54 = v74;
        v55 = *(v73 + 48);
        if (v55(v51, 1, v74) == 1)
        {
          if (v55(v51 + v50, 1, v54) == 1)
          {
            _s10Foundation4UUIDVSgWOhTm_0(v51, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            goto LABEL_32;
          }
        }

        else
        {
          v56 = v71;
          outlined init with copy of PgQuery_Alias?(v51, v71, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v55(v51 + v50, 1, v54) != 1)
          {
            v57 = v69;
            outlined init with take of PgQuery_OidList(v51 + v50, v69, type metadata accessor for PgQuery_Node);
            v58 = *(v54 + 20);
            v59 = *(v56 + v58);
            v60 = *(v57 + v58);
            if (v59 == v60 || (, , v61 = closure #1 in static PgQuery_Node.== infix(_:_:)(v59, v60), , , v61))
            {
              type metadata accessor for UnknownStorage();
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
              v62 = dispatch thunk of static Equatable.== infix(_:_:)();
              outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
              outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
              _s10Foundation4UUIDVSgWOhTm_0(v51, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
              if (v62)
              {
LABEL_32:
                v63 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__excludeOpNames);
                v64 = *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__excludeOpNames);

                v65 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v63, v64);

                if ((v65 & 1) != 0
                  && (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment + 8) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexOid) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexOid)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldNode) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldNode)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldCreateSubid) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldCreateSubid)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldFirstRelfilenodeSubid) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldFirstRelfilenodeSubid)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unique) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unique)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__primary) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__primary)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) == *(v53 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) == *(v75 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) == *(v75 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transformed) == *(v75 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transformed)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__concurrent) == *(v75 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__concurrent)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) == *(v75 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists))
                {
                  v66 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc);

                  v67 = *(v75 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc);

                  v28 = v66 ^ v67 ^ 1;
                  return v28 & 1;
                }
              }

LABEL_10:

              v28 = 0;
              return v28 & 1;
            }

            outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
            outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
            v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
            v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
            goto LABEL_28;
          }

          outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
        }

        v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
        v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_28:
        v37 = v51;
        goto LABEL_9;
      }

      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_RangeVar);
    }

    v35 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v36 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v37 = v26;
LABEL_9:
    _s10Foundation4UUIDVSgWOhTm_0(v37, v35, v36);
    goto LABEL_10;
  }

  return v28 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_IndexStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexStmt and conformance PgQuery_IndexStmt, type metadata accessor for PgQuery_IndexStmt, &protocol conformance descriptor for PgQuery_IndexStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_IndexStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexStmt and conformance PgQuery_IndexStmt, type metadata accessor for PgQuery_IndexStmt, &protocol conformance descriptor for PgQuery_IndexStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_IndexStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexStmt and conformance PgQuery_IndexStmt, type metadata accessor for PgQuery_IndexStmt, &protocol conformance descriptor for PgQuery_IndexStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateFunctionStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            goto LABEL_4;
          case 5:
            type metadata accessor for PgQuery_CreateFunctionStmt(0);
            type metadata accessor for PgQuery_TypeName(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 6:
LABEL_4:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
        }
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 3)
      {
        goto LABEL_4;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateFunctionStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v20 - v9;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v12 = *(TypeName - 8);
  MEMORY[0x1EEE9AC00](TypeName, v13);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v5 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    if (*(v5 + 1) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      v20[1] = a1;
      v21 = v4;
      if (*(*(v5 + 8) + 16))
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        v17 = v21;
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v17)
        {
          return result;
        }

        v21 = 0;
      }

      if (*(*(v5 + 16) + 16))
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        v18 = v21;
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v18)
        {
          return result;
        }

        v21 = 0;
      }

      v20[0] = type metadata accessor for PgQuery_CreateFunctionStmt(0);
      outlined init with copy of PgQuery_Alias?(v5 + *(v20[0] + 40), v10, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      if ((*(v12 + 48))(v10, 1, TypeName) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
        v19 = v21;
      }

      else
      {
        outlined init with take of PgQuery_OidList(v10, v15, type metadata accessor for PgQuery_TypeName);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
        v19 = v21;
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_TypeName);
        if (v19)
        {
          return result;
        }
      }

      if (!*(*(v5 + 24) + 16))
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }

      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (!v19)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateFunctionStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = v4;
  *(a2 + 24) = v4;
  UnknownStorage.init()();
  v5 = *(a1 + 40);
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v7 = *(*(TypeName - 8) + 56);

  return v7(a2 + v5, 1, 1, TypeName);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateFunctionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFunctionStmt and conformance PgQuery_CreateFunctionStmt, type metadata accessor for PgQuery_CreateFunctionStmt, &protocol conformance descriptor for PgQuery_CreateFunctionStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateFunctionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFunctionStmt and conformance PgQuery_CreateFunctionStmt, type metadata accessor for PgQuery_CreateFunctionStmt, &protocol conformance descriptor for PgQuery_CreateFunctionStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateFunctionStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFunctionStmt and conformance PgQuery_CreateFunctionStmt, type metadata accessor for PgQuery_CreateFunctionStmt, &protocol conformance descriptor for PgQuery_CreateFunctionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterFunctionStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 2:
          type metadata accessor for PgQuery_AlterFunctionStmt(0);
          type metadata accessor for PgQuery_ObjectWithArgs(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 1:
          lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterFunctionStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v21 - v6;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v8 = *(ObjectWithArgs - 8);
  MEMORY[0x1EEE9AC00](ObjectWithArgs, v9);
  v22 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = v3;
  v13 = *(v3 + 8);
  destructiveProjectEnumData for StorableValue();
  if (v14)
  {
    v24 = v11;
    v25 = v13;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v15 = v26;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v15)
    {
      return result;
    }

    v26 = 0;
  }

  AlterFunctionStmt = type metadata accessor for PgQuery_AlterFunctionStmt(0);
  v18 = v12;
  outlined init with copy of PgQuery_Alias?(v12 + *(AlterFunctionStmt + 28), v7, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((*(v8 + 48))(v7, 1, ObjectWithArgs) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    v19 = v26;
  }

  else
  {
    v21[1] = AlterFunctionStmt;
    v20 = v22;
    outlined init with take of PgQuery_OidList(v7, v22, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);
    v19 = v26;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v19)
    {
      return result;
    }
  }

  if (!*(v18[2] + 16))
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  type metadata accessor for PgQuery_Node(0);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
  result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  if (!v19)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterFunctionStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v6 = *(*(ObjectWithArgs - 8) + 56);

  return v6(a2 + v4, 1, 1, ObjectWithArgs);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterFunctionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFunctionStmt and conformance PgQuery_AlterFunctionStmt, type metadata accessor for PgQuery_AlterFunctionStmt, &protocol conformance descriptor for PgQuery_AlterFunctionStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterFunctionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFunctionStmt and conformance PgQuery_AlterFunctionStmt, type metadata accessor for PgQuery_AlterFunctionStmt, &protocol conformance descriptor for PgQuery_AlterFunctionStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterFunctionStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFunctionStmt and conformance PgQuery_AlterFunctionStmt, type metadata accessor for PgQuery_AlterFunctionStmt, &protocol conformance descriptor for PgQuery_AlterFunctionStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DoStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DoStmt and conformance PgQuery_DoStmt, type metadata accessor for PgQuery_DoStmt, &protocol conformance descriptor for PgQuery_DoStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DoStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DoStmt and conformance PgQuery_DoStmt, type metadata accessor for PgQuery_DoStmt, &protocol conformance descriptor for PgQuery_DoStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DoStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DoStmt and conformance PgQuery_DoStmt, type metadata accessor for PgQuery_DoStmt, &protocol conformance descriptor for PgQuery_DoStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_RenameStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_RenameStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_RenameStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v6 & 1) == 0)
    {
      if (result > 4)
      {
        if (result > 6)
        {
          if (result == 7)
          {
            lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          }

          else if (result == 8)
          {
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          }
        }

        else
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
        }

        else
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        }

        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 1 || result == 2)
      {
        lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RenameStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v41 = &v38 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v40 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v38 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v14 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v19 = a1;
  v20 = *(a1 + 24);
  destructiveProjectEnumData for StorableValue();
  if (v21)
  {
    v44 = v18;
    v45 = v20;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v22 = v46;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v22)
    {
      return result;
    }

    v46 = 0;
  }

  v24 = *(v19 + 32);
  v25 = *(v19 + 40);
  destructiveProjectEnumData for StorableValue();
  if (v26)
  {
    v44 = v24;
    v45 = v25;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v27 = v46;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v27)
    {
      return result;
    }

    v46 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v19 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v14 + 48))(v13, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v17, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v28 = v46;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_RangeVar);
    if (v28)
    {
      return result;
    }

    v46 = 0;
  }

  v29 = v41;
  outlined init with copy of PgQuery_Alias?(v19 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v40 + 48))(v29, 1, Node) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v30 = v46;
  }

  else
  {
    v31 = v29;
    v32 = v39;
    outlined init with take of PgQuery_OidList(v31, v39, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v30 = v46;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_Node);
    if (v30)
    {
      return result;
    }
  }

  v33 = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname + 8);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname) & 0xFFFFFFFFFFFFLL;
  }

  if (!v34 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v30))
  {
    v35 = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname + 8);
    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname) & 0xFFFFFFFFFFFFLL;
    }

    if (!v36 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v30))
    {
      if (!*(v19 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior) || (v37 = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8), v44 = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior), v45 = v37, lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v30))
      {
        if (*(v19 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) == 1)
        {
          return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}
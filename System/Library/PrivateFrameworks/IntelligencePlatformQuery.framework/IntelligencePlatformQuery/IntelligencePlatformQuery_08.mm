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
  result = closure #1 in PgQuery_NextValueExpr.traverse<A>(visitor:)(*(v7 + *(v15 + 20)), a1, a2, a3, a5, a6, MEMORY[0x277D21848], a7);
  if (!v8)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RawStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RawStmt and conformance PgQuery_RawStmt, type metadata accessor for PgQuery_RawStmt, &protocol conformance descriptor for PgQuery_RawStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RawStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RawStmt and conformance PgQuery_RawStmt, type metadata accessor for PgQuery_RawStmt, &protocol conformance descriptor for PgQuery_RawStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v4 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cteList) = MEMORY[0x277D84F90];
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
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  return v0;
}

void type metadata completion function for PgQuery_Query._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_FromExpr?, type metadata accessor for PgQuery_FromExpr, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_OnConflictExpr?, type metadata accessor for PgQuery_OnConflictExpr, MEMORY[0x277D83D88]);
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
  MEMORY[0x28223BE20](v7 - 8);
  v100 = &v84 - v8;
  v101 = type metadata accessor for PgQuery_OnConflictExpr(0);
  v96 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v97 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v102 = &v84 - v11;
  v12 = type metadata accessor for PgQuery_FromExpr(0);
  v99 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v98 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v89 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v92 = &v84 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v93 = &v84 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v95 = &v84 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v84 - v23;
  Node = type metadata accessor for PgQuery_Node(0);
  v26 = *(Node - 8);
  v27 = MEMORY[0x28223BE20](Node);
  v88 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v90 = &v84 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v91 = &v84 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v94 = &v84 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v36 = a1;
  v38 = &v84 - v37;
  v39 = *(v36 + 16);
  v105 = v35;
  if (v39)
  {
    v40 = *(v36 + 24);
    v103 = v39;
    v104 = v40;
    v41 = v36;
    lazy protocol witness table accessor for type PgQuery_CmdType and conformance PgQuery_CmdType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
    v36 = v41;
    Node = v105;
  }

  if (*(v36 + 32))
  {
    v43 = *(v36 + 40);
    v103 = *(v36 + 32);
    v104 = v43;
    v44 = v36;
    lazy protocol witness table accessor for type PgQuery_QuerySource and conformance PgQuery_QuerySource();
    v45 = v5;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    v36 = v44;
    Node = v105;
  }

  else
  {
    v45 = v5;
  }

  v46 = *(v36 + 41);
  v87 = v36;
  if (v46 == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v45)
    {
      return result;
    }

    v47 = 0;
    v36 = v87;
  }

  else
  {
    v47 = v45;
  }

  outlined init with copy of PgQuery_Alias?(v36 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt, v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v85 = *(v26 + 48);
  v86 = v26 + 48;
  if (v85(v24, 1, Node) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v24, v38, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v47)
    {
      return outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_Node);
  }

  v48 = v87;
  if (*(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultRelation))
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v47)
    {
      return result;
    }

    v48 = v87;
  }

  v49 = v12;
  if (*(v48 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasAggs_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    v50 = v102;
    if (v47)
    {
      return result;
    }

    v48 = v87;
  }

  else
  {
    v50 = v102;
  }

  if (*(v48 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasWindowFuncs_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v47)
    {
      return result;
    }

    v48 = v87;
  }

  if (*(v48 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasTargetSrfs_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v47)
    {
      return result;
    }

    v48 = v87;
  }

  if (*(v48 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasSubLinks_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v47)
    {
      return result;
    }

    v48 = v87;
  }

  if (*(v48 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasDistinctOn_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v47)
    {
      return result;
    }

    v48 = v87;
  }

  if (*(v48 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRecursive_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v47)
    {
      return result;
    }

    v48 = v87;
  }

  if (*(v48 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasModifyingCte_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v47)
    {
      return result;
    }

    v48 = v87;
  }

  if (*(v48 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasForUpdate_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v47)
    {
      return result;
    }

    v48 = v87;
  }

  if (*(v48 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRowSecurity_p) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v47)
    {
      return result;
    }

    v48 = v87;
  }

  if (*(*(v48 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cteList) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v47)
    {
    }

    v48 = v87;
  }

  v102 = v47;
  if (*(*(v48 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtable) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v51 = v102;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v102 = v51;
    if (v51)
    {
    }

    v48 = v87;
  }

  outlined init with copy of PgQuery_Alias?(v48 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree, v50, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  if ((*(v99 + 48))(v50, 1, v49) == 1)
  {
    outlined destroy of URL?(v50, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
    v53 = v100;
    v52 = v101;
  }

  else
  {
    v54 = v50;
    v55 = v98;
    outlined init with take of PgQuery_OidList(v54, v98, type metadata accessor for PgQuery_FromExpr);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FromExpr and conformance PgQuery_FromExpr, type metadata accessor for PgQuery_FromExpr, &protocol conformance descriptor for PgQuery_FromExpr);
    v56 = v102;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v102 = v56;
    v53 = v100;
    v52 = v101;
    if (v56)
    {
      v57 = type metadata accessor for PgQuery_FromExpr;
      return outlined destroy of PgQuery_OidList(v55, v57);
    }

    outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_FromExpr);
  }

  v58 = v87;
  if (*(*(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v59 = v102;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v102 = v59;
    if (v59)
    {
    }

    v58 = v87;
  }

  v55 = v97;
  if (*(v58 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override))
  {
    v60 = *(v58 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override + 8);
    v103 = *(v58 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
    v104 = v60;
    lazy protocol witness table accessor for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind();
    v61 = v102;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v61)
    {
      return result;
    }

    v102 = 0;
    v58 = v87;
  }

  outlined init with copy of PgQuery_Alias?(v58 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict, v53, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  if ((*(v96 + 48))(v53, 1, v52) == 1)
  {
    outlined destroy of URL?(v53, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
    goto LABEL_72;
  }

  outlined init with take of PgQuery_OidList(v53, v55, type metadata accessor for PgQuery_OnConflictExpr);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr, &protocol conformance descriptor for PgQuery_OnConflictExpr);
  v62 = v102;
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  v102 = v62;
  if (v62)
  {
    v57 = type metadata accessor for PgQuery_OnConflictExpr;
    return outlined destroy of PgQuery_OidList(v55, v57);
  }

  outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_OnConflictExpr);
LABEL_72:
  v63 = v87;
  if (*(*(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v64 = v102;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v102 = v64;
    if (v64)
    {
    }

    v63 = v87;
  }

  if (*(*(v63 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v65 = v102;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v102 = v65;
    if (v65)
    {
    }
  }

  if (*(*(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupingSets) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v66 = v102;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v102 = v66;
    if (v66)
    {
    }
  }

  v67 = v95;
  outlined init with copy of PgQuery_Alias?(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual, v95, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v85(v67, 1, v105) == 1)
  {
    outlined destroy of URL?(v95, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v95, v94, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v68 = v102;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v102 = v68;
    if (v68)
    {
      return outlined destroy of PgQuery_OidList(v94, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v94, type metadata accessor for PgQuery_Node);
  }

  if (*(*(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v69 = v102;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v102 = v69;
    if (v69)
    {
    }
  }

  if (!*(*(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__distinctClause) + 16))
  {
    goto LABEL_92;
  }

  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

  v70 = v102;
  dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  v102 = v70;
  if (v70)
  {
  }

LABEL_92:
  if (*(*(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v71 = v102;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v102 = v71;
    if (v71)
    {
    }
  }

  v72 = v93;
  outlined init with copy of PgQuery_Alias?(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, v93, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v85(v72, 1, v105) == 1)
  {
    outlined destroy of URL?(v93, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v93, v91, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v73 = v102;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v102 = v73;
    if (v73)
    {
      return outlined destroy of PgQuery_OidList(v91, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v91, type metadata accessor for PgQuery_Node);
  }

  v74 = v92;
  outlined init with copy of PgQuery_Alias?(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, v92, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v85(v74, 1, v105) == 1)
  {
    outlined destroy of URL?(v92, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v92, v90, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v75 = v102;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v102 = v75;
    if (v75)
    {
      return outlined destroy of PgQuery_OidList(v90, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v90, type metadata accessor for PgQuery_Node);
  }

  if (!*(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption) || (v76 = *(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption + 8), v103 = *(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption), v104 = v76, lazy protocol witness table accessor for type PgQuery_LimitOption and conformance PgQuery_LimitOption(), v77 = v102, result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), (v102 = v77) == 0))
  {
    if (*(*(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowMarks) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

      v78 = v102;
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      v102 = v78;
      if (v78)
      {
      }
    }

    v79 = v89;
    outlined init with copy of PgQuery_Alias?(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations, v89, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v85(v79, 1, v105) == 1)
    {
      outlined destroy of URL?(v89, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v89, v88, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      v80 = v102;
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      v102 = v80;
      if (v80)
      {
        return outlined destroy of PgQuery_OidList(v88, type metadata accessor for PgQuery_Node);
      }

      outlined destroy of PgQuery_OidList(v88, type metadata accessor for PgQuery_Node);
    }

    if (*(*(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraintDeps) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

      v81 = v102;
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      v102 = v81;
      if (v81)
      {
      }
    }

    if (*(*(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOptions) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

      v82 = v102;
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      v102 = v82;
      if (v82)
      {
      }
    }

    if (!*(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation) || (v83 = v102, result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), (v102 = v83) == 0))
    {
      result = *(v87 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen);
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
  v210 = type metadata accessor for PgQuery_OnConflictExpr(0);
  v208 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v206 = &v189 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v209 = &v189 - v6;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_OnConflictExprVSg_ADtMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSg_ADtMR);
  MEMORY[0x28223BE20](v207);
  v211 = &v189 - v7;
  v216 = type metadata accessor for PgQuery_FromExpr(0);
  v214 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v212 = &v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v215 = &v189 - v10;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FromExprVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_FromExprVSg_ADtMR);
  MEMORY[0x28223BE20](v213);
  v217 = &v189 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = MEMORY[0x28223BE20](Node);
  v16 = &v189 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v189 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v204 = &v189 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v202 = &v189 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v189 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v189 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v205 = &v189 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v203 = &v189 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v201 = &v189 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v189 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v39 = MEMORY[0x28223BE20](v38);
  v40 = MEMORY[0x28223BE20](v39);
  v41 = MEMORY[0x28223BE20](v40);
  v42 = MEMORY[0x28223BE20](v41);
  v43 = MEMORY[0x28223BE20](v42);
  v49 = &v189 - v45;
  v50 = *(a1 + 16);
  v51 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v51 > 3)
    {
      if (v51 > 5)
      {
        if (v51 == 6)
        {
          if (v50 != 6)
          {
            return 0;
          }
        }

        else if (v50 != 7)
        {
          return 0;
        }
      }

      else if (v51 == 4)
      {
        if (v50 != 4)
        {
          return 0;
        }
      }

      else if (v50 != 5)
      {
        return 0;
      }
    }

    else if (v51 > 1)
    {
      if (v51 == 2)
      {
        if (v50 != 2)
        {
          return 0;
        }
      }

      else if (v50 != 3)
      {
        return 0;
      }
    }

    else if (v51)
    {
      if (v50 != 1)
      {
        return 0;
      }
    }

    else if (v50)
    {
      return 0;
    }
  }

  else if (v50 != v51)
  {
    return 0;
  }

  v52 = *(a1 + 32);
  v53 = *(a2 + 32);
  if (*(a2 + 40) != 1)
  {
    if (v52 == v53)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v53 > 2)
  {
    if (v53 == 3)
    {
      if (v52 != 3)
      {
        return 0;
      }
    }

    else if (v53 == 4)
    {
      if (v52 != 4)
      {
        return 0;
      }
    }

    else if (v52 != 5)
    {
      return 0;
    }
  }

  else if (v53)
  {
    if (v53 == 1)
    {
      if (v52 != 1)
      {
        return 0;
      }
    }

    else if (v52 != 2)
    {
      return 0;
    }
  }

  else if (v52)
  {
    return 0;
  }

LABEL_19:
  if (*(a1 + 41) != *(a2 + 41))
  {
    return 0;
  }

  v199 = v44;
  v192 = v48;
  v193 = v47;
  v194 = v19;
  v195 = v46;
  v196 = v29;
  v197 = v16;
  v198 = v43;
  v200 = a2;
  v54 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt;
  v55 = *(v43 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__utilityStmt, &v189 - v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v56 = v200 + v54;
  v57 = v200;
  outlined init with copy of PgQuery_Alias?(v56, &v49[v55], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v58 = *(v13 + 48);
  if (v58(v49, 1, Node) == 1)
  {
    v191 = Node;
    v190 = v58;
    v59 = v58(&v49[v55], 1, Node);

    v60 = a1;
    if (v59 == 1)
    {
      outlined destroy of URL?(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_56;
    }

    goto LABEL_43;
  }

  outlined init with copy of PgQuery_Alias?(v49, v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v58(&v49[v55], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_Node);
LABEL_43:
    v61 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v62 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_44:
    outlined destroy of URL?(v49, v61, v62);
    goto LABEL_66;
  }

  v190 = v58;
  outlined init with take of PgQuery_OidList(&v49[v55], v25, type metadata accessor for PgQuery_Node);
  v191 = Node;
  v63 = *(Node + 20);
  v64 = *&v37[v63];
  v65 = *&v25[v63];
  v60 = a1;

  if (v64 != v65)
  {

    v66 = closure #1 in static PgQuery_Node.== infix(_:_:)(v64, v65);

    if (!v66)
    {
      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_Node);
      v61 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v62 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_44;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v67 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v67 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_56:
  if (*(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultRelation) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultRelation))
  {
    goto LABEL_66;
  }

  if (*(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasAggs_p) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasAggs_p))
  {
    goto LABEL_66;
  }

  if (*(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasWindowFuncs_p) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasWindowFuncs_p))
  {
    goto LABEL_66;
  }

  if (*(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasTargetSrfs_p) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasTargetSrfs_p))
  {
    goto LABEL_66;
  }

  if (*(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasSubLinks_p) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasSubLinks_p))
  {
    goto LABEL_66;
  }

  if (*(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasDistinctOn_p) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasDistinctOn_p))
  {
    goto LABEL_66;
  }

  if (*(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRecursive_p) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRecursive_p))
  {
    goto LABEL_66;
  }

  if (*(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasModifyingCte_p) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasModifyingCte_p))
  {
    goto LABEL_66;
  }

  if (*(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasForUpdate_p) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasForUpdate_p))
  {
    goto LABEL_66;
  }

  if (*(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRowSecurity_p) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__hasRowSecurity_p))
  {
    goto LABEL_66;
  }

  v69 = *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cteList);
  v70 = *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cteList);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v69, v70);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_66;
  }

  v72 = *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtable);
  v73 = *(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtable);

  v74 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v72, v73);

  if ((v74 & 1) == 0)
  {
    goto LABEL_66;
  }

  v75 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree;
  v76 = *(v213 + 48);
  v77 = v217;
  outlined init with copy of PgQuery_Alias?(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointree, v217, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  outlined init with copy of PgQuery_Alias?(v200 + v75, v77 + v76, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  v78 = *(v214 + 48);
  if (v78(v77, 1, v216) == 1)
  {
    if (v78(v217 + v76, 1, v216) == 1)
    {
      outlined destroy of URL?(v217, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
      goto LABEL_82;
    }

    goto LABEL_76;
  }

  v79 = v217;
  outlined init with copy of PgQuery_Alias?(v217, v215, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  if (v78(v79 + v76, 1, v216) == 1)
  {
    outlined destroy of PgQuery_OidList(v215, type metadata accessor for PgQuery_FromExpr);
LABEL_76:
    v80 = &_s14BiomeSQLParser16PgQuery_FromExprVSg_ADtMd;
    v81 = &_s14BiomeSQLParser16PgQuery_FromExprVSg_ADtMR;
LABEL_77:
    v82 = v217;
LABEL_78:
    outlined destroy of URL?(v82, v80, v81);
    goto LABEL_66;
  }

  v83 = v212;
  outlined init with take of PgQuery_OidList(v217 + v76, v212, type metadata accessor for PgQuery_FromExpr);
  v84 = *(v216 + 20);
  v85 = *(v215 + v84);
  v86 = *(v83 + v84);
  if (v85 != v86)
  {

    v87 = closure #1 in static PgQuery_FromExpr.== infix(_:_:)(v85, v86);

    if ((v87 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v212, type metadata accessor for PgQuery_FromExpr);
      outlined destroy of PgQuery_OidList(v215, type metadata accessor for PgQuery_FromExpr);
      v80 = &_s14BiomeSQLParser16PgQuery_FromExprVSgMd;
      v81 = &_s14BiomeSQLParser16PgQuery_FromExprVSgMR;
      goto LABEL_77;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v88 = v215;
  v89 = v212;
  v90 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v89, type metadata accessor for PgQuery_FromExpr);
  outlined destroy of PgQuery_OidList(v88, type metadata accessor for PgQuery_FromExpr);
  outlined destroy of URL?(v217, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  if ((v90 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_82:
  v91 = *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);
  v92 = *(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  v93 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v91, v92);

  if ((v93 & 1) == 0)
  {
    goto LABEL_66;
  }

  v94 = *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
  v95 = *(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
  if (*(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override + 8) == 1)
  {
    if (v95 > 1)
    {
      if (v95 == 2)
      {
        if (v94 != 2)
        {
          goto LABEL_66;
        }
      }

      else if (v94 != 3)
      {
        goto LABEL_66;
      }
    }

    else if (v95)
    {
      if (v94 != 1)
      {
        goto LABEL_66;
      }
    }

    else if (v94)
    {
      goto LABEL_66;
    }
  }

  else if (v94 != v95)
  {
    goto LABEL_66;
  }

  v96 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict;
  v97 = *(v207 + 48);
  v98 = v211;
  outlined init with copy of PgQuery_Alias?(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflict, v211, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  outlined init with copy of PgQuery_Alias?(v200 + v96, v98 + v97, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  v99 = *(v208 + 48);
  if (v99(v98, 1, v210) == 1)
  {
    if (v99(v211 + v97, 1, v210) == 1)
    {
      outlined destroy of URL?(v211, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
      goto LABEL_107;
    }

    goto LABEL_98;
  }

  v100 = v211;
  outlined init with copy of PgQuery_Alias?(v211, v209, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  if (v99(v100 + v97, 1, v210) == 1)
  {
    outlined destroy of PgQuery_OidList(v209, type metadata accessor for PgQuery_OnConflictExpr);
LABEL_98:
    v80 = &_s14BiomeSQLParser22PgQuery_OnConflictExprVSg_ADtMd;
    v81 = &_s14BiomeSQLParser22PgQuery_OnConflictExprVSg_ADtMR;
LABEL_99:
    v82 = v211;
    goto LABEL_78;
  }

  v101 = v206;
  outlined init with take of PgQuery_OidList(v211 + v97, v206, type metadata accessor for PgQuery_OnConflictExpr);
  v102 = *(v210 + 20);
  v103 = *(v209 + v102);
  v104 = *(v101 + v102);
  if (v103 != v104)
  {

    v105 = closure #1 in static PgQuery_OnConflictExpr.== infix(_:_:)(v103, v104);

    if ((v105 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v206, type metadata accessor for PgQuery_OnConflictExpr);
      outlined destroy of PgQuery_OidList(v209, type metadata accessor for PgQuery_OnConflictExpr);
      v80 = &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd;
      v81 = &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR;
      goto LABEL_99;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v106 = v209;
  v107 = v206;
  v108 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v107, type metadata accessor for PgQuery_OnConflictExpr);
  outlined destroy of PgQuery_OidList(v106, type metadata accessor for PgQuery_OnConflictExpr);
  outlined destroy of URL?(v211, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  if ((v108 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_107:
  v109 = *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);
  v110 = *(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  v111 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v109, v110);

  if ((v111 & 1) == 0)
  {
    goto LABEL_66;
  }

  v112 = *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);
  v113 = *(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);

  v114 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v112, v113);

  if ((v114 & 1) == 0)
  {
    goto LABEL_66;
  }

  v115 = *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupingSets);
  v116 = *(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupingSets);

  v117 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v115, v116);

  if ((v117 & 1) == 0)
  {
    goto LABEL_66;
  }

  v118 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual;
  v119 = v199;
  v120 = *(v198 + 48);
  outlined init with copy of PgQuery_Alias?(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingQual, v199, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v200 + v118, v119 + v120, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v190(v119, 1, v191) == 1)
  {
    if (v190(v199 + v120, 1, v191) == 1)
    {
      outlined destroy of URL?(v199, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_121;
    }

    goto LABEL_116;
  }

  v121 = v199;
  outlined init with copy of PgQuery_Alias?(v199, v201, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v190(v121 + v120, 1, v191) == 1)
  {
    outlined destroy of PgQuery_OidList(v201, type metadata accessor for PgQuery_Node);
LABEL_116:
    v80 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v81 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_117:
    v82 = v199;
    goto LABEL_78;
  }

  v122 = v202;
  outlined init with take of PgQuery_OidList(v199 + v120, v202, type metadata accessor for PgQuery_Node);
  v123 = *(v191 + 20);
  v124 = *(v201 + v123);
  v125 = *(v122 + v123);
  if (v124 != v125)
  {

    v126 = closure #1 in static PgQuery_Node.== infix(_:_:)(v124, v125);

    if (!v126)
    {
      outlined destroy of PgQuery_OidList(v202, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v201, type metadata accessor for PgQuery_Node);
      v80 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v81 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_117;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v128 = v201;
  v127 = v202;
  v129 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v127, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v128, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v199, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v129 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_121:
  v130 = *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);
  v131 = *(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);

  v132 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v130, v131);

  if ((v132 & 1) == 0)
  {
    goto LABEL_66;
  }

  v133 = *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__distinctClause);
  v134 = *(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__distinctClause);

  v135 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v133, v134);

  if ((v135 & 1) == 0)
  {
    goto LABEL_66;
  }

  v136 = *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);
  v137 = *(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);

  v138 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v136, v137);

  if ((v138 & 1) == 0)
  {
    goto LABEL_66;
  }

  v139 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset;
  v140 = *(v198 + 48);
  v141 = v192;
  outlined init with copy of PgQuery_Alias?(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, v192, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v200 + v139, v141 + v140, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v190(v141, 1, v191) == 1)
  {
    if (v190(v192 + v140, 1, v191) == 1)
    {
      outlined destroy of URL?(v192, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_134;
    }

LABEL_130:
    v80 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v81 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v143 = &v218;
LABEL_150:
    v82 = *(v143 - 32);
    goto LABEL_78;
  }

  v142 = v192;
  outlined init with copy of PgQuery_Alias?(v192, v203, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v190(v142 + v140, 1, v191) == 1)
  {
    outlined destroy of PgQuery_OidList(v203, type metadata accessor for PgQuery_Node);
    goto LABEL_130;
  }

  v144 = v204;
  outlined init with take of PgQuery_OidList(v192 + v140, v204, type metadata accessor for PgQuery_Node);
  v145 = *(v191 + 20);
  v146 = *(v203 + v145);
  v147 = *(v144 + v145);
  if (v146 != v147)
  {

    v148 = closure #1 in static PgQuery_Node.== infix(_:_:)(v146, v147);

    if (!v148)
    {
      outlined destroy of PgQuery_OidList(v204, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v203, type metadata accessor for PgQuery_Node);
      v80 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v81 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v143 = &v218;
      goto LABEL_150;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v150 = v203;
  v149 = v204;
  v151 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v149, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v150, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v192, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v151 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_134:
  v152 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount;
  v153 = *(v198 + 48);
  v154 = v193;
  outlined init with copy of PgQuery_Alias?(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, v193, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v200 + v152, v154 + v153, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v190(v154, 1, v191) == 1)
  {
    if (v190(v193 + v153, 1, v191) == 1)
    {
      outlined destroy of URL?(v193, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_144;
    }

    goto LABEL_139;
  }

  v155 = v193;
  outlined init with copy of PgQuery_Alias?(v193, v205, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v190(v155 + v153, 1, v191) == 1)
  {
    outlined destroy of PgQuery_OidList(v205, type metadata accessor for PgQuery_Node);
LABEL_139:
    v80 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v81 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_140:
    v143 = &v219;
    goto LABEL_150;
  }

  v156 = v194;
  outlined init with take of PgQuery_OidList(v193 + v153, v194, type metadata accessor for PgQuery_Node);
  v157 = *(v191 + 20);
  v158 = *(v205 + v157);
  v159 = *(v156 + v157);
  if (v158 != v159)
  {

    v160 = closure #1 in static PgQuery_Node.== infix(_:_:)(v158, v159);

    if (!v160)
    {
      outlined destroy of PgQuery_OidList(v194, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v205, type metadata accessor for PgQuery_Node);
      v80 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v81 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_140;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v161 = v205;
  v162 = v194;
  v163 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v162, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v161, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v193, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v163 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_144:
  v164 = *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption);
  v165 = *(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption);
  if (*(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption + 8) == 1)
  {
    if (v165 > 1)
    {
      if (v165 == 2)
      {
        if (v164 != 2)
        {
          goto LABEL_66;
        }
      }

      else if (v164 != 3)
      {
        goto LABEL_66;
      }
    }

    else if (v165)
    {
      if (v164 != 1)
      {
        goto LABEL_66;
      }
    }

    else if (v164)
    {
      goto LABEL_66;
    }
  }

  else if (v164 != v165)
  {
    goto LABEL_66;
  }

  v166 = *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowMarks);
  v167 = *(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowMarks);

  v168 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v166, v167);

  if ((v168 & 1) == 0)
  {
    goto LABEL_66;
  }

  v169 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations;
  v170 = *(v198 + 48);
  v171 = v195;
  outlined init with copy of PgQuery_Alias?(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__setOperations, v195, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v200 + v169, v171 + v170, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v190(v171, 1, v191) != 1)
  {
    v172 = v195;
    outlined init with copy of PgQuery_Alias?(v195, v196, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v190(v172 + v170, 1, v191) == 1)
    {
      outlined destroy of PgQuery_OidList(v196, type metadata accessor for PgQuery_Node);
      goto LABEL_166;
    }

    v173 = v197;
    outlined init with take of PgQuery_OidList(v195 + v170, v197, type metadata accessor for PgQuery_Node);
    v174 = *(v191 + 20);
    v175 = *&v196[v174];
    v176 = *(v173 + v174);
    if (v175 != v176)
    {

      v177 = closure #1 in static PgQuery_Node.== infix(_:_:)(v175, v176);

      if (!v177)
      {
        outlined destroy of PgQuery_OidList(v197, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v196, type metadata accessor for PgQuery_Node);
        v80 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v81 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        v143 = &v220;
        goto LABEL_150;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v178 = v196;
    v179 = v197;
    v180 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v179, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v178, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(v195, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v180)
    {
      goto LABEL_170;
    }

LABEL_66:

    return 0;
  }

  if (v190(v195 + v170, 1, v191) != 1)
  {
LABEL_166:
    v80 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v81 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v143 = &v220;
    goto LABEL_150;
  }

  outlined destroy of URL?(v195, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_170:
  v181 = *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraintDeps);
  v182 = *(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraintDeps);

  v183 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v181, v182);

  if ((v183 & 1) == 0)
  {
    goto LABEL_66;
  }

  v184 = *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOptions);
  v185 = *(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOptions);

  v186 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v184, v185);

  if ((v186 & 1) == 0 || *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation) != *(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation))
  {
    goto LABEL_66;
  }

  v187 = *(v60 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen);

  v188 = *(v200 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_QueryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen);

  return v187 == v188;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_Query(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query, &protocol conformance descriptor for PgQuery_Query);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_Query(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query, &protocol conformance descriptor for PgQuery_Query);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_Query(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query, &protocol conformance descriptor for PgQuery_Query);

  return Message.hash(into:)();
}

uint64_t PgQuery_InsertStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectStmt, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictClause, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_InsertStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_OnConflictClause?, type metadata accessor for PgQuery_OnConflictClause, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_WithClause?, type metadata accessor for PgQuery_WithClause, MEMORY[0x277D83D88]);
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
  v52 = a3;
  v55 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v39 - v6;
  v7 = type metadata accessor for PgQuery_WithClause(0);
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v39 - v10;
  v48 = type metadata accessor for PgQuery_OnConflictClause(0);
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v47 = &v39 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v46 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v43 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v39 - v16;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v19 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v19 + 48))(v17, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v23 = v51;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v17, v21, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v24 = v51;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v23 = v24;
    result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_RangeVar);
    if (v24)
    {
      return result;
    }
  }

  v26 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols);
  v28 = v49;
  v27 = Node;
  if (!*(v26 + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v23))
  {
    v29 = v47;
    outlined init with copy of PgQuery_Alias?(v22 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectStmt, v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v30 = (*(v46 + 48))(v29, 1, v27);
    v31 = v48;
    if (v30 == 1)
    {
      outlined destroy of URL?(v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      v32 = v29;
      v33 = v43;
      outlined init with take of PgQuery_OidList(v32, v43, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_Node);
      if (v23)
      {
        return result;
      }
    }

    outlined init with copy of PgQuery_Alias?(v22 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictClause, v28, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
    if ((*(v45 + 48))(v28, 1, v31) == 1)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
    }

    else
    {
      v34 = v28;
      v35 = v42;
      outlined init with take of PgQuery_OidList(v34, v42, type metadata accessor for PgQuery_OnConflictClause);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictClause and conformance PgQuery_OnConflictClause, type metadata accessor for PgQuery_OnConflictClause, &protocol conformance descriptor for PgQuery_OnConflictClause);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_OnConflictClause);
      if (v23)
      {
        return result;
      }
    }

    if (!*(*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v23))
    {
      v36 = v44;
      outlined init with copy of PgQuery_Alias?(v22 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v44, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      if ((*(v40 + 48))(v36, 1, v41) == 1)
      {
        result = outlined destroy of URL?(v44, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      }

      else
      {
        v37 = v39;
        outlined init with take of PgQuery_OidList(v44, v39, type metadata accessor for PgQuery_WithClause);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause, &protocol conformance descriptor for PgQuery_WithClause);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_WithClause);
        if (v23)
        {
          return result;
        }
      }

      if (*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override))
      {
        v38 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override + 8);
        v53 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
        v54 = v38;
        lazy protocol witness table accessor for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind();
        return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_InsertStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v106 = a2;
  v3 = type metadata accessor for PgQuery_WithClause(0);
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x28223BE20](v3);
  v88 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v89 = &v88 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR);
  MEMORY[0x28223BE20](v90);
  v93 = &v88 - v7;
  v8 = type metadata accessor for PgQuery_OnConflictClause(0);
  v98 = *(v8 - 8);
  v99 = v8;
  MEMORY[0x28223BE20](v8);
  v94 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v96 = &v88 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_OnConflictClauseVSg_ADtMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSg_ADtMR);
  MEMORY[0x28223BE20](v97);
  v100 = &v88 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v103 = *(Node - 8);
  v104 = Node;
  MEMORY[0x28223BE20](Node);
  v95 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v101 = &v88 - v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v102);
  v105 = &v88 - v17;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v19 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v88 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v88 - v27;
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v30 = *(v26 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v88 - v27, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v31 = v106 + v29;
  v32 = v106;
  outlined init with copy of PgQuery_Alias?(v31, &v28[v30], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v33 = *(v19 + 48);
  if (v33(v28, 1, RangeVar) == 1)
  {
    v34 = v33(&v28[v30], 1, RangeVar);

    if (v34 == 1)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    v35 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v36 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_7:
    v37 = v28;
LABEL_8:
    outlined destroy of URL?(v37, v35, v36);
LABEL_48:

    return 0;
  }

  outlined init with copy of PgQuery_Alias?(v28, v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v33(&v28[v30], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  outlined init with take of PgQuery_OidList(&v28[v30], v21, type metadata accessor for PgQuery_RangeVar);

  v38 = specialized static PgQuery_RangeVar.== infix(_:_:)(v24, v21);
  outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v38 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_10:
  v39 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols);
  v40 = *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v39, v40);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_48;
  }

  v42 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectStmt;
  v43 = *(v102 + 48);
  v28 = v105;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectStmt, v105, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v32 + v42, &v28[v43], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v44 = v104;
  v45 = *(v103 + 48);
  if (v45(v28, 1, v104) == 1)
  {
    if (v45(&v28[v43], 1, v44) == 1)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v46 = v101;
  outlined init with copy of PgQuery_Alias?(v28, v101, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v45(&v28[v43], 1, v44) == 1)
  {
    outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
LABEL_16:
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v47 = &v28[v43];
  v48 = v95;
  outlined init with take of PgQuery_OidList(v47, v95, type metadata accessor for PgQuery_Node);
  v49 = *(v44 + 20);
  v50 = *(v46 + v49);
  v51 = *(v48 + v49);
  if (v50 != v51)
  {

    v52 = closure #1 in static PgQuery_Node.== infix(_:_:)(v50, v51);

    if (!v52)
    {
      outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v53 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_20:
  v54 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictClause;
  v55 = *(v97 + 48);
  v56 = v100;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictClause, v100, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  v57 = v32 + v54;
  v58 = v56;
  outlined init with copy of PgQuery_Alias?(v57, v56 + v55, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  v59 = *(v98 + 48);
  v60 = v56;
  v61 = v99;
  if (v59(v60, 1, v99) == 1)
  {
    if (v59(v58 + v55, 1, v61) == 1)
    {
      outlined destroy of URL?(v58, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
      goto LABEL_30;
    }

LABEL_25:
    v35 = &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSg_ADtMd;
    v36 = &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSg_ADtMR;
LABEL_26:
    v37 = v58;
    goto LABEL_8;
  }

  v62 = v96;
  outlined init with copy of PgQuery_Alias?(v58, v96, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  if (v59(v58 + v55, 1, v61) == 1)
  {
    outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_OnConflictClause);
    goto LABEL_25;
  }

  v63 = v61;
  v64 = v94;
  outlined init with take of PgQuery_OidList(v58 + v55, v94, type metadata accessor for PgQuery_OnConflictClause);
  v65 = *(v63 + 20);
  v66 = *(v62 + v65);
  v67 = *(v64 + v65);
  if (v66 != v67)
  {

    v68 = closure #1 in static PgQuery_OnConflictClause.== infix(_:_:)(v66, v67);

    if (!v68)
    {
      outlined destroy of PgQuery_OidList(v64, type metadata accessor for PgQuery_OnConflictClause);
      outlined destroy of PgQuery_OidList(v96, type metadata accessor for PgQuery_OnConflictClause);
      v35 = &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd;
      v36 = &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR;
      goto LABEL_26;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v69 = v96;
  v70 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v64, type metadata accessor for PgQuery_OnConflictClause);
  outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_OnConflictClause);
  outlined destroy of URL?(v58, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMd, &_s14BiomeSQLParser24PgQuery_OnConflictClauseVSgMR);
  if ((v70 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_30:
  v71 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);
  v72 = *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  v73 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v71, v72);

  if ((v73 & 1) == 0)
  {
    goto LABEL_48;
  }

  v74 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v75 = *(v90 + 48);
  v76 = v93;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v93, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v77 = v32 + v74;
  v58 = v76;
  outlined init with copy of PgQuery_Alias?(v77, v76 + v75, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v78 = v92;
  v79 = *(v91 + 48);
  if (v79(v76, 1, v92) == 1)
  {
    if (v79(v76 + v75, 1, v78) == 1)
    {
      outlined destroy of URL?(v76, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      goto LABEL_34;
    }

    goto LABEL_42;
  }

  v83 = v89;
  outlined init with copy of PgQuery_Alias?(v58, v89, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if (v79(v58 + v75, 1, v78) == 1)
  {
    outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_WithClause);
LABEL_42:
    v35 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd;
    v36 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR;
    goto LABEL_26;
  }

  v84 = v58 + v75;
  v85 = v88;
  outlined init with take of PgQuery_OidList(v84, v88, type metadata accessor for PgQuery_WithClause);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v83, *v85) & 1) == 0 || *(v83 + 8) != *(v85 + 8) || *(v83 + 12) != *(v85 + 12))
  {
    outlined destroy of PgQuery_OidList(v85, type metadata accessor for PgQuery_WithClause);
    outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_WithClause);
    v35 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd;
    v36 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR;
    goto LABEL_26;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v86 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v85, type metadata accessor for PgQuery_WithClause);
  outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_WithClause);
  outlined destroy of URL?(v58, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if ((v86 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_34:
  v80 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);

  v81 = *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override);
  v82 = *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override + 8);

  if (v82 == 1)
  {
    if (v81 > 1)
    {
      if (v81 == 2)
      {
        if (v80 == 2)
        {
          return 1;
        }
      }

      else if (v80 == 3)
      {
        return 1;
      }
    }

    else if (v81)
    {
      if (v80 == 1)
      {
        return 1;
      }
    }

    else if (!v80)
    {
      return 1;
    }

    return 0;
  }

  return v80 == v81;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_InsertStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InsertStmt and conformance PgQuery_InsertStmt, type metadata accessor for PgQuery_InsertStmt, &protocol conformance descriptor for PgQuery_InsertStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_InsertStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InsertStmt and conformance PgQuery_InsertStmt, type metadata accessor for PgQuery_InsertStmt, &protocol conformance descriptor for PgQuery_InsertStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_InsertStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InsertStmt and conformance PgQuery_InsertStmt, type metadata accessor for PgQuery_InsertStmt, &protocol conformance descriptor for PgQuery_InsertStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DeleteStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v6, 1, 1, RangeVar);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause;
  v9 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause) = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v10, 1, 1, Node);
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) = v9;
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v14 = type metadata accessor for PgQuery_WithClause(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v6, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v1 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v5, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);

  outlined assign with take of PgQuery_Node?(v5, v1 + v13, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  return v1;
}

uint64_t PgQuery_DeleteStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_DeleteStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_WithClause?, type metadata accessor for PgQuery_WithClause, MEMORY[0x277D83D88]);
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
  v38 = a3;
  v39 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = &v29 - v6;
  v7 = type metadata accessor for PgQuery_WithClause(0);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v35 = &v29 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v34 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v32 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v16 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v14, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v16 + 48))(v14, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v19 = v37;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v18, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v20 = v37;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v19 = v20;
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    if (v20)
    {
      return result;
    }
  }

  v22 = Node;
  if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v19))
  {
    v23 = v35;
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v34 + 48))(v23, 1, v22) == 1)
    {
      outlined destroy of URL?(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      v24 = v23;
      v25 = v32;
      outlined init with take of PgQuery_OidList(v24, v32, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      if (v19)
      {
        return result;
      }
    }

    v26 = v33;
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v19))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v26, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      if ((*(v30 + 48))(v26, 1, v31) == 1)
      {
        return outlined destroy of URL?(v26, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      }

      else
      {
        v27 = v26;
        v28 = v29;
        outlined init with take of PgQuery_OidList(v27, v29, type metadata accessor for PgQuery_WithClause);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause, &protocol conformance descriptor for PgQuery_WithClause);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        return outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_WithClause);
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_DeleteStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v3 = type metadata accessor for PgQuery_WithClause(0);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  v68 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v67 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR);
  MEMORY[0x28223BE20](v70);
  v73 = &v67 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v77 = *(Node - 8);
  v78 = Node;
  MEMORY[0x28223BE20](Node);
  v74 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = &v67 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v76);
  v79 = &v67 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v14 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v67 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v67 - v22;
  v24 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v25 = *(v21 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v67 - v22, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v26 = v80 + v24;
  v27 = v80;
  outlined init with copy of PgQuery_Alias?(v26, &v23[v25], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v28 = *(v14 + 48);
  if (v28(v23, 1, RangeVar) == 1)
  {
    v29 = v28(&v23[v25], 1, RangeVar);

    if (v29 == 1)
    {
      outlined destroy of URL?(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v30 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v31 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v32 = v23;
LABEL_7:
    outlined destroy of URL?(v32, v30, v31);
LABEL_25:

    return 0;
  }

  outlined init with copy of PgQuery_Alias?(v23, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v28(&v23[v25], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  outlined init with take of PgQuery_OidList(&v23[v25], v16, type metadata accessor for PgQuery_RangeVar);

  v33 = specialized static PgQuery_RangeVar.== infix(_:_:)(v19, v16);
  outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v33 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);
  v35 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v34, v35);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_25;
  }

  v37 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v38 = *(v76 + 48);
  v39 = v79;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v79, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v27 + v37, v39 + v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v40 = v78;
  v41 = *(v77 + 48);
  if (v41(v39, 1, v78) == 1)
  {
    if (v41(v39 + v38, 1, v40) == 1)
    {
      outlined destroy of URL?(v39, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v42 = v75;
  outlined init with copy of PgQuery_Alias?(v39, v75, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v41(v39 + v38, 1, v40) == 1)
  {
    outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
LABEL_15:
    v30 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    v32 = v39;
    goto LABEL_7;
  }

  v43 = v39 + v38;
  v44 = v74;
  outlined init with take of PgQuery_OidList(v43, v74, type metadata accessor for PgQuery_Node);
  v45 = *(v40 + 20);
  v46 = *(v42 + v45);
  v47 = *(v44 + v45);
  if (v46 != v47)
  {

    v48 = closure #1 in static PgQuery_Node.== infix(_:_:)(v46, v47);

    if (!v48)
    {
      outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
      v30 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v31 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v39, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v49 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  v50 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);
  v51 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  v52 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v50, v51);

  if ((v52 & 1) == 0)
  {
    goto LABEL_25;
  }

  v53 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v54 = *(v70 + 48);
  v55 = v73;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v73, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v56 = v27 + v53;
  v57 = v55;
  outlined init with copy of PgQuery_Alias?(v56, v55 + v54, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v58 = v72;
  v59 = *(v71 + 48);
  if (v59(v55, 1, v72) == 1)
  {

    if (v59(v55 + v54, 1, v58) == 1)
    {
      outlined destroy of URL?(v55, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      return 1;
    }

    goto LABEL_30;
  }

  v61 = v69;
  outlined init with copy of PgQuery_Alias?(v57, v69, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if (v59(v57 + v54, 1, v58) == 1)
  {

    outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_WithClause);
LABEL_30:
    v62 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd;
    v63 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR;
LABEL_38:
    outlined destroy of URL?(v57, v62, v63);
    return 0;
  }

  v64 = v57 + v54;
  v65 = v68;
  outlined init with take of PgQuery_OidList(v64, v68, type metadata accessor for PgQuery_WithClause);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v61, *v65) & 1) == 0 || *(v61 + 8) != *(v65 + 8) || *(v61 + 12) != *(v65 + 12))
  {

    outlined destroy of PgQuery_OidList(v65, type metadata accessor for PgQuery_WithClause);
    outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_WithClause);
    v62 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd;
    v63 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR;
    goto LABEL_38;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v66 = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined destroy of PgQuery_OidList(v65, type metadata accessor for PgQuery_WithClause);
  outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_WithClause);
  outlined destroy of URL?(v57, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  return (v66 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DeleteStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeleteStmt and conformance PgQuery_DeleteStmt, type metadata accessor for PgQuery_DeleteStmt, &protocol conformance descriptor for PgQuery_DeleteStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DeleteStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeleteStmt and conformance PgQuery_DeleteStmt, type metadata accessor for PgQuery_DeleteStmt, &protocol conformance descriptor for PgQuery_DeleteStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DeleteStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeleteStmt and conformance PgQuery_DeleteStmt, type metadata accessor for PgQuery_DeleteStmt, &protocol conformance descriptor for PgQuery_DeleteStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_UpdateStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v6, 1, 1, RangeVar);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList;
  v9 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v10, 1, 1, Node);
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause) = v9;
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) = v9;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v15 = type metadata accessor for PgQuery_WithClause(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v6, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v1 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);

  *(v1 + v13) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v5, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);

  outlined assign with take of PgQuery_Node?(v5, v1 + v14, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  return v1;
}

uint64_t PgQuery_UpdateStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_UpdateStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_WithClause?, type metadata accessor for PgQuery_WithClause, MEMORY[0x277D83D88]);
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
  v38 = a3;
  v39 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = &v29 - v6;
  v7 = type metadata accessor for PgQuery_WithClause(0);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v35 = &v29 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v34 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v32 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v16 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v14, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v16 + 48))(v14, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v19 = v37;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v18, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v20 = v37;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v19 = v20;
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    if (v20)
    {
      return result;
    }
  }

  v22 = Node;
  if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v19))
  {
    v23 = v35;
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v34 + 48))(v23, 1, v22) == 1)
    {
      outlined destroy of URL?(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      v24 = v23;
      v25 = v32;
      outlined init with take of PgQuery_OidList(v24, v32, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      if (v19)
      {
        return result;
      }
    }

    v26 = v33;
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v19))
    {
      if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v19))
      {
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v26, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
        if ((*(v30 + 48))(v26, 1, v31) == 1)
        {
          return outlined destroy of URL?(v26, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
        }

        else
        {
          v27 = v26;
          v28 = v29;
          outlined init with take of PgQuery_OidList(v27, v29, type metadata accessor for PgQuery_WithClause);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause, &protocol conformance descriptor for PgQuery_WithClause);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          return outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_WithClause);
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_UpdateStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v3 = type metadata accessor for PgQuery_WithClause(0);
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x28223BE20](v3);
  v70 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v69 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR);
  MEMORY[0x28223BE20](v72);
  v75 = &v69 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v79 = *(Node - 8);
  v80 = Node;
  MEMORY[0x28223BE20](Node);
  v76 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v77 = &v69 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v78);
  v81 = &v69 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v14 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v69 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v69 - v22;
  v24 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v25 = *(v21 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v69 - v22, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v26 = v82 + v24;
  v27 = v82;
  outlined init with copy of PgQuery_Alias?(v26, &v23[v25], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v28 = *(v14 + 48);
  if (v28(v23, 1, RangeVar) == 1)
  {
    v29 = v28(&v23[v25], 1, RangeVar);

    v30 = a1;
    if (v29 == 1)
    {
      outlined destroy of URL?(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v31 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v32 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    goto LABEL_7;
  }

  outlined init with copy of PgQuery_Alias?(v23, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v28(&v23[v25], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  outlined init with take of PgQuery_OidList(&v23[v25], v16, type metadata accessor for PgQuery_RangeVar);
  v30 = a1;

  v33 = specialized static PgQuery_RangeVar.== infix(_:_:)(v19, v16);
  outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v33 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  v34 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);
  v35 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v34, v35);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_25;
  }

  v37 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v38 = *(v78 + 48);
  v23 = v81;
  outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v81, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v27 + v37, &v23[v38], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v39 = v80;
  v40 = *(v79 + 48);
  if (v40(v23, 1, v80) != 1)
  {
    v41 = v77;
    outlined init with copy of PgQuery_Alias?(v23, v77, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v40(&v23[v38], 1, v39) == 1)
    {
      outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
      goto LABEL_15;
    }

    v42 = &v23[v38];
    v43 = v76;
    outlined init with take of PgQuery_OidList(v42, v76, type metadata accessor for PgQuery_Node);
    v44 = *(v39 + 20);
    v45 = *(v41 + v44);
    v46 = *(v43 + v44);
    if (v45 == v46 || (, , v47 = closure #1 in static PgQuery_Node.== infix(_:_:)(v45, v46), , , v47))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
      outlined destroy of URL?(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v48)
      {
        goto LABEL_19;
      }

LABEL_25:

      return 0;
    }

    outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
    outlined destroy of URL?(v23, v31, v32);
    goto LABEL_25;
  }

  if (v40(&v23[v38], 1, v39) != 1)
  {
LABEL_15:
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  outlined destroy of URL?(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_19:
  v49 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);
  v50 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);

  v51 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v49, v50);

  if ((v51 & 1) == 0)
  {
    goto LABEL_25;
  }

  v52 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);
  v53 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList);

  v54 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v52, v53);

  if ((v54 & 1) == 0)
  {
    goto LABEL_25;
  }

  v55 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v56 = *(v72 + 48);
  v57 = v75;
  outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v75, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v58 = v27 + v55;
  v59 = v57;
  outlined init with copy of PgQuery_Alias?(v58, v57 + v56, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v60 = v74;
  v61 = *(v73 + 48);
  if (v61(v57, 1, v74) == 1)
  {

    if (v61(v57 + v56, 1, v60) == 1)
    {
      outlined destroy of URL?(v57, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      return 1;
    }

    goto LABEL_31;
  }

  v63 = v71;
  outlined init with copy of PgQuery_Alias?(v59, v71, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if (v61(v59 + v56, 1, v60) == 1)
  {

    outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_WithClause);
LABEL_31:
    v64 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd;
    v65 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR;
LABEL_38:
    outlined destroy of URL?(v59, v64, v65);
    return 0;
  }

  v66 = v59 + v56;
  v67 = v70;
  outlined init with take of PgQuery_OidList(v66, v70, type metadata accessor for PgQuery_WithClause);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v63, *v67) & 1) == 0 || *(v63 + 8) != *(v67 + 8) || *(v63 + 12) != *(v67 + 12))
  {

    outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_WithClause);
    outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_WithClause);
    v64 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd;
    v65 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR;
    goto LABEL_38;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v68 = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_WithClause);
  outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_WithClause);
  outlined destroy of URL?(v59, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  return (v68 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_UpdateStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UpdateStmt and conformance PgQuery_UpdateStmt, type metadata accessor for PgQuery_UpdateStmt, &protocol conformance descriptor for PgQuery_UpdateStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_UpdateStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UpdateStmt and conformance PgQuery_UpdateStmt, type metadata accessor for PgQuery_UpdateStmt, &protocol conformance descriptor for PgQuery_UpdateStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_UpdateStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UpdateStmt and conformance PgQuery_UpdateStmt, type metadata accessor for PgQuery_UpdateStmt, &protocol conformance descriptor for PgQuery_UpdateStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_SelectStmt._StorageClass.init()()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
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
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v25 - v4;
  v5 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  (*(*(IntoClause - 8) + 56))(v1 + v6, 1, 1, IntoClause);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) = v5;
  v27 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause) = v5;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(*(Node - 8) + 56);
  v11(v1 + v9, 1, 1, Node);
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause) = v5;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause;
  v11(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, 1, 1, Node);
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause) = v5;
  v31 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists) = v5;
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause) = v5;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset;
  v11(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, 1, 1, Node);
  v37 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount;
  v11(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, 1, 1, Node);
  v13 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption;
  *v13 = 0;
  *(v13 + 8) = 1;
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause) = v5;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v38 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v15 = type metadata accessor for PgQuery_WithClause(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op;
  *v16 = 0;
  *(v16 + 8) = 1;
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all) = 0;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  v32 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  v19 = *(*(SelectStmt - 8) + 56);
  v19(v1 + v17, 1, 1, SelectStmt);
  v34 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg;
  v19(v1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, 1, 1, SelectStmt);
  *(v1 + 16) = *(a1 + 16);
  v20 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause;

  outlined assign with copy of PgQuery_Node?(a1 + v20, v1 + v26, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  *(v1 + v27) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v1 + v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, v1 + v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v29) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);

  *(v1 + v31) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);

  *(v1 + v33) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, v1 + v39, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, v1 + v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption + 8);
  *v13 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption);
  *(v13 + 8) = v21;
  *(v1 + v36) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v1 + v38, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v22 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8);
  *v16 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  *(v16 + 8) = v22;
  *(v1 + v35) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v1 + v32, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  v23 = v40;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v40, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);

  outlined assign with take of PgQuery_Node?(v23, v1 + v34, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  return v1;
}

uint64_t PgQuery_SelectStmt._StorageClass.deinit()
{

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  return v0;
}

void type metadata completion function for PgQuery_SelectStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_IntoClause?, type metadata accessor for PgQuery_IntoClause, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_WithClause?, type metadata accessor for PgQuery_WithClause, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_SelectStmt?, type metadata accessor for PgQuery_SelectStmt, MEMORY[0x277D83D88]);
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
  v88 = a4;
  v85 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v67 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = &v65 - v9;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  v70 = *(SelectStmt - 8);
  v10 = MEMORY[0x28223BE20](SelectStmt);
  v65 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v72 = &v65 - v14;
  v73 = type metadata accessor for PgQuery_WithClause(0);
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v76 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v78 = &v65 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v81 = &v65 - v22;
  MEMORY[0x28223BE20](v21);
  v83 = &v65 - v23;
  Node = type metadata accessor for PgQuery_Node(0);
  v84 = *(Node - 8);
  v25 = MEMORY[0x28223BE20](Node);
  v74 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v75 = &v65 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v80 = &v65 - v30;
  MEMORY[0x28223BE20](v29);
  v82 = &v65 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v65 - v33;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v36 = *(IntoClause - 8);
  MEMORY[0x28223BE20](IntoClause);
  v38 = &v65 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(a1 + 16) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
    }

    v79 = Node;
  }

  else
  {
    v79 = Node;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause, v34, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  if ((*(v36 + 48))(v34, 1, IntoClause) == 1)
  {
    outlined destroy of URL?(v34, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
    v40 = v4;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v34, v38, type metadata accessor for PgQuery_IntoClause);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause, &protocol conformance descriptor for PgQuery_IntoClause);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v40 = v4;
    if (v4)
    {
      return outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_IntoClause);
    }

    outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_IntoClause);
  }

  v41 = a1;
  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v42 = v79;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v40)
    {
    }
  }

  else
  {
    v42 = v79;
  }

  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v40)
    {
    }
  }

  v43 = v83;
  outlined init with copy of PgQuery_Alias?(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v44 = *(v84 + 48);
  if (v44(v43, 1, v42) == 1)
  {
    outlined destroy of URL?(v43, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v45 = v43;
    v46 = v82;
    outlined init with take of PgQuery_OidList(v45, v82, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v40)
    {
      goto LABEL_28;
    }

    outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
  }

  if (*(*(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v40)
    {
    }
  }

  v47 = v81;
  outlined init with copy of PgQuery_Alias?(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, v81, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v44(v47, 1, v42) == 1)
  {
    outlined destroy of URL?(v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v48 = v47;
    v46 = v80;
    outlined init with take of PgQuery_OidList(v48, v80, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v40)
    {
      goto LABEL_28;
    }

    outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
  }

  if (*(*(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v40)
    {
    }
  }

  if (!*(*(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists) + 16))
  {
    goto LABEL_37;
  }

  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

  dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  if (v40)
  {
  }

LABEL_37:
  if (*(*(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v40)
    {
    }
  }

  v50 = v78;
  outlined init with copy of PgQuery_Alias?(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, v78, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v44(v50, 1, v42) == 1)
  {
    outlined destroy of URL?(v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v51 = v50;
    v46 = v75;
    outlined init with take of PgQuery_OidList(v51, v75, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v40)
    {
      goto LABEL_28;
    }

    outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
  }

  v52 = v76;
  outlined init with copy of PgQuery_Alias?(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, v76, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v44(v52, 1, v42) == 1)
  {
    outlined destroy of URL?(v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v53 = SelectStmt;
    goto LABEL_50;
  }

  v54 = v52;
  v46 = v74;
  outlined init with take of PgQuery_OidList(v54, v74, type metadata accessor for PgQuery_Node);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  v53 = SelectStmt;
  if (v40)
  {
LABEL_28:
    v49 = type metadata accessor for PgQuery_Node;
    return outlined destroy of PgQuery_OidList(v46, v49);
  }

  outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
LABEL_50:
  if (!*(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption) || (v55 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption + 8), v86 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption), v87 = v55, lazy protocol witness table accessor for type PgQuery_LimitOption and conformance PgQuery_LimitOption(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v40))
  {
    if (!*(*(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v40))
    {
      v56 = v72;
      outlined init with copy of PgQuery_Alias?(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v72, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      if ((*(v71 + 48))(v56, 1, v73) == 1)
      {
        outlined destroy of URL?(v56, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      }

      else
      {
        v57 = v56;
        v58 = v69;
        outlined init with take of PgQuery_OidList(v57, v69, type metadata accessor for PgQuery_WithClause);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause, &protocol conformance descriptor for PgQuery_WithClause);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_WithClause);
        if (v40)
        {
          return result;
        }
      }

      if (!*(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op) || (v59 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8), v86 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op), v87 = v59, lazy protocol witness table accessor for type PgQuery_SetOperation and conformance PgQuery_SetOperation(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v40))
      {
        if (*(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v40))
        {
          v60 = v68;
          outlined init with copy of PgQuery_Alias?(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v68, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
          v61 = *(v70 + 48);
          v70 += 48;
          if (v61(v60, 1, v53) == 1)
          {
            outlined destroy of URL?(v60, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
LABEL_64:
            v64 = v67;
            outlined init with copy of PgQuery_Alias?(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v67, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
            if (v61(v64, 1, v53) == 1)
            {
              return outlined destroy of URL?(v64, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
            }

            v46 = v65;
            outlined init with take of PgQuery_OidList(v64, v65, type metadata accessor for PgQuery_SelectStmt);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt, &protocol conformance descriptor for PgQuery_SelectStmt);
            dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
            v49 = type metadata accessor for PgQuery_SelectStmt;
            return outlined destroy of PgQuery_OidList(v46, v49);
          }

          v62 = v60;
          v63 = v66;
          outlined init with take of PgQuery_OidList(v62, v66, type metadata accessor for PgQuery_SelectStmt);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt, &protocol conformance descriptor for PgQuery_SelectStmt);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_SelectStmt);
          if (!v40)
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
  v184 = *(SelectStmt - 8);
  v4 = MEMORY[0x28223BE20](SelectStmt);
  v181 = &v180 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v183 = &v180 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v182 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v186 = &v180 - v10;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v187);
  v185 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v189 = &v180 - v13;
  v194 = type metadata accessor for PgQuery_WithClause(0);
  v192 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v190 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v193 = &v180 - v16;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR);
  MEMORY[0x28223BE20](v191);
  v195 = &v180 - v17;
  Node = type metadata accessor for PgQuery_Node(0);
  v208 = *(Node - 8);
  v209 = Node;
  v19 = MEMORY[0x28223BE20](Node);
  v196 = &v180 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v197 = &v180 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v203 = &v180 - v24;
  MEMORY[0x28223BE20](v23);
  v206 = &v180 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v198 = &v180 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v201 = &v180 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v204 = &v180 - v32;
  MEMORY[0x28223BE20](v31);
  v207 = &v180 - v33;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v34 = MEMORY[0x28223BE20](v210);
  v200 = &v180 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v202 = &v180 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v205 = &v180 - v39;
  MEMORY[0x28223BE20](v38);
  v211 = &v180 - v40;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v42 = *(IntoClause - 8);
  MEMORY[0x28223BE20](IntoClause);
  v212 = &v180 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v180 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMR);
  MEMORY[0x28223BE20](v47);
  v49 = &v180 - v48;
  v50 = *(a1 + 16);
  v51 = *(a2 + 16);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v50, v51);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_51;
  }

  v53 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause;
  v54 = *(v47 + 48);
  v199 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__intoClause, v49, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v53, &v49[v54], &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v55 = *(v42 + 48);
  v56 = a2;
  if (v55(v49, 1, IntoClause) == 1)
  {
    v57 = v55(&v49[v54], 1, IntoClause);
    v58 = v199;
    if (v57 == 1)
    {
      outlined destroy of URL?(v49, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  outlined init with copy of PgQuery_Alias?(v49, v46, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  if (v55(&v49[v54], 1, IntoClause) == 1)
  {
    outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_IntoClause);
LABEL_8:
    v59 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMd;
    v60 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMR;
LABEL_9:
    v61 = v49;
LABEL_10:
    outlined destroy of URL?(v61, v59, v60);
LABEL_51:

    return 0;
  }

  v62 = &v49[v54];
  v63 = v212;
  outlined init with take of PgQuery_OidList(v62, v212, type metadata accessor for PgQuery_IntoClause);
  v64 = *(IntoClause + 20);
  v65 = *&v46[v64];
  v66 = *(v63 + v64);
  v58 = v199;
  if (v65 != v66)
  {

    v67 = closure #1 in static PgQuery_IntoClause.== infix(_:_:)(v65, v66);

    if ((v67 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_IntoClause);
      outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_IntoClause);
      v59 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd;
      v60 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR;
      goto LABEL_9;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v68 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_IntoClause);
  outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_IntoClause);
  outlined destroy of URL?(v49, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  if ((v68 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_14:
  v69 = *(v58 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);
  v70 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  v71 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v69, v70);

  if ((v71 & 1) == 0)
  {
    goto LABEL_51;
  }

  v72 = *(v58 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);
  v73 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause);

  v74 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v72, v73);

  if ((v74 & 1) == 0)
  {
    goto LABEL_51;
  }

  v75 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v76 = v211;
  v77 = *(v210 + 48);
  outlined init with copy of PgQuery_Alias?(v58 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v211, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v75, v76 + v77, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v78 = v209;
  v79 = *(v208 + 48);
  if (v79(v76, 1, v209) == 1)
  {
    if (v79(v76 + v77, 1, v78) == 1)
    {
      outlined destroy of URL?(v76, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v80 = v207;
  outlined init with copy of PgQuery_Alias?(v76, v207, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v79(v76 + v77, 1, v78) == 1)
  {
    outlined destroy of PgQuery_OidList(v80, type metadata accessor for PgQuery_Node);
LABEL_22:
    v59 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v60 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v61 = v76;
    goto LABEL_10;
  }

  v81 = v76 + v77;
  v82 = v206;
  outlined init with take of PgQuery_OidList(v81, v206, type metadata accessor for PgQuery_Node);
  v83 = *(v78 + 20);
  v84 = *(v80 + v83);
  v85 = *(v82 + v83);
  if (v84 != v85)
  {

    v86 = closure #1 in static PgQuery_Node.== infix(_:_:)(v84, v85);

    if (!v86)
    {
      outlined destroy of PgQuery_OidList(v82, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v207, type metadata accessor for PgQuery_Node);
      v59 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v60 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v61 = v211;
      goto LABEL_10;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v87 = v207;
  v88 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v82, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v87, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v211, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v88 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_26:
  v89 = *(v58 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);
  v90 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClause);

  v91 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v89, v90);

  if ((v91 & 1) == 0)
  {
    goto LABEL_51;
  }

  v92 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause;
  v93 = *(v210 + 48);
  v94 = v205;
  outlined init with copy of PgQuery_Alias?(v58 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__havingClause, v205, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v56 + v92, v94 + v93, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v79(v94, 1, v78) == 1)
  {
    if (v79(v94 + v93, 1, v78) != 1)
    {
LABEL_32:
      v59 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v60 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
      v61 = v94;
      goto LABEL_10;
    }

    outlined destroy of URL?(v94, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v95 = v204;
    outlined init with copy of PgQuery_Alias?(v94, v204, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v79(v94 + v93, 1, v78) == 1)
    {
LABEL_31:
      outlined destroy of PgQuery_OidList(v95, type metadata accessor for PgQuery_Node);
      goto LABEL_32;
    }

    v96 = v203;
    outlined init with take of PgQuery_OidList(v94 + v93, v203, type metadata accessor for PgQuery_Node);
    v97 = *(v78 + 20);
    v98 = *(v95 + v97);
    v99 = *(v96 + v97);
    if (v98 != v99)
    {

      v100 = closure #1 in static PgQuery_Node.== infix(_:_:)(v98, v99);

      if (!v100)
      {
        outlined destroy of PgQuery_OidList(v96, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v204, type metadata accessor for PgQuery_Node);
        v59 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v60 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        v61 = v205;
        goto LABEL_10;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v101 = v204;
    v102 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v96, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v101, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(v205, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((v102 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v103 = *(v58 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);
  v104 = *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__windowClause);

  v105 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v103, v104);

  if ((v105 & 1) == 0)
  {
    goto LABEL_51;
  }

  v106 = *(v58 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);
  v107 = *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);

  v108 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v106, v107);

  if ((v108 & 1) == 0)
  {
    goto LABEL_51;
  }

  v109 = *(v58 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);
  v110 = *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortClause);

  v111 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v109, v110);

  if ((v111 & 1) == 0)
  {
    goto LABEL_51;
  }

  v112 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset;
  v113 = *(v210 + 48);
  v94 = v202;
  outlined init with copy of PgQuery_Alias?(v58 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOffset, v202, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v56 + v112, v94 + v113, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v79(v94, 1, v78) == 1)
  {
    if (v79(v94 + v113, 1, v78) == 1)
    {
      outlined destroy of URL?(v94, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_48;
    }

    goto LABEL_32;
  }

  v95 = v201;
  outlined init with copy of PgQuery_Alias?(v94, v201, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v79(v94 + v113, 1, v78) == 1)
  {
    goto LABEL_31;
  }

  v114 = v197;
  outlined init with take of PgQuery_OidList(v94 + v113, v197, type metadata accessor for PgQuery_Node);
  v115 = *(v78 + 20);
  v116 = *(v95 + v115);
  v117 = *(v114 + v115);
  if (v116 != v117)
  {

    v118 = closure #1 in static PgQuery_Node.== infix(_:_:)(v116, v117);

    if (!v118)
    {
      outlined destroy of PgQuery_OidList(v114, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v201, type metadata accessor for PgQuery_Node);
      v59 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v60 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v61 = v202;
      goto LABEL_10;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v119 = v201;
  v120 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v114, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v119, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v202, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v120 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v121 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount;
  v122 = *(v210 + 48);
  v123 = v200;
  outlined init with copy of PgQuery_Alias?(v58 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitCount, v200, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v124 = v56;
  outlined init with copy of PgQuery_Alias?(v56 + v121, v123 + v122, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v79(v123, 1, v78) == 1)
  {
    if (v79(v123 + v122, 1, v78) == 1)
    {
      outlined destroy of URL?(v123, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_61;
    }

    goto LABEL_55;
  }

  outlined init with copy of PgQuery_Alias?(v123, v198, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v79(v123 + v122, 1, v78) == 1)
  {
    outlined destroy of PgQuery_OidList(v198, type metadata accessor for PgQuery_Node);
    v123 = v200;
LABEL_55:
    v126 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v127 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v128 = v123;
LABEL_56:
    outlined destroy of URL?(v128, v126, v127);
    goto LABEL_51;
  }

  v129 = v196;
  outlined init with take of PgQuery_OidList(v200 + v122, v196, type metadata accessor for PgQuery_Node);
  v130 = *(v209 + 20);
  v131 = *(v198 + v130);
  v132 = *(v129 + v130);
  if (v131 != v132)
  {

    v133 = closure #1 in static PgQuery_Node.== infix(_:_:)(v131, v132);

    if (!v133)
    {
      outlined destroy of PgQuery_OidList(v196, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v198, type metadata accessor for PgQuery_Node);
      v126 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v127 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v128 = v200;
      goto LABEL_56;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v134 = v198;
  v135 = v196;
  v136 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v135, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v134, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v200, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v136 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_61:
  v137 = *(v199 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption);
  v138 = *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption);
  if (*(v56 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__limitOption + 8) == 1)
  {
    if (v138 > 1)
    {
      if (v138 == 2)
      {
        if (v137 != 2)
        {
          goto LABEL_51;
        }
      }

      else if (v137 != 3)
      {
        goto LABEL_51;
      }
    }

    else if (v138)
    {
      if (v137 != 1)
      {
        goto LABEL_51;
      }
    }

    else if (v137)
    {
      goto LABEL_51;
    }
  }

  else if (v137 != v138)
  {
    goto LABEL_51;
  }

  v139 = *(v199 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause);
  v140 = *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lockingClause);

  v141 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v139, v140);

  if ((v141 & 1) == 0)
  {
    goto LABEL_51;
  }

  v142 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v143 = *(v191 + 48);
  v144 = v195;
  outlined init with copy of PgQuery_Alias?(v199 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause, v195, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  outlined init with copy of PgQuery_Alias?(v56 + v142, v144 + v143, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  v145 = *(v192 + 48);
  if (v145(v144, 1, v194) == 1)
  {
    if (v145(v195 + v143, 1, v194) == 1)
    {
      outlined destroy of URL?(v195, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
      goto LABEL_72;
    }

    goto LABEL_88;
  }

  v148 = v195;
  outlined init with copy of PgQuery_Alias?(v195, v193, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if (v145(v148 + v143, 1, v194) == 1)
  {
    outlined destroy of PgQuery_OidList(v193, type metadata accessor for PgQuery_WithClause);
LABEL_88:
    v126 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMd;
    v127 = &_s14BiomeSQLParser18PgQuery_WithClauseVSg_ADtMR;
    v128 = v195;
    goto LABEL_56;
  }

  v149 = v190;
  outlined init with take of PgQuery_OidList(v195 + v143, v190, type metadata accessor for PgQuery_WithClause);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v193, *v149) & 1) == 0 || *(v193 + 8) != *(v190 + 8) || *(v193 + 12) != *(v190 + 12))
  {
    outlined destroy of PgQuery_OidList(v190, type metadata accessor for PgQuery_WithClause);
    outlined destroy of PgQuery_OidList(v193, type metadata accessor for PgQuery_WithClause);
    v126 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd;
    v127 = &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR;
    v128 = v195;
    goto LABEL_56;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v150 = v193;
  v151 = v190;
  v152 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v151, type metadata accessor for PgQuery_WithClause);
  outlined destroy of PgQuery_OidList(v150, type metadata accessor for PgQuery_WithClause);
  outlined destroy of URL?(v195, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMd, &_s14BiomeSQLParser18PgQuery_WithClauseVSgMR);
  if ((v152 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_72:
  v146 = *(v199 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  v147 = *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  if (*(v56 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8) == 1)
  {
    if (v147 <= 1)
    {
      if (v147)
      {
        if (v146 != 1)
        {
          goto LABEL_51;
        }
      }

      else if (v146)
      {
        goto LABEL_51;
      }
    }

    else if (v147 == 2)
    {
      if (v146 != 2)
      {
        goto LABEL_51;
      }
    }

    else if (v147 == 3)
    {
      if (v146 != 3)
      {
        goto LABEL_51;
      }
    }

    else if (v146 != 4)
    {
      goto LABEL_51;
    }
  }

  else if (v146 != v147)
  {
    goto LABEL_51;
  }

  if (*(v199 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all) != *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__all))
  {
    goto LABEL_51;
  }

  v153 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  v154 = *(v187 + 48);
  v155 = v189;
  outlined init with copy of PgQuery_Alias?(v199 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v189, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  outlined init with copy of PgQuery_Alias?(v56 + v153, v155 + v154, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  v156 = *(v184 + 48);
  if (v156(v155, 1, SelectStmt) == 1)
  {
    if (v156(v189 + v154, 1, SelectStmt) == 1)
    {
      outlined destroy of URL?(v189, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
      goto LABEL_116;
    }

    goto LABEL_105;
  }

  v157 = v189;
  outlined init with copy of PgQuery_Alias?(v189, v186, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  if (v156(v157 + v154, 1, SelectStmt) == 1)
  {
    outlined destroy of PgQuery_OidList(v186, type metadata accessor for PgQuery_SelectStmt);
LABEL_105:
    v126 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMd;
    v127 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMR;
LABEL_106:
    v128 = v189;
    goto LABEL_56;
  }

  v158 = v183;
  outlined init with take of PgQuery_OidList(v189 + v154, v183, type metadata accessor for PgQuery_SelectStmt);
  v159 = *(SelectStmt + 20);
  v160 = *(v186 + v159);
  v161 = *(v158 + v159);
  if (v160 != v161)
  {

    v162 = closure #1 in static PgQuery_SelectStmt.== infix(_:_:)(v160, v161);

    if (!v162)
    {
      outlined destroy of PgQuery_OidList(v183, type metadata accessor for PgQuery_SelectStmt);
      outlined destroy of PgQuery_OidList(v186, type metadata accessor for PgQuery_SelectStmt);
      v126 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd;
      v127 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR;
      goto LABEL_106;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v163 = v186;
  v164 = v183;
  v165 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v164, type metadata accessor for PgQuery_SelectStmt);
  outlined destroy of PgQuery_OidList(v163, type metadata accessor for PgQuery_SelectStmt);
  outlined destroy of URL?(v189, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  if ((v165 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_116:
  v166 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg;
  v167 = *(v187 + 48);
  v168 = v185;
  outlined init with copy of PgQuery_Alias?(v199 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_SelectStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v185, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  outlined init with copy of PgQuery_Alias?(v124 + v166, v168 + v167, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  if (v156(v168, 1, SelectStmt) != 1)
  {
    v169 = v185;
    outlined init with copy of PgQuery_Alias?(v185, v182, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
    if (v156(v169 + v167, 1, SelectStmt) == 1)
    {

      outlined destroy of PgQuery_OidList(v182, type metadata accessor for PgQuery_SelectStmt);
      goto LABEL_121;
    }

    v172 = v181;
    outlined init with take of PgQuery_OidList(v185 + v167, v181, type metadata accessor for PgQuery_SelectStmt);
    v173 = *(SelectStmt + 20);
    v174 = *(v182 + v173);
    v175 = *(v172 + v173);
    if (v174 != v175)
    {

      v176 = closure #1 in static PgQuery_SelectStmt.== infix(_:_:)(v174, v175);

      if (!v176)
      {

        outlined destroy of PgQuery_OidList(v181, type metadata accessor for PgQuery_SelectStmt);
        outlined destroy of PgQuery_OidList(v182, type metadata accessor for PgQuery_SelectStmt);
        v170 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd;
        v171 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR;
        goto LABEL_122;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v177 = v182;
    v178 = v181;
    v179 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v178, type metadata accessor for PgQuery_SelectStmt);
    outlined destroy of PgQuery_OidList(v177, type metadata accessor for PgQuery_SelectStmt);
    outlined destroy of URL?(v185, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
    return (v179 & 1) != 0;
  }

  if (v156(v185 + v167, 1, SelectStmt) != 1)
  {
LABEL_121:
    v170 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMd;
    v171 = &_s14BiomeSQLParser18PgQuery_SelectStmtVSg_ADtMR;
LABEL_122:
    outlined destroy of URL?(v185, v170, v171);
    return 0;
  }

  outlined destroy of URL?(v185, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SelectStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt, &protocol conformance descriptor for PgQuery_SelectStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SelectStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt, &protocol conformance descriptor for PgQuery_SelectStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v23 = a3;
  v20 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v9 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterTableStmt = type metadata accessor for PgQuery_AlterTableStmt(0);
  v19 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterTableStmt + 32), v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v9 + 48))(v7, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
    if (v4)
    {
      return result;
    }
  }

  v13 = v19;
  if (!*(*v19 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    ResultSetCursor.columns.modify();
    if (!v16 || (v21 = v14, v22 = v15, lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      if (*(v13 + 17) != 1)
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
  *a2 = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTableStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableStmt and conformance PgQuery_AlterTableStmt, type metadata accessor for PgQuery_AlterTableStmt, &protocol conformance descriptor for PgQuery_AlterTableStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTableStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableStmt and conformance PgQuery_AlterTableStmt, type metadata accessor for PgQuery_AlterTableStmt, &protocol conformance descriptor for PgQuery_AlterTableStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterTableCmd._StorageClass.__deallocating_deinit()
{

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_AlterTableCmd._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RoleSpec?, type metadata accessor for PgQuery_RoleSpec, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  MEMORY[0x28223BE20](v6 - 8);
  v30 = &v27 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v29 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v32 = *(RoleSpec - 8);
  MEMORY[0x28223BE20](RoleSpec);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  ResultSetCursor.columns.modify();
  if (!v16 || (v33 = v14, v34 = v15, lazy protocol witness table accessor for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v18 = *(a1 + 40);
    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
    }

    if (!v19 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
    {
      v20 = RoleSpec;
      if (!*(a1 + 48) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
      {
        v27 = v4;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, v11, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
        if ((*(v32 + 48))(v11, 1, v20) == 1)
        {
          outlined destroy of URL?(v11, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
        }

        else
        {
          outlined init with take of PgQuery_OidList(v11, v13, type metadata accessor for PgQuery_RoleSpec);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
          v21 = v27;
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_RoleSpec);
          if (v21)
          {
            return result;
          }

          v27 = 0;
        }

        v22 = v30;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def, v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((*(v29 + 48))(v22, 1, Node) == 1)
        {
          result = outlined destroy of URL?(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          v23 = v27;
        }

        else
        {
          v24 = v22;
          v25 = v28;
          outlined init with take of PgQuery_OidList(v24, v28, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          v23 = v27;
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
          if (v23)
          {
            return result;
          }
        }

        if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior) || (v26 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8), v33 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior), v34 = v26, lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v23))
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
  v56 = *(Node - 8);
  v57 = Node;
  MEMORY[0x28223BE20](Node);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v52 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v55);
  v58 = &v52 - v8;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v59 = *(RoleSpec - 8);
  MEMORY[0x28223BE20](RoleSpec);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v52 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  ResultSetCursor.columns.modify();
  v19 = v18;
  ResultSetCursor.columns.modify();
  if (v19 != v20 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_21;
  }

  v21 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner;
  v22 = *(v15 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, v17, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v23 = a2 + v21;
  v24 = a2;
  outlined init with copy of PgQuery_Alias?(v23, &v17[v22], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v25 = *(v59 + 48);
  if (v25(v17, 1, RoleSpec) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v17, v14, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if (v25(&v17[v22], 1, RoleSpec) != 1)
    {
      outlined init with take of PgQuery_OidList(&v17[v22], v11, type metadata accessor for PgQuery_RoleSpec);
      v27 = a1;

      v28 = specialized static PgQuery_RoleSpec.== infix(_:_:)(v14, v11);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
      outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_RoleSpec);
      outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      if ((v28 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_RoleSpec);
LABEL_11:
    outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
    goto LABEL_20;
  }

  v26 = v25(&v17[v22], 1, RoleSpec);

  if (v26 != 1)
  {
    goto LABEL_11;
  }

  outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v27 = a1;
LABEL_13:
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def;
  v30 = *(v55 + 48);
  v31 = v27;
  v32 = v27 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def;
  v33 = v58;
  outlined init with copy of PgQuery_Alias?(v32, v58, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v24 + v29, v33 + v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v34 = v57;
  v35 = *(v56 + 48);
  if (v35(v33, 1, v57) == 1)
  {
    if (v35(v33 + v30, 1, v34) == 1)
    {
      outlined destroy of URL?(v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  v36 = v54;
  outlined init with copy of PgQuery_Alias?(v33, v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v35(v33 + v30, 1, v34) == 1)
  {
    outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
LABEL_18:
    v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_19:
    outlined destroy of URL?(v33, v37, v38);
    goto LABEL_20;
  }

  v41 = v33 + v30;
  v42 = v53;
  outlined init with take of PgQuery_OidList(v41, v53, type metadata accessor for PgQuery_Node);
  v43 = *(v34 + 20);
  v44 = *(v36 + v43);
  v45 = *(v42 + v43);
  if (v44 != v45)
  {

    v46 = closure #1 in static PgQuery_Node.== infix(_:_:)(v44, v45);

    if (!v46)
    {
      outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
      v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_19;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v47)
  {
LABEL_26:
    v48 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
    v49 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
    if (*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8) == 1)
    {
      if (v49)
      {
        if (v49 == 1)
        {
          if (v48 == 1)
          {
            goto LABEL_37;
          }
        }

        else if (v48 == 2)
        {
LABEL_37:
          v50 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

          v51 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

          v39 = v50 ^ v51 ^ 1;
          return v39 & 1;
        }
      }

      else if (!v48)
      {
        goto LABEL_37;
      }
    }

    else if (v48 == v49)
    {
      goto LABEL_37;
    }
  }

LABEL_20:

LABEL_21:
  v39 = 0;
  return v39 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTableCmd(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableCmd and conformance PgQuery_AlterTableCmd, type metadata accessor for PgQuery_AlterTableCmd, &protocol conformance descriptor for PgQuery_AlterTableCmd);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTableCmd(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableCmd and conformance PgQuery_AlterTableCmd, type metadata accessor for PgQuery_AlterTableCmd, &protocol conformance descriptor for PgQuery_AlterTableCmd);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTableCmd(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableCmd and conformance PgQuery_AlterTableCmd, type metadata accessor for PgQuery_AlterTableCmd, &protocol conformance descriptor for PgQuery_AlterTableCmd);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterDomainStmt._StorageClass.__deallocating_deinit()
{

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_AlterDomainStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v20 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
  {
    if (!*(a1[4] + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
    {
      v15 = a1[6];
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = a1[5] & 0xFFFFFFFFFFFFLL;
      }

      if (!v16 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
      {
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((*(v20 + 48))(v8, 1, Node) == 1)
        {
          result = outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          outlined init with take of PgQuery_OidList(v8, v11, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
          if (v4)
          {
            return result;
          }
        }

        if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior) || (v17 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8), v18 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior), v19 = v17, lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
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
  MEMORY[0x28223BE20](Node);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  if (*(a1 + 1) == *(a2 + 1) || (v14 = _stringCompareWithSmolCheck(_:_:expecting:)(), v15 = 0, (v14 & 1) != 0))
  {
    v36 = v7;
    v16 = a1[4];
    v17 = a2[4];

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v16, v17);

    if ((NodeV_Tt1g5 & 1) == 0 || (a1[5] != a2[5] || a1[6] != a2[6]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_14;
    }

    v19 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def;
    v20 = *(v11 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v19, &v13[v20], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v21 = *(v5 + 48);
    if (v21(v13, 1, Node) == 1)
    {
      if (v21(&v13[v20], 1, Node) == 1)
      {
        outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        goto LABEL_19;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v13, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v21(&v13[v20], 1, Node) != 1)
      {
        v25 = v36;
        outlined init with take of PgQuery_OidList(&v13[v20], v36, type metadata accessor for PgQuery_Node);
        v26 = *(Node + 20);
        v27 = *&v10[v26];
        v28 = *(v25 + v26);
        if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v29))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v30 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
          outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v30)
          {
LABEL_19:
            v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
            v32 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
            if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8) == 1)
            {
              if (v32)
              {
                if (v32 == 1)
                {
                  if (v31 == 1)
                  {
                    goto LABEL_30;
                  }
                }

                else if (v31 == 2)
                {
LABEL_30:
                  v33 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

                  v34 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

                  v15 = v33 ^ v34 ^ 1;
                  return v15 & 1;
                }
              }

              else if (!v31)
              {
                goto LABEL_30;
              }
            }

            else if (v31 == v32)
            {
              goto LABEL_30;
            }
          }

LABEL_14:

          v15 = 0;
          return v15 & 1;
        }

        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
        v22 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_13:
        outlined destroy of URL?(v13, v22, v23);
        goto LABEL_14;
      }

      outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
    }

    v22 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_13;
  }

  return v15 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterDomainStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDomainStmt and conformance PgQuery_AlterDomainStmt, type metadata accessor for PgQuery_AlterDomainStmt, &protocol conformance descriptor for PgQuery_AlterDomainStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterDomainStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDomainStmt and conformance PgQuery_AlterDomainStmt, type metadata accessor for PgQuery_AlterDomainStmt, &protocol conformance descriptor for PgQuery_AlterDomainStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v8 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes) = MEMORY[0x277D84F90];
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
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_SetOperationStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v15 = MEMORY[0x28223BE20](Node);
  v36 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = *(v17 + 16);
  if (v20)
  {
    v33 = v14;
    v34 = v20;
    v21 = v10;
    v22 = Node;
    v35 = *(v17 + 24);
    v23 = v17;
    lazy protocol witness table accessor for type PgQuery_SetOperation and conformance PgQuery_SetOperation();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v17 = v23;
    Node = v22;
    v10 = v21;
    v14 = v33;
  }

  if (*(v17 + 25) == 1)
  {
    v25 = v14;
    v26 = v10;
    v27 = Node;
    v28 = v17;
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v32 = a4;
    v17 = v28;
    Node = v27;
    v10 = v26;
    v14 = v25;
    v5 = 0;
  }

  else
  {
    v32 = a4;
  }

  v33 = v17;
  outlined init with copy of PgQuery_Alias?(v17 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v29 = *(v14 + 48);
  if (v29(v12, 1, Node) == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
    if (v5)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v33 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v29(v10, 1, Node) == 1)
  {
    result = outlined destroy of URL?(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v30 = v36;
    outlined init with take of PgQuery_OidList(v10, v36, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
    if (v5)
    {
      return result;
    }
  }

  v31 = v33;
  if (*(*(v33 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v5)
    {
      return result;
    }

    v31 = v33;
  }

  if (*(*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v5)
    {
      return result;
    }

    v31 = v33;
  }

  if (*(*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v5)
    {
      return result;
    }

    v31 = v33;
  }

  if (*(*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses) + 16))
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
  v6 = MEMORY[0x28223BE20](Node);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v76 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v76 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v22 = &v76 - v20;
  v23 = *(a1 + 16);
  v24 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v24 <= 1)
    {
      if (v24)
      {
        if (v23 != 1)
        {
          goto LABEL_45;
        }
      }

      else if (v23)
      {
        goto LABEL_45;
      }
    }

    else if (v24 == 2)
    {
      if (v23 != 2)
      {
        goto LABEL_45;
      }
    }

    else if (v24 == 3)
    {
      if (v23 != 3)
      {
        goto LABEL_45;
      }
    }

    else if (v23 != 4)
    {
      goto LABEL_45;
    }
  }

  else if (v23 != v24)
  {
LABEL_45:
    v74 = 0;
    return v74 & 1;
  }

  if (*(a1 + 25) != *(a2 + 25))
  {
    goto LABEL_45;
  }

  v78 = v10;
  v79 = v14;
  v80 = v21;
  v81 = v19;
  v77 = v8;
  v25 = a2;
  v26 = v5;
  v27 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  v28 = *(v19 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, &v76 - v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v25 + v27, &v22[v28], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v29 = *(v26 + 48);
  if (v29(v22, 1, Node) == 1)
  {
    v30 = Node;
    v31 = v29(&v22[v28], 1, Node);

    v32 = a1;
    if (v31 == 1)
    {
      v76 = v29;
      outlined destroy of URL?(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  v33 = a1;
  outlined init with copy of PgQuery_Alias?(v22, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v29(&v22[v28], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
LABEL_17:
    v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_18:
    outlined destroy of URL?(v22, v34, v35);
    goto LABEL_44;
  }

  v76 = v29;
  v36 = &v22[v28];
  v37 = v78;
  outlined init with take of PgQuery_OidList(v36, v78, type metadata accessor for PgQuery_Node);
  v30 = Node;
  v38 = *(Node + 20);
  v39 = *&v16[v38];
  v40 = *(v37 + v38);
  v32 = v33;

  if (v39 != v40)
  {

    v41 = closure #1 in static PgQuery_Node.== infix(_:_:)(v39, v40);

    if (!v41)
    {
      outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
      v34 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_18;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v42 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_29:
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg;
  v44 = v80;
  v45 = v32;
  v46 = *(v81 + 48);
  v47 = v45;
  outlined init with copy of PgQuery_Alias?(v45 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v80, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v48 = v25 + v43;
  v49 = v44;
  outlined init with copy of PgQuery_Alias?(v48, v44 + v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v50 = v30;
  v51 = v30;
  v52 = v76;
  if (v76(v44, 1, v51) != 1)
  {
    v53 = v79;
    outlined init with copy of PgQuery_Alias?(v44, v79, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v52(v44 + v46, 1, v50) != 1)
    {
      v54 = v25;
      v55 = v44 + v46;
      v56 = v77;
      outlined init with take of PgQuery_OidList(v55, v77, type metadata accessor for PgQuery_Node);
      v57 = *(v50 + 20);
      v58 = *(v53 + v57);
      v59 = *(v56 + v57);
      if (v58 == v59 || (, , v60 = closure #1 in static PgQuery_Node.== infix(_:_:)(v58, v59), , , v60))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v61 = v79;
        v62 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v25 = v54;
        if (v62)
        {
          goto LABEL_38;
        }
      }

      else
      {
        outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v79, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

LABEL_44:

      goto LABEL_45;
    }

    outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
LABEL_34:
    outlined destroy of URL?(v44, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_44;
  }

  if (v52(v44 + v46, 1, v50) != 1)
  {
    goto LABEL_34;
  }

  outlined destroy of URL?(v44, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_38:
  v63 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes);
  v64 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v63, v64);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_44;
  }

  v66 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods);
  v67 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods);

  v68 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v66, v67);

  if ((v68 & 1) == 0)
  {
    goto LABEL_44;
  }

  v69 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations);
  v70 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations);

  v71 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v69, v70);

  if ((v71 & 1) == 0)
  {
    goto LABEL_44;
  }

  v72 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses);
  v73 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses);

  v74 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v72, v73);

  return v74 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SetOperationStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetOperationStmt and conformance PgQuery_SetOperationStmt, type metadata accessor for PgQuery_SetOperationStmt, &protocol conformance descriptor for PgQuery_SetOperationStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SetOperationStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetOperationStmt and conformance PgQuery_SetOperationStmt, type metadata accessor for PgQuery_SetOperationStmt, &protocol conformance descriptor for PgQuery_SetOperationStmt);

  return MEMORY[0x28217E428](a1, Scan);
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

    ResultSetCursor.columns.modify();
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
  v1 = MEMORY[0x277D84F90];
  *(a1 + 40) = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_GrantStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantStmt and conformance PgQuery_GrantStmt, type metadata accessor for PgQuery_GrantStmt, &protocol conformance descriptor for PgQuery_GrantStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v19 = *(RoleSpec - 8);
  MEMORY[0x28223BE20](RoleSpec);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v13 = v5;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v13 = v5;
  }

  if (*(v3 + 16) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    v14 = RoleSpec;
    if (v13)
    {
      return result;
    }
  }

  else
  {
    v14 = RoleSpec;
  }

  if (*(v3 + 17) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v13))
  {
    GrantRoleStmt = type metadata accessor for PgQuery_GrantRoleStmt(0);
    outlined init with copy of PgQuery_Alias?(v6 + *(GrantRoleStmt + 40), v9, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if ((*(v19 + 48))(v9, 1, v14) == 1)
    {
      outlined destroy of URL?(v9, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      v16 = *(v6 + 24);
      if (!v16)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }

    else
    {
      RoleSpec = GrantRoleStmt;
      outlined init with take of PgQuery_OidList(v9, v11, type metadata accessor for PgQuery_RoleSpec);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
      if (v13)
      {
        return result;
      }

      v16 = *(v6 + 24);
      if (!v16)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }

    v17 = *(v6 + 32);
    v20 = v16;
    v21 = v17;
    lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v13)
    {
      return result;
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_GrantRoleStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_GrantRoleStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantRoleStmt and conformance PgQuery_GrantRoleStmt, type metadata accessor for PgQuery_GrantRoleStmt, &protocol conformance descriptor for PgQuery_GrantRoleStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  GrantStmt = type metadata accessor for PgQuery_GrantStmt(0);
  v8 = *(GrantStmt - 8);
  MEMORY[0x28223BE20](GrantStmt);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v17 = v3;
  if (v11)
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v12 = v18;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v12)
    {
      return result;
    }

    v18 = 0;
    v3 = v17;
  }

  AlterDefaultPrivilegesStmt = type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt(0);
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterDefaultPrivilegesStmt + 24), v6, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  if ((*(v8 + 48))(v6, 1, GrantStmt) == 1)
  {
    outlined destroy of URL?(v6, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v6, v10, type metadata accessor for PgQuery_GrantStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantStmt and conformance PgQuery_GrantStmt, type metadata accessor for PgQuery_GrantStmt, &protocol conformance descriptor for PgQuery_GrantStmt);
    v15 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_GrantStmt);
    if (v15)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterDefaultPrivilegesStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDefaultPrivilegesStmt and conformance PgQuery_AlterDefaultPrivilegesStmt, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt, &protocol conformance descriptor for PgQuery_AlterDefaultPrivilegesStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterDefaultPrivilegesStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDefaultPrivilegesStmt and conformance PgQuery_AlterDefaultPrivilegesStmt, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt, &protocol conformance descriptor for PgQuery_AlterDefaultPrivilegesStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterDefaultPrivilegesStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDefaultPrivilegesStmt and conformance PgQuery_AlterDefaultPrivilegesStmt, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt, &protocol conformance descriptor for PgQuery_AlterDefaultPrivilegesStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ClosePortalStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClosePortalStmt and conformance PgQuery_ClosePortalStmt, type metadata accessor for PgQuery_ClosePortalStmt, &protocol conformance descriptor for PgQuery_ClosePortalStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ClosePortalStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClosePortalStmt and conformance PgQuery_ClosePortalStmt, type metadata accessor for PgQuery_ClosePortalStmt, &protocol conformance descriptor for PgQuery_ClosePortalStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v16[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v9 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = type metadata accessor for PgQuery_ClusterStmt(0);
  outlined init with copy of PgQuery_Alias?(v4 + *(v16[0] + 28), v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v9 + 48))(v7, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v12 = v17;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v12 = v17;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
    if (v12)
    {
      return result;
    }
  }

  v14 = *(v4 + 8);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v12))
  {
    if (!*(v4 + 16))
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (!v12)
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ClusterStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClusterStmt and conformance PgQuery_ClusterStmt, type metadata accessor for PgQuery_ClusterStmt, &protocol conformance descriptor for PgQuery_ClusterStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ClusterStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClusterStmt and conformance PgQuery_ClusterStmt, type metadata accessor for PgQuery_ClusterStmt, &protocol conformance descriptor for PgQuery_ClusterStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CopyStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v22 = &v19 - v4;
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v20 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v5, 1, 1, RangeVar);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v19 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(*(Node - 8) + 56);
  v9(v1 + v7, 1, 1, Node);
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist;
  v11 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist) = MEMORY[0x277D84F90];
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom) = 0;
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram) = 0;
  v14 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v11;
  v21 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v9(v1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, 1, 1, Node);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v20, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v1 + v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist);

  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom);
  *(v1 + v13) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram);
  v16 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename + 8);
  *v14 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename);
  v14[1] = v16;

  *(v1 + v15) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v17 = v22;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v17, v1 + v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return v1;
}

uint64_t PgQuery_CopyStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_CopyStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  v42 = a3;
  v43 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v39 = *(Node - 8);
  v40 = Node;
  v11 = MEMORY[0x28223BE20](Node);
  v36 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v38 = &v36 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v36 - v15;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v18 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v18 + 48))(v16, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v21 = v41;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v16, v20, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v22 = v41;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v21 = v22;
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
    if (v22)
    {
      return result;
    }
  }

  v24 = v44;
  outlined init with copy of PgQuery_Alias?(v44 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = v40;
  v26 = *(v39 + 48);
  if (v26(v9, 1, v40) == 1)
  {
    outlined destroy of URL?(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v27 = v9;
    v28 = v38;
    outlined init with take of PgQuery_OidList(v27, v38, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
    if (v21)
    {
      return result;
    }
  }

  if (!*(*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v21))
  {
    v29 = v44;
    if (*(v44 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v21))
    {
      if (*(v29 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v21))
      {
        v30 = *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename);
        v31 = *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename + 8);
        v32 = HIBYTE(v31) & 0xF;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v32 = v30 & 0xFFFFFFFFFFFFLL;
        }

        if (!v32 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v21))
        {
          if (!*(*(v44 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v21))
          {
            v33 = v37;
            outlined init with copy of PgQuery_Alias?(v44 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v26(v33, 1, v25) == 1)
            {
              return outlined destroy of URL?(v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            }

            else
            {
              v34 = v33;
              v35 = v36;
              outlined init with take of PgQuery_OidList(v34, v36, type metadata accessor for PgQuery_Node);
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
              dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
              return outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_Node);
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
  v84 = a2;
  Node = type metadata accessor for PgQuery_Node(0);
  v81 = *(Node - 8);
  v82 = Node;
  v4 = MEMORY[0x28223BE20](Node);
  v75 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v75 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v76 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v79 = &v75 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v80);
  v77 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v83 = &v75 - v13;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v15 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v75 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v75 - v23;
  v25 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v26 = *(v22 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v75 - v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v27 = v84 + v25;
  v28 = v84;
  outlined init with copy of PgQuery_Alias?(v27, &v24[v26], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v29 = *(v15 + 48);
  if (v29(v24, 1, RangeVar) == 1)
  {
    v30 = v29(&v24[v26], 1, RangeVar);

    v31 = a1;
    if (v30 == 1)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v32 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v33 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v34 = v24;
LABEL_14:
    outlined destroy of URL?(v34, v32, v33);
    goto LABEL_15;
  }

  outlined init with copy of PgQuery_Alias?(v24, v20, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v29(&v24[v26], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  outlined init with take of PgQuery_OidList(&v24[v26], v17, type metadata accessor for PgQuery_RangeVar);
  v31 = a1;

  v35 = specialized static PgQuery_RangeVar.== infix(_:_:)(v20, v17);
  outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v35 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v37 = v80;
  v38 = *(v80 + 48);
  v39 = v83;
  outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v40 = v39;
  outlined init with copy of PgQuery_Alias?(v28 + v36, v39 + v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v41 = v82;
  v42 = *(v81 + 48);
  if (v42(v40, 1, v82) != 1)
  {
    v43 = v79;
    outlined init with copy of PgQuery_Alias?(v40, v79, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v42(v40 + v38, 1, v41) == 1)
    {
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
      goto LABEL_13;
    }

    v45 = v78;
    outlined init with take of PgQuery_OidList(v40 + v38, v78, type metadata accessor for PgQuery_Node);
    v46 = *(v41 + 20);
    v47 = *(v43 + v46);
    v48 = *(v45 + v46);
    if (v47 != v48)
    {

      v49 = closure #1 in static PgQuery_Node.== infix(_:_:)(v47, v48);

      if (!v49)
      {
        outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v79, type metadata accessor for PgQuery_Node);
        v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v33 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        v34 = v83;
        goto LABEL_14;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v50 = v79;
    v51 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v51)
    {
      goto LABEL_20;
    }

LABEL_15:

    return 0;
  }

  if (v42(v40 + v38, 1, v41) != 1)
  {
LABEL_13:
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v33 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v34 = v40;
    goto LABEL_14;
  }

  outlined destroy of URL?(v40, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
  v52 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist);
  v53 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist);

  v54 = v28;
  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v52, v53);

  if ((NodeV_Tt1g5 & 1) == 0 || *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom) != *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom) || *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram) != *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram) || (*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename) != *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename) || *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename + 8) != *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v56 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
  v57 = *(v54 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v58 = v54;
  v59 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v56, v57);

  if ((v59 & 1) == 0)
  {
    goto LABEL_15;
  }

  v60 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v61 = *(v37 + 48);
  v62 = v77;
  outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v77, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v63 = v62;
  outlined init with copy of PgQuery_Alias?(v58 + v60, v62 + v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v42(v62, 1, v41) != 1)
  {
    v64 = v62;
    v65 = v76;
    outlined init with copy of PgQuery_Alias?(v64, v76, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v42(v63 + v61, 1, v41) == 1)
    {

      outlined destroy of PgQuery_OidList(v65, type metadata accessor for PgQuery_Node);
      goto LABEL_35;
    }

    v69 = v75;
    outlined init with take of PgQuery_OidList(v63 + v61, v75, type metadata accessor for PgQuery_Node);
    v70 = *(v41 + 20);
    v71 = *(v65 + v70);
    v72 = *(v69 + v70);
    if (v71 != v72)
    {

      v73 = closure #1 in static PgQuery_Node.== infix(_:_:)(v71, v72);

      if (!v73)
      {

        outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v65, type metadata accessor for PgQuery_Node);
        v66 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v67 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        v68 = v77;
        goto LABEL_36;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v74 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v65, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(v77, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    return (v74 & 1) != 0;
  }

  if (v42(v62 + v61, 1, v41) != 1)
  {
LABEL_35:
    v66 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v67 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v68 = v63;
LABEL_36:
    outlined destroy of URL?(v68, v66, v67);
    return 0;
  }

  outlined destroy of URL?(v62, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CopyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CopyStmt and conformance PgQuery_CopyStmt, type metadata accessor for PgQuery_CopyStmt, &protocol conformance descriptor for PgQuery_CopyStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CopyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CopyStmt and conformance PgQuery_CopyStmt, type metadata accessor for PgQuery_CopyStmt, &protocol conformance descriptor for PgQuery_CopyStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v3 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableElts) = MEMORY[0x277D84F90];
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
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);

  return v0;
}

void type metadata completion function for PgQuery_CreateStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_PartitionBoundSpec?, type metadata accessor for PgQuery_PartitionBoundSpec, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_PartitionSpec?, type metadata accessor for PgQuery_PartitionSpec, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x277D83D88]);
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
  v53 = a3;
  v56 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v40 - v6;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v42 = *(TypeName - 8);
  MEMORY[0x28223BE20](TypeName);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v40 - v9;
  PartitionSpec = type metadata accessor for PgQuery_PartitionSpec(0);
  v46 = *(PartitionSpec - 8);
  MEMORY[0x28223BE20](PartitionSpec);
  v41 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v40 - v12;
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  v47 = *(PartitionBoundSpec - 8);
  MEMORY[0x28223BE20](PartitionBoundSpec);
  v45 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v40 - v15;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v18 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v18 + 48))(v16, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v21 = v52;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v16, v20, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v22 = v52;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v21 = v22;
    if (v22)
    {
      return outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
    }

    outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
  }

  v24 = v51;
  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableElts) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v25 = PartitionBoundSpec;
    if (v21)
    {
    }
  }

  else
  {
    v25 = PartitionBoundSpec;
  }

  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhRelations) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v21)
    {
    }
  }

  v26 = v48;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound, v48, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v27 = (*(v47 + 48))(v26, 1, v25);
  v28 = PartitionSpec;
  if (v27 == 1)
  {
    outlined destroy of URL?(v26, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  }

  else
  {
    v29 = v45;
    outlined init with take of PgQuery_OidList(v26, v45, type metadata accessor for PgQuery_PartitionBoundSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec, type metadata accessor for PgQuery_PartitionBoundSpec, &protocol conformance descriptor for PgQuery_PartitionBoundSpec);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v21)
    {
      return outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_PartitionBoundSpec);
    }

    outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_PartitionBoundSpec);
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec, v24, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  if ((*(v46 + 48))(v24, 1, v28) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  }

  else
  {
    v30 = v24;
    v31 = v41;
    outlined init with take of PgQuery_OidList(v30, v41, type metadata accessor for PgQuery_PartitionSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionSpec and conformance PgQuery_PartitionSpec, type metadata accessor for PgQuery_PartitionSpec, &protocol conformance descriptor for PgQuery_PartitionSpec);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_PartitionSpec);
    if (v21)
    {
      return result;
    }
  }

  v32 = v43;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename, v43, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v42 + 48))(v32, 1, TypeName) == 1)
  {
    result = outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    v33 = v32;
    v34 = v40;
    outlined init with take of PgQuery_OidList(v33, v40, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_TypeName);
    if (v21)
    {
      return result;
    }
  }

  if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v21))
  {
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v21))
    {
      if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit) || (v35 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit + 8), v54 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit), v55 = v35, lazy protocol witness table accessor for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v21))
      {
        v36 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename + 8);
        v37 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v37 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename) & 0xFFFFFFFFFFFFLL;
        }

        if (!v37 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v21))
        {
          v38 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);
          v39 = HIBYTE(v38) & 0xF;
          if ((v38 & 0x2000000000000000) == 0)
          {
            v39 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) & 0xFFFFFFFFFFFFLL;
          }

          if (!v39 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v21))
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
  v109 = a2;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v95 = *(TypeName - 8);
  v96 = TypeName;
  MEMORY[0x28223BE20](TypeName);
  v91 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v92 = &v91 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  MEMORY[0x28223BE20](v94);
  v97 = &v91 - v7;
  PartitionSpec = type metadata accessor for PgQuery_PartitionSpec(0);
  v101 = *(PartitionSpec - 8);
  v102 = PartitionSpec;
  MEMORY[0x28223BE20](PartitionSpec);
  v93 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v98 = &v91 - v11;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_PartitionSpecVSg_ADtMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSg_ADtMR);
  MEMORY[0x28223BE20](v100);
  v103 = &v91 - v12;
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  v106 = *(PartitionBoundSpec - 8);
  v107 = PartitionBoundSpec;
  MEMORY[0x28223BE20](PartitionBoundSpec);
  v99 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v104 = (&v91 - v16);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMR);
  MEMORY[0x28223BE20](v105);
  v108 = &v91 - v17;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v19 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v91 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v91 - v27;
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v30 = *(v26 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v91 - v27, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v31 = v109 + v29;
  v32 = v109;
  outlined init with copy of PgQuery_Alias?(v31, &v28[v30], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v33 = *(v19 + 48);
  if (v33(v28, 1, RangeVar) == 1)
  {
    v34 = v33(&v28[v30], 1, RangeVar);

    v35 = a1;
    if (v34 == 1)
    {
      outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v36 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v37 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v38 = v28;
LABEL_7:
    outlined destroy of URL?(v38, v36, v37);
    goto LABEL_64;
  }

  outlined init with copy of PgQuery_Alias?(v28, v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v33(&v28[v30], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  outlined init with take of PgQuery_OidList(&v28[v30], v21, type metadata accessor for PgQuery_RangeVar);
  v35 = a1;

  v39 = specialized static PgQuery_RangeVar.== infix(_:_:)(v24, v21);
  outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v39 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_9:
  v40 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableElts);
  v41 = *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableElts);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v40, v41);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_64;
  }

  v43 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhRelations);
  v44 = *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhRelations);

  v45 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v43, v44);

  if ((v45 & 1) == 0)
  {
    goto LABEL_64;
  }

  v46 = v32;
  v47 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound;
  v48 = *(v105 + 48);
  v49 = v108;
  outlined init with copy of PgQuery_Alias?(v35 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partbound, v108, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v50 = v46 + v47;
  v51 = v46;
  outlined init with copy of PgQuery_Alias?(v50, v49 + v48, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v52 = v107;
  v53 = *(v106 + 48);
  if (v53(v49, 1, v107) == 1)
  {
    if (v53(v49 + v48, 1, v52) == 1)
    {
      outlined destroy of URL?(v49, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v54 = v104;
  outlined init with copy of PgQuery_Alias?(v49, v104, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  if (v53(v49 + v48, 1, v52) == 1)
  {
    outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_PartitionBoundSpec);
LABEL_16:
    v36 = &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMd;
    v37 = &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMR;
    v38 = v49;
    goto LABEL_7;
  }

  v55 = v49 + v48;
  v56 = v99;
  outlined init with take of PgQuery_OidList(v55, v99, type metadata accessor for PgQuery_PartitionBoundSpec);
  v57 = specialized static PgQuery_PartitionBoundSpec.== infix(_:_:)(v54, v56);
  outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_PartitionBoundSpec);
  outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_PartitionBoundSpec);
  outlined destroy of URL?(v49, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  if ((v57 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_18:
  v58 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec;
  v59 = *(v100 + 48);
  v60 = v103;
  outlined init with copy of PgQuery_Alias?(v35 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__partspec, v103, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  v61 = v51 + v58;
  v62 = v60;
  outlined init with copy of PgQuery_Alias?(v61, v60 + v59, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  v63 = v102;
  v64 = *(v101 + 48);
  if (v64(v60, 1, v102) == 1)
  {
    if (v64(v60 + v59, 1, v63) == 1)
    {
      outlined destroy of URL?(v60, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  v71 = v98;
  outlined init with copy of PgQuery_Alias?(v62, v98, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  if (v64(v62 + v59, 1, v63) == 1)
  {
    outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_PartitionSpec);
LABEL_26:
    v36 = &_s14BiomeSQLParser21PgQuery_PartitionSpecVSg_ADtMd;
    v37 = &_s14BiomeSQLParser21PgQuery_PartitionSpecVSg_ADtMR;
LABEL_38:
    v38 = v62;
    goto LABEL_7;
  }

  v72 = v62 + v59;
  v73 = v93;
  outlined init with take of PgQuery_OidList(v72, v93, type metadata accessor for PgQuery_PartitionSpec);
  if ((*v71 != *v73 || *(v71 + 8) != *(v73 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v71 + 16), *(v73 + 16)) & 1) == 0 || *(v71 + 24) != *(v73 + 24))
  {
    outlined destroy of PgQuery_OidList(v73, type metadata accessor for PgQuery_PartitionSpec);
    outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_PartitionSpec);
    v36 = &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd;
    v37 = &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR;
    goto LABEL_38;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v74 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v73, type metadata accessor for PgQuery_PartitionSpec);
  outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_PartitionSpec);
  outlined destroy of URL?(v62, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMd, &_s14BiomeSQLParser21PgQuery_PartitionSpecVSgMR);
  if ((v74 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_21:
  v65 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename;
  v66 = *(v94 + 48);
  v67 = v97;
  outlined init with copy of PgQuery_Alias?(v35 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ofTypename, v97, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v68 = v51 + v65;
  v62 = v67;
  outlined init with copy of PgQuery_Alias?(v68, v67 + v66, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v69 = v96;
  v70 = *(v95 + 48);
  if (v70(v67, 1, v96) == 1)
  {
    if (v70(v67 + v66, 1, v69) == 1)
    {
      outlined destroy of URL?(v67, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  v75 = v92;
  outlined init with copy of PgQuery_Alias?(v62, v92, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v70(v62 + v66, 1, v69) == 1)
  {
    outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_TypeName);
LABEL_37:
    v36 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v37 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    goto LABEL_38;
  }

  v76 = v62 + v66;
  v77 = v91;
  outlined init with take of PgQuery_OidList(v76, v91, type metadata accessor for PgQuery_TypeName);
  v78 = specialized static PgQuery_TypeName.== infix(_:_:)(v75, v77);
  outlined destroy of PgQuery_OidList(v77, type metadata accessor for PgQuery_TypeName);
  outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_TypeName);
  outlined destroy of URL?(v62, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((v78 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_40:
  v79 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);
  v80 = *(v51 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);

  v81 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v79, v80);

  if ((v81 & 1) == 0)
  {
    goto LABEL_64;
  }

  v82 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
  v83 = *(v51 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v84 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v82, v83);

  if ((v84 & 1) == 0)
  {
    goto LABEL_64;
  }

  v85 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit);
  v86 = *(v51 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit);
  if (*(v51 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oncommit + 8) == 1)
  {
    if (v86 > 1)
    {
      if (v86 == 2)
      {
        if (v85 == 2)
        {
          goto LABEL_49;
        }
      }

      else if (v86 == 3)
      {
        if (v85 == 3)
        {
          goto LABEL_49;
        }
      }

      else if (v85 == 4)
      {
        goto LABEL_49;
      }

LABEL_64:

      v89 = 0;
      return v89 & 1;
    }

    if (!v86)
    {
      if (!v85)
      {
        goto LABEL_49;
      }

      goto LABEL_64;
    }

    if (v85 != 1)
    {
      goto LABEL_64;
    }
  }

  else if (v85 != v86)
  {
    goto LABEL_64;
  }

LABEL_49:
  if ((*(v35 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename) != *(v51 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename) || *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename + 8) != *(v51 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablespacename + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(v35 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) != *(v51 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) || *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8) != *(v51 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_64;
  }

  v87 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists);

  v88 = *(v51 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_CreateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists);

  v89 = v87 ^ v88 ^ 1;
  return v89 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt, &protocol conformance descriptor for PgQuery_CreateStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt, &protocol conformance descriptor for PgQuery_CreateStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  ResultSetCursor.columns.modify();
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
  v1 = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DefineStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefineStmt and conformance PgQuery_DefineStmt, type metadata accessor for PgQuery_DefineStmt, &protocol conformance descriptor for PgQuery_DefineStmt);

  return MEMORY[0x28217E428](a1, Scan);
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

  ResultSetCursor.columns.modify();
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
  *a1 = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropStmt and conformance PgQuery_DropStmt, type metadata accessor for PgQuery_DropStmt, &protocol conformance descriptor for PgQuery_DropStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TruncateStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TruncateStmt and conformance PgQuery_TruncateStmt, type metadata accessor for PgQuery_TruncateStmt, &protocol conformance descriptor for PgQuery_TruncateStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TruncateStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TruncateStmt and conformance PgQuery_TruncateStmt, type metadata accessor for PgQuery_TruncateStmt, &protocol conformance descriptor for PgQuery_TruncateStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TruncateStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TruncateStmt and conformance PgQuery_TruncateStmt, type metadata accessor for PgQuery_TruncateStmt, &protocol conformance descriptor for PgQuery_TruncateStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CurrentOfExpr._StorageClass.__deallocating_deinit(void *a1)
{
  outlined destroy of URL?(v1 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
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
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v8 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = a1;
  v13 = *(a1 + 24);
  ResultSetCursor.columns.modify();
  if (v14)
  {
    v22 = v11;
    v23 = v13;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v15 = v24;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v15)
    {
      return result;
    }

    v24 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v12 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v8 + 48))(v7, 1, Node) == 1)
  {
    result = outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v17 = v24;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
    if (v17)
    {
      return result;
    }
  }

  v18 = *(v12 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment + 8);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *(v12 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment) & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_CommentStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  ResultSetCursor.columns.modify();
  v14 = v13;
  ResultSetCursor.columns.modify();
  if (v14 != v15)
  {
    return 0;
  }

  v16 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v17 = *(v10 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v16, &v12[v17], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v5 + 48);
  if (v18(v12, 1, Node) == 1)
  {
    v19 = v18(&v12[v17], 1, Node);

    if (v19 == 1)
    {
      outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  outlined init with copy of PgQuery_Alias?(v12, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v18(&v12[v17], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
LABEL_7:
    v20 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v21 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_8:
    outlined destroy of URL?(v12, v20, v21);
LABEL_9:

    return 0;
  }

  v23 = v31;
  outlined init with take of PgQuery_OidList(&v12[v17], v31, type metadata accessor for PgQuery_Node);
  v24 = *(Node + 20);
  v25 = *&v9[v24];
  v26 = *(v23 + v24);

  if (v25 != v26)
  {

    v27 = closure #1 in static PgQuery_Node.== infix(_:_:)(v25, v26);

    if (!v27)
    {
      outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_8;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v28 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_15:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment + 8) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment + 8))
  {

    return 1;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return (v29 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CommentStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommentStmt and conformance PgQuery_CommentStmt, type metadata accessor for PgQuery_CommentStmt, &protocol conformance descriptor for PgQuery_CommentStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CommentStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommentStmt and conformance PgQuery_CommentStmt, type metadata accessor for PgQuery_CommentStmt, &protocol conformance descriptor for PgQuery_CommentStmt);

  return MEMORY[0x28217E428](a1, Scan);
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_FetchStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FetchStmt and conformance PgQuery_FetchStmt, type metadata accessor for PgQuery_FetchStmt, &protocol conformance descriptor for PgQuery_FetchStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v5 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexParams) = MEMORY[0x277D84F90];
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

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  return v0;
}

void type metadata completion function for PgQuery_IndexStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  MEMORY[0x28223BE20](v7 - 8);
  v34 = &v32 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v32 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v14 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  outlined init with copy of PgQuery_Alias?(v36 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v12, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v14 + 48))(v12, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v16, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_RangeVar);
    }

    outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_RangeVar);
  }

  v21 = v36;
  v22 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) & 0xFFFFFFFFFFFFLL;
  }

  v25 = v34;
  v24 = Node;
  if (v23)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  v26 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace + 8);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace) & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  if (*(*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexParams) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  if (*(*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexIncludingParams) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  if (!*(*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16))
  {
    goto LABEL_30;
  }

  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

  dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  if (v5)
  {
  }

LABEL_30:
  outlined init with copy of PgQuery_Alias?(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v28 = (*(v32 + 48))(v25, 1, v24);
  v29 = v33;
  if (v28 == 1)
  {
    outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v25, v33, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_Node);
  }

  if (*(*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__excludeOpNames) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  v30 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment + 8);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment) & 0xFFFFFFFFFFFFLL;
  }

  if (!v31 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v5))
  {
    if (!*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexOid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v5))
    {
      if (!*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldNode) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v5))
      {
        if (!*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldCreateSubid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v5))
        {
          result = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldFirstRelfilenodeSubid);
          if (!result || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v5))
          {
            if (*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unique) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
            {
              if (*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__primary) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
              {
                if (*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
                {
                  if (*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
                  {
                    if (*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
                    {
                      if (*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transformed) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
                      {
                        if (*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__concurrent) == 1)
                        {
                          result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
                          if (v5)
                          {
                            return result;
                          }

                          v21 = v36;
                        }

                        if (*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
                        {
                          if (*(v36 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc) == 1)
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
  v67 = *(Node - 8);
  v68 = Node;
  MEMORY[0x28223BE20](Node);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v65 = &v62 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v66);
  v10 = &v62 - v9;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v12 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v62 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - v19;
  if (*(a1 + 16) == *(a2 + 16) || (v21 = _stringCompareWithSmolCheck(_:_:expecting:)(), v22 = 0, (v21 & 1) != 0))
  {
    v63 = v6;
    v64 = v10;
    v69 = a2;
    v23 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
    v24 = *(v18 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v20, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v25 = v69 + v23;
    v26 = v69;
    outlined init with copy of PgQuery_Alias?(v25, &v20[v24], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v27 = *(v12 + 48);
    if (v27(v20, 1, RangeVar) == 1)
    {
      v28 = v27(&v20[v24], 1, RangeVar);

      if (v28 == 1)
      {
        outlined destroy of URL?(v20, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
        goto LABEL_13;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v20, v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if (v27(&v20[v24], 1, RangeVar) != 1)
      {
        outlined init with take of PgQuery_OidList(&v20[v24], v14, type metadata accessor for PgQuery_RangeVar);

        v33 = specialized static PgQuery_RangeVar.== infix(_:_:)(v17, v14);
        outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_RangeVar);
        outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_RangeVar);
        outlined destroy of URL?(v20, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
        if ((v33 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_13:
        if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) != *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8) != *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_10;
        }

        if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace) != *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace + 8) != *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpace + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_10;
        }

        v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexParams);
        v35 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexParams);

        NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v34, v35);

        if ((NodeV_Tt1g5 & 1) == 0)
        {
          goto LABEL_10;
        }

        v37 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexIncludingParams);
        v38 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexIncludingParams);

        v39 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v37, v38);

        if ((v39 & 1) == 0)
        {
          goto LABEL_10;
        }

        v40 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
        v41 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

        v42 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v40, v41);

        if ((v42 & 1) == 0)
        {
          goto LABEL_10;
        }

        v43 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
        v44 = *(v66 + 48);
        v45 = v64;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v64, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v46 = v69 + v43;
        v47 = v69;
        outlined init with copy of PgQuery_Alias?(v46, v45 + v44, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v48 = v68;
        v49 = *(v67 + 48);
        if (v49(v45, 1, v68) == 1)
        {
          if (v49(v45 + v44, 1, v48) == 1)
          {
            outlined destroy of URL?(v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            goto LABEL_32;
          }
        }

        else
        {
          v50 = v65;
          outlined init with copy of PgQuery_Alias?(v45, v65, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v49(v45 + v44, 1, v48) != 1)
          {
            v51 = v63;
            outlined init with take of PgQuery_OidList(v45 + v44, v63, type metadata accessor for PgQuery_Node);
            v52 = *(v48 + 20);
            v53 = *(v50 + v52);
            v54 = *(v51 + v52);
            if (v53 == v54 || (, , v55 = closure #1 in static PgQuery_Node.== infix(_:_:)(v53, v54), , , v55))
            {
              type metadata accessor for UnknownStorage();
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
              v56 = dispatch thunk of static Equatable.== infix(_:_:)();
              outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
              outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
              outlined destroy of URL?(v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
              if (v56)
              {
LABEL_32:
                v57 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__excludeOpNames);
                v58 = *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__excludeOpNames);

                v59 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v57, v58);

                if ((v59 & 1) != 0
                  && (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment) == *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment + 8) == *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__idxcomment + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexOid) == *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexOid)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldNode) == *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldNode)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldCreateSubid) == *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldCreateSubid)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldFirstRelfilenodeSubid) == *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldFirstRelfilenodeSubid)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unique) == *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__unique)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__primary) == *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__primary)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) == *(v47 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) == *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) == *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transformed) == *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transformed)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__concurrent) == *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__concurrent)
                  && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) == *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists))
                {
                  v60 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc);

                  v61 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc);

                  v22 = v60 ^ v61 ^ 1;
                  return v22 & 1;
                }
              }

LABEL_10:

              v22 = 0;
              return v22 & 1;
            }

            outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
            outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
            v29 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
            v30 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
            goto LABEL_28;
          }

          outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
        }

        v29 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
        v30 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_28:
        v31 = v45;
        goto LABEL_9;
      }

      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_RangeVar);
    }

    v29 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v30 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v31 = v20;
LABEL_9:
    outlined destroy of URL?(v31, v29, v30);
    goto LABEL_10;
  }

  return v22 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_IndexStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexStmt and conformance PgQuery_IndexStmt, type metadata accessor for PgQuery_IndexStmt, &protocol conformance descriptor for PgQuery_IndexStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_IndexStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexStmt and conformance PgQuery_IndexStmt, type metadata accessor for PgQuery_IndexStmt, &protocol conformance descriptor for PgQuery_IndexStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v11 = *(TypeName - 8);
  MEMORY[0x28223BE20](TypeName);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v5 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    if (*(v5 + 1) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      v18[1] = a1;
      v19 = v4;
      if (*(*(v5 + 8) + 16))
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        v15 = v19;
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v15)
        {
          return result;
        }

        v19 = 0;
      }

      if (*(*(v5 + 16) + 16))
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        v16 = v19;
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v16)
        {
          return result;
        }

        v19 = 0;
      }

      v18[0] = type metadata accessor for PgQuery_CreateFunctionStmt(0);
      outlined init with copy of PgQuery_Alias?(v5 + *(v18[0] + 40), v9, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      if ((*(v11 + 48))(v9, 1, TypeName) == 1)
      {
        outlined destroy of URL?(v9, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
        v17 = v19;
      }

      else
      {
        outlined init with take of PgQuery_OidList(v9, v13, type metadata accessor for PgQuery_TypeName);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
        v17 = v19;
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_TypeName);
        if (v17)
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
      if (!v17)
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
  v4 = MEMORY[0x277D84F90];
  *(a2 + 8) = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateFunctionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFunctionStmt and conformance PgQuery_CreateFunctionStmt, type metadata accessor for PgQuery_CreateFunctionStmt, &protocol conformance descriptor for PgQuery_CreateFunctionStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v7 = *(ObjectWithArgs - 8);
  MEMORY[0x28223BE20](ObjectWithArgs);
  v20 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v10 = v3;
  v11 = *(v3 + 8);
  ResultSetCursor.columns.modify();
  if (v12)
  {
    v22 = v9;
    v23 = v11;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v13 = v24;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v13)
    {
      return result;
    }

    v24 = 0;
  }

  AlterFunctionStmt = type metadata accessor for PgQuery_AlterFunctionStmt(0);
  v16 = v10;
  outlined init with copy of PgQuery_Alias?(v10 + *(AlterFunctionStmt + 28), v6, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((*(v7 + 48))(v6, 1, ObjectWithArgs) == 1)
  {
    outlined destroy of URL?(v6, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    v17 = v24;
  }

  else
  {
    v19[1] = AlterFunctionStmt;
    v18 = v20;
    outlined init with take of PgQuery_OidList(v6, v20, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);
    v17 = v24;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v17)
    {
      return result;
    }
  }

  if (!*(v16[2] + 16))
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  type metadata accessor for PgQuery_Node(0);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
  result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  if (!v17)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterFunctionStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v6 = *(*(ObjectWithArgs - 8) + 56);

  return v6(a2 + v4, 1, 1, ObjectWithArgs);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterFunctionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFunctionStmt and conformance PgQuery_AlterFunctionStmt, type metadata accessor for PgQuery_AlterFunctionStmt, &protocol conformance descriptor for PgQuery_AlterFunctionStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterFunctionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFunctionStmt and conformance PgQuery_AlterFunctionStmt, type metadata accessor for PgQuery_AlterFunctionStmt, &protocol conformance descriptor for PgQuery_AlterFunctionStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterFunctionStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFunctionStmt and conformance PgQuery_AlterFunctionStmt, type metadata accessor for PgQuery_AlterFunctionStmt, &protocol conformance descriptor for PgQuery_AlterFunctionStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DoStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DoStmt and conformance PgQuery_DoStmt, type metadata accessor for PgQuery_DoStmt, &protocol conformance descriptor for PgQuery_DoStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DoStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DoStmt and conformance PgQuery_DoStmt, type metadata accessor for PgQuery_DoStmt, &protocol conformance descriptor for PgQuery_DoStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DoStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DoStmt and conformance PgQuery_DoStmt, type metadata accessor for PgQuery_DoStmt, &protocol conformance descriptor for PgQuery_DoStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_RenameStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_RenameStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v34 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v36 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v11 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = a1;
  v16 = *(a1 + 24);
  ResultSetCursor.columns.modify();
  if (v17)
  {
    v40 = v14;
    v41 = v16;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v18 = v42;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v18)
    {
      return result;
    }

    v42 = 0;
  }

  v20 = *(v15 + 32);
  v21 = *(v15 + 40);
  ResultSetCursor.columns.modify();
  if (v22)
  {
    v40 = v20;
    v41 = v21;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v23 = v42;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v23)
    {
      return result;
    }

    v42 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v10, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v11 + 48))(v10, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v10, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v13, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v24 = v42;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_RangeVar);
    if (v24)
    {
      return result;
    }

    v42 = 0;
  }

  v25 = v37;
  outlined init with copy of PgQuery_Alias?(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v36 + 48))(v25, 1, Node) == 1)
  {
    result = outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v26 = v42;
  }

  else
  {
    v27 = v25;
    v28 = v35;
    outlined init with take of PgQuery_OidList(v27, v35, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v26 = v42;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
    if (v26)
    {
      return result;
    }
  }

  v29 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname + 8);
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname) & 0xFFFFFFFFFFFFLL;
  }

  if (!v30 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v26))
  {
    v31 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname + 8);
    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname) & 0xFFFFFFFFFFFFLL;
    }

    if (!v32 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v26))
    {
      if (!*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior) || (v33 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8), v40 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior), v41 = v33, lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v26))
      {
        if (*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) == 1)
        {
          return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}
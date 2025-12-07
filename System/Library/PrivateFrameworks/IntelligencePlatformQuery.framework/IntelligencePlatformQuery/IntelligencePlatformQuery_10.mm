uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RefreshMatViewStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RefreshMatViewStmt and conformance PgQuery_RefreshMatViewStmt, type metadata accessor for PgQuery_RefreshMatViewStmt, &protocol conformance descriptor for PgQuery_RefreshMatViewStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RefreshMatViewStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RefreshMatViewStmt and conformance PgQuery_RefreshMatViewStmt, type metadata accessor for PgQuery_RefreshMatViewStmt, &protocol conformance descriptor for PgQuery_RefreshMatViewStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RefreshMatViewStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RefreshMatViewStmt and conformance PgQuery_RefreshMatViewStmt, type metadata accessor for PgQuery_RefreshMatViewStmt, &protocol conformance descriptor for PgQuery_RefreshMatViewStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.init() in conformance PgQuery_NotifyStmt@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ReplicaIdentityStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReplicaIdentityStmt and conformance PgQuery_ReplicaIdentityStmt, type metadata accessor for PgQuery_ReplicaIdentityStmt, &protocol conformance descriptor for PgQuery_ReplicaIdentityStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ReplicaIdentityStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReplicaIdentityStmt and conformance PgQuery_ReplicaIdentityStmt, type metadata accessor for PgQuery_ReplicaIdentityStmt, &protocol conformance descriptor for PgQuery_ReplicaIdentityStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ReplicaIdentityStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReplicaIdentityStmt and conformance PgQuery_ReplicaIdentityStmt, type metadata accessor for PgQuery_ReplicaIdentityStmt, &protocol conformance descriptor for PgQuery_ReplicaIdentityStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_NotifyStmt(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_AlterSystemStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for PgQuery_AlterSystemStmt(0);
        type metadata accessor for PgQuery_VariableSetStmt(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterSystemStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v8 = *(VariableSetStmt - 8);
  MEMORY[0x28223BE20](VariableSetStmt);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterSystemStmt = type metadata accessor for PgQuery_AlterSystemStmt(0);
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterSystemStmt + 20), v6, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  if ((*(v8 + 48))(v6, 1, VariableSetStmt) == 1)
  {
    outlined destroy of URL?(v6, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v6, v10, type metadata accessor for PgQuery_VariableSetStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);
    v12 = v14[3];
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_VariableSetStmt);
    if (v12)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterSystemStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v6 = *(*(VariableSetStmt - 8) + 56);

  return v6(a2 + v4, 1, 1, VariableSetStmt);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterSystemStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSystemStmt and conformance PgQuery_AlterSystemStmt, type metadata accessor for PgQuery_AlterSystemStmt, &protocol conformance descriptor for PgQuery_AlterSystemStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterSystemStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSystemStmt and conformance PgQuery_AlterSystemStmt, type metadata accessor for PgQuery_AlterSystemStmt, &protocol conformance descriptor for PgQuery_AlterSystemStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterSystemStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSystemStmt and conformance PgQuery_AlterSystemStmt, type metadata accessor for PgQuery_AlterSystemStmt, &protocol conformance descriptor for PgQuery_AlterSystemStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreatePolicyStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v20 = &v19 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v5, 1, 1, RangeVar);
  v7 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles) = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  v19 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(*(Node - 8) + 56);
  v12(v1 + v10, 1, 1, Node);
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck;
  v12(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, 1, 1, Node);
  v14 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v14;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;

  outlined assign with copy of PgQuery_Node?(a1 + v15, v1 + v5, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v16 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName + 8);
  *v7 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName);
  v7[1] = v16;

  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v1 + v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = v20;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v17, v1 + v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return v1;
}

uint64_t PgQuery_CreatePolicyStmt._StorageClass.__deallocating_deinit()
{

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_CreatePolicyStmt._StorageClass(uint64_t a1)
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

uint64_t closure #1 in PgQuery_CreatePolicyStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
            goto LABEL_20;
          case 2:
            v7 = v4;
            type metadata accessor for PgQuery_RangeVar(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
            goto LABEL_5;
          case 3:
LABEL_20:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          v7 = v4;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_5:
          v4 = v7;
LABEL_6:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_7;
        }

        if (result == 7)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          goto LABEL_6;
        }
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

LABEL_7:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CreatePolicyStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v35 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v39 = *(Node - 8);
  v11 = MEMORY[0x28223BE20](Node);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v38 = &v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - v15;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v18 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v40 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v36 = RangeVar;

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();

    if (v5)
    {
      return result;
    }

    RangeVar = v36;
  }

  outlined init with copy of PgQuery_Alias?(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v18 + 48))(v16, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v25 = v43;
  }

  else
  {
    v26 = v40;
    outlined init with take of PgQuery_OidList(v16, v40, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_RangeVar);
    v25 = v43;
    if (v5)
    {
      return result;
    }
  }

  v27 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName + 8);
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName) & 0xFFFFFFFFFFFFLL;
  }

  v30 = v41;
  v29 = Node;
  if (!v28 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v5))
  {
    if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
    {
      if (!*(*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v5))
      {
        outlined init with copy of PgQuery_Alias?(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v31 = *(v39 + 48);
        v39 += 48;
        if (v31(v25, 1, v29) == 1)
        {
          outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          v32 = v25;
          v33 = v38;
          outlined init with take of PgQuery_OidList(v32, v38, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_Node);
          if (v5)
          {
            return result;
          }
        }

        outlined init with copy of PgQuery_Alias?(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v31(v30, 1, v29) == 1)
        {
          return outlined destroy of URL?(v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          v34 = v37;
          outlined init with take of PgQuery_OidList(v30, v37, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          return outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_Node);
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CreatePolicyStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v77 = *(Node - 8);
  v4 = MEMORY[0x28223BE20](Node);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v71 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v69 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v12 = MEMORY[0x28223BE20](v76);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = &v69 - v15;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v17 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v69 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x28223BE20](v23);
  v25 = &v69 - v24;
  if (*(a1 + 16) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v69 = v6;
  v70 = v14;
  v78 = a2;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;
  v27 = *(v23 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, v25, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v28 = v78 + v26;
  v29 = v78;
  outlined init with copy of PgQuery_Alias?(v28, &v25[v27], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v30 = *(v17 + 48);
  if (v30(v25, 1, RangeVar) == 1)
  {
    v31 = v30(&v25[v27], 1, RangeVar);

    if (v31 == 1)
    {
      outlined destroy of URL?(v25, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_12;
    }

LABEL_8:
    v32 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v33 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_9:
    v34 = v25;
LABEL_10:
    outlined destroy of URL?(v34, v32, v33);
LABEL_29:

    return 0;
  }

  outlined init with copy of PgQuery_Alias?(v25, v22, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v30(&v25[v27], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_8;
  }

  outlined init with take of PgQuery_OidList(&v25[v27], v19, type metadata accessor for PgQuery_RangeVar);

  v35 = specialized static PgQuery_RangeVar.== infix(_:_:)(v22, v19);
  outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v25, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v35 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName) != *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName + 8) != *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive) != *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive))
  {
    goto LABEL_29;
  }

  v36 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);
  v37 = *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v36, v37);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_29;
  }

  v39 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  v40 = v75;
  v41 = *(v76 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v75, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = v40;
  outlined init with copy of PgQuery_Alias?(v78 + v39, v40 + v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v42 = v77 + 48;
  v43 = *(v77 + 48);
  v44 = Node;
  if (v43(v25, 1, Node) == 1)
  {
    v45 = v43(&v25[v41], 1, v44);
    v47 = v69;
    v46 = v70;
    if (v45 == 1)
    {
      outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v48 = v73;
  outlined init with copy of PgQuery_Alias?(v25, v73, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v49 = v43(&v25[v41], 1, v44);
  v47 = v69;
  v46 = v70;
  if (v49 == 1)
  {
    outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
LABEL_22:
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v33 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_9;
  }

  v77 = v42;
  v50 = &v25[v41];
  v51 = v72;
  outlined init with take of PgQuery_OidList(v50, v72, type metadata accessor for PgQuery_Node);
  v52 = *(v44 + 20);
  v53 = *(v48 + v52);
  v54 = *(v51 + v52);
  if (v53 != v54)
  {

    v55 = closure #1 in static PgQuery_Node.== infix(_:_:)(v53, v54);

    if (!v55)
    {
      outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v73, type metadata accessor for PgQuery_Node);
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v33 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v34 = v75;
      goto LABEL_10;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v56 = v73;
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v75, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v57 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_26:
  v58 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck;
  v59 = *(v76 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v78 + v58, v46 + v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v43(v46, 1, v44) != 1)
  {
    v61 = v71;
    outlined init with copy of PgQuery_Alias?(v46, v71, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v43((v46 + v59), 1, v44) == 1)
    {

      outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_Node);
      goto LABEL_33;
    }

    outlined init with take of PgQuery_OidList(v46 + v59, v47, type metadata accessor for PgQuery_Node);
    v64 = *(v44 + 20);
    v65 = *(v61 + v64);
    v66 = *(v47 + v64);
    if (v65 != v66)
    {

      v67 = closure #1 in static PgQuery_Node.== infix(_:_:)(v65, v66);

      if (!v67)
      {

        outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_Node);
        v62 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v63 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_34;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v68 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    return (v68 & 1) != 0;
  }

  if (v43((v46 + v59), 1, v44) != 1)
  {
LABEL_33:
    v62 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v63 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_34:
    outlined destroy of URL?(v46, v62, v63);
    return 0;
  }

  outlined destroy of URL?(v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreatePolicyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePolicyStmt and conformance PgQuery_CreatePolicyStmt, type metadata accessor for PgQuery_CreatePolicyStmt, &protocol conformance descriptor for PgQuery_CreatePolicyStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreatePolicyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePolicyStmt and conformance PgQuery_CreatePolicyStmt, type metadata accessor for PgQuery_CreatePolicyStmt, &protocol conformance descriptor for PgQuery_CreatePolicyStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreatePolicyStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePolicyStmt and conformance PgQuery_CreatePolicyStmt, type metadata accessor for PgQuery_CreatePolicyStmt, &protocol conformance descriptor for PgQuery_CreatePolicyStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterPolicyStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v6, 1, 1, RangeVar);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles) = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(*(Node - 8) + 56);
  v11(v1 + v9, 1, 1, Node);
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck;
  v11(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, 1, 1, Node);
  v13 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v13;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;

  outlined assign with copy of PgQuery_Node?(a1 + v14, v1 + v6, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v1 + v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v5, v1 + v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return v1;
}

uint64_t PgQuery_AlterPolicyStmt._StorageClass.__deallocating_deinit()
{

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_AlterPolicyStmt._StorageClass(uint64_t a1)
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

uint64_t closure #1 in PgQuery_AlterPolicyStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

      if (result > 2)
      {
        break;
      }

      if (result != 1)
      {
        if (result != 2)
        {
          goto LABEL_5;
        }

        v7 = v4;
        type metadata accessor for PgQuery_RangeVar(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
LABEL_16:
        v4 = v7;
        goto LABEL_17;
      }

      dispatch thunk of Decoder.decodeSingularStringField(value:)();
LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 3)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      goto LABEL_5;
    }

    if (result == 4)
    {
      v7 = v4;
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      goto LABEL_16;
    }

    if (result != 5)
    {
      goto LABEL_5;
    }

    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_17:
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_5;
  }

  return result;
}

uint64_t closure #1 in PgQuery_AlterPolicyStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v33 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v38 = *(Node - 8);
  v11 = MEMORY[0x28223BE20](Node);
  v33 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v34 = &v33 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v33 - v15;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v18 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v5))
  {
    outlined init with copy of PgQuery_Alias?(v39 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if ((*(v18 + 48))(v16, 1, RangeVar) == 1)
    {
      outlined destroy of URL?(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v26 = v37;
      v25 = v38;
    }

    else
    {
      outlined init with take of PgQuery_OidList(v16, v20, type metadata accessor for PgQuery_RangeVar);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
      v26 = v37;
      v25 = v38;
      if (v5)
      {
        return result;
      }
    }

    v28 = v35;
    v27 = Node;
    if (!*(*(v39 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v5))
    {
      outlined init with copy of PgQuery_Alias?(v39 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v29 = *(v25 + 48);
      if (v29(v26, 1, v27) == 1)
      {
        outlined destroy of URL?(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v30 = v26;
        v31 = v34;
        outlined init with take of PgQuery_OidList(v30, v34, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_Node);
        if (v5)
        {
          return result;
        }
      }

      outlined init with copy of PgQuery_Alias?(v39 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v29(v28, 1, v27) == 1)
      {
        return outlined destroy of URL?(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v32 = v33;
        outlined init with take of PgQuery_OidList(v28, v33, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        return outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_Node);
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_AlterPolicyStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v77 = *(Node - 8);
  v4 = MEMORY[0x28223BE20](Node);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v71 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v69 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v12 = MEMORY[0x28223BE20](v76);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = &v69 - v15;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v17 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v69 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x28223BE20](v23);
  v25 = &v69 - v24;
  if (*(a1 + 16) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v69 = v6;
  v70 = v14;
  v78 = a2;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;
  v27 = *(v23 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, v25, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v28 = v78 + v26;
  v29 = v78;
  outlined init with copy of PgQuery_Alias?(v28, &v25[v27], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v30 = *(v17 + 48);
  if (v30(v25, 1, RangeVar) == 1)
  {
    v31 = v30(&v25[v27], 1, RangeVar);

    if (v31 == 1)
    {
      outlined destroy of URL?(v25, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_12;
    }

LABEL_8:
    v32 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v33 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_9:
    v34 = v25;
LABEL_10:
    outlined destroy of URL?(v34, v32, v33);
LABEL_25:

    return 0;
  }

  outlined init with copy of PgQuery_Alias?(v25, v22, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v30(&v25[v27], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_8;
  }

  outlined init with take of PgQuery_OidList(&v25[v27], v19, type metadata accessor for PgQuery_RangeVar);

  v35 = specialized static PgQuery_RangeVar.== infix(_:_:)(v22, v19);
  outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v25, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v35 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  v36 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);
  v37 = *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v36, v37);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_25;
  }

  v39 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  v40 = v75;
  v41 = *(v76 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v75, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = v40;
  outlined init with copy of PgQuery_Alias?(v78 + v39, v40 + v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v42 = v77 + 48;
  v43 = *(v77 + 48);
  v44 = Node;
  if (v43(v25, 1, Node) == 1)
  {
    v45 = v43(&v25[v41], 1, v44);
    v47 = v69;
    v46 = v70;
    if (v45 == 1)
    {
      outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v48 = v73;
  outlined init with copy of PgQuery_Alias?(v25, v73, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v49 = v43(&v25[v41], 1, v44);
  v47 = v69;
  v46 = v70;
  if (v49 == 1)
  {
    outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
LABEL_18:
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v33 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_9;
  }

  v77 = v42;
  v50 = &v25[v41];
  v51 = v72;
  outlined init with take of PgQuery_OidList(v50, v72, type metadata accessor for PgQuery_Node);
  v52 = *(v44 + 20);
  v53 = *(v48 + v52);
  v54 = *(v51 + v52);
  if (v53 != v54)
  {

    v55 = closure #1 in static PgQuery_Node.== infix(_:_:)(v53, v54);

    if (!v55)
    {
      outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v73, type metadata accessor for PgQuery_Node);
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v33 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v34 = v75;
      goto LABEL_10;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v56 = v73;
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v75, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v57 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v58 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck;
  v59 = *(v76 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v78 + v58, v46 + v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v43(v46, 1, v44) != 1)
  {
    v61 = v71;
    outlined init with copy of PgQuery_Alias?(v46, v71, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v43((v46 + v59), 1, v44) == 1)
    {

      outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_Node);
      goto LABEL_29;
    }

    outlined init with take of PgQuery_OidList(v46 + v59, v47, type metadata accessor for PgQuery_Node);
    v64 = *(v44 + 20);
    v65 = *(v61 + v64);
    v66 = *(v47 + v64);
    if (v65 != v66)
    {

      v67 = closure #1 in static PgQuery_Node.== infix(_:_:)(v65, v66);

      if (!v67)
      {

        outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_Node);
        v62 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v63 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_30;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v68 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    return (v68 & 1) != 0;
  }

  if (v43((v46 + v59), 1, v44) != 1)
  {
LABEL_29:
    v62 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v63 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_30:
    outlined destroy of URL?(v46, v62, v63);
    return 0;
  }

  outlined destroy of URL?(v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterPolicyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPolicyStmt and conformance PgQuery_AlterPolicyStmt, type metadata accessor for PgQuery_AlterPolicyStmt, &protocol conformance descriptor for PgQuery_AlterPolicyStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterPolicyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPolicyStmt and conformance PgQuery_AlterPolicyStmt, type metadata accessor for PgQuery_AlterPolicyStmt, &protocol conformance descriptor for PgQuery_AlterPolicyStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterPolicyStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPolicyStmt and conformance PgQuery_AlterPolicyStmt, type metadata accessor for PgQuery_AlterPolicyStmt, &protocol conformance descriptor for PgQuery_AlterPolicyStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateTransformStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v6 = v3;
          type metadata accessor for PgQuery_CreateTransformStmt(0);
          type metadata accessor for PgQuery_TypeName(0);
          v7 = type metadata accessor for PgQuery_TypeName;
          v8 = &protocol conformance descriptor for PgQuery_TypeName;
          v9 = &lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName;
          goto LABEL_16;
        }

        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else
      {
        if (result == 3)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_5;
        }

        if (result == 4 || result == 5)
        {
          v6 = v3;
          type metadata accessor for PgQuery_CreateTransformStmt(0);
          type metadata accessor for PgQuery_ObjectWithArgs(0);
          v7 = type metadata accessor for PgQuery_ObjectWithArgs;
          v8 = &protocol conformance descriptor for PgQuery_ObjectWithArgs;
          v9 = &lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs;
LABEL_16:
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(v9, v7, v8);
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateTransformStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v45 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = &v37 - v10;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v43 = *(ObjectWithArgs - 8);
  v44 = ObjectWithArgs;
  v12 = MEMORY[0x28223BE20](ObjectWithArgs);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v40 = &v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - v16;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v19 = *(TypeName - 8);
  MEMORY[0x28223BE20](TypeName);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3 == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  TransformStmt = type metadata accessor for PgQuery_CreateTransformStmt(0);
  outlined init with copy of PgQuery_Alias?(&v6[TransformStmt[7]], v17, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v19 + 48))(v17, 1, TypeName) == 1)
  {
    outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v24 = v5;
  }

  else
  {
    v37 = v6;
    v38 = TransformStmt;
    outlined init with take of PgQuery_OidList(v17, v21, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    v24 = v5;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_TypeName);
    if (v5)
    {
      return result;
    }

    v6 = v37;
    TransformStmt = v38;
  }

  v25 = *(v6 + 2);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = *(v6 + 1) & 0xFFFFFFFFFFFFLL;
  }

  v28 = v43;
  v27 = v44;
  if (v26)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v24)
    {
      return result;
    }

    v29 = 0;
  }

  else
  {
    v29 = v24;
  }

  v30 = v42;
  outlined init with copy of PgQuery_Alias?(&v6[TransformStmt[8]], v42, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v31 = *(v28 + 48);
  if (v31(v30, 1, v27) == 1)
  {
    outlined destroy of URL?(v30, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    v32 = v41;
  }

  else
  {
    v38 = TransformStmt;
    v33 = v30;
    v34 = v6;
    v35 = v40;
    outlined init with take of PgQuery_OidList(v33, v40, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v29)
    {
      return result;
    }

    v29 = 0;
    v6 = v34;
    v32 = v41;
    TransformStmt = v38;
  }

  outlined init with copy of PgQuery_Alias?(&v6[TransformStmt[9]], v32, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if (v31(v32, 1, v27) == 1)
  {
    outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  }

  else
  {
    v36 = v39;
    outlined init with take of PgQuery_OidList(v32, v39, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v29)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateTransformStmt@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  UnknownStorage.init()();
  v4 = a1[7];
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(a2 + v4, 1, 1, TypeName);
  v6 = a1[8];
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v10 = *(*(ObjectWithArgs - 8) + 56);
  (v10)((ObjectWithArgs - 8), a2 + v6, 1, 1, ObjectWithArgs);
  v8 = a2 + a1[9];

  return v10(v8, 1, 1, ObjectWithArgs);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateTransformStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTransformStmt and conformance PgQuery_CreateTransformStmt, type metadata accessor for PgQuery_CreateTransformStmt, &protocol conformance descriptor for PgQuery_CreateTransformStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateTransformStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTransformStmt and conformance PgQuery_CreateTransformStmt, type metadata accessor for PgQuery_CreateTransformStmt, &protocol conformance descriptor for PgQuery_CreateTransformStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateTransformStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTransformStmt and conformance PgQuery_CreateTransformStmt, type metadata accessor for PgQuery_CreateTransformStmt, &protocol conformance descriptor for PgQuery_CreateTransformStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateAmStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      switch(result)
      {
        case 3:
          goto LABEL_10;
        case 2:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 1:
LABEL_10:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateAmStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[2] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      v8 = v3[4];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v3[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for PgQuery_CreateAmStmt(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateAmStmt@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateAmStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateAmStmt and conformance PgQuery_CreateAmStmt, type metadata accessor for PgQuery_CreateAmStmt, &protocol conformance descriptor for PgQuery_CreateAmStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateAmStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateAmStmt and conformance PgQuery_CreateAmStmt, type metadata accessor for PgQuery_CreateAmStmt, &protocol conformance descriptor for PgQuery_CreateAmStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateAmStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateAmStmt and conformance PgQuery_CreateAmStmt, type metadata accessor for PgQuery_CreateAmStmt, &protocol conformance descriptor for PgQuery_CreateAmStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreatePublicationStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_14;
        }

        if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreatePublicationStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v8 = v4;
    if (*(*(v3 + 16) + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      v8 = 0;
    }

    if (*(*(v3 + 24) + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      v9 = v8;
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v8)
      {
        return result;
      }
    }

    else
    {
      v9 = v8;
    }

    if (*(v3 + 32) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v9))
    {
      type metadata accessor for PgQuery_CreatePublicationStmt(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreatePublicationStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreatePublicationStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePublicationStmt and conformance PgQuery_CreatePublicationStmt, type metadata accessor for PgQuery_CreatePublicationStmt, &protocol conformance descriptor for PgQuery_CreatePublicationStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreatePublicationStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePublicationStmt and conformance PgQuery_CreatePublicationStmt, type metadata accessor for PgQuery_CreatePublicationStmt, &protocol conformance descriptor for PgQuery_CreatePublicationStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreatePublicationStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePublicationStmt and conformance PgQuery_CreatePublicationStmt, type metadata accessor for PgQuery_CreatePublicationStmt, &protocol conformance descriptor for PgQuery_CreatePublicationStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterPublicationStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v6 = v3;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          goto LABEL_16;
        }

        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else
      {
        v6 = v3;
        switch(result)
        {
          case 3:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_16:
            v3 = v6;
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 4:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 5:
            lazy protocol witness table accessor for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterPublicationStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v8 = v4;
    if (*(*(v3 + 16) + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      v8 = 0;
    }

    if (*(*(v3 + 24) + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      v9 = v8;
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v8)
      {
        return result;
      }
    }

    else
    {
      v9 = v8;
    }

    if (*(v3 + 32) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v9))
    {
      if (!*(v3 + 40) || (lazy protocol witness table accessor for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v9))
      {
        type metadata accessor for PgQuery_AlterPublicationStmt(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterPublicationStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterPublicationStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPublicationStmt and conformance PgQuery_AlterPublicationStmt, type metadata accessor for PgQuery_AlterPublicationStmt, &protocol conformance descriptor for PgQuery_AlterPublicationStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterPublicationStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPublicationStmt and conformance PgQuery_AlterPublicationStmt, type metadata accessor for PgQuery_AlterPublicationStmt, &protocol conformance descriptor for PgQuery_AlterPublicationStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterPublicationStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPublicationStmt and conformance PgQuery_AlterPublicationStmt, type metadata accessor for PgQuery_AlterPublicationStmt, &protocol conformance descriptor for PgQuery_AlterPublicationStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateEventTrigStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    v10 = v4[3];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v4[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
    {
      if (!*(v4[4] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
      {
        if (!*(v4[5] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
        {
          a4(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateEventTrigStmt@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  a1[4] = MEMORY[0x277D84F90];
  a1[5] = v1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateSubscriptionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSubscriptionStmt and conformance PgQuery_CreateSubscriptionStmt, type metadata accessor for PgQuery_CreateSubscriptionStmt, &protocol conformance descriptor for PgQuery_CreateSubscriptionStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateSubscriptionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSubscriptionStmt and conformance PgQuery_CreateSubscriptionStmt, type metadata accessor for PgQuery_CreateSubscriptionStmt, &protocol conformance descriptor for PgQuery_CreateSubscriptionStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateSubscriptionStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSubscriptionStmt and conformance PgQuery_CreateSubscriptionStmt, type metadata accessor for PgQuery_CreateSubscriptionStmt, &protocol conformance descriptor for PgQuery_CreateSubscriptionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterSubscriptionStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          lazy protocol witness table accessor for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else
      {
        if (result == 3)
        {
          goto LABEL_14;
        }

        if (result == 4 || result == 5)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterSubscriptionStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      v8 = v3[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
      {
        if (!*(v3[6] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
        {
          if (!*(v3[7] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
          {
            type metadata accessor for PgQuery_AlterSubscriptionStmt(0);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterSubscriptionStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 48) = MEMORY[0x277D84F90];
  *(a1 + 56) = v1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterSubscriptionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionStmt and conformance PgQuery_AlterSubscriptionStmt, type metadata accessor for PgQuery_AlterSubscriptionStmt, &protocol conformance descriptor for PgQuery_AlterSubscriptionStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterSubscriptionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionStmt and conformance PgQuery_AlterSubscriptionStmt, type metadata accessor for PgQuery_AlterSubscriptionStmt, &protocol conformance descriptor for PgQuery_AlterSubscriptionStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterSubscriptionStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionStmt and conformance PgQuery_AlterSubscriptionStmt, type metadata accessor for PgQuery_AlterSubscriptionStmt, &protocol conformance descriptor for PgQuery_AlterSubscriptionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DropSubscriptionStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_DropSubscriptionStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (*(v3 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      if (!*(v3 + 24) || (lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for PgQuery_DropSubscriptionStmt(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_DropSubscriptionStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropSubscriptionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropSubscriptionStmt and conformance PgQuery_DropSubscriptionStmt, type metadata accessor for PgQuery_DropSubscriptionStmt, &protocol conformance descriptor for PgQuery_DropSubscriptionStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropSubscriptionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropSubscriptionStmt and conformance PgQuery_DropSubscriptionStmt, type metadata accessor for PgQuery_DropSubscriptionStmt, &protocol conformance descriptor for PgQuery_DropSubscriptionStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropSubscriptionStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropSubscriptionStmt and conformance PgQuery_DropSubscriptionStmt, type metadata accessor for PgQuery_DropSubscriptionStmt, &protocol conformance descriptor for PgQuery_DropSubscriptionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateStatsStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 6:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
LABEL_4:
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateStatsStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

  if (*(*(v3 + 8) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(*(v3 + 16) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(*(v3 + 24) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v7 = v5;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v3 + 40);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v7))
  {
    if (*(v3 + 48) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v7))
    {
      type metadata accessor for PgQuery_CreateStatsStmt(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateStatsStmt@<X0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_RangeVar@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_RangeVar(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateStatsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStatsStmt and conformance PgQuery_CreateStatsStmt, type metadata accessor for PgQuery_CreateStatsStmt, &protocol conformance descriptor for PgQuery_CreateStatsStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateStatsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStatsStmt and conformance PgQuery_CreateStatsStmt, type metadata accessor for PgQuery_CreateStatsStmt, &protocol conformance descriptor for PgQuery_CreateStatsStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateStatsStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStatsStmt and conformance PgQuery_CreateStatsStmt, type metadata accessor for PgQuery_CreateStatsStmt, &protocol conformance descriptor for PgQuery_CreateStatsStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_List.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
  {
    (a4)(0, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterCollationStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterCollationStmt and conformance PgQuery_AlterCollationStmt, type metadata accessor for PgQuery_AlterCollationStmt, &protocol conformance descriptor for PgQuery_AlterCollationStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterCollationStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterCollationStmt and conformance PgQuery_AlterCollationStmt, type metadata accessor for PgQuery_AlterCollationStmt, &protocol conformance descriptor for PgQuery_AlterCollationStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterCollationStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterCollationStmt and conformance PgQuery_AlterCollationStmt, type metadata accessor for PgQuery_AlterCollationStmt, &protocol conformance descriptor for PgQuery_AlterCollationStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_List(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_CallStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_CallStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_FuncCall?, type metadata accessor for PgQuery_FuncCall, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_FuncExpr?, type metadata accessor for PgQuery_FuncExpr, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t PgQuery_CallStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = *(type metadata accessor for PgQuery_CallStmt(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_CallStmt._StorageClass(0);
    v9 = swift_allocObject();
    v10 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall;
    v11 = type metadata accessor for PgQuery_FuncCall(0);
    (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr;
    FuncExpr = type metadata accessor for PgQuery_FuncExpr(0);
    (*(*(FuncExpr - 8) + 56))(v9 + v12, 1, 1, FuncExpr);
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall;
    outlined destroy of URL?(v9 + v10, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
    outlined init with copy of PgQuery_Alias?(v8 + v14, v9 + v10, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
    v15 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr;
    outlined destroy of URL?(v9 + v12, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
    outlined init with copy of PgQuery_Alias?(v8 + v15, v9 + v12, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);

    *(v3 + v6) = v9;
    v5 = v4;
  }

  v16 = v5;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v5)
  {
    while (1)
    {
      if (v18)
      {
        return result;
      }

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v19 = v16;
        type metadata accessor for PgQuery_FuncExpr(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncExpr and conformance PgQuery_FuncExpr, type metadata accessor for PgQuery_FuncExpr, &protocol conformance descriptor for PgQuery_FuncExpr);
        goto LABEL_7;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v19 = v16;
    type metadata accessor for PgQuery_FuncCall(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall, &protocol conformance descriptor for PgQuery_FuncCall);
LABEL_7:
    v16 = v19;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_8;
  }

  return result;
}

uint64_t closure #1 in PgQuery_CallStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v26 = a4;
  v25 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  FuncExpr = type metadata accessor for PgQuery_FuncExpr(0);
  v8 = *(FuncExpr - 8);
  MEMORY[0x28223BE20](FuncExpr);
  v20 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for PgQuery_FuncCall(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall, v12, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v16, type metadata accessor for PgQuery_FuncCall);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall, &protocol conformance descriptor for PgQuery_FuncCall);
    v17 = v23;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_FuncCall);
    if (v17)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v21 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, v7, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  if ((*(v8 + 48))(v7, 1, FuncExpr) == 1)
  {
    return outlined destroy of URL?(v7, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  }

  v19 = v20;
  outlined init with take of PgQuery_OidList(v7, v20, type metadata accessor for PgQuery_FuncExpr);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncExpr and conformance PgQuery_FuncExpr, type metadata accessor for PgQuery_FuncExpr, &protocol conformance descriptor for PgQuery_FuncExpr);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_FuncExpr);
}

BOOL closure #1 in static PgQuery_CallStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  FuncExpr = type metadata accessor for PgQuery_FuncExpr(0);
  v54 = *(FuncExpr - 8);
  v55 = FuncExpr;
  MEMORY[0x28223BE20](FuncExpr);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v49 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncExprVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSg_ADtMR);
  MEMORY[0x28223BE20](v53);
  v56 = &v49 - v8;
  v9 = type metadata accessor for PgQuery_FuncCall(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncCallVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSg_ADtMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v49 - v17;
  v19 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall;
  v20 = *(v16 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall, &v49 - v17, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  v21 = a2 + v19;
  v22 = a2;
  outlined init with copy of PgQuery_Alias?(v21, &v18[v20], &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  v23 = *(v10 + 48);
  if (v23(v18, 1, v9) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v18, v14, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
    if (v23(&v18[v20], 1, v9) != 1)
    {
      v28 = v52;
      outlined init with take of PgQuery_OidList(&v18[v20], v52, type metadata accessor for PgQuery_FuncCall);
      v29 = *(v9 + 20);
      v30 = *&v14[v29];
      v31 = *(v28 + v29);
      v25 = a1;

      if (v30 == v31 || (, , v32 = closure #1 in static PgQuery_FuncCall.== infix(_:_:)(v30, v31), , , v32))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_FuncCall);
        outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_FuncCall);
        outlined destroy of URL?(v18, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
        if (v33)
        {
          goto LABEL_12;
        }

LABEL_8:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_FuncCall);
      outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_FuncCall);
      v26 = &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd;
      v27 = &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR;
LABEL_7:
      outlined destroy of URL?(v18, v26, v27);
      goto LABEL_8;
    }

    outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_FuncCall);
LABEL_6:
    v26 = &_s14BiomeSQLParser16PgQuery_FuncCallVSg_ADtMd;
    v27 = &_s14BiomeSQLParser16PgQuery_FuncCallVSg_ADtMR;
    goto LABEL_7;
  }

  v24 = v23(&v18[v20], 1, v9);

  v25 = a1;
  if (v24 != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of URL?(v18, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
LABEL_12:
  v34 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr;
  v35 = *(v53 + 48);
  v36 = v56;
  outlined init with copy of PgQuery_Alias?(v25 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, v56, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  outlined init with copy of PgQuery_Alias?(v22 + v34, v36 + v35, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  v37 = v55;
  v38 = *(v54 + 48);
  if (v38(v36, 1, v55) == 1)
  {

    if (v38(v36 + v35, 1, v37) == 1)
    {
      outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
      return 1;
    }

    goto LABEL_17;
  }

  v39 = v51;
  outlined init with copy of PgQuery_Alias?(v36, v51, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  if (v38(v36 + v35, 1, v37) == 1)
  {

    outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_FuncExpr);
LABEL_17:
    v40 = &_s14BiomeSQLParser16PgQuery_FuncExprVSg_ADtMd;
    v41 = &_s14BiomeSQLParser16PgQuery_FuncExprVSg_ADtMR;
LABEL_18:
    outlined destroy of URL?(v36, v40, v41);
    return 0;
  }

  v43 = v50;
  outlined init with take of PgQuery_OidList(v36 + v35, v50, type metadata accessor for PgQuery_FuncExpr);
  v44 = *(v37 + 20);
  v45 = *(v39 + v44);
  v46 = *(v43 + v44);
  if (v45 != v46)
  {

    v47 = closure #1 in static PgQuery_FuncExpr.== infix(_:_:)(v45, v46);

    if (!v47)
    {

      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_FuncExpr);
      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_FuncExpr);
      v40 = &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd;
      v41 = &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR;
      goto LABEL_18;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_FuncExpr);
  outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_FuncExpr);
  outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  return (v48 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CallStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallStmt and conformance PgQuery_CallStmt, type metadata accessor for PgQuery_CallStmt, &protocol conformance descriptor for PgQuery_CallStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CallStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallStmt and conformance PgQuery_CallStmt, type metadata accessor for PgQuery_CallStmt, &protocol conformance descriptor for PgQuery_CallStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CallStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallStmt and conformance PgQuery_CallStmt, type metadata accessor for PgQuery_CallStmt, &protocol conformance descriptor for PgQuery_CallStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_LockStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
  {
    if (!*(v4 + 8) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v5))
    {
      if (*(v4 + 12) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
      {
        a4(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_LockStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterStatsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterStatsStmt and conformance PgQuery_AlterStatsStmt, type metadata accessor for PgQuery_AlterStatsStmt, &protocol conformance descriptor for PgQuery_AlterStatsStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterStatsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterStatsStmt and conformance PgQuery_AlterStatsStmt, type metadata accessor for PgQuery_AlterStatsStmt, &protocol conformance descriptor for PgQuery_AlterStatsStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterStatsStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterStatsStmt and conformance PgQuery_AlterStatsStmt, type metadata accessor for PgQuery_AlterStatsStmt, &protocol conformance descriptor for PgQuery_AlterStatsStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_A_Expr._StorageClass.__deallocating_deinit()
{

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_A_Expr._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_A_Expr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v6 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }
    }

    else if (result == 3 || result == 4)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }

    else if (result == 5)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_A_Expr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v28 = *(Node - 8);
  v15 = MEMORY[0x28223BE20](Node);
  v24 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  if (*(a1 + 16))
  {
    v19 = *(a1 + 24);
    v26 = *(a1 + 16);
    v27 = v19;
    lazy protocol witness table accessor for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v25 = a4;
    v5 = 0;
  }

  else
  {
    v25 = a4;
  }

  if (*(*(a1 + 32) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v28 + 48);
  v28 += 48;
  if (v21(v13, 1, Node) == 1)
  {
    outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v18, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v21(v11, 1, Node) == 1)
  {
    outlined destroy of URL?(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v22 = v11;
    v23 = v24;
    outlined init with take of PgQuery_OidList(v22, v24, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
    if (v5)
    {
      return result;
    }
  }

  result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  if (result)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_A_Expr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v62 = *(Node - 8);
  v5 = MEMORY[0x28223BE20](Node);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - v19;
  v21 = *(a1 + 16);
  v22 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v22)
    {
      case 1:
        if (v21 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v21 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v21 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v21 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v21 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v21 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v21 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v21 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v21 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v21 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      case 11:
        if (v21 != 11)
        {
          return 0;
        }

        goto LABEL_6;
      case 12:
        if (v21 != 12)
        {
          return 0;
        }

        goto LABEL_6;
      case 13:
        if (v21 != 13)
        {
          return 0;
        }

        goto LABEL_6;
      case 14:
        if (v21 != 14)
        {
          return 0;
        }

        goto LABEL_6;
      case 15:
        if (v21 != 15)
        {
          return 0;
        }

        goto LABEL_6;
      case 16:
        if (v21 != 16)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v21)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v21 != v22)
  {
    return 0;
  }

LABEL_6:
  v58 = v7;
  v59 = v13;
  v61 = v18;
  v23 = *(a1 + 32);
  v24 = *(a2 + 32);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v23, v24);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
LABEL_25:

    return 0;
  }

  v26 = a1;
  v27 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr;
  v28 = *(v16 + 48);
  v60 = v26;
  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr, v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v27, &v20[v28], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v29 = *(v62 + 48);
  if (v29(v20, 1, Node) == 1)
  {
    if (v29(&v20[v28], 1, Node) == 1)
    {
      outlined destroy of URL?(v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  outlined init with copy of PgQuery_Alias?(v20, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v29(&v20[v28], 1, Node) == 1)
  {
    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
LABEL_12:
    v30 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_13:
    outlined destroy of URL?(v20, v30, v31);
    goto LABEL_25;
  }

  outlined init with take of PgQuery_OidList(&v20[v28], v9, type metadata accessor for PgQuery_Node);
  v32 = *(Node + 20);
  v33 = *&v15[v32];
  v34 = *&v9[v32];
  if (v33 != v34)
  {

    LODWORD(v62) = closure #1 in static PgQuery_Node.== infix(_:_:)(v33, v34);

    if ((v62 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      v30 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v31 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_13;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v35 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr;
  v37 = *(v16 + 48);
  v38 = v61;
  outlined init with copy of PgQuery_Alias?(v60 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr, v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v36, v38 + v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v29(v38, 1, Node) != 1)
  {
    v41 = v59;
    outlined init with copy of PgQuery_Alias?(v38, v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v42 = v29((v38 + v37), 1, Node);
    v40 = v60;
    if (v42 != 1)
    {
      v47 = v38 + v37;
      v48 = v58;
      outlined init with take of PgQuery_OidList(v47, v58, type metadata accessor for PgQuery_Node);
      v49 = *(Node + 20);
      v50 = *(v41 + v49);
      v51 = *(v48 + v49);
      if (v50 == v51 || (, , v52 = closure #1 in static PgQuery_Node.== infix(_:_:)(v50, v51), , , v52))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v53 = v59;
        v54 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v54)
        {
          goto LABEL_62;
        }

        goto LABEL_25;
      }

      outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
      v43 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v44 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v45 = v61;
      goto LABEL_24;
    }

    outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
LABEL_23:
    v43 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v45 = v38;
LABEL_24:
    outlined destroy of URL?(v45, v43, v44);
    goto LABEL_25;
  }

  v39 = v29((v38 + v37), 1, Node);
  v40 = v60;
  if (v39 != 1)
  {
    goto LABEL_23;
  }

  outlined destroy of URL?(v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_62:
  v55 = *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v56 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v55 == v56;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_A_Expr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Expr and conformance PgQuery_A_Expr, type metadata accessor for PgQuery_A_Expr, &protocol conformance descriptor for PgQuery_A_Expr);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_Expr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Expr and conformance PgQuery_A_Expr, type metadata accessor for PgQuery_A_Expr, &protocol conformance descriptor for PgQuery_A_Expr);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_Expr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Expr and conformance PgQuery_A_Expr, type metadata accessor for PgQuery_A_Expr, &protocol conformance descriptor for PgQuery_A_Expr);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ColumnRef(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnRef and conformance PgQuery_ColumnRef, type metadata accessor for PgQuery_ColumnRef, &protocol conformance descriptor for PgQuery_ColumnRef);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ColumnRef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnRef and conformance PgQuery_ColumnRef, type metadata accessor for PgQuery_ColumnRef, &protocol conformance descriptor for PgQuery_ColumnRef);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ColumnRef(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnRef and conformance PgQuery_ColumnRef, type metadata accessor for PgQuery_ColumnRef, &protocol conformance descriptor for PgQuery_ColumnRef);

  return Message.hash(into:)();
}

uint64_t PgQuery_ParamRef.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_ParamRef.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for PgQuery_ParamRef(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ParamRef(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ParamRef and conformance PgQuery_ParamRef, type metadata accessor for PgQuery_ParamRef, &protocol conformance descriptor for PgQuery_ParamRef);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ParamRef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ParamRef and conformance PgQuery_ParamRef, type metadata accessor for PgQuery_ParamRef, &protocol conformance descriptor for PgQuery_ParamRef);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ParamRef(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ParamRef and conformance PgQuery_ParamRef, type metadata accessor for PgQuery_ParamRef, &protocol conformance descriptor for PgQuery_ParamRef);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_ParamRef(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_A_Const.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = *(type metadata accessor for PgQuery_A_Const(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_A_Const._StorageClass(0);
    v9 = swift_allocObject();
    v10 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v9 + v10, 1, 1, Node);
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
    *(v9 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
    v15 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;
    outlined destroy of URL?(v9 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(v8 + v15, v9 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v9 + v12) = *(v8 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    *(v3 + v6) = v9;
    v5 = v4;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v5)
  {
    while ((v14 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_A_Const.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v9 + 48))(v7, 1, Node) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v12 = v14[3];
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
    if (v12)
    {
      return result;
    }
  }

  result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  if (result)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_A_Const.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;
  v15 = *(v11 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, &v31 - v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = a2 + v14;
  v17 = a2;
  outlined init with copy of PgQuery_Alias?(v16, &v13[v15], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v13, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v18(&v13[v15], 1, Node) != 1)
    {
      v23 = v32;
      outlined init with take of PgQuery_OidList(&v13[v15], v32, type metadata accessor for PgQuery_Node);
      v24 = *(Node + 20);
      v25 = *&v9[v24];
      v26 = *(v23 + v24);

      if (v25 == v26 || (, , v27 = closure #1 in static PgQuery_Node.== infix(_:_:)(v25, v26), , , v27))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v28)
        {
          goto LABEL_12;
        }

LABEL_8:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      outlined destroy of URL?(v13, v20, v21);
      goto LABEL_8;
    }

    outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
LABEL_6:
    v20 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v21 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v19 = v18(&v13[v15], 1, Node);

  if (v19 != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_12:
  v29 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v30 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v29 == v30;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_A_Const(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Const and conformance PgQuery_A_Const, type metadata accessor for PgQuery_A_Const, &protocol conformance descriptor for PgQuery_A_Const);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_Const(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Const and conformance PgQuery_A_Const, type metadata accessor for PgQuery_A_Const, &protocol conformance descriptor for PgQuery_A_Const);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_Const(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Const and conformance PgQuery_A_Const, type metadata accessor for PgQuery_A_Const, &protocol conformance descriptor for PgQuery_A_Const);

  return Message.hash(into:)();
}

uint64_t PgQuery_FuncCall._StorageClass.__deallocating_deinit()
{

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_FuncCall._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_WindowDef?, type metadata accessor for PgQuery_WindowDef, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_FuncCall.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

      if (result > 5)
      {
        if (result <= 8)
        {
          goto LABEL_11;
        }

        if (result == 9)
        {
          v7 = v4;
          type metadata accessor for PgQuery_WindowDef(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowDef and conformance PgQuery_WindowDef, type metadata accessor for PgQuery_WindowDef, &protocol conformance descriptor for PgQuery_WindowDef);
LABEL_23:
          v4 = v7;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 10)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result == 3)
          {
            goto LABEL_4;
          }

          if (result != 4)
          {
LABEL_11:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            goto LABEL_5;
          }

          v7 = v4;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          goto LABEL_23;
        }

        if (result == 1 || result == 2)
        {
LABEL_4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_FuncCall.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v23 = &v21 - v7;
  WindowDef = type metadata accessor for PgQuery_WindowDef(0);
  v22 = *(WindowDef - 8);
  MEMORY[0x28223BE20](WindowDef);
  v21 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  if (!*(*(a1 + 16) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    if (!*(*(v25 + 24) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
    {
      if (!*(*(v25 + 32) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
      {
        outlined init with copy of PgQuery_Alias?(v25 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((*(v13 + 48))(v11, 1, Node) == 1)
        {
          outlined destroy of URL?(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          outlined init with take of PgQuery_OidList(v11, v15, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
          if (v4)
          {
            return result;
          }
        }

        v18 = v23;
        v17 = WindowDef;
        if (*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggWithinGroup) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
        {
          if (*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggStar) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
          {
            if (*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggDistinct) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
            {
              if (*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcVariadic) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
              {
                outlined init with copy of PgQuery_Alias?(v25 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over, v18, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
                if ((*(v22 + 48))(v18, 1, v17) == 1)
                {
                  outlined destroy of URL?(v18, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
                }

                else
                {
                  v19 = v18;
                  v20 = v21;
                  outlined init with take of PgQuery_OidList(v19, v21, type metadata accessor for PgQuery_WindowDef);
                  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowDef and conformance PgQuery_WindowDef, type metadata accessor for PgQuery_WindowDef, &protocol conformance descriptor for PgQuery_WindowDef);
                  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
                  result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_WindowDef);
                  if (v4)
                  {
                    return result;
                  }
                }

                result = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
                if (result)
                {
                  return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
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

BOOL closure #1 in static PgQuery_FuncCall.== infix(_:_:)(void *a1, void *a2)
{
  WindowDef = type metadata accessor for PgQuery_WindowDef(0);
  v59 = *(WindowDef - 8);
  v60 = WindowDef;
  MEMORY[0x28223BE20](WindowDef);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v55 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_WindowDefVSg_ADtMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSg_ADtMR);
  MEMORY[0x28223BE20](v58);
  v61 = &v55 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v62 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v18 = a1[2];
  v19 = a2[2];

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v18, v19);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_7;
  }

  v21 = a1[3];
  v22 = a2[3];

  v23 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v21, v22);

  if ((v23 & 1) == 0)
  {
    goto LABEL_7;
  }

  v24 = a1[4];
  v25 = a2[4];

  v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v24, v25);

  if ((v26 & 1) == 0)
  {
    goto LABEL_7;
  }

  v27 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter;
  v28 = *(v15 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v27, &v17[v28], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v29 = *(v62 + 48);
  v30 = a2;
  if (v29(v17, 1, Node) == 1)
  {
    if (v29(&v17[v28], 1, Node) == 1)
    {
      outlined destroy of URL?(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  outlined init with copy of PgQuery_Alias?(v17, v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v29(&v17[v28], 1, Node) == 1)
  {
    outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
LABEL_10:
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v33 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_11:
    v34 = v17;
    goto LABEL_12;
  }

  outlined init with take of PgQuery_OidList(&v17[v28], v11, type metadata accessor for PgQuery_Node);
  v35 = *(Node + 20);
  v36 = *&v14[v35];
  v37 = *&v11[v35];
  if (v36 != v37)
  {

    v38 = closure #1 in static PgQuery_Node.== infix(_:_:)(v36, v37);

    if (!v38)
    {
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v33 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_11;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v39 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggWithinGroup) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggWithinGroup) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggStar) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggStar) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggDistinct) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggDistinct) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcVariadic) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcVariadic))
  {
    goto LABEL_7;
  }

  v40 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over;
  v41 = *(v58 + 48);
  v42 = v61;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over, v61, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  outlined init with copy of PgQuery_Alias?(v30 + v40, v42 + v41, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  v43 = v60;
  v44 = *(v59 + 48);
  if (v44(v42, 1, v60) != 1)
  {
    v45 = v57;
    outlined init with copy of PgQuery_Alias?(v42, v57, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
    if (v44(v42 + v41, 1, v43) == 1)
    {
      outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_WindowDef);
      goto LABEL_27;
    }

    v46 = v42 + v41;
    v47 = v56;
    outlined init with take of PgQuery_OidList(v46, v56, type metadata accessor for PgQuery_WindowDef);
    v48 = *(v43 + 20);
    v49 = *(v45 + v48);
    v50 = *(v47 + v48);
    if (v49 == v50 || (, , v51 = closure #1 in static PgQuery_WindowDef.== infix(_:_:)(v49, v50), , , v51))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_WindowDef);
      outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_WindowDef);
      outlined destroy of URL?(v42, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
      if (v52)
      {
        goto LABEL_31;
      }

LABEL_7:

      return 0;
    }

    outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_WindowDef);
    outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_WindowDef);
    v32 = &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd;
    v33 = &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR;
    v34 = v42;
LABEL_12:
    outlined destroy of URL?(v34, v32, v33);
    goto LABEL_7;
  }

  if (v44(v42 + v41, 1, v43) != 1)
  {
LABEL_27:
    v32 = &_s14BiomeSQLParser17PgQuery_WindowDefVSg_ADtMd;
    v33 = &_s14BiomeSQLParser17PgQuery_WindowDefVSg_ADtMR;
    v34 = v42;
    goto LABEL_12;
  }

  outlined destroy of URL?(v42, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
LABEL_31:
  v53 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v54 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v53 == v54;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_FuncCall(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall, &protocol conformance descriptor for PgQuery_FuncCall);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_FuncCall(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall, &protocol conformance descriptor for PgQuery_FuncCall);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_FuncCall(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall, &protocol conformance descriptor for PgQuery_FuncCall);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_A_Star(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Star and conformance PgQuery_A_Star, type metadata accessor for PgQuery_A_Star, &protocol conformance descriptor for PgQuery_A_Star);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_Star(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Star and conformance PgQuery_A_Star, type metadata accessor for PgQuery_A_Star, &protocol conformance descriptor for PgQuery_A_Star);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_Star(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Star and conformance PgQuery_A_Star, type metadata accessor for PgQuery_A_Star, &protocol conformance descriptor for PgQuery_A_Star);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_Null(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void type metadata completion function for PgQuery_A_Indices._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_A_Indices.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = *(type metadata accessor for PgQuery_A_Indices(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_A_Indices._StorageClass(0);
    v12 = swift_allocObject();
    v23 = v9;
    v24 = v8;
    v13 = v12;
    *(v12 + 16) = 0;
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx;
    Node = type metadata accessor for PgQuery_Node(0);
    v16 = *(Node - 8);
    v26 = v4;
    v17 = *(v16 + 56);
    v25 = v3;
    v17(v13 + v14, 1, 1, Node);
    v22 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx;
    v17(v13 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx, 1, 1, Node);
    v5 = v26;
    *(v13 + 16) = *(v11 + 16);
    v18 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx;

    outlined assign with copy of PgQuery_Node?(v11 + v18, v13 + v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v19 = v24;
    outlined init with copy of PgQuery_Alias?(v11 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx, v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

    outlined assign with take of PgQuery_Node?(v19, v13 + v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

    *(v25 + v23) = v13;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v5)
  {
    while ((v21 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2 || result == 3)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_A_Indices.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v25 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = MEMORY[0x28223BE20](Node);
  v23 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - v16;
  v26 = a1;
  if (*(a1 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    v24 = a4;
    outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v19 = *(v13 + 48);
    if (v19(v11, 1, Node) == 1)
    {
      outlined destroy of URL?(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v11, v17, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
      if (v4)
      {
        return result;
      }
    }

    v20 = v25;
    outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx, v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v19(v20, 1, Node) == 1)
    {
      return outlined destroy of URL?(v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      v21 = v23;
      outlined init with take of PgQuery_OidList(v20, v23, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_A_Indices.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = MEMORY[0x28223BE20](Node);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v22 = &v56 - v20;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v57 = v8;
  v58 = v14;
  v59 = v19;
  v60 = v21;
  v23 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx;
  v24 = *(v19 + 48);
  v61 = Node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx, &v56 - v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = v61;
  outlined init with copy of PgQuery_Alias?(a2 + v23, &v22[v24], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v26 = *(v5 + 48);
  if (v26(v22, 1, v25) == 1)
  {
    v27 = v26(&v22[v24], 1, v25);

    v28 = v27 == 1;
    v29 = a1;
    if (!v28)
    {
      goto LABEL_8;
    }

    outlined destroy of URL?(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_14:
    v38 = v29;
    v39 = a2;
    v40 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx;
    v41 = v60;
    v42 = *(v59 + 48);
    outlined init with copy of PgQuery_Alias?(v38 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx, v60, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(v39 + v40, v41 + v42, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v43 = v61;
    if (v26(v41, 1, v61) == 1)
    {

      if (v26((v41 + v42), 1, v43) == 1)
      {
        outlined destroy of URL?(v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        return 1;
      }
    }

    else
    {
      v44 = v58;
      outlined init with copy of PgQuery_Alias?(v41, v58, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v26((v41 + v42), 1, v43) != 1)
      {
        v49 = v57;
        outlined init with take of PgQuery_OidList(v41 + v42, v57, type metadata accessor for PgQuery_Node);
        v50 = *(v43 + 20);
        v51 = *(v44 + v50);
        v52 = *(v49 + v50);
        if (v51 == v52 || (, , v53 = closure #1 in static PgQuery_Node.== infix(_:_:)(v51, v52), , , v53))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v54 = v58;
          v55 = dispatch thunk of static Equatable.== infix(_:_:)();

          outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
          outlined destroy of URL?(v60, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          return (v55 & 1) != 0;
        }

        outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
        v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v46 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        v47 = v60;
LABEL_20:
        outlined destroy of URL?(v47, v45, v46);
        return 0;
      }

      outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_Node);
    }

    v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v46 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v47 = v41;
    goto LABEL_20;
  }

  v30 = a1;
  outlined init with copy of PgQuery_Alias?(v22, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v26(&v22[v24], 1, v25) != 1)
  {
    outlined init with take of PgQuery_OidList(&v22[v24], v10, type metadata accessor for PgQuery_Node);
    v33 = *(v25 + 20);
    v34 = *&v16[v33];
    v35 = *&v10[v33];
    v29 = v30;

    if (v34 != v35)
    {

      v36 = closure #1 in static PgQuery_Node.== infix(_:_:)(v34, v35);

      if (!v36)
      {
        outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
        v31 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_9;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((v37 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
LABEL_8:
  v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
  v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_9:
  outlined destroy of URL?(v22, v31, v32);
LABEL_10:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_A_Indices(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indices and conformance PgQuery_A_Indices, type metadata accessor for PgQuery_A_Indices, &protocol conformance descriptor for PgQuery_A_Indices);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_Indices(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indices and conformance PgQuery_A_Indices, type metadata accessor for PgQuery_A_Indices, &protocol conformance descriptor for PgQuery_A_Indices);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_Indices(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indices and conformance PgQuery_A_Indices, type metadata accessor for PgQuery_A_Indices, &protocol conformance descriptor for PgQuery_A_Indices);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_AlternativeSubPlan._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v4 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_AlternativeSubPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v11 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v7 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    v14 = swift_allocObject();
    v23 = a7;
    v15 = *a6;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v14 + v15, 1, 1, Node);
    v17 = a6;
    v18 = *v23;
    *(v14 + *v23) = MEMORY[0x277D84F90];
    v21 = *v17;
    outlined destroy of URL?(v14 + v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(v13 + v21, v14 + v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v14 + v18) = *(v13 + *v23);

    *(v7 + v11) = v14;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v22)
  {
    while ((v20 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
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

uint64_t closure #1 in PgQuery_AlternativeSubPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v18 = a6;
  v19 = a2;
  v21 = a4;
  v20 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + *a5, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v13 + 48))(v11, 1, Node) == 1)
  {
    result = outlined destroy of URL?(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v11, v15, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
    if (v6)
    {
      return result;
    }
  }

  if (*(*(a1 + *v18) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static PgQuery_AlternativeSubPlan.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v34 = a4;
  Node = type metadata accessor for PgQuery_Node(0);
  v8 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v33 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - v15;
  v17 = *a3;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + v17, &v33 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(v8 + 48);
  if (v19(v16, 1, Node) == 1)
  {
    v20 = v19(&v16[v18], 1, Node);

    if (v20 == 1)
    {
      outlined destroy of URL?(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_12:
      v30 = *(a1 + *v34);
      v31 = *(a2 + *v34);

      NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v30, v31);

      return NodeV_Tt1g5 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v19(&v16[v18], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
LABEL_6:
    v21 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v22 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_7:
    outlined destroy of URL?(v16, v21, v22);
    goto LABEL_8;
  }

  v24 = v33;
  outlined init with take of PgQuery_OidList(&v16[v18], v33, type metadata accessor for PgQuery_Node);
  v25 = *(Node + 20);
  v26 = *&v12[v25];
  v27 = *(v24 + v25);

  if (v26 != v27)
  {

    v28 = closure #1 in static PgQuery_Node.== infix(_:_:)(v26, v27);

    if (!v28)
    {
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v22 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v29)
  {
    goto LABEL_12;
  }

LABEL_8:

  NodeV_Tt1g5 = 0;
  return NodeV_Tt1g5 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_A_Indirection(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indirection and conformance PgQuery_A_Indirection, type metadata accessor for PgQuery_A_Indirection, &protocol conformance descriptor for PgQuery_A_Indirection);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_Indirection(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indirection and conformance PgQuery_A_Indirection, type metadata accessor for PgQuery_A_Indirection, &protocol conformance descriptor for PgQuery_A_Indirection);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_Indirection(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indirection and conformance PgQuery_A_Indirection, type metadata accessor for PgQuery_A_Indirection, &protocol conformance descriptor for PgQuery_A_Indirection);

  return Message.hash(into:)();
}

uint64_t PgQuery_ColumnRef.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
  {
    if (!v4[2] || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v5))
    {
      (a4)(0, a2, a3);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_A_ArrayExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_ArrayExpr and conformance PgQuery_A_ArrayExpr, type metadata accessor for PgQuery_A_ArrayExpr, &protocol conformance descriptor for PgQuery_A_ArrayExpr);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_ArrayExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_ArrayExpr and conformance PgQuery_A_ArrayExpr, type metadata accessor for PgQuery_A_ArrayExpr, &protocol conformance descriptor for PgQuery_A_ArrayExpr);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_ArrayExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_ArrayExpr and conformance PgQuery_A_ArrayExpr, type metadata accessor for PgQuery_A_ArrayExpr, &protocol conformance descriptor for PgQuery_A_ArrayExpr);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_ColumnRef(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_PrepareStmt._StorageClass.__deallocating_deinit(void *a1)
{

  outlined destroy of URL?(v1 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v3, v4);
}

void type metadata completion function for PgQuery_ResTarget._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_ResTarget.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v6 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
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

uint64_t closure #1 in PgQuery_ResTarget.traverse<A>(visitor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v18 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v10 + 48))(v8, 1, Node) == 1)
      {
        outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v15 = v8;
        v16 = v18;
        outlined init with take of PgQuery_OidList(v15, v18, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
        if (v4)
        {
          return result;
        }
      }

      result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_ResTarget.== infix(_:_:)(void *a1, void *a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  if (*(a1 + 1) == *(a2 + 1) || (v14 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v14 & 1) != 0))
  {
    v33 = v7;
    v16 = a1[4];
    v17 = a2[4];

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v16, v17);

    if ((NodeV_Tt1g5 & 1) == 0)
    {
LABEL_11:

      return 0;
    }

    v19 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;
    v20 = *(v11 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v19, &v13[v20], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v21 = *(v5 + 48);
    if (v21(v13, 1, Node) == 1)
    {
      if (v21(&v13[v20], 1, Node) == 1)
      {
        outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_16:
        v30 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

        v31 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

        return v30 == v31;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v13, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v21(&v13[v20], 1, Node) != 1)
      {
        v24 = v33;
        outlined init with take of PgQuery_OidList(&v13[v20], v33, type metadata accessor for PgQuery_Node);
        v25 = *(Node + 20);
        v26 = *&v10[v25];
        v27 = *(v24 + v25);
        if (v26 == v27 || (, , v28 = closure #1 in static PgQuery_Node.== infix(_:_:)(v26, v27), , , v28))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v29 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
          outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v29)
          {
            goto LABEL_16;
          }

          goto LABEL_11;
        }

        outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
        v22 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_10;
      }

      outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
    }

    v22 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_10:
    outlined destroy of URL?(v13, v22, v23);
    goto LABEL_11;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ResTarget(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ResTarget and conformance PgQuery_ResTarget, type metadata accessor for PgQuery_ResTarget, &protocol conformance descriptor for PgQuery_ResTarget);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ResTarget(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ResTarget and conformance PgQuery_ResTarget, type metadata accessor for PgQuery_ResTarget, &protocol conformance descriptor for PgQuery_ResTarget);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ResTarget(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ResTarget and conformance PgQuery_ResTarget, type metadata accessor for PgQuery_ResTarget, &protocol conformance descriptor for PgQuery_ResTarget);

  return Message.hash(into:)();
}

uint64_t PgQuery_MultiAssignRef.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = *(type metadata accessor for PgQuery_MultiAssignRef(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_MultiAssignRef._StorageClass(0);
    v9 = swift_allocObject();
    v10 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__source;
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__source;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v9 + v10, 1, 1, Node);
    v18 = v4;
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colno;
    *(v9 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colno) = 0;
    v13 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ncolumns;
    *(v9 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ncolumns) = 0;
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__source;

    outlined assign with copy of PgQuery_Node?(v8 + v14, v9 + v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v9 + v12) = *(v8 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colno);
    LODWORD(v12) = *(v8 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ncolumns);

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

uint64_t closure #1 in PgQuery_NextValueExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), void *a8)
{
  v24 = a8;
  v25 = a6;
  v26 = a7;
  v27 = a3;
  v28 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v23 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + *a5, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v14 + 48))(v12, 1, Node) == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v17 = v29;
    v19 = v27;
    v18 = v28;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v16, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v17 = v29;
    v19 = v27;
    v18 = v28;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
    if (v17)
    {
      return result;
    }
  }

  v21 = v26;
  v22 = *(a1 + *v25);
  if (!v22 || (result = v26(v22, 2, v19, v18), !v17))
  {
    result = *(a1 + *v24);
    if (result)
    {
      return v21(result, 3, v19, v18);
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_NextValueExpr.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v37 = a5;
  v39 = a4;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v36 - v16;
  v18 = *a3;
  v19 = *(v15 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + v18, &v36 - v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v20 = a2 + v18;
  v21 = a2;
  outlined init with copy of PgQuery_Alias?(v20, &v17[v19], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v9 + 48);
  if (v22(v17, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v17, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v22(&v17[v19], 1, Node) != 1)
    {
      v26 = v38;
      outlined init with take of PgQuery_OidList(&v17[v19], v38, type metadata accessor for PgQuery_Node);
      v27 = *(Node + 20);
      v28 = *&v13[v27];
      v29 = *(v26 + v27);

      if (v28 == v29 || (, , v30 = closure #1 in static PgQuery_Node.== infix(_:_:)(v28, v29), , , v30))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v31 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      outlined destroy of URL?(v17, v24, v25);
      goto LABEL_13;
    }

    outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
LABEL_6:
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v23 = v22(&v17[v19], 1, Node);

  if (v23 != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of URL?(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  if (*(a1 + *v39) == *(v21 + *v39))
  {
    v32 = v37;
    v33 = v21;
    v34 = *(a1 + *v37);

    LODWORD(v32) = *(v33 + *v32);

    return v34 == v32;
  }

LABEL_13:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_MultiAssignRef(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MultiAssignRef and conformance PgQuery_MultiAssignRef, type metadata accessor for PgQuery_MultiAssignRef, &protocol conformance descriptor for PgQuery_MultiAssignRef);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_MultiAssignRef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MultiAssignRef and conformance PgQuery_MultiAssignRef, type metadata accessor for PgQuery_MultiAssignRef, &protocol conformance descriptor for PgQuery_MultiAssignRef);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_MultiAssignRef(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MultiAssignRef and conformance PgQuery_MultiAssignRef, type metadata accessor for PgQuery_MultiAssignRef, &protocol conformance descriptor for PgQuery_MultiAssignRef);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_TypeCast._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t PgQuery_TypeCast.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = *(type metadata accessor for PgQuery_TypeCast(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_TypeCast._StorageClass(0);
    v20 = v4;
    v9 = swift_allocObject();
    v10 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
    v19 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v9 + v10, 1, 1, Node);
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
    TypeName = type metadata accessor for PgQuery_TypeName(0);
    (*(*(TypeName - 8) + 56))(v9 + v12, 1, 1, TypeName);
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
    *(v9 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
    v15 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;

    outlined assign with copy of PgQuery_Node?(v8 + v15, v9 + v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined assign with copy of PgQuery_Node?(v8 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v9 + v12, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    LODWORD(v12) = *(v8 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    *(v9 + v14) = v12;

    *(v3 + v6) = v9;
    v5 = v20;
  }

  v16 = v5;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v16 || (v18 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_12:
        v16 = 0;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        break;
      case 2:
        type metadata accessor for PgQuery_TypeName(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
        goto LABEL_12;
      case 3:
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        break;
    }
  }
}

uint64_t closure #1 in PgQuery_TypeCast.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v23 = *(TypeName - 8);
  v24 = TypeName;
  MEMORY[0x28223BE20](TypeName);
  v22 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v14 + 48))(v12, 1, Node) == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v17 = v26;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v16, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v18 = v26;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v17 = v18;
    result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
    if (v18)
    {
      return result;
    }
  }

  v20 = v25;
  outlined init with copy of PgQuery_Alias?(v25 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v7, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v23 + 48))(v7, 1, v24) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    v21 = v22;
    outlined init with take of PgQuery_OidList(v7, v22, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_TypeName);
    if (v17)
    {
      return result;
    }
  }

  result = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  if (result)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_TypeCast.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v52 = *(TypeName - 8);
  v53 = TypeName;
  MEMORY[0x28223BE20](TypeName);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v47 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  MEMORY[0x28223BE20](v51);
  v54 = &v47 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v47 - v17;
  v19 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v20 = *(v16 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, &v47 - v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = a2 + v19;
  v22 = a2;
  outlined init with copy of PgQuery_Alias?(v21, &v18[v20], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v23 = *(v10 + 48);
  if (v23(v18, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v18, v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v23(&v18[v20], 1, Node) != 1)
    {
      v29 = &v18[v20];
      v30 = v50;
      outlined init with take of PgQuery_OidList(v29, v50, type metadata accessor for PgQuery_Node);
      v31 = *(Node + 20);
      v32 = *&v14[v31];
      v33 = *(v30 + v31);
      v25 = a1;

      if (v32 == v33 || (, , v34 = closure #1 in static PgQuery_Node.== infix(_:_:)(v32, v33), , , v34))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v35 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v35 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
      v26 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v27 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      v28 = v18;
LABEL_17:
      outlined destroy of URL?(v28, v26, v27);
      goto LABEL_18;
    }

    outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
LABEL_6:
    v26 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v27 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v24 = v23(&v18[v20], 1, Node);

  v25 = a1;
  if (v24 != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of URL?(v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  v37 = *(v51 + 48);
  v38 = v54;
  outlined init with copy of PgQuery_Alias?(v25 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v54, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined init with copy of PgQuery_Alias?(v22 + v36, v38 + v37, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v39 = v53;
  v40 = *(v52 + 48);
  if (v40(v38, 1, v53) == 1)
  {
    if (v40(v38 + v37, 1, v39) == 1)
    {
      outlined destroy of URL?(v38, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
LABEL_21:
      v45 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v46 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v45 == v46;
    }

    goto LABEL_16;
  }

  v41 = v49;
  outlined init with copy of PgQuery_Alias?(v38, v49, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v40(v38 + v37, 1, v39) == 1)
  {
    outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_TypeName);
LABEL_16:
    v26 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v27 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    v28 = v38;
    goto LABEL_17;
  }

  v43 = v48;
  outlined init with take of PgQuery_OidList(v38 + v37, v48, type metadata accessor for PgQuery_TypeName);
  v44 = specialized static PgQuery_TypeName.== infix(_:_:)(v41, v43);
  outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_TypeName);
  outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_TypeName);
  outlined destroy of URL?(v38, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v44)
  {
    goto LABEL_21;
  }

LABEL_18:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TypeCast(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeCast and conformance PgQuery_TypeCast, type metadata accessor for PgQuery_TypeCast, &protocol conformance descriptor for PgQuery_TypeCast);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TypeCast(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeCast and conformance PgQuery_TypeCast, type metadata accessor for PgQuery_TypeCast, &protocol conformance descriptor for PgQuery_TypeCast);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TypeCast(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeCast and conformance PgQuery_TypeCast, type metadata accessor for PgQuery_TypeCast, &protocol conformance descriptor for PgQuery_TypeCast);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_NextValueExpr._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v4 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_CollateClause.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = *(type metadata accessor for PgQuery_CollateClause(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_CollateClause._StorageClass(0);
    v17 = v4;
    v9 = swift_allocObject();
    v10 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v9 + v10, 1, 1, Node);
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname;
    *(v9 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname) = MEMORY[0x277D84F90];
    v16 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
    *(v9 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
    v13 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;

    outlined assign with copy of PgQuery_Node?(v8 + v13, v9 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v9 + v12) = *(v8 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname);

    LODWORD(v12) = *(v8 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    *(v9 + v16) = v12;

    *(v3 + v6) = v9;
    v5 = v17;
  }

  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v15 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        break;
      case 2:
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        break;
      case 3:
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        break;
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CollateClause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, Node) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  v14 = v15[0];
  if (!*(*(v15[0] + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    result = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
    if (result)
    {
      return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CollateClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - v12;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v15 = *(v11 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, &v34 - v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = a2 + v14;
  v17 = a2;
  outlined init with copy of PgQuery_Alias?(v16, &v13[v15], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v13, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v18(&v13[v15], 1, Node) != 1)
    {
      v22 = v35;
      outlined init with take of PgQuery_OidList(&v13[v15], v35, type metadata accessor for PgQuery_Node);
      v23 = *(Node + 20);
      v24 = *&v9[v23];
      v25 = *(v22 + v23);

      if (v24 == v25 || (, , v26 = closure #1 in static PgQuery_Node.== infix(_:_:)(v24, v25), , , v26))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v27 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v27 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      outlined destroy of URL?(v13, v20, v21);
      goto LABEL_13;
    }

    outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
LABEL_6:
    v20 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v21 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v19 = v18(&v13[v15], 1, Node);

  if (v19 != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  v28 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname);
  v29 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v28, v29);

  if (NodeV_Tt1g5)
  {
    v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v32 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v31 == v32;
  }

LABEL_13:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CollateClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause, &protocol conformance descriptor for PgQuery_CollateClause);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CollateClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause, &protocol conformance descriptor for PgQuery_CollateClause);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CollateClause(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause, &protocol conformance descriptor for PgQuery_CollateClause);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_CoalesceExpr._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v6 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_SortBy.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          lazy protocol witness table accessor for type PgQuery_SortByDir and conformance PgQuery_SortByDir();
          goto LABEL_16;
        }

        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 3:
            lazy protocol witness table accessor for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls();
LABEL_16:
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 4:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_SortBy.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v14 = v13;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  v16 = v20;
  if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir) || (v17 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir + 8), v21 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir), v22 = v17, lazy protocol witness table accessor for type PgQuery_SortByDir and conformance PgQuery_SortByDir(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls) || (v18 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls + 8), v21 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls), v22 = v18, lazy protocol witness table accessor for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      if (!*(*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOp) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
      {
        result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_SortBy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - v12;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  v15 = *(v11 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, &v38 - v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = a2 + v14;
  v17 = a2;
  outlined init with copy of PgQuery_Alias?(v16, &v13[v15], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, Node) == 1)
  {
    v19 = v18(&v13[v15], 1, Node);

    if (v19 == 1)
    {
      outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  outlined init with copy of PgQuery_Alias?(v13, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v18(&v13[v15], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
LABEL_6:
    v20 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v21 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_7:
    outlined destroy of URL?(v13, v20, v21);
    goto LABEL_8;
  }

  v23 = v39;
  outlined init with take of PgQuery_OidList(&v13[v15], v39, type metadata accessor for PgQuery_Node);
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
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v28 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_12:
  v29 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir);
  v30 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir);
  if (*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir + 8) == 1)
  {
    if (v30 <= 1)
    {
      if (v30)
      {
        if (v29 != 1)
        {
          goto LABEL_8;
        }
      }

      else if (v29)
      {
        goto LABEL_8;
      }
    }

    else if (v30 == 2)
    {
      if (v29 != 2)
      {
        goto LABEL_8;
      }
    }

    else if (v30 == 3)
    {
      if (v29 != 3)
      {
        goto LABEL_8;
      }
    }

    else if (v29 != 4)
    {
      goto LABEL_8;
    }
  }

  else if (v29 != v30)
  {
    goto LABEL_8;
  }

  v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls);
  v32 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls);
  if (*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls + 8) != 1)
  {
    if (v31 == v32)
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  if (v32 > 1)
  {
    if (v32 == 2)
    {
      if (v31 != 2)
      {
        goto LABEL_8;
      }
    }

    else if (v31 != 3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v32)
    {
      if (!v31)
      {
        goto LABEL_25;
      }

LABEL_8:

      return 0;
    }

    if (v31 != 1)
    {
      goto LABEL_8;
    }
  }

LABEL_25:
  v33 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOp);
  v34 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOp);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v33, v34);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_8;
  }

  v36 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v37 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v36 == v37;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SortBy(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortBy and conformance PgQuery_SortBy, type metadata accessor for PgQuery_SortBy, &protocol conformance descriptor for PgQuery_SortBy);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SortBy(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortBy and conformance PgQuery_SortBy, type metadata accessor for PgQuery_SortBy, &protocol conformance descriptor for PgQuery_SortBy);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SortBy(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortBy and conformance PgQuery_SortBy, type metadata accessor for PgQuery_SortBy, &protocol conformance descriptor for PgQuery_SortBy);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_WindowDef._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_WindowDef.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v6 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          goto LABEL_17;
        }

        if (result == 8)
        {
LABEL_16:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result == 5)
        {
          goto LABEL_16;
        }

LABEL_17:
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }
    }

    else if (result > 2)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    }

    else if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }
}

uint64_t closure #1 in PgQuery_WindowDef.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v27 = *(Node - 8);
  v12 = MEMORY[0x28223BE20](Node);
  v25 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - v14;
  v16 = *(a1 + 24);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
  {
    v19 = *(a1 + 40);
    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
    }

    if (!v20 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
    {
      if (!*(*(a1 + 48) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
      {
        if (!*(*(a1 + 56) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
        {
          if (!*(a1 + 64) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
          {
            outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            v21 = *(v27 + 48);
            v27 += 48;
            if (v21(v10, 1, Node) == 1)
            {
              outlined destroy of URL?(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            }

            else
            {
              outlined init with take of PgQuery_OidList(v10, v15, type metadata accessor for PgQuery_Node);
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
              dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
              result = outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
              if (v4)
              {
                return result;
              }
            }

            v22 = v26;
            outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v21(v22, 1, Node) == 1)
            {
              outlined destroy of URL?(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            }

            else
            {
              v23 = v22;
              v24 = v25;
              outlined init with take of PgQuery_OidList(v23, v25, type metadata accessor for PgQuery_Node);
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
              dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
              result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
              if (v4)
              {
                return result;
              }
            }

            result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
            if (result)
            {
              return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_WindowDef.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v61 = *(Node - 8);
  v5 = MEMORY[0x28223BE20](Node);
  v7 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v56[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v56[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v56[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v56[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v56[-v20];
  if (*(a1 + 16) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v59 = v13;
  v60 = v19;
  v58 = v7;
  v22 = *(a1 + 48);
  v23 = *(a2 + 48);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v22, v23);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_26;
  }

  v25 = *(a1 + 56);
  v26 = *(a2 + 56);

  v27 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v25, v26);

  if ((v27 & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    goto LABEL_26;
  }

  v28 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset;
  v29 = *(v16 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset, v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v30 = a2 + v28;
  v31 = v29;
  outlined init with copy of PgQuery_Alias?(v30, &v21[v29], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v32 = v61 + 48;
  v33 = *(v61 + 48);
  if (v33(v21, 1, Node) == 1)
  {
    if (v33(&v21[v31], 1, Node) == 1)
    {
      v61 = v32;
      outlined destroy of URL?(v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  outlined init with copy of PgQuery_Alias?(v21, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v33(&v21[v31], 1, Node) == 1)
  {
    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
LABEL_14:
    v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_15:
    v36 = v21;
LABEL_25:
    outlined destroy of URL?(v36, v34, v35);
    goto LABEL_26;
  }

  v61 = v32;
  outlined init with take of PgQuery_OidList(&v21[v31], v9, type metadata accessor for PgQuery_Node);
  v37 = *(Node + 20);
  v38 = *&v15[v37];
  v39 = *&v9[v37];
  if (v38 != v39)
  {

    v57 = closure #1 in static PgQuery_Node.== infix(_:_:)(v38, v39);

    if (!v57)
    {
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      v34 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_15;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v40 & 1) == 0)
  {
LABEL_26:

    return 0;
  }

LABEL_19:
  v41 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset;
  v42 = *(v16 + 48);
  v43 = v60;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, v60, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v41, v43 + v42, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v33(v43, 1, Node) != 1)
  {
    v44 = v59;
    outlined init with copy of PgQuery_Alias?(v43, v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v33((v43 + v42), 1, Node) != 1)
    {
      v46 = v43 + v42;
      v47 = v58;
      outlined init with take of PgQuery_OidList(v46, v58, type metadata accessor for PgQuery_Node);
      v48 = *(Node + 20);
      v49 = *(v44 + v48);
      v50 = *(v47 + v48);
      if (v49 == v50 || (, , v51 = closure #1 in static PgQuery_Node.== infix(_:_:)(v49, v50), , , v51))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v52 = v59;
        v53 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v60, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v53)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
      v34 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v36 = v60;
      goto LABEL_25;
    }

    outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_Node);
    goto LABEL_24;
  }

  if (v33((v43 + v42), 1, Node) != 1)
  {
LABEL_24:
    v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v36 = v43;
    goto LABEL_25;
  }

  outlined destroy of URL?(v43, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_31:
  v54 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v55 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v54 == v55;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_WindowDef(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowDef and conformance PgQuery_WindowDef, type metadata accessor for PgQuery_WindowDef, &protocol conformance descriptor for PgQuery_WindowDef);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_WindowDef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowDef and conformance PgQuery_WindowDef, type metadata accessor for PgQuery_WindowDef, &protocol conformance descriptor for PgQuery_WindowDef);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_WindowDef(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowDef and conformance PgQuery_WindowDef, type metadata accessor for PgQuery_WindowDef, &protocol conformance descriptor for PgQuery_WindowDef);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_RangeSubselect._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Alias?, type metadata accessor for PgQuery_Alias, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t PgQuery_RangeSubselect.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = *(type metadata accessor for PgQuery_RangeSubselect(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_RangeSubselect._StorageClass(0);
    v12 = swift_allocObject();
    v25 = v4;
    v13 = v12;
    *(v12 + 16) = 0;
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
    v23 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v13 + v14, 1, 1, Node);
    v16 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
    v24 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
    Alias = type metadata accessor for PgQuery_Alias(0);
    (*(*(Alias - 8) + 56))(v13 + v16, 1, 1, Alias);
    *(v13 + 16) = *(v11 + 16);
    v18 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;

    outlined assign with copy of PgQuery_Node?(v11 + v18, v13 + v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(v11 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v8, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);

    outlined assign with take of PgQuery_Node?(v8, v13 + v24, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);

    *(v3 + v9) = v13;
    v5 = v25;
  }

  v19 = v5;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v5)
  {
    while (1)
    {
      if (v21)
      {
        return result;
      }

      switch(result)
      {
        case 1:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_7;
        case 2:
          v22 = v19;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          break;
        case 3:
          v22 = v19;
          type metadata accessor for PgQuery_Alias(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
          break;
        default:
          goto LABEL_7;
      }

      v19 = v22;
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_7:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RangeSubselect.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v22 = &v20 - v7;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v21 = *(Alias - 8);
  MEMORY[0x28223BE20](Alias);
  v20 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  if (*(a1 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    outlined init with copy of PgQuery_Alias?(v24 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v13 + 48))(v11, 1, Node) == 1)
    {
      outlined destroy of URL?(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v11, v15, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      if (v4)
      {
        return result;
      }
    }

    v17 = v22;
    outlined init with copy of PgQuery_Alias?(v24 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v22, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    if ((*(v21 + 48))(v17, 1, Alias) == 1)
    {
      return outlined destroy of URL?(v17, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    }

    else
    {
      v18 = v17;
      v19 = v20;
      outlined init with take of PgQuery_OidList(v18, v20, type metadata accessor for PgQuery_Alias);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Alias);
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_RangeSubselect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Alias = type metadata accessor for PgQuery_Alias(0);
  v56 = *(Alias - 8);
  MEMORY[0x28223BE20](Alias);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v49 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd, &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR);
  MEMORY[0x28223BE20](v55);
  v11 = &v49 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v49 - v20;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v52 = v11;
  v53 = Alias;
  v50 = v6;
  v51 = v9;
  v22 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
  v23 = a1;
  v24 = *(v19 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery, v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = a2 + v22;
  v26 = a2;
  outlined init with copy of PgQuery_Alias?(v25, &v21[v24], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v27 = *(v13 + 48);
  if (v27(v21, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v21, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v27(&v21[v24], 1, Node) != 1)
    {
      v31 = v54;
      outlined init with take of PgQuery_OidList(&v21[v24], v54, type metadata accessor for PgQuery_Node);
      v32 = *(Node + 20);
      v33 = *&v17[v32];
      v34 = *(v31 + v32);

      if (v33 == v34 || (, , v35 = closure #1 in static PgQuery_Node.== infix(_:_:)(v33, v34), , , v35))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v36 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v36)
        {
          goto LABEL_13;
        }

LABEL_9:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
      v29 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v30 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_8:
      outlined destroy of URL?(v21, v29, v30);
      goto LABEL_9;
    }

    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
LABEL_7:
    v29 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v30 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_8;
  }

  v28 = v27(&v21[v24], 1, Node);

  if (v28 != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of URL?(v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_13:
  v37 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  v38 = *(v55 + 48);
  v39 = v52;
  outlined init with copy of PgQuery_Alias?(v23 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v52, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  outlined init with copy of PgQuery_Alias?(v26 + v37, v39 + v38, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v40 = *(v56 + 48);
  v41 = v53;
  if (v40(v39, 1, v53) == 1)
  {

    if (v40(v39 + v38, 1, v41) == 1)
    {
      outlined destroy of URL?(v39, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
      return 1;
    }

    goto LABEL_19;
  }

  v43 = v51;
  outlined init with copy of PgQuery_Alias?(v39, v51, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  if (v40(v39 + v38, 1, v41) == 1)
  {

    outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Alias);
LABEL_19:
    v44 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
    v45 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
LABEL_28:
    outlined destroy of URL?(v39, v44, v45);
    return 0;
  }

  v46 = v39 + v38;
  v47 = v50;
  outlined init with take of PgQuery_OidList(v46, v50, type metadata accessor for PgQuery_Alias);
  if ((*v43 != *v47 || v43[1] != v47[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v43[2], v47[2]) & 1) == 0)
  {

    outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Alias);
    outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Alias);
    v44 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
    v45 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
    goto LABEL_28;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Alias);
  outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Alias);
  outlined destroy of URL?(v39, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  return (v48 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeSubselect(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeSubselect and conformance PgQuery_RangeSubselect, type metadata accessor for PgQuery_RangeSubselect, &protocol conformance descriptor for PgQuery_RangeSubselect);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeSubselect(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeSubselect and conformance PgQuery_RangeSubselect, type metadata accessor for PgQuery_RangeSubselect, &protocol conformance descriptor for PgQuery_RangeSubselect);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeSubselect(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeSubselect and conformance PgQuery_RangeSubselect, type metadata accessor for PgQuery_RangeSubselect, &protocol conformance descriptor for PgQuery_RangeSubselect);

  return Message.hash(into:)();
}

uint64_t PgQuery_RangeFunction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 4)
        {
          goto LABEL_15;
        }

        if (result != 5)
        {
          if (result != 6)
          {
            goto LABEL_5;
          }

LABEL_15:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        type metadata accessor for PgQuery_RangeFunction(0);
        type metadata accessor for PgQuery_Alias(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_RangeFunction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v12 = *(Alias - 8);
  MEMORY[0x28223BE20](Alias);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v5 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    if (*(v5 + 1) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      if (*(v5 + 2) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
      {
        v19[0] = a1;
        v19[1] = a2;
        v20 = v4;
        if (*(*(v5 + 8) + 16))
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          v16 = v20;
          result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
          if (v16)
          {
            return result;
          }

          v20 = 0;
        }

        RangeFunction = type metadata accessor for PgQuery_RangeFunction(0);
        outlined init with copy of PgQuery_Alias?(v5 + *(RangeFunction + 40), v10, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
        if ((*(v12 + 48))(v10, 1, Alias) == 1)
        {
          outlined destroy of URL?(v10, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
          v18 = v20;
        }

        else
        {
          outlined init with take of PgQuery_OidList(v10, v14, type metadata accessor for PgQuery_Alias);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
          v18 = v20;
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Alias);
          if (v18)
          {
            return result;
          }
        }

        if (!*(*(v5 + 16) + 16))
        {
          return UnknownStorage.traverse<A>(visitor:)();
        }

        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (!v18)
        {
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_RangeFunction@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 8) = MEMORY[0x277D84F90];
  *(a2 + 16) = v4;
  UnknownStorage.init()();
  v5 = *(a1 + 40);
  Alias = type metadata accessor for PgQuery_Alias(0);
  v7 = *(*(Alias - 8) + 56);

  return v7(a2 + v5, 1, 1, Alias);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeFunction(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeFunction and conformance PgQuery_RangeFunction, type metadata accessor for PgQuery_RangeFunction, &protocol conformance descriptor for PgQuery_RangeFunction);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeFunction(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeFunction and conformance PgQuery_RangeFunction, type metadata accessor for PgQuery_RangeFunction, &protocol conformance descriptor for PgQuery_RangeFunction);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeFunction(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeFunction and conformance PgQuery_RangeFunction, type metadata accessor for PgQuery_RangeFunction, &protocol conformance descriptor for PgQuery_RangeFunction);

  return Message.hash(into:)();
}

uint64_t PgQuery_RangeTableSample._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_RangeTableSample._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_RangeTableSample.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
LABEL_4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
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
            goto LABEL_14;
          case 4:
            goto LABEL_4;
          case 5:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RangeTableSample.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v23 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(Node - 8);
  v13 = MEMORY[0x28223BE20](Node);
  v22 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  v26 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(v12 + 48);
  if (v17(v10, 1, Node) == 1)
  {
    outlined destroy of URL?(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v16, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  if (!*(*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__method) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    if (!*(*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
    {
      v19 = v23;
      outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v17(v19, 1, Node) == 1)
      {
        outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v20 = v19;
        v21 = v22;
        outlined init with take of PgQuery_OidList(v20, v22, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
        if (v4)
        {
          return result;
        }
      }

      result = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_RangeTableSample.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v6 = MEMORY[0x28223BE20](Node);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v56 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14);
  v58 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  v20 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v57 = v17;
  v21 = *(v17 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v54 - v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v20, &v19[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v5 + 48);
  if (v22(v19, 1, Node) != 1)
  {
    v60 = a1;
    v61 = a2;
    outlined init with copy of PgQuery_Alias?(v19, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v22(&v19[v21], 1, Node) != 1)
    {
      v27 = v59;
      outlined init with take of PgQuery_OidList(&v19[v21], v59, type metadata accessor for PgQuery_Node);
      v28 = Node;
      v29 = *(Node + 20);
      v30 = *&v13[v29];
      v31 = *(v27 + v29);

      if (v30 != v31)
      {

        v32 = closure #1 in static PgQuery_Node.== infix(_:_:)(v30, v31);

        if (!v32)
        {
          outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
          outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          goto LABEL_17;
        }
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      a1 = v60;
      a2 = v61;
      Node = v28;
      if ((v33 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
LABEL_6:
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v26 = v19;
LABEL_7:
    outlined destroy of URL?(v26, v24, v25);
    goto LABEL_17;
  }

  v23 = v22(&v19[v21], 1, Node);

  if (v23 != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__method);
  v35 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__method);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v34, v35);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_17;
  }

  v37 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v38 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v39 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v37, v38);

  if ((v39 & 1) == 0)
  {
    goto LABEL_17;
  }

  v40 = Node;
  v41 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable;
  v42 = v58;
  v43 = *(v57 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, v58, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v41, v42 + v43, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(v42, 1, v40) == 1)
  {
    if (v22((v42 + v43), 1, v40) == 1)
    {
      outlined destroy of URL?(v42, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_26:
      v52 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v53 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v52 == v53;
    }

    goto LABEL_21;
  }

  v45 = v56;
  outlined init with copy of PgQuery_Alias?(v42, v56, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22((v42 + v43), 1, v40) == 1)
  {
    outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
LABEL_21:
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_22:
    v26 = v42;
    goto LABEL_7;
  }

  v46 = v55;
  outlined init with take of PgQuery_OidList(v42 + v43, v55, type metadata accessor for PgQuery_Node);
  v47 = *(v40 + 20);
  v48 = *(v45 + v47);
  v49 = *(v46 + v47);
  if (v48 != v49)
  {

    v50 = closure #1 in static PgQuery_Node.== infix(_:_:)(v48, v49);

    if (!v50)
    {
      outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_22;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v42, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v51)
  {
    goto LABEL_26;
  }

LABEL_17:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeTableSample(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableSample and conformance PgQuery_RangeTableSample, type metadata accessor for PgQuery_RangeTableSample, &protocol conformance descriptor for PgQuery_RangeTableSample);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeTableSample(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableSample and conformance PgQuery_RangeTableSample, type metadata accessor for PgQuery_RangeTableSample, &protocol conformance descriptor for PgQuery_RangeTableSample);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeTableSample(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableSample and conformance PgQuery_RangeTableSample, type metadata accessor for PgQuery_RangeTableSample, &protocol conformance descriptor for PgQuery_RangeTableSample);

  return Message.hash(into:)();
}

uint64_t PgQuery_RangeTableFunc._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_RangeTableFunc._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Alias?, type metadata accessor for PgQuery_Alias, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_RangeTableFunc.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v6 & 1) == 0)
    {
      if (result <= 3)
      {
        if (result == 1)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else if (result == 2 || result == 3)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          type metadata accessor for PgQuery_Alias(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 7)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
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

uint64_t closure #1 in PgQuery_RangeTableFunc.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v35 = &v30 - v8;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v32 = *(Alias - 8);
  v33 = Alias;
  MEMORY[0x28223BE20](Alias);
  v31 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  Node = type metadata accessor for PgQuery_Node(0);
  v17 = *(Node - 8);
  v18 = MEMORY[0x28223BE20](Node);
  v34 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v30 - v20;
  v38 = a1;
  if (*(a1 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    v36 = a4;
    outlined init with copy of PgQuery_Alias?(v38 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v23 = *(v17 + 48);
    v24 = Node;
    if (v23(v16, 1, Node) == 1)
    {
      outlined destroy of URL?(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v16, v21, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
      if (v4)
      {
        return result;
      }
    }

    v25 = v38;
    outlined init with copy of PgQuery_Alias?(v38 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v23(v14, 1, v24) == 1)
    {
      outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v26 = v35;
    }

    else
    {
      v27 = v34;
      outlined init with take of PgQuery_OidList(v14, v34, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      v26 = v35;
      if (v4)
      {
        return result;
      }
    }

    if (!*(*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namespaces) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
    {
      if (!*(*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
      {
        outlined init with copy of PgQuery_Alias?(v25 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v26, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
        if ((*(v32 + 48))(v26, 1, v33) == 1)
        {
          outlined destroy of URL?(v26, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
        }

        else
        {
          v28 = v26;
          v29 = v31;
          outlined init with take of PgQuery_OidList(v28, v31, type metadata accessor for PgQuery_Alias);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_Alias);
          if (v4)
          {
            return result;
          }
        }

        result = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_RangeTableFunc.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Alias = type metadata accessor for PgQuery_Alias(0);
  v81 = *(Alias - 8);
  MEMORY[0x28223BE20](Alias);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v74 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd, &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR);
  MEMORY[0x28223BE20](v80);
  v11 = &v74 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = MEMORY[0x28223BE20](Node);
  v82 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v84 = &v74 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v83 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v74 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v23 = MEMORY[0x28223BE20](v22);
  v85 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v74 - v26;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v76 = v11;
  v77 = Alias;
  v74 = v6;
  v75 = v9;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr;
  v79 = v25;
  v29 = *(v25 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr, &v74 - v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v28, &v27[v29], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v30 = *(v13 + 48);
  v31 = Node;
  if (v30(v27, 1, Node) == 1)
  {
    v32 = v30(&v27[v29], 1, Node);

    v33 = a2;
    v34 = a1;
    if (v32 == 1)
    {
      outlined destroy of URL?(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_11;
    }

LABEL_7:
    v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v38 = v27;
LABEL_18:
    outlined destroy of URL?(v38, v36, v37);
    goto LABEL_19;
  }

  v78 = a1;
  v35 = a2;
  outlined init with copy of PgQuery_Alias?(v27, v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v30(&v27[v29], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
    goto LABEL_7;
  }

  v39 = v84;
  outlined init with take of PgQuery_OidList(&v27[v29], v84, type metadata accessor for PgQuery_Node);
  v40 = *(Node + 20);
  v41 = *&v21[v40];
  v42 = *(v39 + v40);

  v33 = v35;

  if (v41 != v42)
  {

    v43 = closure #1 in static PgQuery_Node.== infix(_:_:)(v41, v42);

    if (!v43)
    {
      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
      outlined destroy of URL?(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_19;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v34 = v78;
  if (v44)
  {
LABEL_11:
    v45 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr;
    v46 = *(v79 + 48);
    v47 = v85;
    outlined init with copy of PgQuery_Alias?(v34 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, v85, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(v33 + v45, v47 + v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v30(v47, 1, Node) == 1)
    {
      if (v30((v47 + v46), 1, Node) == 1)
      {
        outlined destroy of URL?(v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        goto LABEL_25;
      }
    }

    else
    {
      v48 = v83;
      outlined init with copy of PgQuery_Alias?(v47, v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v30((v47 + v46), 1, v31) != 1)
      {
        v50 = v82;
        outlined init with take of PgQuery_OidList(v47 + v46, v82, type metadata accessor for PgQuery_Node);
        v51 = *(v31 + 20);
        v52 = *(v48 + v51);
        v53 = *(v50 + v51);
        if (v52 == v53 || (, , v54 = closure #1 in static PgQuery_Node.== infix(_:_:)(v52, v53), , , v54))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v55 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
          outlined destroy of URL?(v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v55 & 1) == 0)
          {
            goto LABEL_19;
          }

LABEL_25:
          v56 = *(v34 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namespaces);
          v57 = *(v33 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namespaces);

          NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v56, v57);

          if ((NodeV_Tt1g5 & 1) == 0)
          {
            goto LABEL_19;
          }

          v59 = *(v34 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);
          v60 = *(v33 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);

          v61 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v59, v60);

          if ((v61 & 1) == 0)
          {
            goto LABEL_19;
          }

          v62 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
          v63 = *(v80 + 48);
          v64 = v76;
          outlined init with copy of PgQuery_Alias?(v34 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v76, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
          outlined init with copy of PgQuery_Alias?(v33 + v62, v64 + v63, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
          v65 = *(v81 + 48);
          v66 = v77;
          if (v65(v64, 1, v77) == 1)
          {
            if (v65(v64 + v63, 1, v66) == 1)
            {
              outlined destroy of URL?(v64, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
LABEL_30:
              v67 = *(v34 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

              v68 = *(v33 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

              return v67 == v68;
            }
          }

          else
          {
            v69 = v75;
            outlined init with copy of PgQuery_Alias?(v64, v75, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
            if (v65(v64 + v63, 1, v66) != 1)
            {
              v70 = v74;
              outlined init with take of PgQuery_OidList(v64 + v63, v74, type metadata accessor for PgQuery_Alias);
              if (*v69 == *v70 && v69[1] == v70[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v75[2], v74[2]))
              {
                type metadata accessor for UnknownStorage();
                lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
                v71 = v74;
                v72 = v75;
                v73 = dispatch thunk of static Equatable.== infix(_:_:)();
                outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_Alias);
                outlined destroy of PgQuery_OidList(v72, type metadata accessor for PgQuery_Alias);
                outlined destroy of URL?(v64, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                if (v73)
                {
                  goto LABEL_30;
                }

                goto LABEL_19;
              }

              outlined destroy of PgQuery_OidList(v74, type metadata accessor for PgQuery_Alias);
              outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_Alias);
              v36 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
              v37 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
              goto LABEL_43;
            }

            outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_Alias);
          }

          v36 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
          v37 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
LABEL_43:
          v38 = v64;
          goto LABEL_18;
        }

        outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
        v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_17;
      }

      outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
    }

    v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_17:
    v38 = v47;
    goto LABEL_18;
  }

LABEL_19:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeTableFunc(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFunc and conformance PgQuery_RangeTableFunc, type metadata accessor for PgQuery_RangeTableFunc, &protocol conformance descriptor for PgQuery_RangeTableFunc);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeTableFunc(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFunc and conformance PgQuery_RangeTableFunc, type metadata accessor for PgQuery_RangeTableFunc, &protocol conformance descriptor for PgQuery_RangeTableFunc);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeTableFunc(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFunc and conformance PgQuery_RangeTableFunc, type metadata accessor for PgQuery_RangeTableFunc, &protocol conformance descriptor for PgQuery_RangeTableFunc);

  return Message.hash(into:)();
}

uint64_t PgQuery_RangeTableFuncCol._StorageClass.__deallocating_deinit()
{

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_RangeTableFuncCol._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_RangeTableFuncCol.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        break;
      }

      if (result <= 5)
      {
        if (result == 4)
        {
          goto LABEL_18;
        }

LABEL_10:
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_21:
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_5;
      }

      if (result == 6)
      {
        goto LABEL_10;
      }

      if (result == 7)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
      goto LABEL_5;
    }

    if (result != 2)
    {
      if (result != 3)
      {
        goto LABEL_5;
      }

LABEL_18:
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      goto LABEL_5;
    }

    type metadata accessor for PgQuery_TypeName(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    goto LABEL_21;
  }

  return result;
}

uint64_t closure #1 in PgQuery_RangeTableFuncCol.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v37 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v42 = *(Node - 8);
  v43 = Node;
  v12 = MEMORY[0x28223BE20](Node);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v39 = &v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - v16;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v19 = *(TypeName - 8);
  MEMORY[0x28223BE20](TypeName);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();

    v44 = v5;
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v44 = v5;
  }

  outlined init with copy of PgQuery_Alias?(v45 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v17, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v19 + 48))(v17, 1, TypeName) == 1)
  {
    outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v26 = v44;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v17, v21, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    v26 = v44;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_TypeName);
    if (v26)
    {
      return result;
    }
  }

  v27 = v45;
  v29 = v42;
  v28 = v43;
  v30 = v41;
  if (*(v45 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__forOrdinality) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v26))
  {
    if (*(v27 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v26))
    {
      v31 = v26;
      outlined init with copy of PgQuery_Alias?(v27 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexpr, v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v32 = *(v29 + 48);
      if (v32(v30, 1, v28) == 1)
      {
        outlined destroy of URL?(v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v33 = v30;
        v34 = v39;
        outlined init with take of PgQuery_OidList(v33, v39, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_Node);
        if (v26)
        {
          return result;
        }

        v31 = 0;
      }

      v35 = v40;
      outlined init with copy of PgQuery_Alias?(v27 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr, v40, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v32(v35, 1, v28) == 1)
      {
        outlined destroy of URL?(v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v36 = v38;
        outlined init with take of PgQuery_OidList(v35, v38, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
        if (v31)
        {
          return result;
        }
      }

      result = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_RangeTableFuncCol.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v78 = *(Node - 8);
  v4 = MEMORY[0x28223BE20](Node);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v73 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v72 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v70 - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v12 = MEMORY[0x28223BE20](v77);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v70 - v15;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v17 = *(TypeName - 8);
  MEMORY[0x28223BE20](TypeName);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v70 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  MEMORY[0x28223BE20](v23);
  v25 = &v70 - v24;
  if (*(a1 + 16) == *(a2 + 16) || (v26 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v26 & 1) != 0))
  {
    v70 = v14;
    v71 = v6;
    v79 = a2;
    v28 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
    v29 = *(v23 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v25, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v30 = v79 + v28;
    v31 = v79;
    outlined init with copy of PgQuery_Alias?(v30, &v25[v29], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v32 = *(v17 + 48);
    if (v32(v25, 1, TypeName) == 1)
    {
      v33 = v32(&v25[v29], 1, TypeName);

      if (v33 == 1)
      {
        outlined destroy of URL?(v25, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
LABEL_11:
        if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__forOrdinality) != *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__forOrdinality) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) != *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull))
        {
          goto LABEL_13;
        }

        v37 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexpr;
        v38 = v76;
        v39 = *(v77 + 48);
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexpr, v76, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v25 = v38;
        outlined init with copy of PgQuery_Alias?(v79 + v37, v38 + v39, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v40 = v78 + 48;
        v41 = *(v78 + 48);
        v42 = Node;
        if (v41(v25, 1, Node) == 1)
        {
          v43 = v41(&v25[v39], 1, v42);
          v45 = v70;
          v44 = v71;
          if (v43 == 1)
          {
            outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_24:
            v56 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr;
            v57 = *(v77 + 48);
            outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr, v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            v58 = v79 + v56;
            v59 = v79;
            outlined init with copy of PgQuery_Alias?(v58, v45 + v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v41(v45, 1, v42) == 1)
            {
              if (v41((v45 + v57), 1, v42) == 1)
              {
                outlined destroy of URL?(v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_34:
                v68 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

                v69 = *(v59 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

                return v68 == v69;
              }

              goto LABEL_29;
            }

            v60 = v72;
            outlined init with copy of PgQuery_Alias?(v45, v72, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v41((v45 + v57), 1, v42) == 1)
            {
              outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
LABEL_29:
              v61 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
              v62 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_30:
              outlined destroy of URL?(v45, v61, v62);
              goto LABEL_13;
            }

            outlined init with take of PgQuery_OidList(v45 + v57, v44, type metadata accessor for PgQuery_Node);
            v63 = *(v42 + 20);
            v64 = *(v60 + v63);
            v65 = *(v44 + v63);
            if (v64 != v65)
            {

              v66 = closure #1 in static PgQuery_Node.== infix(_:_:)(v64, v65);

              if (!v66)
              {
                outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_Node);
                outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
                v61 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
                v62 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
                goto LABEL_30;
              }
            }

            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v67 = dispatch thunk of static Equatable.== infix(_:_:)();
            outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_Node);
            outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
            outlined destroy of URL?(v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v67)
            {
              goto LABEL_34;
            }

LABEL_13:

            return 0;
          }
        }

        else
        {
          v46 = v74;
          outlined init with copy of PgQuery_Alias?(v25, v74, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          v47 = v41(&v25[v39], 1, v42);
          v45 = v70;
          v44 = v71;
          if (v47 != 1)
          {
            v78 = v40;
            v48 = &v25[v39];
            v49 = v73;
            outlined init with take of PgQuery_OidList(v48, v73, type metadata accessor for PgQuery_Node);
            v50 = *(v42 + 20);
            v51 = *(v46 + v50);
            v52 = *(v49 + v50);
            if (v51 != v52)
            {

              v53 = closure #1 in static PgQuery_Node.== infix(_:_:)(v51, v52);

              if (!v53)
              {
                outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
                outlined destroy of PgQuery_OidList(v74, type metadata accessor for PgQuery_Node);
                outlined destroy of URL?(v76, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
                goto LABEL_13;
              }
            }

            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
            v54 = v74;
            v55 = dispatch thunk of static Equatable.== infix(_:_:)();
            outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
            outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
            outlined destroy of URL?(v76, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if ((v55 & 1) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_24;
          }

          outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
        }

        v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
        v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_9:
        outlined destroy of URL?(v25, v34, v35);
        goto LABEL_13;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v25, v22, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      if (v32(&v25[v29], 1, TypeName) != 1)
      {
        outlined init with take of PgQuery_OidList(&v25[v29], v19, type metadata accessor for PgQuery_TypeName);

        v36 = specialized static PgQuery_TypeName.== infix(_:_:)(v22, v19);
        outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_TypeName);
        outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_TypeName);
        outlined destroy of URL?(v25, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
        if ((v36 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_TypeName);
    }

    v34 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v35 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    goto LABEL_9;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeTableFuncCol(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFuncCol and conformance PgQuery_RangeTableFuncCol, type metadata accessor for PgQuery_RangeTableFuncCol, &protocol conformance descriptor for PgQuery_RangeTableFuncCol);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeTableFuncCol(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFuncCol and conformance PgQuery_RangeTableFuncCol, type metadata accessor for PgQuery_RangeTableFuncCol, &protocol conformance descriptor for PgQuery_RangeTableFuncCol);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeTableFuncCol(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFuncCol and conformance PgQuery_RangeTableFuncCol, type metadata accessor for PgQuery_RangeTableFuncCol, &protocol conformance descriptor for PgQuery_RangeTableFuncCol);

  return Message.hash(into:)();
}

uint64_t PgQuery_TypeName.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          if (result == 5)
          {
            goto LABEL_4;
          }

LABEL_18:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 7)
        {
LABEL_4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 8)
        {
          goto LABEL_18;
        }
      }

      else if (result > 2)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_TypeName.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*v3 + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + 8))
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + 12) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + 13) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(*(v3 + 16) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    if (!*(v3 + 24))
    {
      goto LABEL_15;
    }

LABEL_14:
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (*(v3 + 24))
  {
    goto LABEL_14;
  }

LABEL_15:
  if (!*(*(v3 + 32) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 40) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for PgQuery_TypeName(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_TypeName@<X0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = v1;
  *(a1 + 24) = 0;
  *(a1 + 32) = v1;
  *(a1 + 40) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TypeName(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TypeName(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TypeName(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);

  return Message.hash(into:)();
}

uint64_t PgQuery_ColumnDef._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v0 + v1, 1, 1, TypeName);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhcount) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isLocal) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFromType) = 0;
  v3 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v0 + v4, 1, 1, Node);
  v6(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault, 1, 1, Node);
  v7 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v8, 1, 1, RangeVar);
  v10 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause;
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  (*(*(CollateClause - 8) + 56))(v0 + v11, 1, 1, CollateClause);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fdwoptions) = v13;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  return v0;
}

uint64_t PgQuery_ColumnDef._StorageClass.deinit()
{

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);

  return v0;
}

void type metadata completion function for PgQuery_ColumnDef._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_CollateClause?, type metadata accessor for PgQuery_CollateClause, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t closure #1 in PgQuery_ColumnDef.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid;
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
          goto LABEL_5;
        case 2:
          type metadata accessor for PgQuery_TypeName(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
          goto LABEL_28;
        case 3:
          v9 = v8;
          v10 = v7;
          goto LABEL_15;
        case 4:
          v9 = v8;
          v10 = v7;
          goto LABEL_22;
        case 5:
          v9 = v8;
          v10 = v7;
          goto LABEL_22;
        case 6:
          v9 = v8;
          v10 = v7;
LABEL_22:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 7:
          v9 = v8;
          v10 = v7;
          goto LABEL_5;
        case 8:
        case 9:
          v11 = v4;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          goto LABEL_27;
        case 10:
          v9 = v8;
          v10 = v7;
          goto LABEL_5;
        case 11:
          v11 = v4;
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
          goto LABEL_27;
        case 12:
          v9 = v8;
          v10 = v7;
LABEL_5:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 13:
          v11 = v4;
          type metadata accessor for PgQuery_CollateClause(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause, &protocol conformance descriptor for PgQuery_CollateClause);
LABEL_27:
          v4 = v11;
LABEL_28:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_29;
        case 14:
          v10 = v7;
          v9 = v8;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 15:
        case 16:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
LABEL_29:
          v10 = v13;
          v9 = v12;
          break;
        case 17:
          v9 = v8;
          v10 = v7;
LABEL_15:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
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

uint64_t closure #1 in PgQuery_ColumnDef.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v62 - v8;
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  v63 = *(CollateClause - 8);
  MEMORY[0x28223BE20](CollateClause);
  v62 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v71 = &v62 - v11;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v65 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v64 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v70 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v74 = &v62 - v16;
  Node = type metadata accessor for PgQuery_Node(0);
  v18 = *(Node - 8);
  v72 = Node;
  v73 = v18;
  v19 = MEMORY[0x28223BE20](Node);
  v66 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v69 = &v62 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v62 - v23;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v26 = *(TypeName - 8);
  MEMORY[0x28223BE20](TypeName);
  v28 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a1;
  v29 = *(a1 + 16);
  v30 = *(a1 + 24);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  v33 = v76;
  outlined init with copy of PgQuery_Alias?(v76 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v24, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v26 + 48))(v24, 1, TypeName) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v24, v28, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      v34 = type metadata accessor for PgQuery_TypeName;
LABEL_11:
      v35 = v34;
      v36 = v28;
      return outlined destroy of PgQuery_OidList(v36, v35);
    }

    outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_TypeName);
  }

  v37 = v74;
  v38 = RangeVar;
  if (*(v33 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhcount))
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if (*(v33 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isLocal) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if (*(v33 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if (*(v33 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFromType) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  v39 = *(v33 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage);
  v40 = *(v33 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage + 8);
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  outlined init with copy of PgQuery_Alias?(v76 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault, v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v42 = *(v73 + 48);
  v73 += 48;
  if (v42(v37, 1, v72) == 1)
  {
    outlined destroy of URL?(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    goto LABEL_33;
  }

  v28 = v69;
  outlined init with take of PgQuery_OidList(v37, v69, type metadata accessor for PgQuery_Node);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  if (v5)
  {
    v34 = type metadata accessor for PgQuery_Node;
    goto LABEL_11;
  }

  outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
  v38 = RangeVar;
LABEL_33:
  v43 = v70;
  outlined init with copy of PgQuery_Alias?(v76 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault, v70, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v44 = v42(v43, 1, v72);
  v45 = v71;
  if (v44 == 1)
  {
    outlined destroy of URL?(v43, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    goto LABEL_38;
  }

  v46 = v66;
  outlined init with take of PgQuery_OidList(v43, v66, type metadata accessor for PgQuery_Node);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  if (v5)
  {
    v35 = type metadata accessor for PgQuery_Node;
    v36 = v46;
    return outlined destroy of PgQuery_OidList(v36, v35);
  }

  outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
LABEL_38:
  v47 = *(v76 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity + 8);
  v48 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v48 = *(v76 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity) & 0xFFFFFFFFFFFFLL;
  }

  v50 = v67;
  v49 = CollateClause;
  if (v48)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  v51 = v76;
  outlined init with copy of PgQuery_Alias?(v76 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence, v45, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v65 + 48))(v45, 1, v38) == 1)
  {
    outlined destroy of URL?(v45, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    v52 = v45;
    v53 = v64;
    outlined init with take of PgQuery_OidList(v52, v64, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_RangeVar);
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v54 = *(v51 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated);
  v55 = *(v51 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated + 8);
  v56 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v56 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (v56)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();

    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v57 = v76;
  outlined init with copy of PgQuery_Alias?(v76 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, v50, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  if ((*(v63 + 48))(v50, 1, v49) == 1)
  {
    outlined destroy of URL?(v50, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
    v58 = v5;
  }

  else
  {
    v59 = v50;
    v60 = v62;
    outlined init with take of PgQuery_OidList(v59, v62, type metadata accessor for PgQuery_CollateClause);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause, &protocol conformance descriptor for PgQuery_CollateClause);
    v58 = v5;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_CollateClause);
    if (v5)
    {
      return result;
    }
  }

  if (!*(v57 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v58))
  {
    v61 = v58;
    if (*(*(v57 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

      if (v58)
      {
        return result;
      }

      v61 = 0;
    }

    if (!*(*(v76 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fdwoptions) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v61))
    {
      result = *(v76 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_ColumnDef.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  v112 = *(CollateClause - 8);
  v113 = CollateClause;
  MEMORY[0x28223BE20](CollateClause);
  v6 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v109 = &v106 - v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMR);
  MEMORY[0x28223BE20](v111);
  v10 = &v106 - v9;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v117 = *(RangeVar - 8);
  v118 = RangeVar;
  MEMORY[0x28223BE20](RangeVar);
  v110 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v114 = &v106 - v14;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x28223BE20](v116);
  v119 = &v106 - v15;
  Node = type metadata accessor for PgQuery_Node(0);
  v125 = *(Node - 8);
  v126 = Node;
  v17 = MEMORY[0x28223BE20](Node);
  v115 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v121 = &v106 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v120 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v123 = &v106 - v23;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v24 = MEMORY[0x28223BE20](v124);
  v122 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v127 = &v106 - v26;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v28 = *(TypeName - 8);
  MEMORY[0x28223BE20](TypeName);
  v30 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v106 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  MEMORY[0x28223BE20](v34);
  v36 = &v106 - v35;
  if (*(a1 + 16) == *(a2 + 16) || (v37 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v37 & 1) != 0))
  {
    v107 = v6;
    v108 = v10;
    v128 = a2;
    v39 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
    v40 = *(v34 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v36, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v41 = v128 + v39;
    v42 = v128;
    outlined init with copy of PgQuery_Alias?(v41, &v36[v40], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v43 = *(v28 + 48);
    if (v43(v36, 1, TypeName) == 1)
    {
      v44 = v43(&v36[v40], 1, TypeName);

      if (v44 == 1)
      {
        outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
        goto LABEL_11;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v36, v33, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      if (v43(&v36[v40], 1, TypeName) != 1)
      {
        outlined init with take of PgQuery_OidList(&v36[v40], v30, type metadata accessor for PgQuery_TypeName);

        v48 = specialized static PgQuery_TypeName.== infix(_:_:)(v33, v30);
        outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_TypeName);
        outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_TypeName);
        outlined destroy of URL?(v36, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
        if ((v48 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_11:
        if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhcount) != *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhcount) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isLocal) != *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isLocal) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) != *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFromType) != *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFromType) || (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage) != *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage + 8) != *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_15;
        }

        v49 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault;
        v50 = v124;
        v51 = *(v124 + 48);
        v52 = v127;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault, v127, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v53 = v52;
        outlined init with copy of PgQuery_Alias?(v42 + v49, v52 + v51, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v54 = v126;
        v55 = *(v125 + 48);
        if (v55(v53, 1, v126) == 1)
        {
          if (v55(v53 + v51, 1, v54) != 1)
          {
            goto LABEL_34;
          }

          outlined destroy of URL?(v53, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          v56 = v123;
          outlined init with copy of PgQuery_Alias?(v53, v123, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v55(v53 + v51, 1, v54) == 1)
          {
            v57 = v56;
            goto LABEL_33;
          }

          v58 = v121;
          outlined init with take of PgQuery_OidList(v53 + v51, v121, type metadata accessor for PgQuery_Node);
          v59 = *(v54 + 20);
          v60 = *(v56 + v59);
          v61 = *(v58 + v59);
          if (v60 != v61)
          {

            v62 = closure #1 in static PgQuery_Node.== infix(_:_:)(v60, v61);

            if (!v62)
            {
              outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
              outlined destroy of PgQuery_OidList(v123, type metadata accessor for PgQuery_Node);
              v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
              v46 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
              v47 = v127;
              goto LABEL_9;
            }
          }

          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v63 = v123;
          v64 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_Node);
          outlined destroy of URL?(v127, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v64 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v65 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault;
        v66 = *(v50 + 48);
        v67 = v122;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault, v122, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v53 = v67;
        outlined init with copy of PgQuery_Alias?(v42 + v65, v67 + v66, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v55(v67, 1, v54) == 1)
        {
          if (v55(v67 + v66, 1, v54) == 1)
          {
            outlined destroy of URL?(v67, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            goto LABEL_38;
          }

LABEL_34:
          v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
          v46 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
          v47 = v53;
          goto LABEL_9;
        }

        v68 = v67;
        v69 = v120;
        outlined init with copy of PgQuery_Alias?(v68, v120, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v55(v53 + v66, 1, v54) != 1)
        {
          v70 = v115;
          outlined init with take of PgQuery_OidList(v53 + v66, v115, type metadata accessor for PgQuery_Node);
          v71 = *(v54 + 20);
          v72 = *(v69 + v71);
          v73 = *(v70 + v71);
          if (v72 != v73)
          {

            v74 = closure #1 in static PgQuery_Node.== infix(_:_:)(v72, v73);

            if (!v74)
            {
              outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Node);
              outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_Node);
              v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
              v46 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
              v47 = v122;
              goto LABEL_9;
            }
          }

          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v75 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_Node);
          outlined destroy of URL?(v122, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v75 & 1) == 0)
          {
            goto LABEL_15;
          }

LABEL_38:
          if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity) != *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity + 8) != *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_15;
          }

          v76 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence;
          v77 = *(v116 + 48);
          v78 = v119;
          outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence, v119, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
          outlined init with copy of PgQuery_Alias?(v42 + v76, v78 + v77, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
          v79 = v118;
          v80 = *(v117 + 48);
          if (v80(v78, 1, v118) == 1)
          {
            if (v80(v78 + v77, 1, v79) == 1)
            {
              outlined destroy of URL?(v78, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_50:
              if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated) != *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated + 8) != *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_15;
              }

              v85 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause;
              v86 = *(v111 + 48);
              v78 = v108;
              outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, v108, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
              outlined init with copy of PgQuery_Alias?(v42 + v85, v78 + v86, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
              v87 = v113;
              v88 = *(v112 + 48);
              if (v88(v78, 1, v113) == 1)
              {
                if (v88(v78 + v86, 1, v87) == 1)
                {
                  outlined destroy of URL?(v78, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
LABEL_63:
                  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid) == *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid))
                  {
                    v98 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);
                    v99 = *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);

                    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v98, v99);

                    if (NodeV_Tt1g5)
                    {
                      v101 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fdwoptions);
                      v102 = *(v128 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fdwoptions);

                      v103 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v101, v102);

                      if (v103)
                      {
                        v104 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

                        v105 = *(v128 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

                        return v104 == v105;
                      }
                    }
                  }

                  goto LABEL_15;
                }

                goto LABEL_58;
              }

              v89 = v109;
              outlined init with copy of PgQuery_Alias?(v78, v109, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
              if (v88(v78 + v86, 1, v87) == 1)
              {
                outlined destroy of PgQuery_OidList(v89, type metadata accessor for PgQuery_CollateClause);
                v78 = v108;
LABEL_58:
                v45 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMd;
                v46 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMR;
                goto LABEL_59;
              }

              v90 = v87;
              v91 = v107;
              outlined init with take of PgQuery_OidList(&v108[v86], v107, type metadata accessor for PgQuery_CollateClause);
              v92 = *(v90 + 20);
              v93 = *(v89 + v92);
              v94 = *(v91 + v92);
              if (v93 == v94 || (, , v95 = closure #1 in static PgQuery_CollateClause.== infix(_:_:)(v93, v94), , , v95))
              {
                type metadata accessor for UnknownStorage();
                lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
                v96 = v107;
                v97 = dispatch thunk of static Equatable.== infix(_:_:)();
                outlined destroy of PgQuery_OidList(v96, type metadata accessor for PgQuery_CollateClause);
                outlined destroy of PgQuery_OidList(v89, type metadata accessor for PgQuery_CollateClause);
                outlined destroy of URL?(v108, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
                if (v97)
                {
                  goto LABEL_63;
                }

LABEL_15:

                return 0;
              }

              outlined destroy of PgQuery_OidList(v107, type metadata accessor for PgQuery_CollateClause);
              outlined destroy of PgQuery_OidList(v89, type metadata accessor for PgQuery_CollateClause);
              v45 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd;
              v46 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR;
              v47 = v108;
LABEL_9:
              outlined destroy of URL?(v47, v45, v46);
              goto LABEL_15;
            }
          }

          else
          {
            v81 = v114;
            outlined init with copy of PgQuery_Alias?(v78, v114, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
            if (v80(v78 + v77, 1, v79) != 1)
            {
              v82 = v78 + v77;
              v83 = v110;
              outlined init with take of PgQuery_OidList(v82, v110, type metadata accessor for PgQuery_RangeVar);
              v84 = specialized static PgQuery_RangeVar.== infix(_:_:)(v81, v83);
              outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_RangeVar);
              outlined destroy of PgQuery_OidList(v81, type metadata accessor for PgQuery_RangeVar);
              outlined destroy of URL?(v78, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
              if ((v84 & 1) == 0)
              {
                goto LABEL_15;
              }

              goto LABEL_50;
            }

            outlined destroy of PgQuery_OidList(v81, type metadata accessor for PgQuery_RangeVar);
          }

          v45 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
          v46 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_59:
          v47 = v78;
          goto LABEL_9;
        }

        v57 = v69;
LABEL_33:
        outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
        goto LABEL_34;
      }

      outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_TypeName);
    }

    v45 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v46 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    v47 = v36;
    goto LABEL_9;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ColumnDef(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnDef and conformance PgQuery_ColumnDef, type metadata accessor for PgQuery_ColumnDef, &protocol conformance descriptor for PgQuery_ColumnDef);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ColumnDef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnDef and conformance PgQuery_ColumnDef, type metadata accessor for PgQuery_ColumnDef, &protocol conformance descriptor for PgQuery_ColumnDef);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ColumnDef(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnDef and conformance PgQuery_ColumnDef, type metadata accessor for PgQuery_ColumnDef, &protocol conformance descriptor for PgQuery_ColumnDef);

  return Message.hash(into:)();
}

uint64_t PgQuery_IndexElem._StorageClass.__deallocating_deinit()
{

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_IndexElem._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_IndexElem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        if (result <= 6)
        {
          goto LABEL_21;
        }

        if (result == 7)
        {
          v7 = v4;
          lazy protocol witness table accessor for type PgQuery_SortByDir and conformance PgQuery_SortByDir();
LABEL_5:
          v4 = v7;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 8)
        {
          v7 = v4;
          lazy protocol witness table accessor for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls();
          goto LABEL_5;
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
LABEL_21:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            goto LABEL_6;
          }

LABEL_22:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_6;
        }

        if (result == 1)
        {
          goto LABEL_22;
        }

        if (result == 2)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_IndexElem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v5))
  {
    outlined init with copy of PgQuery_Alias?(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v11 + 48))(v9, 1, Node) == 1)
    {
      result = outlined destroy of URL?(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v9, v13, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
      if (v5)
      {
        return result;
      }
    }

    v18 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname + 8);
    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname) & 0xFFFFFFFFFFFFLL;
    }

    if (!v19 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v5))
    {
      if (!*(*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v5))
      {
        if (!*(*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v5))
        {
          if (!*(*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclassopts) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v5))
          {
            if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering) || (v20 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering + 8), v22 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering), v23 = v20, lazy protocol witness table accessor for type PgQuery_SortByDir and conformance PgQuery_SortByDir(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v5))
            {
              if (*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering))
              {
                v21 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering + 8);
                v22 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering);
                v23 = v21;
                lazy protocol witness table accessor for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls();
                return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_IndexElem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  if (*(a1 + 16) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v45 = v7;
  v14 = a1;
  v15 = a2;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  v17 = *(v11 + 48);
  outlined init with copy of PgQuery_Alias?(v14 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v15 + v16, &v13[v17], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, Node) == 1)
  {
    v19 = v18(&v13[v17], 1, Node);

    if (v19 == 1)
    {
      outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  outlined init with copy of PgQuery_Alias?(v13, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v18(&v13[v17], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
LABEL_8:
    v20 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v21 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_9:
    outlined destroy of URL?(v13, v20, v21);
    goto LABEL_10;
  }

  v23 = v45;
  outlined init with take of PgQuery_OidList(&v13[v17], v45, type metadata accessor for PgQuery_Node);
  v24 = *(Node + 20);
  v25 = *&v10[v24];
  v26 = *(v23 + v24);

  if (v25 != v26)
  {

    v27 = closure #1 in static PgQuery_Node.== infix(_:_:)(v25, v26);

    if (!v27)
    {
      outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_9;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v28 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_15:
  if ((*(v14 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname) != *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname) || *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname + 8) != *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v29 = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);
  v30 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v29, v30);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_10;
  }

  v32 = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass);
  v33 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass);

  v34 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v32, v33);

  if ((v34 & 1) == 0)
  {
    goto LABEL_10;
  }

  v35 = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclassopts);
  v36 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclassopts);

  v37 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v35, v36);

  if ((v37 & 1) == 0)
  {
    goto LABEL_10;
  }

  v38 = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering);
  v39 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering);
  if (*(v15 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering + 8) != 1)
  {
    if (v38 == v39)
    {
      goto LABEL_29;
    }

    goto LABEL_10;
  }

  if (v39 <= 1)
  {
    if (v39)
    {
      if (v38 != 1)
      {
        goto LABEL_10;
      }
    }

    else if (v38)
    {
      goto LABEL_10;
    }
  }

  else if (v39 == 2)
  {
    if (v38 != 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v39 == 3)
    {
      if (v38 == 3)
      {
        goto LABEL_29;
      }

LABEL_10:

      return 0;
    }

    if (v38 != 4)
    {
      goto LABEL_10;
    }
  }

LABEL_29:
  v40 = v15;
  v41 = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering);

  v42 = *(v15 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering);
  v43 = *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering + 8);

  if (v43 == 1)
  {
    if (v42 > 1)
    {
      if (v42 == 2)
      {
        if (v41 == 2)
        {
          return 1;
        }
      }

      else if (v41 == 3)
      {
        return 1;
      }
    }

    else if (v42)
    {
      if (v41 == 1)
      {
        return 1;
      }
    }

    else if (!v41)
    {
      return 1;
    }

    return 0;
  }

  return v41 == v42;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_IndexElem(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexElem and conformance PgQuery_IndexElem, type metadata accessor for PgQuery_IndexElem, &protocol conformance descriptor for PgQuery_IndexElem);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_IndexElem(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexElem and conformance PgQuery_IndexElem, type metadata accessor for PgQuery_IndexElem, &protocol conformance descriptor for PgQuery_IndexElem);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_IndexElem(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexElem and conformance PgQuery_IndexElem, type metadata accessor for PgQuery_IndexElem, &protocol conformance descriptor for PgQuery_IndexElem);

  return Message.hash(into:)();
}

uint64_t PgQuery_Constraint._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 52) = 0;
  *(v0 + 56) = 0;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawExpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  v4 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__keys) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__including) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclusions) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v6;
  v7 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc) = 0;
  v9 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, 1, 1, Node);
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pktable;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v10, 1, 1, RangeVar);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkAttrs) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pkAttrs) = v6;
  v12 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldConpfeqop) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldPktableOid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipValidation) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initiallyValid) = 0;
  return v0;
}

uint64_t PgQuery_Constraint._StorageClass.deinit()
{

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawExpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pktable, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  return v0;
}

void type metadata completion function for PgQuery_Constraint._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_Constraint.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initiallyValid;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    v7 = v10;
    while ((v6 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v8 = v7;
          lazy protocol witness table accessor for type PgQuery_ConstrType and conformance PgQuery_ConstrType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 2:
          v8 = v7;
          goto LABEL_31;
        case 3:
          v8 = v7;
          goto LABEL_5;
        case 4:
          v8 = v7;
          goto LABEL_5;
        case 5:
          v8 = v7;
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 6:
          v8 = v7;
          goto LABEL_5;
        case 7:
        case 18:
          v9 = v4;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          goto LABEL_24;
        case 8:
          v8 = v7;
          goto LABEL_31;
        case 9:
          v8 = v7;
          goto LABEL_31;
        case 10:
        case 11:
        case 12:
        case 13:
        case 20:
        case 21:
        case 25:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_28;
        case 14:
          v8 = v7;
          goto LABEL_31;
        case 15:
          v8 = v7;
          goto LABEL_31;
        case 16:
          v8 = v7;
          goto LABEL_5;
        case 17:
          v8 = v7;
          goto LABEL_31;
        case 19:
          v9 = v4;
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
LABEL_24:
          v4 = v9;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_28:
          v8 = v10;
          break;
        case 22:
          v8 = v7;
          goto LABEL_31;
        case 23:
          v8 = v7;
          goto LABEL_31;
        case 24:
          v8 = v7;
LABEL_31:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 26:
          v8 = v7;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 27:
          v8 = v7;
          goto LABEL_5;
        case 28:
          v8 = v7;
LABEL_5:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
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

uint64_t closure #1 in PgQuery_Constraint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v65 - v7;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v67 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v70 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v65 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v16 = *(Node - 8);
  v17 = MEMORY[0x28223BE20](Node);
  v75 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v72 = &v65 - v19;
  if (*(a1 + 16))
  {
    v20 = *(a1 + 24);
    v73 = *(a1 + 16);
    v74 = v20;
    lazy protocol witness table accessor for type PgQuery_ConstrType and conformance PgQuery_ConstrType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v66 = v9;
    v22 = Node;
  }

  else
  {
    v66 = v9;
    v22 = Node;
  }

  v23 = *(a1 + 40);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  v71 = a1;
  if (v24)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }

    a1 = v71;
  }

  if (*(a1 + 48) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    a1 = v71;
  }

  if (*(a1 + 49) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    a1 = v71;
  }

  if (*(a1 + 52))
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    a1 = v71;
  }

  if (*(a1 + 56) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v25 = 0;
    a1 = v71;
  }

  else
  {
    v25 = v4;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawExpr, v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v26 = *(v16 + 48);
  if (v26(v14, 1, v22) == 1)
  {
    v65 = v26;
    outlined destroy of URL?(v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v27 = v66;
  }

  else
  {
    v28 = v14;
    v29 = v72;
    outlined init with take of PgQuery_OidList(v28, v72, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v27 = v66;
    if (v25)
    {
      return outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_Node);
    }

    v65 = v26;
    outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_Node);
  }

  v30 = v71;
  v31 = *(v71 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr + 8);
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = *(v71 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr) & 0xFFFFFFFFFFFFLL;
  }

  v33 = v25;
  if (v32)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    v34 = v75;
    if (v33)
    {
    }

    v30 = v71;
  }

  else
  {
    v34 = v75;
  }

  v35 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen + 8);
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen) & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v33)
    {
    }

    v30 = v71;
  }

  if (*(*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__keys) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v33)
    {
    }

    v34 = v75;
    v30 = v71;
  }

  if (*(*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__including) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v33)
    {
    }

    v34 = v75;
    v30 = v71;
  }

  if (*(*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclusions) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v33)
    {
    }

    v34 = v75;
    v30 = v71;
  }

  if (*(*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v33)
    {
    }

    v34 = v75;
    v30 = v71;
  }

  v37 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname + 8);
  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname) & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (!v33)
    {

      v30 = v71;
      goto LABEL_57;
    }
  }

LABEL_57:
  v39 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace + 8);
  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace) & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v33)
    {
    }

    v30 = v71;
  }

  if (*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v33)
    {
      return result;
    }

    v41 = v70;
    v30 = v71;
  }

  else
  {
    v41 = v70;
  }

  v42 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);
  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) & 0xFFFFFFFFFFFFLL;
  }

  if (v43)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    v75 = v33;
    if (v33)
    {
    }

    v41 = v70;
    v30 = v71;
  }

  else
  {
    v75 = v33;
  }

  v44 = v41;
  outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v45 = v65(v44, 1, v22);
  v46 = v68;
  v47 = RangeVar;
  if (v45 == 1)
  {
    outlined destroy of URL?(v44, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v44, v34, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v48 = v75;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v75 = v48;
    if (v48)
    {
      return outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_Node);
  }

  outlined init with copy of PgQuery_Alias?(v71 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pktable, v46, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v67 + 48))(v46, 1, v47) == 1)
  {
    outlined destroy of URL?(v46, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v46, v27, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v49 = v75;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v75 = v49;
    if (v49)
    {
      return outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_RangeVar);
    }

    outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_RangeVar);
  }

  v50 = v71;
  if (*(*(v71 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkAttrs) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v51 = v75;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v75 = v51;
    if (!v51)
    {

      v50 = v71;
      goto LABEL_87;
    }
  }

LABEL_87:
  if (*(*(v50 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pkAttrs) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v52 = v75;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v75 = v52;
    if (v52)
    {
    }
  }

  v53 = *(v71 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype + 8);
  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = *(v71 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype) & 0xFFFFFFFFFFFFLL;
  }

  if (!v54 || (, v55 = v75, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , (v75 = v55) == 0))
  {
    v56 = *(v71 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction + 8);
    v57 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v57 = *(v71 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction) & 0xFFFFFFFFFFFFLL;
    }

    if (!v57 || (, v58 = v75, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , (v75 = v58) == 0))
    {
      v59 = *(v71 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction + 8);
      v60 = HIBYTE(v59) & 0xF;
      if ((v59 & 0x2000000000000000) == 0)
      {
        v60 = *(v71 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction) & 0xFFFFFFFFFFFFLL;
      }

      if (!v60 || (, v61 = v75, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , (v75 = v61) == 0))
      {
        if (!*(*(v71 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldConpfeqop) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , v62 = v75, dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , (v75 = v62) == 0))
        {
          result = *(v71 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldPktableOid);
          if (!result || (v63 = v75, result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), (v75 = v63) == 0))
          {
            if (*(v71 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipValidation) != 1 || (v64 = v75, result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), (v75 = v64) == 0))
            {
              if (*(v71 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initiallyValid) == 1)
              {
                return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
              }
            }
          }
        }
      }
    }
  }

  return result;
}
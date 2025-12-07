uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RefreshMatViewStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RefreshMatViewStmt and conformance PgQuery_RefreshMatViewStmt, type metadata accessor for PgQuery_RefreshMatViewStmt, &protocol conformance descriptor for PgQuery_RefreshMatViewStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RefreshMatViewStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RefreshMatViewStmt and conformance PgQuery_RefreshMatViewStmt, type metadata accessor for PgQuery_RefreshMatViewStmt, &protocol conformance descriptor for PgQuery_RefreshMatViewStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
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

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ReplicaIdentityStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReplicaIdentityStmt and conformance PgQuery_ReplicaIdentityStmt, type metadata accessor for PgQuery_ReplicaIdentityStmt, &protocol conformance descriptor for PgQuery_ReplicaIdentityStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
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
  v16[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v16 - v6;
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v9 = *(VariableSetStmt - 8);
  MEMORY[0x1EEE9AC00](VariableSetStmt, v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterSystemStmt = type metadata accessor for PgQuery_AlterSystemStmt(0);
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterSystemStmt + 20), v7, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  if ((*(v9 + 48))(v7, 1, VariableSetStmt) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v12, type metadata accessor for PgQuery_VariableSetStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);
    v14 = v16[3];
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_VariableSetStmt);
    if (v14)
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

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterSystemStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSystemStmt and conformance PgQuery_AlterSystemStmt, type metadata accessor for PgQuery_AlterSystemStmt, &protocol conformance descriptor for PgQuery_AlterSystemStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterSystemStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSystemStmt and conformance PgQuery_AlterSystemStmt, type metadata accessor for PgQuery_AlterSystemStmt, &protocol conformance descriptor for PgQuery_AlterSystemStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreatePolicyStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v21 = &v20 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v6, 1, 1, RangeVar);
  v8 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles) = MEMORY[0x1E69E7CC0];
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  v20 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(*(Node - 8) + 56);
  v13(v1 + v11, 1, 1, Node);
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck;
  v13(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, 1, 1, Node);
  v15 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v15;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;

  outlined assign with copy of PgQuery_Node?(a1 + v16, v1 + v6, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v17 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName + 8);
  *v8 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName);
  v8[1] = v17;

  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v1 + v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = v21;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v18, v1 + v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return v1;
}

uint64_t PgQuery_CreatePolicyStmt._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_CreatePolicyStmt._StorageClass(uint64_t a1)
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
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v49 = &v41 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v45 = *(Node - 8);
  v14 = MEMORY[0x1EEE9AC00](Node, v13);
  v43 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v44 = &v41 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v41 - v20;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v23 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v24);
  v46 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    v42 = RangeVar;

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();

    if (v5)
    {
      return result;
    }

    RangeVar = v42;
  }

  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, v21, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v23 + 48))(v21, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v21, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v31 = v49;
  }

  else
  {
    v32 = v46;
    outlined init with take of PgQuery_OidList(v21, v46, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_RangeVar);
    v31 = v49;
    if (v5)
    {
      return result;
    }
  }

  v33 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName + 8);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName) & 0xFFFFFFFFFFFFLL;
  }

  v36 = v47;
  v35 = Node;
  if (!v34 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v5))
  {
    if (*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
    {
      if (!*(*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v5))
      {
        outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v37 = *(v45 + 48);
        v45 += 48;
        if (v37(v31, 1, v35) == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          v38 = v31;
          v39 = v44;
          outlined init with take of PgQuery_OidList(v38, v44, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
          if (v5)
          {
            return result;
          }
        }

        outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v37(v36, 1, v35) == 1)
        {
          return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          v40 = v43;
          outlined init with take of PgQuery_OidList(v36, v43, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          return outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CreatePolicyStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v86 = *(Node - 8);
  v5 = MEMORY[0x1EEE9AC00](Node, v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v81 = &v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v80 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v82 = &v78 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = MEMORY[0x1EEE9AC00](v85, v16);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v84 = &v78 - v21;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v23 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v24);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v78 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v78 - v33;
  if (*(a1 + 16) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v78 = v7;
  v79 = v19;
  v87 = a2;
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;
  v36 = *(v31 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, v34, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v37 = v87 + v35;
  v38 = v87;
  outlined init with copy of PgQuery_Alias?(v37, &v34[v36], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v39 = *(v23 + 48);
  if (v39(v34, 1, RangeVar) == 1)
  {
    v40 = v39(&v34[v36], 1, RangeVar);

    if (v40 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_12;
    }

LABEL_8:
    v41 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v42 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_9:
    v43 = v34;
LABEL_10:
    _s10Foundation4UUIDVSgWOhTm_0(v43, v41, v42);
LABEL_29:

    return 0;
  }

  outlined init with copy of PgQuery_Alias?(v34, v30, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v39(&v34[v36], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_8;
  }

  outlined init with take of PgQuery_OidList(&v34[v36], v26, type metadata accessor for PgQuery_RangeVar);

  v44 = specialized static PgQuery_RangeVar.== infix(_:_:)(v30, v26);
  outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v44 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName) != *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName + 8) != *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive) != *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive))
  {
    goto LABEL_29;
  }

  v45 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);
  v46 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v45, v46);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_29;
  }

  v48 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  v49 = v84;
  v50 = *(v85 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v84, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v34 = v49;
  outlined init with copy of PgQuery_Alias?(v87 + v48, v49 + v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v51 = v86 + 48;
  v52 = *(v86 + 48);
  v53 = Node;
  if (v52(v34, 1, Node) == 1)
  {
    v54 = v52(&v34[v50], 1, v53);
    v56 = v78;
    v55 = v79;
    if (v54 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v57 = v82;
  outlined init with copy of PgQuery_Alias?(v34, v82, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v58 = v52(&v34[v50], 1, v53);
  v56 = v78;
  v55 = v79;
  if (v58 == 1)
  {
    outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
LABEL_22:
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_9;
  }

  v86 = v51;
  v59 = &v34[v50];
  v60 = v81;
  outlined init with take of PgQuery_OidList(v59, v81, type metadata accessor for PgQuery_Node);
  v61 = *(v53 + 20);
  v62 = *(v57 + v61);
  v63 = *(v60 + v61);
  if (v62 != v63)
  {

    v64 = closure #1 in static PgQuery_Node.== infix(_:_:)(v62, v63);

    if (!v64)
    {
      outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v82, type metadata accessor for PgQuery_Node);
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v43 = v84;
      goto LABEL_10;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v65 = v82;
  v66 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v65, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v84, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v66 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_26:
  v67 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck;
  v68 = *(v85 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v87 + v67, v55 + v68, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v52(v55, 1, v53) != 1)
  {
    v70 = v80;
    outlined init with copy of PgQuery_Alias?(v55, v80, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v52((v55 + v68), 1, v53) == 1)
    {

      outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Node);
      goto LABEL_33;
    }

    outlined init with take of PgQuery_OidList(v55 + v68, v56, type metadata accessor for PgQuery_Node);
    v73 = *(v53 + 20);
    v74 = *(v70 + v73);
    v75 = *(v56 + v73);
    if (v74 != v75)
    {

      v76 = closure #1 in static PgQuery_Node.== infix(_:_:)(v74, v75);

      if (!v76)
      {

        outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Node);
        v71 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v72 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_34;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v77 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    return (v77 & 1) != 0;
  }

  if (v52((v55 + v68), 1, v53) != 1)
  {
LABEL_33:
    v71 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v72 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_34:
    _s10Foundation4UUIDVSgWOhTm_0(v55, v71, v72);
    return 0;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreatePolicyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePolicyStmt and conformance PgQuery_CreatePolicyStmt, type metadata accessor for PgQuery_CreatePolicyStmt, &protocol conformance descriptor for PgQuery_CreatePolicyStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreatePolicyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePolicyStmt and conformance PgQuery_CreatePolicyStmt, type metadata accessor for PgQuery_CreatePolicyStmt, &protocol conformance descriptor for PgQuery_CreatePolicyStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreatePolicyStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePolicyStmt and conformance PgQuery_CreatePolicyStmt, type metadata accessor for PgQuery_CreatePolicyStmt, &protocol conformance descriptor for PgQuery_CreatePolicyStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterPolicyStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v17 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v7, 1, 1, RangeVar);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles) = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(*(Node - 8) + 56);
  v12(v1 + v10, 1, 1, Node);
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck;
  v12(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, 1, 1, Node);
  v14 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v14;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;

  outlined assign with copy of PgQuery_Node?(a1 + v15, v1 + v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v1 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v6, v1 + v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return v1;
}

uint64_t PgQuery_AlterPolicyStmt._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_AlterPolicyStmt._StorageClass(uint64_t a1)
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
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v41 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v43 = &v39 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v44 = *(Node - 8);
  v14 = MEMORY[0x1EEE9AC00](Node, v13);
  v39 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v40 = &v39 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v39 - v20;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v23 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v24);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v5))
  {
    outlined init with copy of PgQuery_Alias?(v45 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, v21, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if ((*(v23 + 48))(v21, 1, RangeVar) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v21, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v32 = v43;
      v31 = v44;
    }

    else
    {
      outlined init with take of PgQuery_OidList(v21, v26, type metadata accessor for PgQuery_RangeVar);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_RangeVar);
      v32 = v43;
      v31 = v44;
      if (v5)
      {
        return result;
      }
    }

    v34 = v41;
    v33 = Node;
    if (!*(*(v45 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v5))
    {
      outlined init with copy of PgQuery_Alias?(v45 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v35 = *(v31 + 48);
      if (v35(v32, 1, v33) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v36 = v32;
        v37 = v40;
        outlined init with take of PgQuery_OidList(v36, v40, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_Node);
        if (v5)
        {
          return result;
        }
      }

      outlined init with copy of PgQuery_Alias?(v45 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v35(v34, 1, v33) == 1)
      {
        return _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v38 = v39;
        outlined init with take of PgQuery_OidList(v34, v39, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        return outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_Node);
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_AlterPolicyStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v86 = *(Node - 8);
  v5 = MEMORY[0x1EEE9AC00](Node, v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v81 = &v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v80 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v82 = &v78 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = MEMORY[0x1EEE9AC00](v85, v16);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v84 = &v78 - v21;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v23 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v24);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v78 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v78 - v33;
  if (*(a1 + 16) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v78 = v7;
  v79 = v19;
  v87 = a2;
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;
  v36 = *(v31 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table, v34, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v37 = v87 + v35;
  v38 = v87;
  outlined init with copy of PgQuery_Alias?(v37, &v34[v36], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v39 = *(v23 + 48);
  if (v39(v34, 1, RangeVar) == 1)
  {
    v40 = v39(&v34[v36], 1, RangeVar);

    if (v40 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_12;
    }

LABEL_8:
    v41 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v42 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_9:
    v43 = v34;
LABEL_10:
    _s10Foundation4UUIDVSgWOhTm_0(v43, v41, v42);
LABEL_25:

    return 0;
  }

  outlined init with copy of PgQuery_Alias?(v34, v30, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v39(&v34[v36], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_8;
  }

  outlined init with take of PgQuery_OidList(&v34[v36], v26, type metadata accessor for PgQuery_RangeVar);

  v44 = specialized static PgQuery_RangeVar.== infix(_:_:)(v30, v26);
  outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v44 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  v45 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);
  v46 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v45, v46);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_25;
  }

  v48 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  v49 = v84;
  v50 = *(v85 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v84, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v34 = v49;
  outlined init with copy of PgQuery_Alias?(v87 + v48, v49 + v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v51 = v86 + 48;
  v52 = *(v86 + 48);
  v53 = Node;
  if (v52(v34, 1, Node) == 1)
  {
    v54 = v52(&v34[v50], 1, v53);
    v56 = v78;
    v55 = v79;
    if (v54 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v57 = v82;
  outlined init with copy of PgQuery_Alias?(v34, v82, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v58 = v52(&v34[v50], 1, v53);
  v56 = v78;
  v55 = v79;
  if (v58 == 1)
  {
    outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
LABEL_18:
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_9;
  }

  v86 = v51;
  v59 = &v34[v50];
  v60 = v81;
  outlined init with take of PgQuery_OidList(v59, v81, type metadata accessor for PgQuery_Node);
  v61 = *(v53 + 20);
  v62 = *(v57 + v61);
  v63 = *(v60 + v61);
  if (v62 != v63)
  {

    v64 = closure #1 in static PgQuery_Node.== infix(_:_:)(v62, v63);

    if (!v64)
    {
      outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v82, type metadata accessor for PgQuery_Node);
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v43 = v84;
      goto LABEL_10;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v65 = v82;
  v66 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v65, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v84, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v66 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v67 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck;
  v68 = *(v85 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v87 + v67, v55 + v68, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v52(v55, 1, v53) != 1)
  {
    v70 = v80;
    outlined init with copy of PgQuery_Alias?(v55, v80, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v52((v55 + v68), 1, v53) == 1)
    {

      outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Node);
      goto LABEL_29;
    }

    outlined init with take of PgQuery_OidList(v55 + v68, v56, type metadata accessor for PgQuery_Node);
    v73 = *(v53 + 20);
    v74 = *(v70 + v73);
    v75 = *(v56 + v73);
    if (v74 != v75)
    {

      v76 = closure #1 in static PgQuery_Node.== infix(_:_:)(v74, v75);

      if (!v76)
      {

        outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Node);
        v71 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v72 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_30;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v77 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    return (v77 & 1) != 0;
  }

  if (v52((v55 + v68), 1, v53) != 1)
  {
LABEL_29:
    v71 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v72 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_30:
    _s10Foundation4UUIDVSgWOhTm_0(v55, v71, v72);
    return 0;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterPolicyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPolicyStmt and conformance PgQuery_AlterPolicyStmt, type metadata accessor for PgQuery_AlterPolicyStmt, &protocol conformance descriptor for PgQuery_AlterPolicyStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterPolicyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPolicyStmt and conformance PgQuery_AlterPolicyStmt, type metadata accessor for PgQuery_AlterPolicyStmt, &protocol conformance descriptor for PgQuery_AlterPolicyStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  v51 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v48 = &v43 - v12;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v49 = *(ObjectWithArgs - 8);
  v50 = ObjectWithArgs;
  v15 = MEMORY[0x1EEE9AC00](ObjectWithArgs, v14);
  v45 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v46 = &v43 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v43 - v21;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v24 = *(TypeName - 8);
  MEMORY[0x1EEE9AC00](TypeName, v25);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  outlined init with copy of PgQuery_Alias?(&v6[TransformStmt[7]], v22, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v24 + 48))(v22, 1, TypeName) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v30 = v5;
  }

  else
  {
    v43 = v6;
    v44 = TransformStmt;
    outlined init with take of PgQuery_OidList(v22, v27, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    v30 = v5;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_TypeName);
    if (v5)
    {
      return result;
    }

    v6 = v43;
    TransformStmt = v44;
  }

  v31 = *(v6 + 2);
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = *(v6 + 1) & 0xFFFFFFFFFFFFLL;
  }

  v34 = v49;
  v33 = v50;
  if (v32)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v30)
    {
      return result;
    }

    v35 = 0;
  }

  else
  {
    v35 = v30;
  }

  v36 = v48;
  outlined init with copy of PgQuery_Alias?(&v6[TransformStmt[8]], v48, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v37 = *(v34 + 48);
  if (v37(v36, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    v38 = v47;
  }

  else
  {
    v44 = TransformStmt;
    v39 = v36;
    v40 = v6;
    v41 = v46;
    outlined init with take of PgQuery_OidList(v39, v46, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v35)
    {
      return result;
    }

    v35 = 0;
    v6 = v40;
    v38 = v47;
    TransformStmt = v44;
  }

  outlined init with copy of PgQuery_Alias?(&v6[TransformStmt[9]], v38, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if (v37(v38, 1, v33) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v38, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  }

  else
  {
    v42 = v45;
    outlined init with take of PgQuery_OidList(v38, v45, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v35)
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

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateTransformStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTransformStmt and conformance PgQuery_CreateTransformStmt, type metadata accessor for PgQuery_CreateTransformStmt, &protocol conformance descriptor for PgQuery_CreateTransformStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  a1[2] = MEMORY[0x1E69E7CC0];
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateAmStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateAmStmt and conformance PgQuery_CreateAmStmt, type metadata accessor for PgQuery_CreateAmStmt, &protocol conformance descriptor for PgQuery_CreateAmStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateAmStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateAmStmt and conformance PgQuery_CreateAmStmt, type metadata accessor for PgQuery_CreateAmStmt, &protocol conformance descriptor for PgQuery_CreateAmStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreatePublicationStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePublicationStmt and conformance PgQuery_CreatePublicationStmt, type metadata accessor for PgQuery_CreatePublicationStmt, &protocol conformance descriptor for PgQuery_CreatePublicationStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreatePublicationStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePublicationStmt and conformance PgQuery_CreatePublicationStmt, type metadata accessor for PgQuery_CreatePublicationStmt, &protocol conformance descriptor for PgQuery_CreatePublicationStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterPublicationStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPublicationStmt and conformance PgQuery_AlterPublicationStmt, type metadata accessor for PgQuery_AlterPublicationStmt, &protocol conformance descriptor for PgQuery_AlterPublicationStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterPublicationStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterPublicationStmt and conformance PgQuery_AlterPublicationStmt, type metadata accessor for PgQuery_AlterPublicationStmt, &protocol conformance descriptor for PgQuery_AlterPublicationStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  v1 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateSubscriptionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSubscriptionStmt and conformance PgQuery_CreateSubscriptionStmt, type metadata accessor for PgQuery_CreateSubscriptionStmt, &protocol conformance descriptor for PgQuery_CreateSubscriptionStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateSubscriptionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSubscriptionStmt and conformance PgQuery_CreateSubscriptionStmt, type metadata accessor for PgQuery_CreateSubscriptionStmt, &protocol conformance descriptor for PgQuery_CreateSubscriptionStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 48) = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = v1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterSubscriptionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionStmt and conformance PgQuery_AlterSubscriptionStmt, type metadata accessor for PgQuery_AlterSubscriptionStmt, &protocol conformance descriptor for PgQuery_AlterSubscriptionStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterSubscriptionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionStmt and conformance PgQuery_AlterSubscriptionStmt, type metadata accessor for PgQuery_AlterSubscriptionStmt, &protocol conformance descriptor for PgQuery_AlterSubscriptionStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
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

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropSubscriptionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropSubscriptionStmt and conformance PgQuery_DropSubscriptionStmt, type metadata accessor for PgQuery_DropSubscriptionStmt, &protocol conformance descriptor for PgQuery_DropSubscriptionStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
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

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateStatsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStatsStmt and conformance PgQuery_CreateStatsStmt, type metadata accessor for PgQuery_CreateStatsStmt, &protocol conformance descriptor for PgQuery_CreateStatsStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
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

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterCollationStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterCollationStmt and conformance PgQuery_AlterCollationStmt, type metadata accessor for PgQuery_AlterCollationStmt, &protocol conformance descriptor for PgQuery_AlterCollationStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_CallStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_CallStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_FuncCall?, type metadata accessor for PgQuery_FuncCall, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_FuncExpr?, type metadata accessor for PgQuery_FuncExpr, MEMORY[0x1E69E6720]);
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
    _s10Foundation4UUIDVSgWOhTm_0(v9 + v10, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
    outlined init with copy of PgQuery_Alias?(v8 + v14, v9 + v10, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
    v15 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr;
    _s10Foundation4UUIDVSgWOhTm_0(v9 + v12, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
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
  v28 = a2;
  v30 = a4;
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v24 - v7;
  FuncExpr = type metadata accessor for PgQuery_FuncExpr(0);
  v9 = *(FuncExpr - 8);
  MEMORY[0x1EEE9AC00](FuncExpr, v10);
  v24 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v24 - v14;
  v16 = type metadata accessor for PgQuery_FuncCall(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall, v15, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v20, type metadata accessor for PgQuery_FuncCall);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall, &protocol conformance descriptor for PgQuery_FuncCall);
    v21 = v27;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_FuncCall);
    if (v21)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v25 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, v8, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  if ((*(v9 + 48))(v8, 1, FuncExpr) == 1)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  }

  v23 = v24;
  outlined init with take of PgQuery_OidList(v8, v24, type metadata accessor for PgQuery_FuncExpr);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncExpr and conformance PgQuery_FuncExpr, type metadata accessor for PgQuery_FuncExpr, &protocol conformance descriptor for PgQuery_FuncExpr);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_FuncExpr);
}

BOOL closure #1 in static PgQuery_CallStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  FuncExpr = type metadata accessor for PgQuery_FuncExpr(0);
  v60 = *(FuncExpr - 8);
  v61 = FuncExpr;
  MEMORY[0x1EEE9AC00](FuncExpr, v5);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v57 = &v55 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncExprVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v59, v10);
  v62 = &v55 - v11;
  v12 = type metadata accessor for PgQuery_FuncCall(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v58 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncCallVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSg_ADtMR);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v24 = &v55 - v23;
  v25 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall;
  v26 = *(v22 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall, &v55 - v23, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  v27 = a2 + v25;
  v28 = a2;
  outlined init with copy of PgQuery_Alias?(v27, &v24[v26], &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
  v29 = *(v13 + 48);
  if (v29(v24, 1, v12) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v24, v19, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
    if (v29(&v24[v26], 1, v12) != 1)
    {
      v34 = v58;
      outlined init with take of PgQuery_OidList(&v24[v26], v58, type metadata accessor for PgQuery_FuncCall);
      v35 = *(v12 + 20);
      v36 = *&v19[v35];
      v37 = *(v34 + v35);
      v31 = a1;

      if (v36 == v37 || (, , v38 = closure #1 in static PgQuery_FuncCall.== infix(_:_:)(v36, v37), , , v38))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v39 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_FuncCall);
        outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_FuncCall);
        _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
        if (v39)
        {
          goto LABEL_12;
        }

LABEL_8:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_FuncCall);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_FuncCall);
      v32 = &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd;
      v33 = &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v24, v32, v33);
      goto LABEL_8;
    }

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_FuncCall);
LABEL_6:
    v32 = &_s14BiomeSQLParser16PgQuery_FuncCallVSg_ADtMd;
    v33 = &_s14BiomeSQLParser16PgQuery_FuncCallVSg_ADtMR;
    goto LABEL_7;
  }

  v30 = v29(&v24[v26], 1, v12);

  v31 = a1;
  if (v30 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMd, &_s14BiomeSQLParser16PgQuery_FuncCallVSgMR);
LABEL_12:
  v40 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr;
  v41 = *(v59 + 48);
  v42 = v62;
  outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, v62, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  outlined init with copy of PgQuery_Alias?(v28 + v40, v42 + v41, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  v43 = v61;
  v44 = *(v60 + 48);
  if (v44(v42, 1, v61) == 1)
  {

    if (v44(v42 + v41, 1, v43) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v42, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
      return 1;
    }

    goto LABEL_17;
  }

  v45 = v57;
  outlined init with copy of PgQuery_Alias?(v42, v57, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  if (v44(v42 + v41, 1, v43) == 1)
  {

    outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_FuncExpr);
LABEL_17:
    v46 = &_s14BiomeSQLParser16PgQuery_FuncExprVSg_ADtMd;
    v47 = &_s14BiomeSQLParser16PgQuery_FuncExprVSg_ADtMR;
LABEL_18:
    _s10Foundation4UUIDVSgWOhTm_0(v42, v46, v47);
    return 0;
  }

  v49 = v56;
  outlined init with take of PgQuery_OidList(v42 + v41, v56, type metadata accessor for PgQuery_FuncExpr);
  v50 = *(v43 + 20);
  v51 = *(v45 + v50);
  v52 = *(v49 + v50);
  if (v51 != v52)
  {

    v53 = closure #1 in static PgQuery_FuncExpr.== infix(_:_:)(v51, v52);

    if (!v53)
    {

      outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_FuncExpr);
      outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_FuncExpr);
      v46 = &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd;
      v47 = &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR;
      goto LABEL_18;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_FuncExpr);
  outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_FuncExpr);
  _s10Foundation4UUIDVSgWOhTm_0(v42, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  return (v54 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CallStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallStmt and conformance PgQuery_CallStmt, type metadata accessor for PgQuery_CallStmt, &protocol conformance descriptor for PgQuery_CallStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CallStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallStmt and conformance PgQuery_CallStmt, type metadata accessor for PgQuery_CallStmt, &protocol conformance descriptor for PgQuery_CallStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterStatsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterStatsStmt and conformance PgQuery_AlterStatsStmt, type metadata accessor for PgQuery_AlterStatsStmt, &protocol conformance descriptor for PgQuery_AlterStatsStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterStatsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterStatsStmt and conformance PgQuery_AlterStatsStmt, type metadata accessor for PgQuery_AlterStatsStmt, &protocol conformance descriptor for PgQuery_AlterStatsStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterStatsStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterStatsStmt and conformance PgQuery_AlterStatsStmt, type metadata accessor for PgQuery_AlterStatsStmt, &protocol conformance descriptor for PgQuery_AlterStatsStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_A_Expr._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_A_Expr._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
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
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v28 - v14;
  Node = type metadata accessor for PgQuery_Node(0);
  v32 = *(Node - 8);
  v18 = MEMORY[0x1EEE9AC00](Node, v17);
  v28 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v28 - v21;
  if (*(a1 + 16))
  {
    v23 = *(a1 + 24);
    v30 = *(a1 + 16);
    v31 = v23;
    lazy protocol witness table accessor for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v29 = a4;
    v5 = 0;
  }

  else
  {
    v29 = a4;
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

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v32 + 48);
  v32 += 48;
  if (v25(v15, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v22, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v25(v12, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v26 = v12;
    v27 = v28;
    outlined init with take of PgQuery_OidList(v26, v28, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
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
  v68 = *(Node - 8);
  v6 = MEMORY[0x1EEE9AC00](Node, v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v63 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v63 - v25;
  v27 = *(a1 + 16);
  v28 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v28)
    {
      case 1:
        if (v27 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v27 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v27 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v27 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v27 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v27 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v27 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v27 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v27 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v27 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      case 11:
        if (v27 != 11)
        {
          return 0;
        }

        goto LABEL_6;
      case 12:
        if (v27 != 12)
        {
          return 0;
        }

        goto LABEL_6;
      case 13:
        if (v27 != 13)
        {
          return 0;
        }

        goto LABEL_6;
      case 14:
        if (v27 != 14)
        {
          return 0;
        }

        goto LABEL_6;
      case 15:
        if (v27 != 15)
        {
          return 0;
        }

        goto LABEL_6;
      case 16:
        if (v27 != 16)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v27)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v27 != v28)
  {
    return 0;
  }

LABEL_6:
  v64 = v8;
  v65 = v16;
  v67 = v24;
  v29 = *(a1 + 32);
  v30 = *(a2 + 32);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v29, v30);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
LABEL_25:

    return 0;
  }

  v32 = a1;
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr;
  v34 = *(v20 + 48);
  v66 = v32;
  outlined init with copy of PgQuery_Alias?(v32 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr, v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v33, &v26[v34], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v35 = *(v68 + 48);
  if (v35(v26, 1, Node) == 1)
  {
    if (v35(&v26[v34], 1, Node) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  outlined init with copy of PgQuery_Alias?(v26, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v35(&v26[v34], 1, Node) == 1)
  {
    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
LABEL_12:
    v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_13:
    _s10Foundation4UUIDVSgWOhTm_0(v26, v36, v37);
    goto LABEL_25;
  }

  outlined init with take of PgQuery_OidList(&v26[v34], v11, type metadata accessor for PgQuery_Node);
  v38 = *(Node + 20);
  v39 = *&v19[v38];
  v40 = *&v11[v38];
  if (v39 != v40)
  {

    LODWORD(v68) = closure #1 in static PgQuery_Node.== infix(_:_:)(v39, v40);

    if ((v68 & 1) == 0)
    {
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
      v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_13;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v41 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  v42 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr;
  v43 = *(v20 + 48);
  v44 = v67;
  outlined init with copy of PgQuery_Alias?(v66 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr, v67, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v42, v44 + v43, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v35(v44, 1, Node) != 1)
  {
    v47 = v65;
    outlined init with copy of PgQuery_Alias?(v44, v65, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v48 = v35((v44 + v43), 1, Node);
    v46 = v66;
    if (v48 != 1)
    {
      v53 = v44 + v43;
      v54 = v64;
      outlined init with take of PgQuery_OidList(v53, v64, type metadata accessor for PgQuery_Node);
      v55 = *(Node + 20);
      v56 = *(v47 + v55);
      v57 = *(v54 + v55);
      if (v56 == v57 || (, , v58 = closure #1 in static PgQuery_Node.== infix(_:_:)(v56, v57), , , v58))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v59 = v65;
        v60 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v67, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v60)
        {
          goto LABEL_62;
        }

        goto LABEL_25;
      }

      outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v65, type metadata accessor for PgQuery_Node);
      v49 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v50 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v51 = v67;
      goto LABEL_24;
    }

    outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Node);
LABEL_23:
    v49 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v50 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v51 = v44;
LABEL_24:
    _s10Foundation4UUIDVSgWOhTm_0(v51, v49, v50);
    goto LABEL_25;
  }

  v45 = v35((v44 + v43), 1, Node);
  v46 = v66;
  if (v45 != 1)
  {
    goto LABEL_23;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v44, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_62:
  v61 = *(v46 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v62 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v61 == v62;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_A_Expr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Expr and conformance PgQuery_A_Expr, type metadata accessor for PgQuery_A_Expr, &protocol conformance descriptor for PgQuery_A_Expr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_Expr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Expr and conformance PgQuery_A_Expr, type metadata accessor for PgQuery_A_Expr, &protocol conformance descriptor for PgQuery_A_Expr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_Expr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Expr and conformance PgQuery_A_Expr, type metadata accessor for PgQuery_A_Expr, &protocol conformance descriptor for PgQuery_A_Expr);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ColumnRef(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnRef and conformance PgQuery_ColumnRef, type metadata accessor for PgQuery_ColumnRef, &protocol conformance descriptor for PgQuery_ColumnRef);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ColumnRef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnRef and conformance PgQuery_ColumnRef, type metadata accessor for PgQuery_ColumnRef, &protocol conformance descriptor for PgQuery_ColumnRef);

  return MEMORY[0x1EEE15928](a1, Scan);
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

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ParamRef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ParamRef and conformance PgQuery_ParamRef, type metadata accessor for PgQuery_ParamRef, &protocol conformance descriptor for PgQuery_ParamRef);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
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
    _s10Foundation4UUIDVSgWOhTm_0(v9 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v14 = v16[3];
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v14)
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
  MEMORY[0x1EEE9AC00](Node, v6);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, &v34 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v26 = v35;
      outlined init with take of PgQuery_OidList(&v16[v18], v35, type metadata accessor for PgQuery_Node);
      v27 = *(Node + 20);
      v28 = *&v11[v27];
      v29 = *(v26 + v27);

      if (v28 == v29 || (, , v30 = closure #1 in static PgQuery_Node.== infix(_:_:)(v28, v29), , , v30))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v31)
        {
          goto LABEL_12;
        }

LABEL_8:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_8;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v22 = v21(&v16[v18], 1, Node);

  if (v22 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_12:
  v32 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v33 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v32 == v33;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_A_Const(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Const and conformance PgQuery_A_Const, type metadata accessor for PgQuery_A_Const, &protocol conformance descriptor for PgQuery_A_Const);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_Const(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Const and conformance PgQuery_A_Const, type metadata accessor for PgQuery_A_Const, &protocol conformance descriptor for PgQuery_A_Const);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_Const(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Const and conformance PgQuery_A_Const, type metadata accessor for PgQuery_A_Const, &protocol conformance descriptor for PgQuery_A_Const);

  return Message.hash(into:)();
}

uint64_t PgQuery_FuncCall._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_FuncCall._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_WindowDef?, type metadata accessor for PgQuery_WindowDef, MEMORY[0x1E69E6720]);
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
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v27 = &v25 - v8;
  WindowDef = type metadata accessor for PgQuery_WindowDef(0);
  v26 = *(WindowDef - 8);
  MEMORY[0x1EEE9AC00](WindowDef, v9);
  v25 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v25 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v16 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  if (!*(*(a1 + 16) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    if (!*(*(v29 + 24) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
    {
      if (!*(*(v29 + 32) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
      {
        outlined init with copy of PgQuery_Alias?(v29 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter, v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((*(v16 + 48))(v14, 1, Node) == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          outlined init with take of PgQuery_OidList(v14, v19, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
          if (v4)
          {
            return result;
          }
        }

        v22 = v27;
        v21 = WindowDef;
        if (*(v29 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggWithinGroup) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
        {
          if (*(v29 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggStar) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
          {
            if (*(v29 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggDistinct) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
            {
              if (*(v29 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcVariadic) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
              {
                outlined init with copy of PgQuery_Alias?(v29 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over, v22, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
                if ((*(v26 + 48))(v22, 1, v21) == 1)
                {
                  _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
                }

                else
                {
                  v23 = v22;
                  v24 = v25;
                  outlined init with take of PgQuery_OidList(v23, v25, type metadata accessor for PgQuery_WindowDef);
                  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowDef and conformance PgQuery_WindowDef, type metadata accessor for PgQuery_WindowDef, &protocol conformance descriptor for PgQuery_WindowDef);
                  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
                  result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_WindowDef);
                  if (v4)
                  {
                    return result;
                  }
                }

                result = *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  v65 = *(WindowDef - 8);
  v66 = WindowDef;
  MEMORY[0x1EEE9AC00](WindowDef, v5);
  v62 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v63 = &v61 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_WindowDefVSg_ADtMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v64, v10);
  v67 = &v61 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v68 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v13);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v61 - v22;
  v24 = a1[2];
  v25 = a2[2];

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v24, v25);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_7;
  }

  v27 = a1[3];
  v28 = a2[3];

  v29 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v27, v28);

  if ((v29 & 1) == 0)
  {
    goto LABEL_7;
  }

  v30 = a1[4];
  v31 = a2[4];

  v32 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v30, v31);

  if ((v32 & 1) == 0)
  {
    goto LABEL_7;
  }

  v33 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter;
  v34 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter, v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v33, &v23[v34], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v35 = *(v68 + 48);
  v36 = a2;
  if (v35(v23, 1, Node) == 1)
  {
    if (v35(&v23[v34], 1, Node) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  outlined init with copy of PgQuery_Alias?(v23, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v35(&v23[v34], 1, Node) == 1)
  {
    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
LABEL_10:
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_11:
    v40 = v23;
    goto LABEL_12;
  }

  outlined init with take of PgQuery_OidList(&v23[v34], v15, type metadata accessor for PgQuery_Node);
  v41 = *(Node + 20);
  v42 = *&v19[v41];
  v43 = *&v15[v41];
  if (v42 != v43)
  {

    v44 = closure #1 in static PgQuery_Node.== infix(_:_:)(v42, v43);

    if (!v44)
    {
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_11;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v45 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggWithinGroup) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggWithinGroup) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggStar) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggStar) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggDistinct) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggDistinct) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcVariadic) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcVariadic))
  {
    goto LABEL_7;
  }

  v46 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over;
  v47 = *(v64 + 48);
  v48 = v67;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over, v67, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  outlined init with copy of PgQuery_Alias?(v36 + v46, v48 + v47, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
  v49 = v66;
  v50 = *(v65 + 48);
  if (v50(v48, 1, v66) != 1)
  {
    v51 = v63;
    outlined init with copy of PgQuery_Alias?(v48, v63, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
    if (v50(v48 + v47, 1, v49) == 1)
    {
      outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_WindowDef);
      goto LABEL_27;
    }

    v52 = v48 + v47;
    v53 = v62;
    outlined init with take of PgQuery_OidList(v52, v62, type metadata accessor for PgQuery_WindowDef);
    v54 = *(v49 + 20);
    v55 = *(v51 + v54);
    v56 = *(v53 + v54);
    if (v55 == v56 || (, , v57 = closure #1 in static PgQuery_WindowDef.== infix(_:_:)(v55, v56), , , v57))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_WindowDef);
      outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_WindowDef);
      _s10Foundation4UUIDVSgWOhTm_0(v48, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
      if (v58)
      {
        goto LABEL_31;
      }

LABEL_7:

      return 0;
    }

    outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_WindowDef);
    outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_WindowDef);
    v38 = &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd;
    v39 = &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR;
    v40 = v48;
LABEL_12:
    _s10Foundation4UUIDVSgWOhTm_0(v40, v38, v39);
    goto LABEL_7;
  }

  if (v50(v48 + v47, 1, v49) != 1)
  {
LABEL_27:
    v38 = &_s14BiomeSQLParser17PgQuery_WindowDefVSg_ADtMd;
    v39 = &_s14BiomeSQLParser17PgQuery_WindowDefVSg_ADtMR;
    v40 = v48;
    goto LABEL_12;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v48, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMd, &_s14BiomeSQLParser17PgQuery_WindowDefVSgMR);
LABEL_31:
  v59 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v60 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v59 == v60;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_FuncCall(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall, &protocol conformance descriptor for PgQuery_FuncCall);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_FuncCall(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall, &protocol conformance descriptor for PgQuery_FuncCall);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_FuncCall(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncCall and conformance PgQuery_FuncCall, type metadata accessor for PgQuery_FuncCall, &protocol conformance descriptor for PgQuery_FuncCall);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_A_Star(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Star and conformance PgQuery_A_Star, type metadata accessor for PgQuery_A_Star, &protocol conformance descriptor for PgQuery_A_Star);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_Star(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Star and conformance PgQuery_A_Star, type metadata accessor for PgQuery_A_Star, &protocol conformance descriptor for PgQuery_A_Star);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_Star(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Star and conformance PgQuery_A_Star, type metadata accessor for PgQuery_A_Star, &protocol conformance descriptor for PgQuery_A_Star);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_Null(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void type metadata completion function for PgQuery_A_Indices._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_A_Indices.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v23 - v8;
  v10 = *(type metadata accessor for PgQuery_A_Indices(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_A_Indices._StorageClass(0);
    v13 = swift_allocObject();
    v24 = v10;
    v25 = v9;
    v14 = v13;
    *(v13 + 16) = 0;
    v15 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx;
    Node = type metadata accessor for PgQuery_Node(0);
    v17 = *(Node - 8);
    v27 = v4;
    v18 = *(v17 + 56);
    v26 = v3;
    v18(v14 + v15, 1, 1, Node);
    v23 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx;
    v18(v14 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx, 1, 1, Node);
    v5 = v27;
    *(v14 + 16) = *(v12 + 16);
    v19 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx;

    outlined assign with copy of PgQuery_Node?(v12 + v19, v14 + v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v20 = v25;
    outlined init with copy of PgQuery_Alias?(v12 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx, v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

    outlined assign with take of PgQuery_Node?(v20, v14 + v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

    *(v26 + v24) = v14;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v5)
  {
    while ((v22 & 1) == 0)
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
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v29 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v15 = *(Node - 8);
  v17 = MEMORY[0x1EEE9AC00](Node, v16);
  v27 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v26 - v20;
  v30 = a1;
  if (*(a1 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    v28 = a4;
    outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v23 = *(v15 + 48);
    if (v23(v13, 1, Node) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v13, v21, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
      if (v4)
      {
        return result;
      }
    }

    v24 = v29;
    outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx, v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v23(v24, 1, Node) == 1)
    {
      return _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      v25 = v27;
      outlined init with take of PgQuery_OidList(v24, v27, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_A_Indices.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v7 = MEMORY[0x1EEE9AC00](Node, v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v62 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v28 = &v62 - v26;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v63 = v9;
  v64 = v17;
  v65 = v25;
  v66 = v27;
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx;
  v30 = *(v25 + 48);
  v67 = Node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx, &v62 - v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v31 = v67;
  outlined init with copy of PgQuery_Alias?(a2 + v29, &v28[v30], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v32 = *(v5 + 48);
  if (v32(v28, 1, v31) == 1)
  {
    v33 = v32(&v28[v30], 1, v31);

    v34 = v33 == 1;
    v35 = a1;
    if (!v34)
    {
      goto LABEL_8;
    }

    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_14:
    v44 = v35;
    v45 = a2;
    v46 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx;
    v47 = v66;
    v48 = *(v65 + 48);
    outlined init with copy of PgQuery_Alias?(v44 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx, v66, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(v45 + v46, v47 + v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v49 = v67;
    if (v32(v47, 1, v67) == 1)
    {

      if (v32((v47 + v48), 1, v49) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        return 1;
      }
    }

    else
    {
      v50 = v64;
      outlined init with copy of PgQuery_Alias?(v47, v64, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v32((v47 + v48), 1, v49) != 1)
      {
        v55 = v63;
        outlined init with take of PgQuery_OidList(v47 + v48, v63, type metadata accessor for PgQuery_Node);
        v56 = *(v49 + 20);
        v57 = *(v50 + v56);
        v58 = *(v55 + v56);
        if (v57 == v58 || (, , v59 = closure #1 in static PgQuery_Node.== infix(_:_:)(v57, v58), , , v59))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v60 = v64;
          v61 = dispatch thunk of static Equatable.== infix(_:_:)();

          outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v66, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          return (v61 & 1) != 0;
        }

        outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v64, type metadata accessor for PgQuery_Node);
        v51 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v52 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        v53 = v66;
LABEL_20:
        _s10Foundation4UUIDVSgWOhTm_0(v53, v51, v52);
        return 0;
      }

      outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
    }

    v51 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v52 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v53 = v47;
    goto LABEL_20;
  }

  v36 = a1;
  outlined init with copy of PgQuery_Alias?(v28, v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v32(&v28[v30], 1, v31) != 1)
  {
    outlined init with take of PgQuery_OidList(&v28[v30], v12, type metadata accessor for PgQuery_Node);
    v39 = *(v31 + 20);
    v40 = *&v20[v39];
    v41 = *&v12[v39];
    v35 = v36;

    if (v40 != v41)
    {

      v42 = closure #1 in static PgQuery_Node.== infix(_:_:)(v40, v41);

      if (!v42)
      {
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
        v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_9;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v43 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((v43 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
LABEL_8:
  v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
  v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_9:
  _s10Foundation4UUIDVSgWOhTm_0(v28, v37, v38);
LABEL_10:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_A_Indices(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indices and conformance PgQuery_A_Indices, type metadata accessor for PgQuery_A_Indices, &protocol conformance descriptor for PgQuery_A_Indices);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_Indices(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indices and conformance PgQuery_A_Indices, type metadata accessor for PgQuery_A_Indices, &protocol conformance descriptor for PgQuery_A_Indices);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_A_Indices(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indices and conformance PgQuery_A_Indices, type metadata accessor for PgQuery_A_Indices, &protocol conformance descriptor for PgQuery_A_Indices);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_AlternativeSubPlan._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
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
    *(v14 + *v23) = MEMORY[0x1E69E7CC0];
    v21 = *v17;
    _s10Foundation4UUIDVSgWOhTm_0(v14 + v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
  v20 = a6;
  v21 = a2;
  v23 = a4;
  v22 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v19 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v15);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + *a5, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v14 + 48))(v12, 1, Node) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v17, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
    if (v6)
    {
      return result;
    }
  }

  if (*(*(a1 + *v20) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static PgQuery_AlternativeSubPlan.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v37 = a4;
  Node = type metadata accessor for PgQuery_Node(0);
  v8 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v9);
  v36 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v19 = &v36 - v18;
  v20 = *a3;
  v21 = *(v17 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + v20, &v36 - v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v20, &v19[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v8 + 48);
  if (v22(v19, 1, Node) == 1)
  {
    v23 = v22(&v19[v21], 1, Node);

    if (v23 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_12:
      v33 = *(a1 + *v37);
      v34 = *(a2 + *v37);

      NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v33, v34);

      return NodeV_Tt1g5 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of PgQuery_Alias?(v19, v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(&v19[v21], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
LABEL_6:
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v19, v24, v25);
    goto LABEL_8;
  }

  v27 = v36;
  outlined init with take of PgQuery_OidList(&v19[v21], v36, type metadata accessor for PgQuery_Node);
  v28 = *(Node + 20);
  v29 = *&v14[v28];
  v30 = *(v27 + v28);

  if (v29 != v30)
  {

    v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30);

    if (!v31)
    {
      outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v32)
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

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_Indirection(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_Indirection and conformance PgQuery_A_Indirection, type metadata accessor for PgQuery_A_Indirection, &protocol conformance descriptor for PgQuery_A_Indirection);

  return MEMORY[0x1EEE15928](a1, Scan);
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

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_A_ArrayExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_A_ArrayExpr and conformance PgQuery_A_ArrayExpr, type metadata accessor for PgQuery_A_ArrayExpr, &protocol conformance descriptor for PgQuery_A_ArrayExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_PrepareStmt._StorageClass.__deallocating_deinit(void *a1)
{

  _s10Foundation4UUIDVSgWOhTm_0(v1 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v3, v4);
}

void type metadata completion function for PgQuery_ResTarget._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
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
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v19 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v12);
  v20 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v11 + 48))(v9, 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v17 = v9;
        v18 = v20;
        outlined init with take of PgQuery_OidList(v17, v20, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
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
  MEMORY[0x1EEE9AC00](Node, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v35 - v15;
  if (*(a1 + 1) == *(a2 + 1) || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v17 & 1) != 0))
  {
    v36 = v8;
    v19 = a1[4];
    v20 = a2[4];

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v19, v20);

    if ((NodeV_Tt1g5 & 1) == 0)
    {
LABEL_11:

      return 0;
    }

    v22 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;
    v23 = *(v13 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v22, &v16[v23], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v24 = *(v5 + 48);
    if (v24(v16, 1, Node) == 1)
    {
      if (v24(&v16[v23], 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_16:
        v33 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

        v34 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

        return v33 == v34;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v24(&v16[v23], 1, Node) != 1)
      {
        v27 = v36;
        outlined init with take of PgQuery_OidList(&v16[v23], v36, type metadata accessor for PgQuery_Node);
        v28 = *(Node + 20);
        v29 = *&v12[v28];
        v30 = *(v27 + v28);
        if (v29 == v30 || (, , v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30), , , v31))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v32 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v32)
          {
            goto LABEL_16;
          }

          goto LABEL_11;
        }

        outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
        v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v26 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_10;
      }

      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    }

    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v26 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_10:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v25, v26);
    goto LABEL_11;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ResTarget(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ResTarget and conformance PgQuery_ResTarget, type metadata accessor for PgQuery_ResTarget, &protocol conformance descriptor for PgQuery_ResTarget);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ResTarget(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ResTarget and conformance PgQuery_ResTarget, type metadata accessor for PgQuery_ResTarget, &protocol conformance descriptor for PgQuery_ResTarget);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  v26 = a8;
  v27 = a6;
  v28 = a7;
  v29 = a3;
  v30 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v25 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v15 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + *a5, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v15 + 48))(v13, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v19 = v31;
    v21 = v29;
    v20 = v30;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v18, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v19 = v31;
    v21 = v29;
    v20 = v30;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
    if (v19)
    {
      return result;
    }
  }

  v23 = v28;
  v24 = *(a1 + *v27);
  if (!v24 || (result = v28(v24, 2, v21, v20), !v19))
  {
    result = *(a1 + *v26);
    if (result)
    {
      return v23(result, 3, v21, v20);
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_NextValueExpr.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v40 = a5;
  v42 = a4;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v10);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v20 = &v39 - v19;
  v21 = *a3;
  v22 = *(v18 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + v21, &v39 - v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v23 = a2 + v21;
  v24 = a2;
  outlined init with copy of PgQuery_Alias?(v23, &v20[v22], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v25 = *(v9 + 48);
  if (v25(v20, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v20, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v25(&v20[v22], 1, Node) != 1)
    {
      v29 = v41;
      outlined init with take of PgQuery_OidList(&v20[v22], v41, type metadata accessor for PgQuery_Node);
      v30 = *(Node + 20);
      v31 = *&v15[v30];
      v32 = *(v29 + v30);

      if (v31 == v32 || (, , v33 = closure #1 in static PgQuery_Node.== infix(_:_:)(v31, v32), , , v33))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v34 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      v27 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v28 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v20, v27, v28);
      goto LABEL_13;
    }

    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
LABEL_6:
    v27 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v28 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v26 = v25(&v20[v22], 1, Node);

  if (v26 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  if (*(a1 + *v42) == *(v24 + *v42))
  {
    v35 = v40;
    v36 = v24;
    v37 = *(a1 + *v40);

    LODWORD(v35) = *(v36 + *v35);

    return v37 == v35;
  }

LABEL_13:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_MultiAssignRef(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MultiAssignRef and conformance PgQuery_MultiAssignRef, type metadata accessor for PgQuery_MultiAssignRef, &protocol conformance descriptor for PgQuery_MultiAssignRef);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_MultiAssignRef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MultiAssignRef and conformance PgQuery_MultiAssignRef, type metadata accessor for PgQuery_MultiAssignRef, &protocol conformance descriptor for PgQuery_MultiAssignRef);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_MultiAssignRef(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MultiAssignRef and conformance PgQuery_MultiAssignRef, type metadata accessor for PgQuery_MultiAssignRef, &protocol conformance descriptor for PgQuery_MultiAssignRef);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_TypeCast._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
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
  v31 = a3;
  v32 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v26 - v7;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v27 = *(TypeName - 8);
  v28 = TypeName;
  MEMORY[0x1EEE9AC00](TypeName, v10);
  v26 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v26 - v14;
  Node = type metadata accessor for PgQuery_Node(0);
  v17 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v17 + 48))(v15, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v21 = v30;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v20, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v22 = v30;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v21 = v22;
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
    if (v22)
    {
      return result;
    }
  }

  v24 = v29;
  outlined init with copy of PgQuery_Alias?(v29 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v8, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v27 + 48))(v8, 1, v28) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    v25 = v26;
    outlined init with take of PgQuery_OidList(v8, v26, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_TypeName);
    if (v21)
    {
      return result;
    }
  }

  result = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  if (result)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_TypeCast.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v58 = *(TypeName - 8);
  v59 = TypeName;
  MEMORY[0x1EEE9AC00](TypeName, v5);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v55 = &v53 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v57, v10);
  v60 = &v53 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v14);
  v56 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v24 = &v53 - v23;
  v25 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v26 = *(v22 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, &v53 - v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v27 = a2 + v25;
  v28 = a2;
  outlined init with copy of PgQuery_Alias?(v27, &v24[v26], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v29 = *(v13 + 48);
  if (v29(v24, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v24, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v29(&v24[v26], 1, Node) != 1)
    {
      v35 = &v24[v26];
      v36 = v56;
      outlined init with take of PgQuery_OidList(v35, v56, type metadata accessor for PgQuery_Node);
      v37 = *(Node + 20);
      v38 = *&v19[v37];
      v39 = *(v36 + v37);
      v31 = a1;

      if (v38 == v39 || (, , v40 = closure #1 in static PgQuery_Node.== infix(_:_:)(v38, v39), , , v40))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v41 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v33 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      v34 = v24;
LABEL_17:
      _s10Foundation4UUIDVSgWOhTm_0(v34, v32, v33);
      goto LABEL_18;
    }

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
LABEL_6:
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v33 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v30 = v29(&v24[v26], 1, Node);

  v31 = a1;
  if (v30 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  v42 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  v43 = *(v57 + 48);
  v44 = v60;
  outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v60, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined init with copy of PgQuery_Alias?(v28 + v42, v44 + v43, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v45 = v59;
  v46 = *(v58 + 48);
  if (v46(v44, 1, v59) == 1)
  {
    if (v46(v44 + v43, 1, v45) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v44, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
LABEL_21:
      v51 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v52 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v51 == v52;
    }

    goto LABEL_16;
  }

  v47 = v55;
  outlined init with copy of PgQuery_Alias?(v44, v55, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v46(v44 + v43, 1, v45) == 1)
  {
    outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_TypeName);
LABEL_16:
    v32 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v33 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    v34 = v44;
    goto LABEL_17;
  }

  v49 = v54;
  outlined init with take of PgQuery_OidList(v44 + v43, v54, type metadata accessor for PgQuery_TypeName);
  v50 = specialized static PgQuery_TypeName.== infix(_:_:)(v47, v49);
  outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_TypeName);
  outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_TypeName);
  _s10Foundation4UUIDVSgWOhTm_0(v44, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v50)
  {
    goto LABEL_21;
  }

LABEL_18:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TypeCast(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeCast and conformance PgQuery_TypeCast, type metadata accessor for PgQuery_TypeCast, &protocol conformance descriptor for PgQuery_TypeCast);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TypeCast(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeCast and conformance PgQuery_TypeCast, type metadata accessor for PgQuery_TypeCast, &protocol conformance descriptor for PgQuery_TypeCast);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TypeCast(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeCast and conformance PgQuery_TypeCast, type metadata accessor for PgQuery_TypeCast, &protocol conformance descriptor for PgQuery_TypeCast);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_NextValueExpr._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
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
    *(v9 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname) = MEMORY[0x1E69E7CC0];
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
  v17[3] = a4;
  v17[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v17 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v11 + 48))(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v9, v14, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  v16 = v17[0];
  if (!*(*(v17[0] + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  MEMORY[0x1EEE9AC00](Node, v6);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v37 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, &v37 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v38;
      outlined init with take of PgQuery_OidList(&v16[v18], v38, type metadata accessor for PgQuery_Node);
      v26 = *(Node + 20);
      v27 = *&v11[v26];
      v28 = *(v25 + v26);

      if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v29))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v30 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_13;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v22 = v21(&v16[v18], 1, Node);

  if (v22 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname);
  v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v31, v32);

  if (NodeV_Tt1g5)
  {
    v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v35 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v34 == v35;
  }

LABEL_13:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CollateClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause, &protocol conformance descriptor for PgQuery_CollateClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CollateClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause, &protocol conformance descriptor for PgQuery_CollateClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CollateClause(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause, &protocol conformance descriptor for PgQuery_CollateClause);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_CoalesceExpr._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
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
  v25 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v21 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v16 = v15;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v11 + 48))(v9, 1, v16) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v9, v14, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  v18 = v22;
  if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir) || (v19 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir + 8), v23 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir), v24 = v19, lazy protocol witness table accessor for type PgQuery_SortByDir and conformance PgQuery_SortByDir(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls) || (v20 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls + 8), v23 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls), v24 = v20, lazy protocol witness table accessor for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      if (!*(*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOp) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
      {
        result = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  MEMORY[0x1EEE9AC00](Node, v6);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v41 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, &v41 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) == 1)
  {
    v22 = v21(&v16[v18], 1, Node);

    if (v22 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v21(&v16[v18], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
    goto LABEL_8;
  }

  v26 = v42;
  outlined init with take of PgQuery_OidList(&v16[v18], v42, type metadata accessor for PgQuery_Node);
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
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v31 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_12:
  v32 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir);
  v33 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir);
  if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir + 8) == 1)
  {
    if (v33 <= 1)
    {
      if (v33)
      {
        if (v32 != 1)
        {
          goto LABEL_8;
        }
      }

      else if (v32)
      {
        goto LABEL_8;
      }
    }

    else if (v33 == 2)
    {
      if (v32 != 2)
      {
        goto LABEL_8;
      }
    }

    else if (v33 == 3)
    {
      if (v32 != 3)
      {
        goto LABEL_8;
      }
    }

    else if (v32 != 4)
    {
      goto LABEL_8;
    }
  }

  else if (v32 != v33)
  {
    goto LABEL_8;
  }

  v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls);
  v35 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls);
  if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls + 8) != 1)
  {
    if (v34 == v35)
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  if (v35 > 1)
  {
    if (v35 == 2)
    {
      if (v34 != 2)
      {
        goto LABEL_8;
      }
    }

    else if (v34 != 3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v35)
    {
      if (!v34)
      {
        goto LABEL_25;
      }

LABEL_8:

      return 0;
    }

    if (v34 != 1)
    {
      goto LABEL_8;
    }
  }

LABEL_25:
  v36 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOp);
  v37 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOp);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v36, v37);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_8;
  }

  v39 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v40 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v39 == v40;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SortBy(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortBy and conformance PgQuery_SortBy, type metadata accessor for PgQuery_SortBy, &protocol conformance descriptor for PgQuery_SortBy);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SortBy(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortBy and conformance PgQuery_SortBy, type metadata accessor for PgQuery_SortBy, &protocol conformance descriptor for PgQuery_SortBy);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SortBy(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortBy and conformance PgQuery_SortBy, type metadata accessor for PgQuery_SortBy, &protocol conformance descriptor for PgQuery_SortBy);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_WindowDef._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
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
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v29 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v31 = *(Node - 8);
  v15 = MEMORY[0x1EEE9AC00](Node, v14);
  v29 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v29 - v18;
  v20 = *(a1 + 24);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v21 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
  {
    v23 = *(a1 + 40);
    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
    }

    if (!v24 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
    {
      if (!*(*(a1 + 48) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
      {
        if (!*(*(a1 + 56) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
        {
          if (!*(a1 + 64) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
          {
            outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            v25 = *(v31 + 48);
            v31 += 48;
            if (v25(v12, 1, Node) == 1)
            {
              _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            }

            else
            {
              outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node);
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
              dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
              result = outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
              if (v4)
              {
                return result;
              }
            }

            v26 = v30;
            outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v25(v26, 1, Node) == 1)
            {
              _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            }

            else
            {
              v27 = v26;
              v28 = v29;
              outlined init with take of PgQuery_OidList(v27, v29, type metadata accessor for PgQuery_Node);
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
              dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
              result = outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
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
  v67 = *(Node - 8);
  v6 = MEMORY[0x1EEE9AC00](Node, v5);
  v8 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v62[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v62[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v62[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v62[-v26];
  if (*(a1 + 16) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v65 = v16;
  v66 = v24;
  v64 = v8;
  v28 = *(a1 + 48);
  v29 = *(a2 + 48);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v28, v29);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_26;
  }

  v31 = *(a1 + 56);
  v32 = *(a2 + 56);

  v33 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v31, v32);

  if ((v33 & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    goto LABEL_26;
  }

  v34 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset;
  v35 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset, v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v36 = a2 + v34;
  v37 = v35;
  outlined init with copy of PgQuery_Alias?(v36, &v27[v35], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v38 = v67 + 48;
  v39 = *(v67 + 48);
  if (v39(v27, 1, Node) == 1)
  {
    if (v39(&v27[v37], 1, Node) == 1)
    {
      v67 = v38;
      _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  outlined init with copy of PgQuery_Alias?(v27, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v39(&v27[v37], 1, Node) == 1)
  {
    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
LABEL_14:
    v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_15:
    v42 = v27;
LABEL_25:
    _s10Foundation4UUIDVSgWOhTm_0(v42, v40, v41);
    goto LABEL_26;
  }

  v67 = v38;
  outlined init with take of PgQuery_OidList(&v27[v37], v11, type metadata accessor for PgQuery_Node);
  v43 = *(Node + 20);
  v44 = *&v19[v43];
  v45 = *&v11[v43];
  if (v44 != v45)
  {

    v63 = closure #1 in static PgQuery_Node.== infix(_:_:)(v44, v45);

    if (!v63)
    {
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
      v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_15;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v46 & 1) == 0)
  {
LABEL_26:

    return 0;
  }

LABEL_19:
  v47 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset;
  v48 = *(v20 + 48);
  v49 = v66;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, v66, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v47, v49 + v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v39(v49, 1, Node) != 1)
  {
    v50 = v65;
    outlined init with copy of PgQuery_Alias?(v49, v65, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v39((v49 + v48), 1, Node) != 1)
    {
      v52 = v49 + v48;
      v53 = v64;
      outlined init with take of PgQuery_OidList(v52, v64, type metadata accessor for PgQuery_Node);
      v54 = *(Node + 20);
      v55 = *(v50 + v54);
      v56 = *(v53 + v54);
      if (v55 == v56 || (, , v57 = closure #1 in static PgQuery_Node.== infix(_:_:)(v55, v56), , , v57))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v58 = v65;
        v59 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v66, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v59)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v65, type metadata accessor for PgQuery_Node);
      v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v42 = v66;
      goto LABEL_25;
    }

    outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
    goto LABEL_24;
  }

  if (v39((v49 + v48), 1, Node) != 1)
  {
LABEL_24:
    v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v42 = v49;
    goto LABEL_25;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_31:
  v60 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v61 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v60 == v61;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_WindowDef(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowDef and conformance PgQuery_WindowDef, type metadata accessor for PgQuery_WindowDef, &protocol conformance descriptor for PgQuery_WindowDef);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_WindowDef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowDef and conformance PgQuery_WindowDef, type metadata accessor for PgQuery_WindowDef, &protocol conformance descriptor for PgQuery_WindowDef);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_WindowDef(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowDef and conformance PgQuery_WindowDef, type metadata accessor for PgQuery_WindowDef, &protocol conformance descriptor for PgQuery_WindowDef);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_RangeSubselect._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Alias?, type metadata accessor for PgQuery_Alias, MEMORY[0x1E69E6720]);
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
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v24 - v8;
  v10 = *(type metadata accessor for PgQuery_RangeSubselect(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_RangeSubselect._StorageClass(0);
    v13 = swift_allocObject();
    v26 = v4;
    v14 = v13;
    *(v13 + 16) = 0;
    v15 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
    v24 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v14 + v15, 1, 1, Node);
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
    v25 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
    Alias = type metadata accessor for PgQuery_Alias(0);
    (*(*(Alias - 8) + 56))(v14 + v17, 1, 1, Alias);
    *(v14 + 16) = *(v12 + 16);
    v19 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;

    outlined assign with copy of PgQuery_Node?(v12 + v19, v14 + v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(v12 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v9, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);

    outlined assign with take of PgQuery_Node?(v9, v14 + v25, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);

    *(v3 + v10) = v14;
    v5 = v26;
  }

  v20 = v5;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v5)
  {
    while (1)
    {
      if (v22)
      {
        return result;
      }

      switch(result)
      {
        case 1:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_7;
        case 2:
          v23 = v20;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          break;
        case 3:
          v23 = v20;
          type metadata accessor for PgQuery_Alias(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
          break;
        default:
          goto LABEL_7;
      }

      v20 = v23;
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
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v26 = &v24 - v8;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v25 = *(Alias - 8);
  MEMORY[0x1EEE9AC00](Alias, v9);
  v24 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v24 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v16 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  if (*(a1 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery, v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v16 + 48))(v14, 1, Node) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v14, v19, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
      if (v4)
      {
        return result;
      }
    }

    v21 = v26;
    outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v26, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    if ((*(v25 + 48))(v21, 1, Alias) == 1)
    {
      return _s10Foundation4UUIDVSgWOhTm_0(v21, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    }

    else
    {
      v22 = v21;
      v23 = v24;
      outlined init with take of PgQuery_OidList(v22, v24, type metadata accessor for PgQuery_Alias);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Alias);
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_RangeSubselect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Alias = type metadata accessor for PgQuery_Alias(0);
  v62 = *(Alias - 8);
  MEMORY[0x1EEE9AC00](Alias, v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v55 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd, &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v61, v12);
  v14 = &v55 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v16 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v17);
  v60 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v55 - v26;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v58 = v14;
  v59 = Alias;
  v56 = v7;
  v57 = v11;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
  v29 = a1;
  v30 = *(v25 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery, v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v31 = a2 + v28;
  v32 = a2;
  outlined init with copy of PgQuery_Alias?(v31, &v27[v30], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = *(v16 + 48);
  if (v33(v27, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v27, v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v33(&v27[v30], 1, Node) != 1)
    {
      v37 = v60;
      outlined init with take of PgQuery_OidList(&v27[v30], v60, type metadata accessor for PgQuery_Node);
      v38 = *(Node + 20);
      v39 = *&v22[v38];
      v40 = *(v37 + v38);

      if (v39 == v40 || (, , v41 = closure #1 in static PgQuery_Node.== infix(_:_:)(v39, v40), , , v41))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v42)
        {
          goto LABEL_13;
        }

LABEL_9:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_8:
      _s10Foundation4UUIDVSgWOhTm_0(v27, v35, v36);
      goto LABEL_9;
    }

    outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
LABEL_7:
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_8;
  }

  v34 = v33(&v27[v30], 1, Node);

  if (v34 != 1)
  {
    goto LABEL_7;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_13:
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  v44 = *(v61 + 48);
  v45 = v58;
  outlined init with copy of PgQuery_Alias?(v29 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v58, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  outlined init with copy of PgQuery_Alias?(v32 + v43, v45 + v44, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v46 = *(v62 + 48);
  v47 = v59;
  if (v46(v45, 1, v59) == 1)
  {

    if (v46(v45 + v44, 1, v47) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v45, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
      return 1;
    }

    goto LABEL_19;
  }

  v49 = v57;
  outlined init with copy of PgQuery_Alias?(v45, v57, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  if (v46(v45 + v44, 1, v47) == 1)
  {

    outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Alias);
LABEL_19:
    v50 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
    v51 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
LABEL_28:
    _s10Foundation4UUIDVSgWOhTm_0(v45, v50, v51);
    return 0;
  }

  v52 = v45 + v44;
  v53 = v56;
  outlined init with take of PgQuery_OidList(v52, v56, type metadata accessor for PgQuery_Alias);
  if ((*v49 != *v53 || v49[1] != v53[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v49[2], v53[2]) & 1) == 0)
  {

    outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Alias);
    outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Alias);
    v50 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
    v51 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
    goto LABEL_28;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();

  outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Alias);
  outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Alias);
  _s10Foundation4UUIDVSgWOhTm_0(v45, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  return (v54 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeSubselect(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeSubselect and conformance PgQuery_RangeSubselect, type metadata accessor for PgQuery_RangeSubselect, &protocol conformance descriptor for PgQuery_RangeSubselect);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeSubselect(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeSubselect and conformance PgQuery_RangeSubselect, type metadata accessor for PgQuery_RangeSubselect, &protocol conformance descriptor for PgQuery_RangeSubselect);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v21 - v10;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v13 = *(Alias - 8);
  MEMORY[0x1EEE9AC00](Alias, v14);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v5 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    if (*(v5 + 1) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      if (*(v5 + 2) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
      {
        v21[0] = a1;
        v21[1] = a2;
        v22 = v4;
        if (*(*(v5 + 8) + 16))
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          v18 = v22;
          result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
          if (v18)
          {
            return result;
          }

          v22 = 0;
        }

        RangeFunction = type metadata accessor for PgQuery_RangeFunction(0);
        outlined init with copy of PgQuery_Alias?(v5 + *(RangeFunction + 40), v11, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
        if ((*(v13 + 48))(v11, 1, Alias) == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v11, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
          v20 = v22;
        }

        else
        {
          outlined init with take of PgQuery_OidList(v11, v16, type metadata accessor for PgQuery_Alias);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
          v20 = v22;
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Alias);
          if (v20)
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
        if (!v20)
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
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
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

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeFunction(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeFunction and conformance PgQuery_RangeFunction, type metadata accessor for PgQuery_RangeFunction, &protocol conformance descriptor for PgQuery_RangeFunction);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeFunction(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeFunction and conformance PgQuery_RangeFunction, type metadata accessor for PgQuery_RangeFunction, &protocol conformance descriptor for PgQuery_RangeFunction);

  return Message.hash(into:)();
}

uint64_t PgQuery_RangeTableSample._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_RangeTableSample._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
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
  v28 = a3;
  v29 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v27 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v16 = MEMORY[0x1EEE9AC00](Node, v15);
  v26 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v26 - v19;
  v30 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v14 + 48);
  if (v21(v12, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v20, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  if (!*(*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__method) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    if (!*(*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
    {
      v23 = v27;
      outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v21(v23, 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v24 = v23;
        v25 = v26;
        outlined init with take of PgQuery_OidList(v24, v26, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        if (v4)
        {
          return result;
        }
      }

      result = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  v7 = MEMORY[0x1EEE9AC00](Node, v6);
  v61 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v65 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v62 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v64 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v60 - v24;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v63 = v23;
  v27 = *(v23 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v60 - v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v26, &v25[v27], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v28 = *(v5 + 48);
  if (v28(v25, 1, Node) != 1)
  {
    v66 = a1;
    v67 = a2;
    outlined init with copy of PgQuery_Alias?(v25, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v28(&v25[v27], 1, Node) != 1)
    {
      v33 = v65;
      outlined init with take of PgQuery_OidList(&v25[v27], v65, type metadata accessor for PgQuery_Node);
      v34 = Node;
      v35 = *(Node + 20);
      v36 = *&v17[v35];
      v37 = *(v33 + v35);

      if (v36 != v37)
      {

        v38 = closure #1 in static PgQuery_Node.== infix(_:_:)(v36, v37);

        if (!v38)
        {
          outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          goto LABEL_17;
        }
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      a1 = v66;
      a2 = v67;
      Node = v34;
      if ((v39 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
LABEL_6:
    v30 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v32 = v25;
LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v32, v30, v31);
    goto LABEL_17;
  }

  v29 = v28(&v25[v27], 1, Node);

  if (v29 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  v40 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__method);
  v41 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__method);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v40, v41);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_17;
  }

  v43 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v44 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v45 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v43, v44);

  if ((v45 & 1) == 0)
  {
    goto LABEL_17;
  }

  v46 = Node;
  v47 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable;
  v48 = v64;
  v49 = *(v63 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, v64, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v47, v48 + v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28(v48, 1, v46) == 1)
  {
    if (v28((v48 + v49), 1, v46) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_26:
      v58 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v59 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v58 == v59;
    }

    goto LABEL_21;
  }

  v51 = v62;
  outlined init with copy of PgQuery_Alias?(v48, v62, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28((v48 + v49), 1, v46) == 1)
  {
    outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
LABEL_21:
    v30 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_22:
    v32 = v48;
    goto LABEL_7;
  }

  v52 = v61;
  outlined init with take of PgQuery_OidList(v48 + v49, v61, type metadata accessor for PgQuery_Node);
  v53 = *(v46 + 20);
  v54 = *(v51 + v53);
  v55 = *(v52 + v53);
  if (v54 != v55)
  {

    v56 = closure #1 in static PgQuery_Node.== infix(_:_:)(v54, v55);

    if (!v56)
    {
      outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
      v30 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v31 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_22;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v57)
  {
    goto LABEL_26;
  }

LABEL_17:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeTableSample(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableSample and conformance PgQuery_RangeTableSample, type metadata accessor for PgQuery_RangeTableSample, &protocol conformance descriptor for PgQuery_RangeTableSample);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeTableSample(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableSample and conformance PgQuery_RangeTableSample, type metadata accessor for PgQuery_RangeTableSample, &protocol conformance descriptor for PgQuery_RangeTableSample);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeTableSample(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableSample and conformance PgQuery_RangeTableSample, type metadata accessor for PgQuery_RangeTableSample, &protocol conformance descriptor for PgQuery_RangeTableSample);

  return Message.hash(into:)();
}

uint64_t PgQuery_RangeTableFunc._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_RangeTableFunc._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Alias?, type metadata accessor for PgQuery_Alias, MEMORY[0x1E69E6720]);
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
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v41 = &v36 - v9;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v38 = *(Alias - 8);
  v39 = Alias;
  MEMORY[0x1EEE9AC00](Alias, v11);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v36 - v19;
  Node = type metadata accessor for PgQuery_Node(0);
  v21 = *(Node - 8);
  v23 = MEMORY[0x1EEE9AC00](Node, v22);
  v40 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v36 - v26;
  v44 = a1;
  if (*(a1 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    v42 = a4;
    outlined init with copy of PgQuery_Alias?(v44 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr, v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v29 = *(v21 + 48);
    v30 = Node;
    if (v29(v20, 1, Node) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v20, v27, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      if (v4)
      {
        return result;
      }
    }

    v31 = v44;
    outlined init with copy of PgQuery_Alias?(v44 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v29(v17, 1, v30) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v32 = v41;
    }

    else
    {
      v33 = v40;
      outlined init with take of PgQuery_OidList(v17, v40, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_Node);
      v32 = v41;
      if (v4)
      {
        return result;
      }
    }

    if (!*(*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namespaces) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
    {
      if (!*(*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
      {
        outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v32, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
        if ((*(v38 + 48))(v32, 1, v39) == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
        }

        else
        {
          v34 = v32;
          v35 = v37;
          outlined init with take of PgQuery_OidList(v34, v37, type metadata accessor for PgQuery_Alias);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_Alias);
          if (v4)
          {
            return result;
          }
        }

        result = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  v90 = *(Alias - 8);
  MEMORY[0x1EEE9AC00](Alias, v5);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v83 - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd, &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v89, v12);
  v14 = &v83 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v16 = *(Node - 8);
  v18 = MEMORY[0x1EEE9AC00](Node, v17);
  v91 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v93 = &v83 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v92 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v83 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v94 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v36 = &v83 - v35;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v85 = v14;
  v86 = Alias;
  v83 = v7;
  v84 = v11;
  v37 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr;
  v88 = v34;
  v38 = *(v34 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr, &v83 - v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v37, &v36[v38], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v39 = *(v16 + 48);
  v40 = Node;
  if (v39(v36, 1, Node) == 1)
  {
    v41 = v39(&v36[v38], 1, Node);

    v42 = a2;
    v43 = a1;
    if (v41 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_11;
    }

LABEL_7:
    v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v46 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v47 = v36;
LABEL_18:
    _s10Foundation4UUIDVSgWOhTm_0(v47, v45, v46);
    goto LABEL_19;
  }

  v87 = a1;
  v44 = a2;
  outlined init with copy of PgQuery_Alias?(v36, v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v39(&v36[v38], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
    goto LABEL_7;
  }

  v48 = v93;
  outlined init with take of PgQuery_OidList(&v36[v38], v93, type metadata accessor for PgQuery_Node);
  v49 = *(Node + 20);
  v50 = *&v28[v49];
  v51 = *(v48 + v49);

  v42 = v44;

  if (v50 != v51)
  {

    v52 = closure #1 in static PgQuery_Node.== infix(_:_:)(v50, v51);

    if (!v52)
    {
      outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_19;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v43 = v87;
  if (v53)
  {
LABEL_11:
    v54 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr;
    v55 = *(v88 + 48);
    v56 = v94;
    outlined init with copy of PgQuery_Alias?(v43 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, v94, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(v42 + v54, v56 + v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v39(v56, 1, Node) == 1)
    {
      if (v39((v56 + v55), 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v56, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        goto LABEL_25;
      }
    }

    else
    {
      v57 = v92;
      outlined init with copy of PgQuery_Alias?(v56, v92, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v39((v56 + v55), 1, v40) != 1)
      {
        v59 = v91;
        outlined init with take of PgQuery_OidList(v56 + v55, v91, type metadata accessor for PgQuery_Node);
        v60 = *(v40 + 20);
        v61 = *(v57 + v60);
        v62 = *(v59 + v60);
        if (v61 == v62 || (, , v63 = closure #1 in static PgQuery_Node.== infix(_:_:)(v61, v62), , , v63))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v64 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v56, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v64 & 1) == 0)
          {
            goto LABEL_19;
          }

LABEL_25:
          v65 = *(v43 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namespaces);
          v66 = *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namespaces);

          NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v65, v66);

          if ((NodeV_Tt1g5 & 1) == 0)
          {
            goto LABEL_19;
          }

          v68 = *(v43 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);
          v69 = *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);

          v70 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v68, v69);

          if ((v70 & 1) == 0)
          {
            goto LABEL_19;
          }

          v71 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
          v72 = *(v89 + 48);
          v73 = v85;
          outlined init with copy of PgQuery_Alias?(v43 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v85, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
          outlined init with copy of PgQuery_Alias?(v42 + v71, v73 + v72, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
          v74 = *(v90 + 48);
          v75 = v86;
          if (v74(v73, 1, v86) == 1)
          {
            if (v74(v73 + v72, 1, v75) == 1)
            {
              _s10Foundation4UUIDVSgWOhTm_0(v73, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
LABEL_30:
              v76 = *(v43 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

              v77 = *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

              return v76 == v77;
            }
          }

          else
          {
            v78 = v84;
            outlined init with copy of PgQuery_Alias?(v73, v84, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
            if (v74(v73 + v72, 1, v75) != 1)
            {
              v79 = v83;
              outlined init with take of PgQuery_OidList(v73 + v72, v83, type metadata accessor for PgQuery_Alias);
              if (*v78 == *v79 && v78[1] == v79[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v84[2], v83[2]))
              {
                type metadata accessor for UnknownStorage();
                lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
                v80 = v83;
                v81 = v84;
                v82 = dispatch thunk of static Equatable.== infix(_:_:)();
                outlined destroy of PgQuery_OidList(v80, type metadata accessor for PgQuery_Alias);
                outlined destroy of PgQuery_OidList(v81, type metadata accessor for PgQuery_Alias);
                _s10Foundation4UUIDVSgWOhTm_0(v73, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                if (v82)
                {
                  goto LABEL_30;
                }

                goto LABEL_19;
              }

              outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_Alias);
              outlined destroy of PgQuery_OidList(v84, type metadata accessor for PgQuery_Alias);
              v45 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
              v46 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
              goto LABEL_43;
            }

            outlined destroy of PgQuery_OidList(v78, type metadata accessor for PgQuery_Alias);
          }

          v45 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
          v46 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
LABEL_43:
          v47 = v73;
          goto LABEL_18;
        }

        outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
        v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v46 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_17;
      }

      outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
    }

    v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v46 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_17:
    v47 = v56;
    goto LABEL_18;
  }

LABEL_19:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeTableFunc(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFunc and conformance PgQuery_RangeTableFunc, type metadata accessor for PgQuery_RangeTableFunc, &protocol conformance descriptor for PgQuery_RangeTableFunc);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeTableFunc(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFunc and conformance PgQuery_RangeTableFunc, type metadata accessor for PgQuery_RangeTableFunc, &protocol conformance descriptor for PgQuery_RangeTableFunc);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeTableFunc(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFunc and conformance PgQuery_RangeTableFunc, type metadata accessor for PgQuery_RangeTableFunc, &protocol conformance descriptor for PgQuery_RangeTableFunc);

  return Message.hash(into:)();
}

uint64_t PgQuery_RangeTableFuncCol._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_RangeTableFuncCol._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
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
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v47 = &v43 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v48 = *(Node - 8);
  v49 = Node;
  v15 = MEMORY[0x1EEE9AC00](Node, v14);
  v44 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v45 = &v43 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v43 - v21;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v24 = *(TypeName - 8);
  MEMORY[0x1EEE9AC00](TypeName, v25);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();

    v50 = v5;
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v50 = v5;
  }

  outlined init with copy of PgQuery_Alias?(v51 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v22, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v24 + 48))(v22, 1, TypeName) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v22, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v32 = v50;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v22, v27, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    v32 = v50;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_TypeName);
    if (v32)
    {
      return result;
    }
  }

  v33 = v51;
  v35 = v48;
  v34 = v49;
  v36 = v47;
  if (*(v51 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__forOrdinality) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v32))
  {
    if (*(v33 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v32))
    {
      v37 = v32;
      outlined init with copy of PgQuery_Alias?(v33 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexpr, v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v38 = *(v35 + 48);
      if (v38(v36, 1, v34) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v39 = v36;
        v40 = v45;
        outlined init with take of PgQuery_OidList(v39, v45, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
        if (v32)
        {
          return result;
        }

        v37 = 0;
      }

      v41 = v46;
      outlined init with copy of PgQuery_Alias?(v33 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr, v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v38(v41, 1, v34) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v42 = v44;
        outlined init with take of PgQuery_OidList(v41, v44, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
        if (v37)
        {
          return result;
        }
      }

      result = *(v33 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  v87 = *(Node - 8);
  v5 = MEMORY[0x1EEE9AC00](Node, v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v82 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v81 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v83 = &v79 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = MEMORY[0x1EEE9AC00](v86, v16);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v85 = &v79 - v21;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v23 = *(TypeName - 8);
  MEMORY[0x1EEE9AC00](TypeName, v24);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v79 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v79 - v33;
  if (*(a1 + 16) == *(a2 + 16) || (v35 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v35 & 1) != 0))
  {
    v79 = v19;
    v80 = v7;
    v88 = a2;
    v37 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
    v38 = *(v31 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v34, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v39 = v88 + v37;
    v40 = v88;
    outlined init with copy of PgQuery_Alias?(v39, &v34[v38], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v41 = *(v23 + 48);
    if (v41(v34, 1, TypeName) == 1)
    {
      v42 = v41(&v34[v38], 1, TypeName);

      if (v42 == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
LABEL_11:
        if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__forOrdinality) != *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__forOrdinality) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) != *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull))
        {
          goto LABEL_13;
        }

        v46 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexpr;
        v47 = v85;
        v48 = *(v86 + 48);
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexpr, v85, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v34 = v47;
        outlined init with copy of PgQuery_Alias?(v88 + v46, v47 + v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v49 = v87 + 48;
        v50 = *(v87 + 48);
        v51 = Node;
        if (v50(v34, 1, Node) == 1)
        {
          v52 = v50(&v34[v48], 1, v51);
          v54 = v79;
          v53 = v80;
          if (v52 == 1)
          {
            _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_24:
            v65 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr;
            v66 = *(v86 + 48);
            outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr, v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            v67 = v88 + v65;
            v68 = v88;
            outlined init with copy of PgQuery_Alias?(v67, v54 + v66, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v50(v54, 1, v51) == 1)
            {
              if (v50((v54 + v66), 1, v51) == 1)
              {
                _s10Foundation4UUIDVSgWOhTm_0(v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_34:
                v77 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

                v78 = *(v68 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

                return v77 == v78;
              }

              goto LABEL_29;
            }

            v69 = v81;
            outlined init with copy of PgQuery_Alias?(v54, v81, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v50((v54 + v66), 1, v51) == 1)
            {
              outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_Node);
LABEL_29:
              v70 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
              v71 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_30:
              _s10Foundation4UUIDVSgWOhTm_0(v54, v70, v71);
              goto LABEL_13;
            }

            outlined init with take of PgQuery_OidList(v54 + v66, v53, type metadata accessor for PgQuery_Node);
            v72 = *(v51 + 20);
            v73 = *(v69 + v72);
            v74 = *(v53 + v72);
            if (v73 != v74)
            {

              v75 = closure #1 in static PgQuery_Node.== infix(_:_:)(v73, v74);

              if (!v75)
              {
                outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
                outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_Node);
                v70 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
                v71 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
                goto LABEL_30;
              }
            }

            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
            v76 = dispatch thunk of static Equatable.== infix(_:_:)();
            outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
            outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_Node);
            _s10Foundation4UUIDVSgWOhTm_0(v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v76)
            {
              goto LABEL_34;
            }

LABEL_13:

            return 0;
          }
        }

        else
        {
          v55 = v83;
          outlined init with copy of PgQuery_Alias?(v34, v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          v56 = v50(&v34[v48], 1, v51);
          v54 = v79;
          v53 = v80;
          if (v56 != 1)
          {
            v87 = v49;
            v57 = &v34[v48];
            v58 = v82;
            outlined init with take of PgQuery_OidList(v57, v82, type metadata accessor for PgQuery_Node);
            v59 = *(v51 + 20);
            v60 = *(v55 + v59);
            v61 = *(v58 + v59);
            if (v60 != v61)
            {

              v62 = closure #1 in static PgQuery_Node.== infix(_:_:)(v60, v61);

              if (!v62)
              {
                outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
                outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_Node);
                _s10Foundation4UUIDVSgWOhTm_0(v85, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
                goto LABEL_13;
              }
            }

            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
            v63 = v83;
            v64 = dispatch thunk of static Equatable.== infix(_:_:)();
            outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
            outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_Node);
            _s10Foundation4UUIDVSgWOhTm_0(v85, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if ((v64 & 1) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_24;
          }

          outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
        }

        v43 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
        v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_9:
        _s10Foundation4UUIDVSgWOhTm_0(v34, v43, v44);
        goto LABEL_13;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v34, v30, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      if (v41(&v34[v38], 1, TypeName) != 1)
      {
        outlined init with take of PgQuery_OidList(&v34[v38], v26, type metadata accessor for PgQuery_TypeName);

        v45 = specialized static PgQuery_TypeName.== infix(_:_:)(v30, v26);
        outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_TypeName);
        outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_TypeName);
        _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
        if ((v45 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_TypeName);
    }

    v43 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v44 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    goto LABEL_9;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeTableFuncCol(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFuncCol and conformance PgQuery_RangeTableFuncCol, type metadata accessor for PgQuery_RangeTableFuncCol, &protocol conformance descriptor for PgQuery_RangeTableFuncCol);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeTableFuncCol(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTableFuncCol and conformance PgQuery_RangeTableFuncCol, type metadata accessor for PgQuery_RangeTableFuncCol, &protocol conformance descriptor for PgQuery_RangeTableFuncCol);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
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

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TypeName(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  v13 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fdwoptions) = v13;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  return v0;
}

uint64_t PgQuery_ColumnDef._StorageClass.deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);

  return v0;
}

void type metadata completion function for PgQuery_ColumnDef._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_CollateClause?, type metadata accessor for PgQuery_CollateClause, MEMORY[0x1E69E6720]);
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
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v77 = &v72 - v9;
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  v73 = *(CollateClause - 8);
  MEMORY[0x1EEE9AC00](CollateClause, v10);
  v72 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v81 = &v72 - v14;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v75 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v15);
  v74 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v80 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v84 = &v72 - v22;
  Node = type metadata accessor for PgQuery_Node(0);
  v24 = *(Node - 8);
  v82 = Node;
  v83 = v24;
  v26 = MEMORY[0x1EEE9AC00](Node, v25);
  v76 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v79 = &v72 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v72 - v32;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v35 = *(TypeName - 8);
  MEMORY[0x1EEE9AC00](TypeName, v36);
  v38 = &v72 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = a1;
  v39 = *(a1 + 16);
  v40 = *(a1 + 24);
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

  v43 = v86;
  outlined init with copy of PgQuery_Alias?(v86 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v33, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v35 + 48))(v33, 1, TypeName) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v33, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v33, v38, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      v44 = type metadata accessor for PgQuery_TypeName;
LABEL_11:
      v45 = v44;
      v46 = v38;
      return outlined destroy of PgQuery_OidList(v46, v45);
    }

    outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_TypeName);
  }

  v47 = v84;
  v48 = RangeVar;
  if (*(v43 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhcount))
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if (*(v43 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isLocal) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if (*(v43 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if (*(v43 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFromType) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  v49 = *(v43 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage);
  v50 = *(v43 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage + 8);
  v51 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v51 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (v51)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  outlined init with copy of PgQuery_Alias?(v86 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault, v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v52 = *(v83 + 48);
  v83 += 48;
  if (v52(v47, 1, v82) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    goto LABEL_33;
  }

  v38 = v79;
  outlined init with take of PgQuery_OidList(v47, v79, type metadata accessor for PgQuery_Node);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  if (v5)
  {
    v44 = type metadata accessor for PgQuery_Node;
    goto LABEL_11;
  }

  outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_Node);
  v48 = RangeVar;
LABEL_33:
  v53 = v80;
  outlined init with copy of PgQuery_Alias?(v86 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault, v80, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v54 = v52(v53, 1, v82);
  v55 = v81;
  if (v54 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v53, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    goto LABEL_38;
  }

  v56 = v76;
  outlined init with take of PgQuery_OidList(v53, v76, type metadata accessor for PgQuery_Node);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  if (v5)
  {
    v45 = type metadata accessor for PgQuery_Node;
    v46 = v56;
    return outlined destroy of PgQuery_OidList(v46, v45);
  }

  outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
LABEL_38:
  v57 = *(v86 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity + 8);
  v58 = HIBYTE(v57) & 0xF;
  if ((v57 & 0x2000000000000000) == 0)
  {
    v58 = *(v86 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity) & 0xFFFFFFFFFFFFLL;
  }

  v60 = v77;
  v59 = CollateClause;
  if (v58)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  v61 = v86;
  outlined init with copy of PgQuery_Alias?(v86 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence, v55, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v75 + 48))(v55, 1, v48) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v55, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    v62 = v55;
    v63 = v74;
    outlined init with take of PgQuery_OidList(v62, v74, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_RangeVar);
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v64 = *(v61 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated);
  v65 = *(v61 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated + 8);
  v66 = HIBYTE(v65) & 0xF;
  if ((v65 & 0x2000000000000000) == 0)
  {
    v66 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (v66)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();

    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v67 = v86;
  outlined init with copy of PgQuery_Alias?(v86 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, v60, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  if ((*(v73 + 48))(v60, 1, v59) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v60, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
    v68 = v5;
  }

  else
  {
    v69 = v60;
    v70 = v72;
    outlined init with take of PgQuery_OidList(v69, v72, type metadata accessor for PgQuery_CollateClause);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause, &protocol conformance descriptor for PgQuery_CollateClause);
    v68 = v5;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_CollateClause);
    if (v5)
    {
      return result;
    }
  }

  if (!*(v67 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v68))
  {
    v71 = v68;
    if (*(*(v67 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

      if (v68)
      {
        return result;
      }

      v71 = 0;
    }

    if (!*(*(v86 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fdwoptions) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v71))
    {
      result = *(v86 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  v127 = *(CollateClause - 8);
  v128 = CollateClause;
  MEMORY[0x1EEE9AC00](CollateClause, v5);
  v7 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v124 = &v121 - v10;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v126, v11);
  v13 = &v121 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v132 = *(RangeVar - 8);
  v133 = RangeVar;
  MEMORY[0x1EEE9AC00](RangeVar, v15);
  v125 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v129 = &v121 - v19;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v131, v20);
  v134 = &v121 - v21;
  Node = type metadata accessor for PgQuery_Node(0);
  v140 = *(Node - 8);
  v141 = Node;
  v24 = MEMORY[0x1EEE9AC00](Node, v23);
  v130 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v26);
  v136 = &v121 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v135 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v32);
  v138 = &v121 - v33;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v35 = MEMORY[0x1EEE9AC00](v139, v34);
  v137 = &v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v37);
  v142 = &v121 - v38;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v40 = *(TypeName - 8);
  MEMORY[0x1EEE9AC00](TypeName, v41);
  v43 = &v121 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v47 = &v121 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v121 - v50;
  if (*(a1 + 16) == *(a2 + 16) || (v52 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v52 & 1) != 0))
  {
    v122 = v7;
    v123 = v13;
    v143 = a2;
    v54 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
    v55 = *(v48 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v51, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v56 = v143 + v54;
    v57 = v143;
    outlined init with copy of PgQuery_Alias?(v56, &v51[v55], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v58 = *(v40 + 48);
    if (v58(v51, 1, TypeName) == 1)
    {
      v59 = v58(&v51[v55], 1, TypeName);

      if (v59 == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v51, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
        goto LABEL_11;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v51, v47, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      if (v58(&v51[v55], 1, TypeName) != 1)
      {
        outlined init with take of PgQuery_OidList(&v51[v55], v43, type metadata accessor for PgQuery_TypeName);

        v63 = specialized static PgQuery_TypeName.== infix(_:_:)(v47, v43);
        outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_TypeName);
        outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_TypeName);
        _s10Foundation4UUIDVSgWOhTm_0(v51, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
        if ((v63 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_11:
        if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhcount) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inhcount) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isLocal) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isLocal) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFromType) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFromType) || (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage + 8) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__storage + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_15;
        }

        v64 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault;
        v65 = v139;
        v66 = *(v139 + 48);
        v67 = v142;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawDefault, v142, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v68 = v67;
        outlined init with copy of PgQuery_Alias?(v57 + v64, v67 + v66, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v69 = v141;
        v70 = *(v140 + 48);
        if (v70(v68, 1, v141) == 1)
        {
          if (v70(v68 + v66, 1, v69) != 1)
          {
            goto LABEL_34;
          }

          _s10Foundation4UUIDVSgWOhTm_0(v68, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          v71 = v138;
          outlined init with copy of PgQuery_Alias?(v68, v138, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v70(v68 + v66, 1, v69) == 1)
          {
            v72 = v71;
            goto LABEL_33;
          }

          v73 = v136;
          outlined init with take of PgQuery_OidList(v68 + v66, v136, type metadata accessor for PgQuery_Node);
          v74 = *(v69 + 20);
          v75 = *(v71 + v74);
          v76 = *(v73 + v74);
          if (v75 != v76)
          {

            v77 = closure #1 in static PgQuery_Node.== infix(_:_:)(v75, v76);

            if (!v77)
            {
              outlined destroy of PgQuery_OidList(v73, type metadata accessor for PgQuery_Node);
              outlined destroy of PgQuery_OidList(v138, type metadata accessor for PgQuery_Node);
              v60 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
              v61 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
              v62 = v142;
              goto LABEL_9;
            }
          }

          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v78 = v138;
          v79 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v73, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v78, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v142, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v79 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v80 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault;
        v81 = *(v65 + 48);
        v82 = v137;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedDefault, v137, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v68 = v82;
        outlined init with copy of PgQuery_Alias?(v57 + v80, v82 + v81, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v70(v82, 1, v69) == 1)
        {
          if (v70(v82 + v81, 1, v69) == 1)
          {
            _s10Foundation4UUIDVSgWOhTm_0(v82, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            goto LABEL_38;
          }

LABEL_34:
          v60 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
          v61 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
          v62 = v68;
          goto LABEL_9;
        }

        v83 = v82;
        v84 = v135;
        outlined init with copy of PgQuery_Alias?(v83, v135, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v70(v68 + v81, 1, v69) != 1)
        {
          v85 = v130;
          outlined init with take of PgQuery_OidList(v68 + v81, v130, type metadata accessor for PgQuery_Node);
          v86 = *(v69 + 20);
          v87 = *(v84 + v86);
          v88 = *(v85 + v86);
          if (v87 != v88)
          {

            v89 = closure #1 in static PgQuery_Node.== infix(_:_:)(v87, v88);

            if (!v89)
            {
              outlined destroy of PgQuery_OidList(v85, type metadata accessor for PgQuery_Node);
              outlined destroy of PgQuery_OidList(v84, type metadata accessor for PgQuery_Node);
              v60 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
              v61 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
              v62 = v137;
              goto LABEL_9;
            }
          }

          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v90 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v85, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v84, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v137, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v90 & 1) == 0)
          {
            goto LABEL_15;
          }

LABEL_38:
          if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity + 8) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identity + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_15;
          }

          v91 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence;
          v92 = *(v131 + 48);
          v93 = v134;
          outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__identitySequence, v134, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
          outlined init with copy of PgQuery_Alias?(v57 + v91, v93 + v92, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
          v94 = v133;
          v95 = *(v132 + 48);
          if (v95(v93, 1, v133) == 1)
          {
            if (v95(v93 + v92, 1, v94) == 1)
            {
              _s10Foundation4UUIDVSgWOhTm_0(v93, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_50:
              if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated + 8) != *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generated + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_15;
              }

              v100 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause;
              v101 = *(v126 + 48);
              v93 = v123;
              outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, v123, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
              outlined init with copy of PgQuery_Alias?(v57 + v100, v93 + v101, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
              v102 = v128;
              v103 = *(v127 + 48);
              if (v103(v93, 1, v128) == 1)
              {
                if (v103(v93 + v101, 1, v102) == 1)
                {
                  _s10Foundation4UUIDVSgWOhTm_0(v93, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
LABEL_63:
                  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid) == *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid))
                  {
                    v113 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);
                    v114 = *(v57 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);

                    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v113, v114);

                    if (NodeV_Tt1g5)
                    {
                      v116 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fdwoptions);
                      v117 = *(v143 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fdwoptions);

                      v118 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v116, v117);

                      if (v118)
                      {
                        v119 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

                        v120 = *(v143 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ColumnDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

                        return v119 == v120;
                      }
                    }
                  }

                  goto LABEL_15;
                }

                goto LABEL_58;
              }

              v104 = v124;
              outlined init with copy of PgQuery_Alias?(v93, v124, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
              if (v103(v93 + v101, 1, v102) == 1)
              {
                outlined destroy of PgQuery_OidList(v104, type metadata accessor for PgQuery_CollateClause);
                v93 = v123;
LABEL_58:
                v60 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMd;
                v61 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMR;
                goto LABEL_59;
              }

              v105 = v102;
              v106 = v122;
              outlined init with take of PgQuery_OidList(&v123[v101], v122, type metadata accessor for PgQuery_CollateClause);
              v107 = *(v105 + 20);
              v108 = *(v104 + v107);
              v109 = *(v106 + v107);
              if (v108 == v109 || (, , v110 = closure #1 in static PgQuery_CollateClause.== infix(_:_:)(v108, v109), , , v110))
              {
                type metadata accessor for UnknownStorage();
                lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
                v111 = v122;
                v112 = dispatch thunk of static Equatable.== infix(_:_:)();
                outlined destroy of PgQuery_OidList(v111, type metadata accessor for PgQuery_CollateClause);
                outlined destroy of PgQuery_OidList(v104, type metadata accessor for PgQuery_CollateClause);
                _s10Foundation4UUIDVSgWOhTm_0(v123, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
                if (v112)
                {
                  goto LABEL_63;
                }

LABEL_15:

                return 0;
              }

              outlined destroy of PgQuery_OidList(v122, type metadata accessor for PgQuery_CollateClause);
              outlined destroy of PgQuery_OidList(v104, type metadata accessor for PgQuery_CollateClause);
              v60 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd;
              v61 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR;
              v62 = v123;
LABEL_9:
              _s10Foundation4UUIDVSgWOhTm_0(v62, v60, v61);
              goto LABEL_15;
            }
          }

          else
          {
            v96 = v129;
            outlined init with copy of PgQuery_Alias?(v93, v129, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
            if (v95(v93 + v92, 1, v94) != 1)
            {
              v97 = v93 + v92;
              v98 = v125;
              outlined init with take of PgQuery_OidList(v97, v125, type metadata accessor for PgQuery_RangeVar);
              v99 = specialized static PgQuery_RangeVar.== infix(_:_:)(v96, v98);
              outlined destroy of PgQuery_OidList(v98, type metadata accessor for PgQuery_RangeVar);
              outlined destroy of PgQuery_OidList(v96, type metadata accessor for PgQuery_RangeVar);
              _s10Foundation4UUIDVSgWOhTm_0(v93, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
              if ((v99 & 1) == 0)
              {
                goto LABEL_15;
              }

              goto LABEL_50;
            }

            outlined destroy of PgQuery_OidList(v96, type metadata accessor for PgQuery_RangeVar);
          }

          v60 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
          v61 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_59:
          v62 = v93;
          goto LABEL_9;
        }

        v72 = v84;
LABEL_33:
        outlined destroy of PgQuery_OidList(v72, type metadata accessor for PgQuery_Node);
        goto LABEL_34;
      }

      outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_TypeName);
    }

    v60 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v61 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    v62 = v51;
    goto LABEL_9;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ColumnDef(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnDef and conformance PgQuery_ColumnDef, type metadata accessor for PgQuery_ColumnDef, &protocol conformance descriptor for PgQuery_ColumnDef);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ColumnDef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnDef and conformance PgQuery_ColumnDef, type metadata accessor for PgQuery_ColumnDef, &protocol conformance descriptor for PgQuery_ColumnDef);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ColumnDef(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ColumnDef and conformance PgQuery_ColumnDef, type metadata accessor for PgQuery_ColumnDef, &protocol conformance descriptor for PgQuery_ColumnDef);

  return Message.hash(into:)();
}

uint64_t PgQuery_IndexElem._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_IndexElem._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
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
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v24 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v5))
  {
    outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v12 + 48))(v10, 1, Node) == 1)
    {
      result = _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v10, v15, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      if (v5)
      {
        return result;
      }
    }

    v20 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname + 8);
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname) & 0xFFFFFFFFFFFFLL;
    }

    if (!v21 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v5))
    {
      if (!*(*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v5))
      {
        if (!*(*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v5))
        {
          if (!*(*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclassopts) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v5))
          {
            if (!*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering) || (v22 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering + 8), v24 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering), v25 = v22, lazy protocol witness table accessor for type PgQuery_SortByDir and conformance PgQuery_SortByDir(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v5))
            {
              if (*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering))
              {
                v23 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering + 8);
                v24 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering);
                v25 = v23;
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
  MEMORY[0x1EEE9AC00](Node, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v47 - v15;
  if (*(a1 + 16) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v48 = v8;
  v17 = a1;
  v18 = a2;
  v19 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  v20 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v18 + v19, &v16[v20], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) == 1)
  {
    v22 = v21(&v16[v20], 1, Node);

    if (v22 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v21(&v16[v20], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
LABEL_8:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_9:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
    goto LABEL_10;
  }

  v26 = v48;
  outlined init with take of PgQuery_OidList(&v16[v20], v48, type metadata accessor for PgQuery_Node);
  v27 = *(Node + 20);
  v28 = *&v12[v27];
  v29 = *(v26 + v27);

  if (v28 != v29)
  {

    v30 = closure #1 in static PgQuery_Node.== infix(_:_:)(v28, v29);

    if (!v30)
    {
      outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_9;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v31 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_15:
  if ((*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname) != *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname) || *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname + 8) != *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v32 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);
  v33 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v32, v33);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_10;
  }

  v35 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass);
  v36 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass);

  v37 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v35, v36);

  if ((v37 & 1) == 0)
  {
    goto LABEL_10;
  }

  v38 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclassopts);
  v39 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclassopts);

  v40 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v38, v39);

  if ((v40 & 1) == 0)
  {
    goto LABEL_10;
  }

  v41 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering);
  v42 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering);
  if (*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering + 8) != 1)
  {
    if (v41 == v42)
    {
      goto LABEL_29;
    }

    goto LABEL_10;
  }

  if (v42 <= 1)
  {
    if (v42)
    {
      if (v41 != 1)
      {
        goto LABEL_10;
      }
    }

    else if (v41)
    {
      goto LABEL_10;
    }
  }

  else if (v42 == 2)
  {
    if (v41 != 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v42 == 3)
    {
      if (v41 == 3)
      {
        goto LABEL_29;
      }

LABEL_10:

      return 0;
    }

    if (v41 != 4)
    {
      goto LABEL_10;
    }
  }

LABEL_29:
  v43 = v18;
  v44 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering);

  v45 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering);
  v46 = *(v43 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering + 8);

  if (v46 == 1)
  {
    if (v45 > 1)
    {
      if (v45 == 2)
      {
        if (v44 == 2)
        {
          return 1;
        }
      }

      else if (v44 == 3)
      {
        return 1;
      }
    }

    else if (v45)
    {
      if (v44 == 1)
      {
        return 1;
      }
    }

    else if (!v44)
    {
      return 1;
    }

    return 0;
  }

  return v44 == v45;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_IndexElem(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexElem and conformance PgQuery_IndexElem, type metadata accessor for PgQuery_IndexElem, &protocol conformance descriptor for PgQuery_IndexElem);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_IndexElem(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexElem and conformance PgQuery_IndexElem, type metadata accessor for PgQuery_IndexElem, &protocol conformance descriptor for PgQuery_IndexElem);

  return MEMORY[0x1EEE15928](a1, Scan);
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
  v6 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__keys) = MEMORY[0x1E69E7CC0];
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

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawExpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pktable, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  return v0;
}

void type metadata completion function for PgQuery_Constraint._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
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
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v74 = &v71 - v8;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v73 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v9);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v71 - v17;
  Node = type metadata accessor for PgQuery_Node(0);
  v20 = *(Node - 8);
  v22 = MEMORY[0x1EEE9AC00](Node, v21);
  v81 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v78 = &v71 - v25;
  if (*(a1 + 16))
  {
    v26 = *(a1 + 24);
    v79 = *(a1 + 16);
    v80 = v26;
    lazy protocol witness table accessor for type PgQuery_ConstrType and conformance PgQuery_ConstrType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v72 = v11;
    v28 = Node;
  }

  else
  {
    v72 = v11;
    v28 = Node;
  }

  v29 = *(a1 + 40);
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  v77 = a1;
  if (v30)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }

    a1 = v77;
  }

  if (*(a1 + 48) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    a1 = v77;
  }

  if (*(a1 + 49) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    a1 = v77;
  }

  if (*(a1 + 52))
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    a1 = v77;
  }

  if (*(a1 + 56) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v31 = 0;
    a1 = v77;
  }

  else
  {
    v31 = v4;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawExpr, v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v32 = *(v20 + 48);
  if (v32(v18, 1, v28) == 1)
  {
    v71 = v32;
    _s10Foundation4UUIDVSgWOhTm_0(v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v33 = v72;
  }

  else
  {
    v34 = v18;
    v35 = v78;
    outlined init with take of PgQuery_OidList(v34, v78, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v33 = v72;
    if (v31)
    {
      return outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_Node);
    }

    v71 = v32;
    outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_Node);
  }

  v36 = v77;
  v37 = *(v77 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr + 8);
  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = *(v77 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr) & 0xFFFFFFFFFFFFLL;
  }

  v39 = v31;
  if (v38)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    v40 = v81;
    if (v39)
    {
    }

    v36 = v77;
  }

  else
  {
    v40 = v81;
  }

  v41 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen + 8);
  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen) & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v39)
    {
    }

    v36 = v77;
  }

  if (*(*(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__keys) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v39)
    {
    }

    v40 = v81;
    v36 = v77;
  }

  if (*(*(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__including) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v39)
    {
    }

    v40 = v81;
    v36 = v77;
  }

  if (*(*(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclusions) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v39)
    {
    }

    v40 = v81;
    v36 = v77;
  }

  if (*(*(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v39)
    {
    }

    v40 = v81;
    v36 = v77;
  }

  v43 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname + 8);
  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname) & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (!v39)
    {

      v36 = v77;
      goto LABEL_57;
    }
  }

LABEL_57:
  v45 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace + 8);
  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace) & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v39)
    {
    }

    v36 = v77;
  }

  if (*(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v39)
    {
      return result;
    }

    v47 = v76;
    v36 = v77;
  }

  else
  {
    v47 = v76;
  }

  v48 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);
  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    v81 = v39;
    if (v39)
    {
    }

    v47 = v76;
    v36 = v77;
  }

  else
  {
    v81 = v39;
  }

  v50 = v47;
  outlined init with copy of PgQuery_Alias?(v36 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v51 = v71(v50, 1, v28);
  v52 = v74;
  v53 = RangeVar;
  if (v51 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v50, v40, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v54 = v81;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v81 = v54;
    if (v54)
    {
      return outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
    }

    outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
  }

  outlined init with copy of PgQuery_Alias?(v77 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pktable, v52, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v73 + 48))(v52, 1, v53) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v52, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v52, v33, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v55 = v81;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v81 = v55;
    if (v55)
    {
      return outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_RangeVar);
    }

    outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_RangeVar);
  }

  v56 = v77;
  if (*(*(v77 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkAttrs) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v57 = v81;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v81 = v57;
    if (!v57)
    {

      v56 = v77;
      goto LABEL_87;
    }
  }

LABEL_87:
  if (*(*(v56 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pkAttrs) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v58 = v81;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v81 = v58;
    if (v58)
    {
    }
  }

  v59 = *(v77 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype + 8);
  v60 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v60 = *(v77 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype) & 0xFFFFFFFFFFFFLL;
  }

  if (!v60 || (, v61 = v81, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , (v81 = v61) == 0))
  {
    v62 = *(v77 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction + 8);
    v63 = HIBYTE(v62) & 0xF;
    if ((v62 & 0x2000000000000000) == 0)
    {
      v63 = *(v77 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction) & 0xFFFFFFFFFFFFLL;
    }

    if (!v63 || (, v64 = v81, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , (v81 = v64) == 0))
    {
      v65 = *(v77 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction + 8);
      v66 = HIBYTE(v65) & 0xF;
      if ((v65 & 0x2000000000000000) == 0)
      {
        v66 = *(v77 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction) & 0xFFFFFFFFFFFFLL;
      }

      if (!v66 || (, v67 = v81, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , (v81 = v67) == 0))
      {
        if (!*(*(v77 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldConpfeqop) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , v68 = v81, dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , (v81 = v68) == 0))
        {
          result = *(v77 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldPktableOid);
          if (!result || (v69 = v81, result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), (v81 = v69) == 0))
          {
            if (*(v77 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipValidation) != 1 || (v70 = v81, result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), (v81 = v70) == 0))
            {
              if (*(v77 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initiallyValid) == 1)
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
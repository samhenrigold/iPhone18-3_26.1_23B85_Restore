uint64_t closure #1 in static PgQuery_RenameStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v64 = *(Node - 8);
  v65 = Node;
  MEMORY[0x1EEE9AC00](Node, v5);
  v60 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v61 = &v59 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v63, v10);
  v66 = &v59 - v11;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v13 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v14);
  v62 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v59 - v22;
  destructiveProjectEnumData for StorableValue();
  v25 = v24;
  destructiveProjectEnumData for StorableValue();
  if (v25 != v26)
  {
    goto LABEL_18;
  }

  destructiveProjectEnumData for StorableValue();
  v28 = v27;
  destructiveProjectEnumData for StorableValue();
  if (v28 != v29)
  {
    goto LABEL_18;
  }

  v30 = a2;
  v31 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v32 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v33 = v30 + v31;
  v34 = v30;
  outlined init with copy of PgQuery_Alias?(v33, &v23[v32], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v35 = *(v13 + 48);
  if (v35(v23, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v23, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v35(&v23[v32], 1, RangeVar) != 1)
    {
      v39 = v62;
      outlined init with take of PgQuery_OidList(&v23[v32], v62, type metadata accessor for PgQuery_RangeVar);

      v40 = specialized static PgQuery_RangeVar.== infix(_:_:)(v19, v39);
      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v40 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
LABEL_8:
    v37 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v38 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_16:
    _s10Foundation4UUIDVSgWOhTm_0(v23, v37, v38);
    goto LABEL_17;
  }

  v36 = v35(&v23[v32], 1, RangeVar);

  if (v36 != 1)
  {
    goto LABEL_8;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_10:
  v41 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v42 = *(v63 + 48);
  v23 = v66;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v66, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v34 + v41, &v23[v42], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v43 = v65;
  v44 = *(v64 + 48);
  if (v44(v23, 1, v65) == 1)
  {
    if (v44(&v23[v42], 1, v43) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_23:
      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname) == *(v34 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname + 8) == *(v34 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname) == *(v34 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname + 8) == *(v34 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        v55 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
        v56 = *(v34 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
        if (*(v34 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8) == 1)
        {
          if (v56)
          {
            if (v56 == 1)
            {
              if (v55 == 1)
              {
                goto LABEL_40;
              }
            }

            else if (v55 == 2)
            {
LABEL_40:
              v57 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

              v58 = *(v34 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

              v46 = v57 ^ v58 ^ 1;
              return v46 & 1;
            }
          }

          else if (!v55)
          {
            goto LABEL_40;
          }
        }

        else if (v55 == v56)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v45 = v61;
  outlined init with copy of PgQuery_Alias?(v23, v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v44(&v23[v42], 1, v43) == 1)
  {
    outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
LABEL_15:
    v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_16;
  }

  v48 = &v23[v42];
  v49 = v60;
  outlined init with take of PgQuery_OidList(v48, v60, type metadata accessor for PgQuery_Node);
  v50 = *(v43 + 20);
  v51 = *(v45 + v50);
  v52 = *(v49 + v50);
  if (v51 != v52)
  {

    v53 = closure #1 in static PgQuery_Node.== infix(_:_:)(v51, v52);

    if (!v53)
    {
      outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
      v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v54)
  {
    goto LABEL_23;
  }

LABEL_17:

LABEL_18:
  v46 = 0;
  return v46 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RenameStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RenameStmt and conformance PgQuery_RenameStmt, type metadata accessor for PgQuery_RenameStmt, &protocol conformance descriptor for PgQuery_RenameStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RenameStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RenameStmt and conformance PgQuery_RenameStmt, type metadata accessor for PgQuery_RenameStmt, &protocol conformance descriptor for PgQuery_RenameStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RenameStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RenameStmt and conformance PgQuery_RenameStmt, type metadata accessor for PgQuery_RenameStmt, &protocol conformance descriptor for PgQuery_RenameStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_RuleStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_RuleStmt._StorageClass(uint64_t a1)
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

uint64_t closure #1 in PgQuery_RuleStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
            type metadata accessor for PgQuery_RangeVar(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
            goto LABEL_19;
          case 2:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 3:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_19:
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 7)
        {
LABEL_17:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result != 4)
        {
          goto LABEL_17;
        }

        lazy protocol witness table accessor for type PgQuery_CmdType and conformance PgQuery_CmdType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RuleStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v36 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v30 = &v28 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v29 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v8);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v28 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v15 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v15 + 48))(v13, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v19 = v32;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v18, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v20 = v32;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v19 = v20;
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    if (v20)
    {
      return result;
    }
  }

  v22 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename + 8);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename) & 0xFFFFFFFFFFFFLL;
  }

  if (!v23 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v19))
  {
    v24 = v30;
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v29 + 48))(v24, 1, Node) == 1)
    {
      result = _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      v25 = v24;
      v26 = v28;
      outlined init with take of PgQuery_OidList(v25, v28, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
      if (v19)
      {
        return result;
      }
    }

    if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event) || (v27 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event + 8), v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event), v35 = v27, lazy protocol witness table accessor for type PgQuery_CmdType and conformance PgQuery_CmdType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v19))
    {
      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__instead) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v19))
      {
        if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__actions) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v19))
        {
          if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace) == 1)
          {
            return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_RuleStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  Node = type metadata accessor for PgQuery_Node(0);
  v58 = *(Node - 8);
  v59 = Node;
  MEMORY[0x1EEE9AC00](Node, v4);
  v54 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v55 = &v54 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v57, v9);
  v60 = &v54 - v10;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v12 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v13);
  v56 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v23 = &v54 - v22;
  v24 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v25 = *(v21 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v54 - v22, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v26 = v61 + v24;
  v27 = v61;
  outlined init with copy of PgQuery_Alias?(v26, &v23[v25], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v28 = *(v12 + 48);
  if (v28(v23, 1, RangeVar) == 1)
  {
    v29 = v28(&v23[v25], 1, RangeVar);

    if (v29 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v30 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v31 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    goto LABEL_17;
  }

  outlined init with copy of PgQuery_Alias?(v23, v18, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v28(&v23[v25], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  v32 = v56;
  outlined init with take of PgQuery_OidList(&v23[v25], v56, type metadata accessor for PgQuery_RangeVar);

  v33 = specialized static PgQuery_RangeVar.== infix(_:_:)(v18, v32);
  outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v33 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename) != *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename + 8) != *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v35 = *(v57 + 48);
  v23 = v60;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v60, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v27 + v34, &v23[v35], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v36 = v59;
  v37 = *(v58 + 48);
  if (v37(v23, 1, v59) != 1)
  {
    v38 = v55;
    outlined init with copy of PgQuery_Alias?(v23, v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v37(&v23[v35], 1, v36) == 1)
    {
      outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_Node);
      goto LABEL_16;
    }

    v41 = &v23[v35];
    v42 = v54;
    outlined init with take of PgQuery_OidList(v41, v54, type metadata accessor for PgQuery_Node);
    v43 = *(v36 + 20);
    v44 = *(v38 + v43);
    v45 = *(v42 + v43);
    if (v44 == v45 || (, , v46 = closure #1 in static PgQuery_Node.== infix(_:_:)(v44, v45), , , v46))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((v47 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_Node);
    v30 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_17:
    _s10Foundation4UUIDVSgWOhTm_0(v23, v30, v31);
    goto LABEL_18;
  }

  if (v37(&v23[v35], 1, v36) != 1)
  {
LABEL_16:
    v30 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_17;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_23:
  if (specialized == infix<A>(_:_:)(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event), *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event + 8), *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event)) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__instead) == *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__instead))
  {
    v48 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__actions);
    v49 = v27;
    v50 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__actions);

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v48, v50);

    if (NodeV_Tt1g5)
    {
      v52 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace);

      v53 = *(v49 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace);

      v39 = v52 ^ v53 ^ 1;
      return v39 & 1;
    }
  }

LABEL_18:

  v39 = 0;
  return v39 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RuleStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RuleStmt and conformance PgQuery_RuleStmt, type metadata accessor for PgQuery_RuleStmt, &protocol conformance descriptor for PgQuery_RuleStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RuleStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RuleStmt and conformance PgQuery_RuleStmt, type metadata accessor for PgQuery_RuleStmt, &protocol conformance descriptor for PgQuery_RuleStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RuleStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RuleStmt and conformance PgQuery_RuleStmt, type metadata accessor for PgQuery_RuleStmt, &protocol conformance descriptor for PgQuery_RuleStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_NotifyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NotifyStmt and conformance PgQuery_NotifyStmt, type metadata accessor for PgQuery_NotifyStmt, &protocol conformance descriptor for PgQuery_NotifyStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_NotifyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NotifyStmt and conformance PgQuery_NotifyStmt, type metadata accessor for PgQuery_NotifyStmt, &protocol conformance descriptor for PgQuery_NotifyStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_NotifyStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NotifyStmt and conformance PgQuery_NotifyStmt, type metadata accessor for PgQuery_NotifyStmt, &protocol conformance descriptor for PgQuery_NotifyStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ListenStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ListenStmt and conformance PgQuery_ListenStmt, type metadata accessor for PgQuery_ListenStmt, &protocol conformance descriptor for PgQuery_ListenStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ListenStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ListenStmt and conformance PgQuery_ListenStmt, type metadata accessor for PgQuery_ListenStmt, &protocol conformance descriptor for PgQuery_ListenStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ListenStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ListenStmt and conformance PgQuery_ListenStmt, type metadata accessor for PgQuery_ListenStmt, &protocol conformance descriptor for PgQuery_ListenStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_UnlistenStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UnlistenStmt and conformance PgQuery_UnlistenStmt, type metadata accessor for PgQuery_UnlistenStmt, &protocol conformance descriptor for PgQuery_UnlistenStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_UnlistenStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UnlistenStmt and conformance PgQuery_UnlistenStmt, type metadata accessor for PgQuery_UnlistenStmt, &protocol conformance descriptor for PgQuery_UnlistenStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_UnlistenStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UnlistenStmt and conformance PgQuery_UnlistenStmt, type metadata accessor for PgQuery_UnlistenStmt, &protocol conformance descriptor for PgQuery_UnlistenStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_TransactionStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          lazy protocol witness table accessor for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind();
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
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 5)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_TransactionStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*v3)
  {
    lazy protocol witness table accessor for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(*(v3 + 16) + 16))
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

  v8 = *(v3 + 32);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v7))
  {
    v10 = *(v3 + 48);
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *(v3 + 40) & 0xFFFFFFFFFFFFLL;
    }

    if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v7))
    {
      if (*(v3 + 56) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v7))
      {
        type metadata accessor for PgQuery_TransactionStmt(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_TransactionStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TransactionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TransactionStmt and conformance PgQuery_TransactionStmt, type metadata accessor for PgQuery_TransactionStmt, &protocol conformance descriptor for PgQuery_TransactionStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TransactionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TransactionStmt and conformance PgQuery_TransactionStmt, type metadata accessor for PgQuery_TransactionStmt, &protocol conformance descriptor for PgQuery_TransactionStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TransactionStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TransactionStmt and conformance PgQuery_TransactionStmt, type metadata accessor for PgQuery_TransactionStmt, &protocol conformance descriptor for PgQuery_TransactionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_ViewStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__view, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_ViewStmt._StorageClass(uint64_t a1)
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

uint64_t closure #1 in PgQuery_ViewStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        switch(result)
        {
          case 4:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 5:
LABEL_4:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 6:
            lazy protocol witness table accessor for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
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
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_ViewStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v35 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v29 = &v27 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v28 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v8);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v27 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v15 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__view, v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v15 + 48))(v13, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v19 = v31;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v18, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v20 = v31;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v19 = v20;
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    if (v20)
    {
      return result;
    }
  }

  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aliases) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v22 = Node;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v19)
    {
      return result;
    }
  }

  else
  {
    v22 = Node;
  }

  v23 = v29;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v28 + 48))(v23, 1, v22) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v24 = v23;
    v25 = v27;
    outlined init with take of PgQuery_OidList(v24, v27, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    if (v19)
    {
      return result;
    }
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v19))
  {
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v19))
    {
      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption))
      {
        v26 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption + 8);
        v33 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption);
        v34 = v26;
        lazy protocol witness table accessor for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption();
        return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_ViewStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  Node = type metadata accessor for PgQuery_Node(0);
  v60 = *(Node - 8);
  v61 = Node;
  MEMORY[0x1EEE9AC00](Node, v4);
  v57 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v58 = &v57 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v59, v9);
  v62 = &v57 - v10;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v12 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v13);
  v63 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v23 = &v57 - v22;
  v24 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__view;
  v25 = *(v21 + 56);
  v26 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__view, &v57 - v22, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v27 = v64 + v24;
  v28 = v64;
  outlined init with copy of PgQuery_Alias?(v27, &v23[v25], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v29 = *(v12 + 48);
  if (v29(v23, 1, RangeVar) == 1)
  {
    v30 = v29(&v23[v25], 1, RangeVar);

    if (v30 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v31 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v32 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    goto LABEL_7;
  }

  outlined init with copy of PgQuery_Alias?(v23, v18, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v29(&v23[v25], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  v33 = &v23[v25];
  v34 = v63;
  outlined init with take of PgQuery_OidList(v33, v63, type metadata accessor for PgQuery_RangeVar);

  v35 = specialized static PgQuery_RangeVar.== infix(_:_:)(v18, v34);
  outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v35 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  v36 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aliases);
  v37 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aliases);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v36, v37);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_26;
  }

  v39 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v40 = *(v59 + 48);
  v23 = v62;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v62, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v28 + v39, &v23[v40], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v41 = v61;
  v42 = *(v60 + 48);
  if (v42(v23, 1, v61) != 1)
  {
    v43 = v58;
    outlined init with copy of PgQuery_Alias?(v23, v58, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v42(&v23[v40], 1, v41) == 1)
    {
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
      goto LABEL_15;
    }

    v44 = v57;
    outlined init with take of PgQuery_OidList(&v23[v40], v57, type metadata accessor for PgQuery_Node);
    v45 = *(v41 + 20);
    v46 = *(v43 + v45);
    v47 = *(v44 + v45);
    if (v46 == v47 || (, , v48 = closure #1 in static PgQuery_Node.== infix(_:_:)(v46, v47), , , v48))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v49 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v49)
      {
        goto LABEL_19;
      }

LABEL_26:

      return 0;
    }

    outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v23, v31, v32);
    goto LABEL_26;
  }

  if (v42(&v23[v40], 1, v41) != 1)
  {
LABEL_15:
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_19:
  if (*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace) != *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace))
  {
    goto LABEL_26;
  }

  v50 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
  v51 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v52 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v50, v51);

  if ((v52 & 1) == 0)
  {
    goto LABEL_26;
  }

  v53 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption);

  v54 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption);
  v55 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption + 8);

  if (v55 == 1)
  {
    if (v54 > 1)
    {
      if (v54 == 2)
      {
        if (v53 == 2)
        {
          return 1;
        }
      }

      else if (v53 == 3)
      {
        return 1;
      }
    }

    else if (v54)
    {
      if (v53 == 1)
      {
        return 1;
      }
    }

    else if (!v53)
    {
      return 1;
    }

    return 0;
  }

  return v53 == v54;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ViewStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ViewStmt and conformance PgQuery_ViewStmt, type metadata accessor for PgQuery_ViewStmt, &protocol conformance descriptor for PgQuery_ViewStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ViewStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ViewStmt and conformance PgQuery_ViewStmt, type metadata accessor for PgQuery_ViewStmt, &protocol conformance descriptor for PgQuery_ViewStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ViewStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ViewStmt and conformance PgQuery_ViewStmt, type metadata accessor for PgQuery_ViewStmt, &protocol conformance descriptor for PgQuery_ViewStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_LoadStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LoadStmt and conformance PgQuery_LoadStmt, type metadata accessor for PgQuery_LoadStmt, &protocol conformance descriptor for PgQuery_LoadStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_LoadStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LoadStmt and conformance PgQuery_LoadStmt, type metadata accessor for PgQuery_LoadStmt, &protocol conformance descriptor for PgQuery_LoadStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_LoadStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LoadStmt and conformance PgQuery_LoadStmt, type metadata accessor for PgQuery_LoadStmt, &protocol conformance descriptor for PgQuery_LoadStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateDomainStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v1 + v4, 1, 1, TypeName);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause;
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  (*(*(CollateClause - 8) + 56))(v1 + v6, 1, 1, CollateClause);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) = v3;
  *(v1 + 16) = *(a1 + 16);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;

  outlined assign with copy of PgQuery_Node?(a1 + v9, v1 + v4, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, v1 + v6, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);

  *(v1 + v8) = v10;

  return v1;
}

uint64_t PgQuery_CreateDomainStmt._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_CreateDomainStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_CollateClause?, type metadata accessor for PgQuery_CollateClause, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_CreateDomainStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v6 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        type metadata accessor for PgQuery_CollateClause(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause, &protocol conformance descriptor for PgQuery_CollateClause);
LABEL_13:
        v4 = 0;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 4)
      {
LABEL_2:
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }
    }

    else
    {
      if (result == 1)
      {
        goto LABEL_2;
      }

      if (result == 2)
      {
        type metadata accessor for PgQuery_TypeName(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
        goto LABEL_13;
      }
    }
  }
}

uint64_t closure #1 in PgQuery_CreateDomainStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v28 = &v24 - v9;
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  v27 = *(CollateClause - 8);
  MEMORY[0x1EEE9AC00](CollateClause, v10);
  v26 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v24 - v14;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v16 = *(TypeName - 8);
  MEMORY[0x1EEE9AC00](TypeName, v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(a1 + 16) + 16))
  {
    v25 = a1;
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v5 = v4;

    if (v4)
    {
      return result;
    }

    a1 = v25;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v15, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v16 + 48))(v15, 1, TypeName) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v19, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_TypeName);
    if (v5)
    {
      return result;
    }
  }

  v21 = v28;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, v28, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  if ((*(v27 + 48))(v21, 1, CollateClause) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v21, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  }

  else
  {
    v22 = v21;
    v23 = v26;
    outlined init with take of PgQuery_OidList(v22, v26, type metadata accessor for PgQuery_CollateClause);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause, &protocol conformance descriptor for PgQuery_CollateClause);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_CollateClause);
    if (v5)
    {
      return result;
    }
  }

  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static PgQuery_CreateDomainStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  v59 = *(CollateClause - 8);
  v60 = CollateClause;
  MEMORY[0x1EEE9AC00](CollateClause, v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v56 = &v55 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v58, v11);
  v61 = &v55 - v12;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v14 = *(TypeName - 8);
  MEMORY[0x1EEE9AC00](TypeName, v15);
  v57 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v62 = &v55 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v55 - v22;
  v24 = *(a1 + 16);
  v25 = *(a2 + 16);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v24, v25);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_18;
  }

  v55 = v7;
  v27 = a2;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  v29 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v23, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined init with copy of PgQuery_Alias?(v27 + v28, &v23[v29], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v30 = *(v14 + 48);
  v31 = a1;
  if (v30(v23, 1, TypeName) != 1)
  {
    v32 = v62;
    outlined init with copy of PgQuery_Alias?(v23, v62, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    if (v30(&v23[v29], 1, TypeName) != 1)
    {
      v36 = v57;
      outlined init with take of PgQuery_OidList(&v23[v29], v57, type metadata accessor for PgQuery_TypeName);
      v37 = specialized static PgQuery_TypeName.== infix(_:_:)(v32, v36);
      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_TypeName);
      outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_TypeName);
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      if ((v37 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_TypeName);
LABEL_8:
    v33 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v34 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    v35 = v23;
LABEL_17:
    _s10Foundation4UUIDVSgWOhTm_0(v35, v33, v34);
    goto LABEL_18;
  }

  if (v30(&v23[v29], 1, TypeName) != 1)
  {
    goto LABEL_8;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
LABEL_10:
  v38 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause;
  v39 = *(v58 + 48);
  v40 = v61;
  outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, v61, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  outlined init with copy of PgQuery_Alias?(v27 + v38, v40 + v39, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  v41 = v60;
  v42 = *(v59 + 48);
  if (v42(v40, 1, v60) == 1)
  {
    if (v42(v40 + v39, 1, v41) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
LABEL_23:
      v53 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);
      v54 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);

      v44 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v53, v54);

      return v44 & 1;
    }

    goto LABEL_15;
  }

  v43 = v56;
  outlined init with copy of PgQuery_Alias?(v40, v56, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  if (v42(v40 + v39, 1, v41) == 1)
  {
    outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_CollateClause);
LABEL_15:
    v33 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMd;
    v34 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMR;
LABEL_16:
    v35 = v40;
    goto LABEL_17;
  }

  v46 = v55;
  outlined init with take of PgQuery_OidList(v40 + v39, v55, type metadata accessor for PgQuery_CollateClause);
  v47 = *(v41 + 20);
  v48 = *(v43 + v47);
  v49 = *(v46 + v47);
  if (v48 != v49)
  {

    v50 = closure #1 in static PgQuery_CollateClause.== infix(_:_:)(v48, v49);

    if (!v50)
    {
      outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_CollateClause);
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_CollateClause);
      v33 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd;
      v34 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v51 = v55;
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_CollateClause);
  outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_CollateClause);
  _s10Foundation4UUIDVSgWOhTm_0(v40, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  if (v52)
  {
    goto LABEL_23;
  }

LABEL_18:

  v44 = 0;
  return v44 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateDomainStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateDomainStmt and conformance PgQuery_CreateDomainStmt, type metadata accessor for PgQuery_CreateDomainStmt, &protocol conformance descriptor for PgQuery_CreateDomainStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateDomainStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateDomainStmt and conformance PgQuery_CreateDomainStmt, type metadata accessor for PgQuery_CreateDomainStmt, &protocol conformance descriptor for PgQuery_CreateDomainStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateDomainStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateDomainStmt and conformance PgQuery_CreateDomainStmt, type metadata accessor for PgQuery_CreateDomainStmt, &protocol conformance descriptor for PgQuery_CreateDomainStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreatedbStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatedbStmt and conformance PgQuery_CreatedbStmt, type metadata accessor for PgQuery_CreatedbStmt, &protocol conformance descriptor for PgQuery_CreatedbStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreatedbStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatedbStmt and conformance PgQuery_CreatedbStmt, type metadata accessor for PgQuery_CreatedbStmt, &protocol conformance descriptor for PgQuery_CreatedbStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreatedbStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatedbStmt and conformance PgQuery_CreatedbStmt, type metadata accessor for PgQuery_CreatedbStmt, &protocol conformance descriptor for PgQuery_CreatedbStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropdbStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropdbStmt and conformance PgQuery_DropdbStmt, type metadata accessor for PgQuery_DropdbStmt, &protocol conformance descriptor for PgQuery_DropdbStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropdbStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropdbStmt and conformance PgQuery_DropdbStmt, type metadata accessor for PgQuery_DropdbStmt, &protocol conformance descriptor for PgQuery_DropdbStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropdbStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropdbStmt and conformance PgQuery_DropdbStmt, type metadata accessor for PgQuery_DropdbStmt, &protocol conformance descriptor for PgQuery_DropdbStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_VacuumStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumStmt and conformance PgQuery_VacuumStmt, type metadata accessor for PgQuery_VacuumStmt, &protocol conformance descriptor for PgQuery_VacuumStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_VacuumStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumStmt and conformance PgQuery_VacuumStmt, type metadata accessor for PgQuery_VacuumStmt, &protocol conformance descriptor for PgQuery_VacuumStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_VacuumStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumStmt and conformance PgQuery_VacuumStmt, type metadata accessor for PgQuery_VacuumStmt, &protocol conformance descriptor for PgQuery_VacuumStmt);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for defaultInstance(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4, uint64_t *a5)
{
  a2(0);
  v8 = swift_allocObject();
  v9 = *a3;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v8 + v9, 1, 1, Node);
  *(v8 + *a4) = MEMORY[0x1E69E7CC0];
  *a5 = v8;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ExplainStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExplainStmt and conformance PgQuery_ExplainStmt, type metadata accessor for PgQuery_ExplainStmt, &protocol conformance descriptor for PgQuery_ExplainStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ExplainStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExplainStmt and conformance PgQuery_ExplainStmt, type metadata accessor for PgQuery_ExplainStmt, &protocol conformance descriptor for PgQuery_ExplainStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ExplainStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExplainStmt and conformance PgQuery_ExplainStmt, type metadata accessor for PgQuery_ExplainStmt, &protocol conformance descriptor for PgQuery_ExplainStmt);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_CreateTableAsStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_IntoClause?, type metadata accessor for PgQuery_IntoClause, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_CreateTableAsStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v7 = v4;
          type metadata accessor for PgQuery_IntoClause(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause, &protocol conformance descriptor for PgQuery_IntoClause);
        }

        v4 = v7;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 3)
      {
        lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 4 || result == 5)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

void closure #1 in PgQuery_CreateTableAsStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v29 - v7;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v30 = *(IntoClause - 8);
  v31 = IntoClause;
  MEMORY[0x1EEE9AC00](IntoClause, v10);
  v29 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v29 - v14;
  Node = type metadata accessor for PgQuery_Node(0);
  v17 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v17 + 48))(v15, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v20, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v21 = v37;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
    if (v21)
    {
      return;
    }

    v37 = 0;
  }

  v22 = v32;
  outlined init with copy of PgQuery_Alias?(v32 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__into, v8, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  if ((*(v30 + 48))(v8, 1, v31) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  }

  else
  {
    v23 = v29;
    outlined init with take of PgQuery_OidList(v8, v29, type metadata accessor for PgQuery_IntoClause);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause, &protocol conformance descriptor for PgQuery_IntoClause);
    v24 = v37;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_IntoClause);
    if (v24)
    {
      return;
    }

    v37 = 0;
  }

  v25 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind);
  v26 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind + 8);
  destructiveProjectEnumData for StorableValue();
  if (v27)
  {
    v35 = v25;
    v36 = v26;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v28 = v37;
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v28)
    {
      return;
    }
  }

  else
  {
    v28 = v37;
  }

  if (*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isSelectInto) != 1 || (dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v28))
  {
    if (*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }
  }
}

uint64_t closure #1 in static PgQuery_CreateTableAsStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v66 = *(IntoClause - 8);
  v67 = IntoClause;
  MEMORY[0x1EEE9AC00](IntoClause, v5);
  v62 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v63 = &v61 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v65, v10);
  v68 = &v61 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v14);
  v64 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v24 = &v61 - v23;
  v25 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v26 = *(v22 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, &v61 - v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v27 = a2 + v25;
  v28 = a2;
  outlined init with copy of PgQuery_Alias?(v27, &v24[v26], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v29 = *(v13 + 48);
  if (v29(v24, 1, Node) == 1)
  {
    v30 = v29(&v24[v26], 1, Node);

    v31 = a1;
    if (v30 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  outlined init with copy of PgQuery_Alias?(v24, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v29(&v24[v26], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
LABEL_6:
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v33 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_7:
    v34 = v24;
LABEL_18:
    _s10Foundation4UUIDVSgWOhTm_0(v34, v32, v33);
    goto LABEL_19;
  }

  v35 = &v24[v26];
  v36 = v64;
  outlined init with take of PgQuery_OidList(v35, v64, type metadata accessor for PgQuery_Node);
  v37 = *(Node + 20);
  v38 = *&v19[v37];
  v39 = *(v36 + v37);
  v31 = a1;

  if (v38 != v39)
  {

    v40 = closure #1 in static PgQuery_Node.== infix(_:_:)(v38, v39);

    if (!v40)
    {
      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v33 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v41 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v42 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__into;
  v43 = *(v65 + 48);
  v44 = v68;
  outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__into, v68, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  outlined init with copy of PgQuery_Alias?(v28 + v42, v44 + v43, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v45 = v67;
  v46 = *(v66 + 48);
  if (v46(v44, 1, v67) != 1)
  {
    v47 = v63;
    outlined init with copy of PgQuery_Alias?(v44, v63, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
    if (v46(v44 + v43, 1, v45) != 1)
    {
      v50 = v62;
      outlined init with take of PgQuery_OidList(v44 + v43, v62, type metadata accessor for PgQuery_IntoClause);
      v51 = *(v45 + 20);
      v52 = *(v47 + v51);
      v53 = *(v50 + v51);
      if (v52 == v53 || (, , v54 = closure #1 in static PgQuery_IntoClause.== infix(_:_:)(v52, v53), , , (v54 & 1) != 0))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_IntoClause);
        outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_IntoClause);
        _s10Foundation4UUIDVSgWOhTm_0(v44, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
        if ((v55 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_24;
      }

      outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_IntoClause);
      outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_IntoClause);
      v32 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd;
      v33 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR;
      goto LABEL_17;
    }

    outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_IntoClause);
LABEL_16:
    v32 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMd;
    v33 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMR;
LABEL_17:
    v34 = v44;
    goto LABEL_18;
  }

  if (v46(v44 + v43, 1, v45) != 1)
  {
    goto LABEL_16;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v44, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
LABEL_24:
  destructiveProjectEnumData for StorableValue();
  v57 = v56;
  destructiveProjectEnumData for StorableValue();
  if (v57 == v58 && *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isSelectInto) == *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isSelectInto))
  {
    v59 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists);

    v60 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists);

    v48 = v59 ^ v60 ^ 1;
    return v48 & 1;
  }

LABEL_19:

  v48 = 0;
  return v48 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateTableAsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableAsStmt and conformance PgQuery_CreateTableAsStmt, type metadata accessor for PgQuery_CreateTableAsStmt, &protocol conformance descriptor for PgQuery_CreateTableAsStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateTableAsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableAsStmt and conformance PgQuery_CreateTableAsStmt, type metadata accessor for PgQuery_CreateTableAsStmt, &protocol conformance descriptor for PgQuery_CreateTableAsStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateTableAsStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableAsStmt and conformance PgQuery_CreateTableAsStmt, type metadata accessor for PgQuery_CreateTableAsStmt, &protocol conformance descriptor for PgQuery_CreateTableAsStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateSeqStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          type metadata accessor for PgQuery_CreateSeqStmt(0);
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
      }

      else if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 4 || result == 5)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateSeqStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v9 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  SeqStmt = type metadata accessor for PgQuery_CreateSeqStmt(0);
  v18 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(SeqStmt + 36), v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v9 + 48))(v7, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v13 = v20;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v12, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v13 = v20;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeVar);
    if (v13)
    {
      return result;
    }
  }

  v15 = v18;
  if (!*(*v18 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v13))
  {
    if (!*(v15 + 8) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v13))
    {
      if (*(v15 + 12) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v13))
      {
        if (*(v15 + 13) != 1)
        {
          return UnknownStorage.traverse<A>(visitor:)();
        }

        result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
        if (!v13)
        {
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateSeqStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 36);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v6 = *(*(RangeVar - 8) + 56);

  return v6(a2 + v4, 1, 1, RangeVar);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateSeqStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSeqStmt and conformance PgQuery_CreateSeqStmt, type metadata accessor for PgQuery_CreateSeqStmt, &protocol conformance descriptor for PgQuery_CreateSeqStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateSeqStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSeqStmt and conformance PgQuery_CreateSeqStmt, type metadata accessor for PgQuery_CreateSeqStmt, &protocol conformance descriptor for PgQuery_CreateSeqStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateSeqStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSeqStmt and conformance PgQuery_CreateSeqStmt, type metadata accessor for PgQuery_CreateSeqStmt, &protocol conformance descriptor for PgQuery_CreateSeqStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterSeqStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for PgQuery_AlterSeqStmt(0);
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

uint64_t PgQuery_AlterSeqStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v9 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterSeqStmt = type metadata accessor for PgQuery_AlterSeqStmt(0);
  v18 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterSeqStmt + 32), v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v9 + 48))(v7, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v13 = v20;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v12, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v13 = v20;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeVar);
    if (v13)
    {
      return result;
    }
  }

  v15 = v18;
  if (!*(*v18 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v13))
  {
    if (*(v15 + 8) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v13))
    {
      if (*(v15 + 9) != 1)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }

      result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      if (!v13)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterSeqStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 32);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v6 = *(*(RangeVar - 8) + 56);

  return v6(a2 + v4, 1, 1, RangeVar);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterSeqStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSeqStmt and conformance PgQuery_AlterSeqStmt, type metadata accessor for PgQuery_AlterSeqStmt, &protocol conformance descriptor for PgQuery_AlterSeqStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterSeqStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSeqStmt and conformance PgQuery_AlterSeqStmt, type metadata accessor for PgQuery_AlterSeqStmt, &protocol conformance descriptor for PgQuery_AlterSeqStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterSeqStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSeqStmt and conformance PgQuery_AlterSeqStmt, type metadata accessor for PgQuery_AlterSeqStmt, &protocol conformance descriptor for PgQuery_AlterSeqStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_VariableSetStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1)
      {
        lazy protocol witness table accessor for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_VariableSetStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v6 = *(v3 + 24);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      if (!*(*(v3 + 32) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
      {
        if (*(v3 + 40) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
        {
          type metadata accessor for PgQuery_VariableSetStmt(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_VariableSetStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_VariableSetStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_VariableSetStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_VariableSetStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_VariableShowStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableShowStmt and conformance PgQuery_VariableShowStmt, type metadata accessor for PgQuery_VariableShowStmt, &protocol conformance descriptor for PgQuery_VariableShowStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_VariableShowStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableShowStmt and conformance PgQuery_VariableShowStmt, type metadata accessor for PgQuery_VariableShowStmt, &protocol conformance descriptor for PgQuery_VariableShowStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_VariableShowStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableShowStmt and conformance PgQuery_VariableShowStmt, type metadata accessor for PgQuery_VariableShowStmt, &protocol conformance descriptor for PgQuery_VariableShowStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DiscardStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_DiscardStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for PgQuery_DiscardStmt(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_DiscardStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DiscardStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DiscardStmt and conformance PgQuery_DiscardStmt, type metadata accessor for PgQuery_DiscardStmt, &protocol conformance descriptor for PgQuery_DiscardStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DiscardStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DiscardStmt and conformance PgQuery_DiscardStmt, type metadata accessor for PgQuery_DiscardStmt, &protocol conformance descriptor for PgQuery_DiscardStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DiscardStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DiscardStmt and conformance PgQuery_DiscardStmt, type metadata accessor for PgQuery_DiscardStmt, &protocol conformance descriptor for PgQuery_DiscardStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateTrigStmt._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v3 = *(*(RangeVar - 8) + 56);
  v3(v0 + v1, 1, 1, RangeVar);
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns) = v4;
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v0 + v5, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) = 0;
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel, 1, 1, RangeVar);
  return v0;
}

uint64_t PgQuery_CreateTrigStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v32 = &v23 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v24 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v8 = *(*(RangeVar - 8) + 56);
  v8(v1 + v6, 1, 1, RangeVar);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname;
  v10 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname) = MEMORY[0x1E69E7CC0];
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = v10;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row) = 0;
  v27 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing) = 0;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events) = 0;
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns) = v10;
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause;
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v13, 1, 1, Node);
  v25 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) = 0;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels) = v10;
  v31 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) = 0;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) = 0;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel;
  v8(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel, 1, 1, RangeVar);
  v17 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v17;
  v18 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;

  outlined assign with copy of PgQuery_Node?(a1 + v18, v1 + v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname);

  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v19 = v27;
  *(v1 + v28) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row);
  *(v1 + v19) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing);
  *(v1 + v26) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events);
  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause, v1 + v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v25) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint);
  *(v1 + v15) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels);

  v20 = v30;
  *(v1 + v31) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable);
  *(v1 + v20) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred);
  v21 = v32;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel, v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  outlined assign with take of PgQuery_Node?(v21, v1 + v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  return v1;
}

uint64_t PgQuery_CreateTrigStmt._StorageClass.deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  return v0;
}

void type metadata completion function for PgQuery_CreateTrigStmt._StorageClass(uint64_t a1)
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

uint64_t closure #1 in PgQuery_CreateTrigStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    v7 = v10;
    while ((v6 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v9 = v7;
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 2:
          v8 = v4;
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
          goto LABEL_5;
        case 3:
        case 4:
        case 8:
        case 11:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_6;
        case 5:
          v9 = v7;
          goto LABEL_15;
        case 6:
          v9 = v7;
          goto LABEL_19;
        case 7:
          v9 = v7;
LABEL_19:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 9:
          v8 = v4;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          goto LABEL_5;
        case 10:
          v9 = v7;
          goto LABEL_15;
        case 12:
          v9 = v7;
          goto LABEL_15;
        case 13:
          v9 = v7;
LABEL_15:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 14:
          v8 = v4;
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
LABEL_5:
          v4 = v8;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_6:
          v9 = v10;
          break;
        default:
          v9 = v7;
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
      v7 = v9;
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CreateTrigStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v44 = &v39 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v43 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v9);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v41 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v39 - v16;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v18 = *(RangeVar - 8);
  v20 = MEMORY[0x1EEE9AC00](RangeVar, v19);
  v40 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v39 - v23;
  v25 = *(a1 + 24);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  v45 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v27 = *(v18 + 48);
  v39 = v18 + 48;
  v28 = v27;
  if (v27(v17, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v17, v24, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
      return outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
    }

    outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
  }

  v30 = v45;
  if (*(*(v45 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v31 = Node;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  else
  {
    v31 = Node;
  }

  if (!*(*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    if (*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      if (!*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
      {
        if (!*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
        {
          if (!*(*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
          {
            v32 = v44;
            outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause, v44, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if ((*(v43 + 48))(v32, 1, v31) == 1)
            {
              _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            }

            else
            {
              v33 = v32;
              v34 = v42;
              outlined init with take of PgQuery_OidList(v33, v42, type metadata accessor for PgQuery_Node);
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
              dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
              result = outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_Node);
              if (v4)
              {
                return result;
              }
            }

            if (*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
            {
              if (!*(*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
              {
                if (*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
                {
                  if (*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
                  {
                    v35 = v30 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel;
                    v36 = v41;
                    outlined init with copy of PgQuery_Alias?(v35, v41, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
                    if (v28(v36, 1, RangeVar) == 1)
                    {
                      return _s10Foundation4UUIDVSgWOhTm_0(v36, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
                    }

                    else
                    {
                      v37 = v36;
                      v38 = v40;
                      outlined init with take of PgQuery_OidList(v37, v40, type metadata accessor for PgQuery_RangeVar);
                      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
                      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
                      return outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_RangeVar);
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

BOOL closure #1 in static PgQuery_CreateTrigStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v86 = *(Node - 8);
  v87 = Node;
  MEMORY[0x1EEE9AC00](Node, v5);
  v83 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v84 = &v77 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v85, v10);
  v12 = &v77 - v11;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v14 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v77 - v24;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v27 = MEMORY[0x1EEE9AC00](v88, v26);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v77 - v31;
  if (*(a1 + 16) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v81 = v12;
  v82 = v17;
  v79 = v22;
  v80 = v29;
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v34 = *(v88 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v33, &v32[v34], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v35 = *(v14 + 48);
  if (v35(v32, 1, RangeVar) == 1)
  {
    v36 = v35(&v32[v34], 1, RangeVar);

    if (v36 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_11;
    }

LABEL_8:
    v37 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v38 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v39 = v32;
LABEL_9:
    _s10Foundation4UUIDVSgWOhTm_0(v39, v37, v38);
    goto LABEL_31;
  }

  outlined init with copy of PgQuery_Alias?(v32, v25, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v35(&v32[v34], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_8;
  }

  v40 = &v32[v34];
  v41 = v82;
  outlined init with take of PgQuery_OidList(v40, v82, type metadata accessor for PgQuery_RangeVar);

  v42 = specialized static PgQuery_RangeVar.== infix(_:_:)(v25, v41);
  outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v42 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v43 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname);
  v44 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v43, v44);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_31;
  }

  v46 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v47 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v48 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v46, v47);

  if ((v48 & 1) == 0)
  {
    goto LABEL_31;
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row))
  {
    goto LABEL_31;
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing))
  {
    goto LABEL_31;
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events))
  {
    goto LABEL_31;
  }

  v49 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);
  v50 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);

  v51 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v49, v50);

  if ((v51 & 1) == 0)
  {
    goto LABEL_31;
  }

  v78 = v35;
  v52 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause;
  v53 = *(v85 + 48);
  v54 = v81;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause, v81, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v52, v54 + v53, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v55 = v87;
  v56 = *(v86 + 48);
  if (v56(v54, 1, v87) != 1)
  {
    v57 = v84;
    outlined init with copy of PgQuery_Alias?(v54, v84, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v56(v54 + v53, 1, v55) != 1)
    {
      v58 = v54 + v53;
      v59 = v83;
      outlined init with take of PgQuery_OidList(v58, v83, type metadata accessor for PgQuery_Node);
      v60 = *(v55 + 20);
      v61 = *(v57 + v60);
      v62 = *(v59 + v60);
      if (v61 == v62 || (, , v63 = closure #1 in static PgQuery_Node.== infix(_:_:)(v61, v62), , , v63))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v64 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v64)
        {
          goto LABEL_27;
        }

LABEL_31:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
      v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_23;
    }

    outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
LABEL_22:
    v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_23:
    v39 = v54;
    goto LABEL_9;
  }

  if (v56(v54 + v53, 1, v55) != 1)
  {
    goto LABEL_22;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_27:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint))
  {
    goto LABEL_31;
  }

  v65 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels);
  v66 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels);

  v67 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v65, v66);

  if ((v67 & 1) == 0 || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred))
  {
    goto LABEL_31;
  }

  v69 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel;
  v70 = *(v88 + 48);
  v71 = v80;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel, v80, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v69, v71 + v70, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v72 = v78;
  if (v78(v71, 1, RangeVar) == 1)
  {

    if (v72(v71 + v70, 1, RangeVar) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v80, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      return 1;
    }

LABEL_39:
    _s10Foundation4UUIDVSgWOhTm_0(v80, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    return 0;
  }

  outlined init with copy of PgQuery_Alias?(v71, v79, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v72(v71 + v70, 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v79, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_39;
  }

  v73 = v80;
  v74 = v82;
  outlined init with take of PgQuery_OidList(&v80[v70], v82, type metadata accessor for PgQuery_RangeVar);
  v75 = v79;
  v76 = specialized static PgQuery_RangeVar.== infix(_:_:)(v79, v74);

  outlined destroy of PgQuery_OidList(v74, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v73, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  return (v76 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateTrigStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTrigStmt and conformance PgQuery_CreateTrigStmt, type metadata accessor for PgQuery_CreateTrigStmt, &protocol conformance descriptor for PgQuery_CreateTrigStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateTrigStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTrigStmt and conformance PgQuery_CreateTrigStmt, type metadata accessor for PgQuery_CreateTrigStmt, &protocol conformance descriptor for PgQuery_CreateTrigStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateTrigStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTrigStmt and conformance PgQuery_CreateTrigStmt, type metadata accessor for PgQuery_CreateTrigStmt, &protocol conformance descriptor for PgQuery_CreateTrigStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreatePLangStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
LABEL_15:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_15;
          case 2:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 3:
            goto LABEL_4;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreatePLangStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    v6 = *(v3 + 16);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      v8 = v4;
      if (*(*(v3 + 24) + 16))
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

      if (*(*(v3 + 32) + 16))
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
        if (v8)
        {
          return result;
        }

        v8 = 0;
      }

      if (*(*(v3 + 40) + 16))
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

      if (*(v3 + 48) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v9))
      {
        type metadata accessor for PgQuery_CreatePLangStmt(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreatePLangStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = v1;
  *(a1 + 32) = v1;
  *(a1 + 40) = v1;
  *(a1 + 48) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreatePLangStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePLangStmt and conformance PgQuery_CreatePLangStmt, type metadata accessor for PgQuery_CreatePLangStmt, &protocol conformance descriptor for PgQuery_CreatePLangStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreatePLangStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePLangStmt and conformance PgQuery_CreatePLangStmt, type metadata accessor for PgQuery_CreatePLangStmt, &protocol conformance descriptor for PgQuery_CreatePLangStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreatePLangStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePLangStmt and conformance PgQuery_CreatePLangStmt, type metadata accessor for PgQuery_CreatePLangStmt, &protocol conformance descriptor for PgQuery_CreatePLangStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateRoleStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          lazy protocol witness table accessor for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateRoleStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      if (!*(v3[4] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for PgQuery_CreateRoleStmt(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateRoleStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateRoleStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRoleStmt and conformance PgQuery_CreateRoleStmt, type metadata accessor for PgQuery_CreateRoleStmt, &protocol conformance descriptor for PgQuery_CreateRoleStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateRoleStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRoleStmt and conformance PgQuery_CreateRoleStmt, type metadata accessor for PgQuery_CreateRoleStmt, &protocol conformance descriptor for PgQuery_CreateRoleStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateRoleStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRoleStmt and conformance PgQuery_CreateRoleStmt, type metadata accessor for PgQuery_CreateRoleStmt, &protocol conformance descriptor for PgQuery_CreateRoleStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterRoleStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 1:
          type metadata accessor for PgQuery_AlterRoleStmt(0);
          type metadata accessor for PgQuery_RoleSpec(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterRoleStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v9 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterRoleStmt = type metadata accessor for PgQuery_AlterRoleStmt(0);
  v18 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterRoleStmt + 28), v7, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v9 + 48))(v7, 1, RoleSpec) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v13 = v20;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v12, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
    v13 = v20;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
    if (v13)
    {
      return result;
    }
  }

  v15 = v18;
  if (!*(*v18 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v13))
  {
    if (!*(v15 + 8))
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (!v13)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterRoleStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v6 = *(*(RoleSpec - 8) + 56);

  return v6(a2 + v4, 1, 1, RoleSpec);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterRoleStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleStmt and conformance PgQuery_AlterRoleStmt, type metadata accessor for PgQuery_AlterRoleStmt, &protocol conformance descriptor for PgQuery_AlterRoleStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterRoleStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleStmt and conformance PgQuery_AlterRoleStmt, type metadata accessor for PgQuery_AlterRoleStmt, &protocol conformance descriptor for PgQuery_AlterRoleStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterRoleStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleStmt and conformance PgQuery_AlterRoleStmt, type metadata accessor for PgQuery_AlterRoleStmt, &protocol conformance descriptor for PgQuery_AlterRoleStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropRoleStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropRoleStmt and conformance PgQuery_DropRoleStmt, type metadata accessor for PgQuery_DropRoleStmt, &protocol conformance descriptor for PgQuery_DropRoleStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropRoleStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropRoleStmt and conformance PgQuery_DropRoleStmt, type metadata accessor for PgQuery_DropRoleStmt, &protocol conformance descriptor for PgQuery_DropRoleStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropRoleStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropRoleStmt and conformance PgQuery_DropRoleStmt, type metadata accessor for PgQuery_DropRoleStmt, &protocol conformance descriptor for PgQuery_DropRoleStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_LockStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockStmt and conformance PgQuery_LockStmt, type metadata accessor for PgQuery_LockStmt, &protocol conformance descriptor for PgQuery_LockStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_LockStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockStmt and conformance PgQuery_LockStmt, type metadata accessor for PgQuery_LockStmt, &protocol conformance descriptor for PgQuery_LockStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_LockStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockStmt and conformance PgQuery_LockStmt, type metadata accessor for PgQuery_LockStmt, &protocol conformance descriptor for PgQuery_LockStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DropRoleStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
  {
    if (v4[8] != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
    {
      a4(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ConstraintsSetStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConstraintsSetStmt and conformance PgQuery_ConstraintsSetStmt, type metadata accessor for PgQuery_ConstraintsSetStmt, &protocol conformance descriptor for PgQuery_ConstraintsSetStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ConstraintsSetStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConstraintsSetStmt and conformance PgQuery_ConstraintsSetStmt, type metadata accessor for PgQuery_ConstraintsSetStmt, &protocol conformance descriptor for PgQuery_ConstraintsSetStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ConstraintsSetStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConstraintsSetStmt and conformance PgQuery_ConstraintsSetStmt, type metadata accessor for PgQuery_ConstraintsSetStmt, &protocol conformance descriptor for PgQuery_ConstraintsSetStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_DropRoleStmt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_ReindexStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          lazy protocol witness table accessor for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 2)
        {
          type metadata accessor for PgQuery_ReindexStmt(0);
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 4:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_ReindexStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - v8;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v11 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3)
  {
    v15 = *(v3 + 8);
    v20 = *v3;
    v21 = v15;
    lazy protocol witness table accessor for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  ReindexStmt = type metadata accessor for PgQuery_ReindexStmt(0);
  outlined init with copy of PgQuery_Alias?(v3 + *(ReindexStmt + 36), v9, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v11 + 48))(v9, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v17 = v5;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v9, v14, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v17 = v5;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_RangeVar);
    if (v5)
    {
      return result;
    }
  }

  v18 = v3[3];
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v19 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v17))
  {
    if (!*(v3 + 8) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v17))
    {
      if (*(v3 + 36) != 1)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }

      result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      if (!v17)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_ReindexStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 36) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 36);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v6 = *(*(RangeVar - 8) + 56);

  return v6(a2 + v4, 1, 1, RangeVar);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ReindexStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReindexStmt and conformance PgQuery_ReindexStmt, type metadata accessor for PgQuery_ReindexStmt, &protocol conformance descriptor for PgQuery_ReindexStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ReindexStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReindexStmt and conformance PgQuery_ReindexStmt, type metadata accessor for PgQuery_ReindexStmt, &protocol conformance descriptor for PgQuery_ReindexStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ReindexStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReindexStmt and conformance PgQuery_ReindexStmt, type metadata accessor for PgQuery_ReindexStmt, &protocol conformance descriptor for PgQuery_ReindexStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CheckPointStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CheckPointStmt and conformance PgQuery_CheckPointStmt, type metadata accessor for PgQuery_CheckPointStmt, &protocol conformance descriptor for PgQuery_CheckPointStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CheckPointStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CheckPointStmt and conformance PgQuery_CheckPointStmt, type metadata accessor for PgQuery_CheckPointStmt, &protocol conformance descriptor for PgQuery_CheckPointStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CheckPointStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CheckPointStmt and conformance PgQuery_CheckPointStmt, type metadata accessor for PgQuery_CheckPointStmt, &protocol conformance descriptor for PgQuery_CheckPointStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateSchemaStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for PgQuery_CreateSchemaStmt(0);
        type metadata accessor for PgQuery_RoleSpec(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateSchemaStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v19 - v8;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v11 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 8);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  SchemaStmt = type metadata accessor for PgQuery_CreateSchemaStmt(0);
  outlined init with copy of PgQuery_Alias?(v3 + *(SchemaStmt + 32), v9, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v11 + 48))(v9, 1, RoleSpec) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v18 = v5;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v9, v14, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
    v18 = v5;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_RoleSpec);
    if (v5)
    {
      return result;
    }
  }

  if (!*(*(v3 + 16) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v18))
  {
    if (*(v3 + 24) != 1)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (!v18)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateSchemaStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 32);
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v6 = *(*(RoleSpec - 8) + 56);

  return v6(a2 + v4, 1, 1, RoleSpec);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateSchemaStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSchemaStmt and conformance PgQuery_CreateSchemaStmt, type metadata accessor for PgQuery_CreateSchemaStmt, &protocol conformance descriptor for PgQuery_CreateSchemaStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateSchemaStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSchemaStmt and conformance PgQuery_CreateSchemaStmt, type metadata accessor for PgQuery_CreateSchemaStmt, &protocol conformance descriptor for PgQuery_CreateSchemaStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateSchemaStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSchemaStmt and conformance PgQuery_CreateSchemaStmt, type metadata accessor for PgQuery_CreateSchemaStmt, &protocol conformance descriptor for PgQuery_CreateSchemaStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterDatabaseStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseStmt and conformance PgQuery_AlterDatabaseStmt, type metadata accessor for PgQuery_AlterDatabaseStmt, &protocol conformance descriptor for PgQuery_AlterDatabaseStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterDatabaseStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseStmt and conformance PgQuery_AlterDatabaseStmt, type metadata accessor for PgQuery_AlterDatabaseStmt, &protocol conformance descriptor for PgQuery_AlterDatabaseStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterDatabaseStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseStmt and conformance PgQuery_AlterDatabaseStmt, type metadata accessor for PgQuery_AlterDatabaseStmt, &protocol conformance descriptor for PgQuery_AlterDatabaseStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterDatabaseSetStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 2)
      {
        type metadata accessor for PgQuery_AlterDatabaseSetStmt(0);
        type metadata accessor for PgQuery_VariableSetStmt(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterDatabaseSetStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - v9;
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v12 = *(VariableSetStmt - 8);
  MEMORY[0x1EEE9AC00](VariableSetStmt, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v3[1];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v21 = a2;
    v5 = 0;
  }

  else
  {
    v21 = a2;
  }

  AlterDatabaseSetStmt = type metadata accessor for PgQuery_AlterDatabaseSetStmt(0);
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterDatabaseSetStmt + 24), v10, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  if ((*(v12 + 48))(v10, 1, VariableSetStmt) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v15, type metadata accessor for PgQuery_VariableSetStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_VariableSetStmt);
    if (v5)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterDatabaseSetStmt@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v6 = *(*(VariableSetStmt - 8) + 56);

  return v6(&a2[v4], 1, 1, VariableSetStmt);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterDatabaseSetStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseSetStmt and conformance PgQuery_AlterDatabaseSetStmt, type metadata accessor for PgQuery_AlterDatabaseSetStmt, &protocol conformance descriptor for PgQuery_AlterDatabaseSetStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterDatabaseSetStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseSetStmt and conformance PgQuery_AlterDatabaseSetStmt, type metadata accessor for PgQuery_AlterDatabaseSetStmt, &protocol conformance descriptor for PgQuery_AlterDatabaseSetStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterDatabaseSetStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseSetStmt and conformance PgQuery_AlterDatabaseSetStmt, type metadata accessor for PgQuery_AlterDatabaseSetStmt, &protocol conformance descriptor for PgQuery_AlterDatabaseSetStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterRoleSetStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for PgQuery_AlterRoleSetStmt(0);
        type metadata accessor for PgQuery_RoleSpec(0);
        v7 = type metadata accessor for PgQuery_RoleSpec;
        v8 = &protocol conformance descriptor for PgQuery_RoleSpec;
        v9 = &lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec;
LABEL_12:
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for PgQuery_AlterRoleSetStmt(0);
    type metadata accessor for PgQuery_VariableSetStmt(0);
    v7 = type metadata accessor for PgQuery_VariableSetStmt;
    v8 = &protocol conformance descriptor for PgQuery_VariableSetStmt;
    v9 = &lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt;
    goto LABEL_12;
  }

  return result;
}

uint64_t PgQuery_AlterRoleSetStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  v34 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v33 = &v29 - v7;
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v31 = *(VariableSetStmt - 8);
  v32 = VariableSetStmt;
  MEMORY[0x1EEE9AC00](VariableSetStmt, v9);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v29 - v13;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v16 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterRoleSetStmt = type metadata accessor for PgQuery_AlterRoleSetStmt(0);
  outlined init with copy of PgQuery_Alias?(v4 + *(AlterRoleSetStmt + 24), v14, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v16 + 48))(v14, 1, RoleSpec) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v21 = v37;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v19, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
    v21 = v37;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RoleSpec);
    if (v21)
    {
      return result;
    }
  }

  v23 = v4[1];
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    v25 = v33;
    if (v21)
    {
      return result;
    }

    v26 = 0;
  }

  else
  {
    v26 = v21;
    v25 = v33;
  }

  outlined init with copy of PgQuery_Alias?(v4 + *(AlterRoleSetStmt + 28), v25, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  if ((*(v31 + 48))(v25, 1, v32) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  }

  else
  {
    v27 = v25;
    v28 = v30;
    outlined init with take of PgQuery_OidList(v27, v30, type metadata accessor for PgQuery_VariableSetStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_VariableSetStmt);
    if (v26)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterRoleSetStmt@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  (*(*(RoleSpec - 8) + 56))(&a2[v4], 1, 1, RoleSpec);
  v6 = *(a1 + 28);
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v8 = *(*(VariableSetStmt - 8) + 56);

  return v8(&a2[v6], 1, 1, VariableSetStmt);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterRoleSetStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleSetStmt and conformance PgQuery_AlterRoleSetStmt, type metadata accessor for PgQuery_AlterRoleSetStmt, &protocol conformance descriptor for PgQuery_AlterRoleSetStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterRoleSetStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleSetStmt and conformance PgQuery_AlterRoleSetStmt, type metadata accessor for PgQuery_AlterRoleSetStmt, &protocol conformance descriptor for PgQuery_AlterRoleSetStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterRoleSetStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleSetStmt and conformance PgQuery_AlterRoleSetStmt, type metadata accessor for PgQuery_AlterRoleSetStmt, &protocol conformance descriptor for PgQuery_AlterRoleSetStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateConversionStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          goto LABEL_15;
        }

        if (result == 2)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_4;
          case 4:
LABEL_15:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateConversionStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    v6 = *(v3 + 16);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      v8 = *(v3 + 32);
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
      {
        if (!*(*(v3 + 40) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
        {
          if (*(v3 + 48) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
          {
            type metadata accessor for PgQuery_CreateConversionStmt(0);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateConversionStmt@<X0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = v1;
  *(a1 + 48) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateConversionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateConversionStmt and conformance PgQuery_CreateConversionStmt, type metadata accessor for PgQuery_CreateConversionStmt, &protocol conformance descriptor for PgQuery_CreateConversionStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateConversionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateConversionStmt and conformance PgQuery_CreateConversionStmt, type metadata accessor for PgQuery_CreateConversionStmt, &protocol conformance descriptor for PgQuery_CreateConversionStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateConversionStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateConversionStmt and conformance PgQuery_CreateConversionStmt, type metadata accessor for PgQuery_CreateConversionStmt, &protocol conformance descriptor for PgQuery_CreateConversionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateCastStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sourcetype, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__func, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_CreateCastStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_ObjectWithArgs?, type metadata accessor for PgQuery_ObjectWithArgs, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_CreateCastStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        if (result == 1 || result == 2)
        {
          type metadata accessor for PgQuery_TypeName(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
          goto LABEL_17;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            type metadata accessor for PgQuery_ObjectWithArgs(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);
LABEL_17:
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 4:
            lazy protocol witness table accessor for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CreateCastStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v38 = &v35 - v7;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v37 = *(ObjectWithArgs - 8);
  MEMORY[0x1EEE9AC00](ObjectWithArgs, v8);
  v35 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v35 - v16;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v19 = *(TypeName - 8);
  v21 = MEMORY[0x1EEE9AC00](TypeName, v20);
  v36 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v35 - v24;
  v45 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sourcetype, v17, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v26 = *(v19 + 48);
  if (v26(v17, 1, TypeName) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v17, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v27 = v40;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v17, v25, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    v28 = v40;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v27 = v28;
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_TypeName);
    if (v28)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v45 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype, v14, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v26(v14, 1, TypeName) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    v30 = v36;
    outlined init with take of PgQuery_OidList(v14, v36, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_TypeName);
    if (v27)
    {
      return result;
    }
  }

  v31 = v38;
  outlined init with copy of PgQuery_Alias?(v45 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__func, v38, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((*(v37 + 48))(v31, 1, ObjectWithArgs) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  }

  else
  {
    v32 = v31;
    v33 = v35;
    outlined init with take of PgQuery_OidList(v32, v35, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v27)
    {
      return result;
    }
  }

  if (!*(v45 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context) || (v34 = *(v45 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context + 8), v43 = *(v45 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context), v44 = v34, lazy protocol witness table accessor for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v27))
  {
    if (*(v45 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inout) == 1)
    {
      return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_CreateCastStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v70 = *(ObjectWithArgs - 8);
  v71 = ObjectWithArgs;
  MEMORY[0x1EEE9AC00](ObjectWithArgs, v4);
  v67 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v68 = &v66 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v69, v9);
  v72 = &v66 - v10;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v12 = *(TypeName - 8);
  MEMORY[0x1EEE9AC00](TypeName, v13);
  v74 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v73 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v66 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v76 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v29 = &v66 - v28;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sourcetype;
  v75 = v27;
  v31 = *(v27 + 48);
  v32 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sourcetype, &v66 - v28, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined init with copy of PgQuery_Alias?(v77 + v30, &v29[v31], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v33 = *(v12 + 48);
  if (v33(v29, 1, TypeName) == 1)
  {
    v34 = v33(&v29[v31], 1, TypeName);

    if (v34 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v29, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      v35 = a1;
      goto LABEL_8;
    }

LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v29, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
    goto LABEL_33;
  }

  outlined init with copy of PgQuery_Alias?(v29, v21, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v33(&v29[v31], 1, TypeName) == 1)
  {

    outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_TypeName);
    goto LABEL_6;
  }

  v36 = v74;
  outlined init with take of PgQuery_OidList(&v29[v31], v74, type metadata accessor for PgQuery_TypeName);
  v35 = v32;

  v37 = specialized static PgQuery_TypeName.== infix(_:_:)(v21, v36);
  outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_TypeName);
  outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_TypeName);
  _s10Foundation4UUIDVSgWOhTm_0(v29, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((v37 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_8:
  v38 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype;
  v39 = *(v75 + 48);
  v40 = v35;
  v41 = v35 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype;
  v42 = v76;
  outlined init with copy of PgQuery_Alias?(v41, v76, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined init with copy of PgQuery_Alias?(v77 + v38, v42 + v39, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v33(v42, 1, TypeName) == 1)
  {
    v43 = v33((v42 + v39), 1, TypeName);
    v44 = v40;
    if (v43 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v42, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      goto LABEL_16;
    }

LABEL_13:
    v46 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v47 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    v48 = v42;
LABEL_32:
    _s10Foundation4UUIDVSgWOhTm_0(v48, v46, v47);
    goto LABEL_33;
  }

  v45 = v73;
  outlined init with copy of PgQuery_Alias?(v42, v73, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v33((v42 + v39), 1, TypeName) == 1)
  {
    outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_TypeName);
    goto LABEL_13;
  }

  v49 = v74;
  outlined init with take of PgQuery_OidList(v42 + v39, v74, type metadata accessor for PgQuery_TypeName);
  v50 = specialized static PgQuery_TypeName.== infix(_:_:)(v45, v49);
  outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_TypeName);
  outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_TypeName);
  _s10Foundation4UUIDVSgWOhTm_0(v42, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v44 = v40;
  if ((v50 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_16:
  v51 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__func;
  v52 = *(v69 + 48);
  v53 = v72;
  outlined init with copy of PgQuery_Alias?(v44 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__func, v72, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  outlined init with copy of PgQuery_Alias?(v77 + v51, v53 + v52, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v54 = v71;
  v55 = *(v70 + 48);
  if (v55(v53, 1, v71) == 1)
  {
    if (v55(v53 + v52, 1, v54) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v53, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  v58 = v68;
  outlined init with copy of PgQuery_Alias?(v53, v68, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if (v55(v53 + v52, 1, v54) == 1)
  {
    outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_26:
    v46 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd;
    v47 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR;
LABEL_31:
    v48 = v53;
    goto LABEL_32;
  }

  v59 = v53 + v52;
  v60 = v67;
  outlined init with take of PgQuery_OidList(v59, v67, type metadata accessor for PgQuery_ObjectWithArgs);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v58, *v60) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v58 + 8), *(v60 + 8)) & 1) == 0 || *(v58 + 16) != *(v60 + 16))
  {
    outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_ObjectWithArgs);
    outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_ObjectWithArgs);
    v46 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd;
    v47 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR;
    goto LABEL_31;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v65 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_ObjectWithArgs);
  outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_ObjectWithArgs);
  _s10Foundation4UUIDVSgWOhTm_0(v53, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((v65 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_19:
  v56 = *(v44 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context);
  v57 = *(v77 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context);
  if (*(v77 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context + 8) != 1)
  {
    if (v56 != v57)
    {
      goto LABEL_33;
    }

LABEL_36:
    v63 = *(v44 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inout);

    v64 = *(v77 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inout);

    v61 = v63 ^ v64 ^ 1;
    return v61 & 1;
  }

  if (v57 > 1)
  {
    if (v57 == 2)
    {
      if (v56 != 2)
      {
        goto LABEL_33;
      }
    }

    else if (v56 != 3)
    {
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  if (v57)
  {
    if (v56 != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  if (!v56)
  {
    goto LABEL_36;
  }

LABEL_33:

  v61 = 0;
  return v61 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateCastStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateCastStmt and conformance PgQuery_CreateCastStmt, type metadata accessor for PgQuery_CreateCastStmt, &protocol conformance descriptor for PgQuery_CreateCastStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateCastStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateCastStmt and conformance PgQuery_CreateCastStmt, type metadata accessor for PgQuery_CreateCastStmt, &protocol conformance descriptor for PgQuery_CreateCastStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateCastStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateCastStmt and conformance PgQuery_CreateCastStmt, type metadata accessor for PgQuery_CreateCastStmt, &protocol conformance descriptor for PgQuery_CreateCastStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateOpClassStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
            type metadata accessor for PgQuery_CreateOpClassStmt(0);
            type metadata accessor for PgQuery_TypeName(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 5:
            goto LABEL_4;
          case 6:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
        }
      }

      else
      {
        if (result == 1 || result == 2)
        {
LABEL_4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 3)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateOpClassStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - v9;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v20 = *(TypeName - 8);
  v21 = TypeName;
  MEMORY[0x1EEE9AC00](TypeName, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v3 + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v22 = a1;
    v5 = 0;
  }

  else
  {
    v22 = a1;
  }

  if (*(*(v3 + 8) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v16 = v5;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v16 = v5;
  }

  v17 = *(v3 + 24);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v16))
  {
    OpClassStmt = type metadata accessor for PgQuery_CreateOpClassStmt(0);
    outlined init with copy of PgQuery_Alias?(v3 + *(OpClassStmt + 40), v10, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    if ((*(v20 + 48))(v10, 1, v21) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v10, v14, type metadata accessor for PgQuery_TypeName);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_TypeName);
      if (v16)
      {
        return result;
      }
    }

    if (!*(*(v3 + 32) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v16))
    {
      if (*(v3 + 40) != 1)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }

      result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      if (!v16)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateOpClassStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = v4;
  *(a2 + 40) = 0;
  UnknownStorage.init()();
  v5 = *(a1 + 40);
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v7 = *(*(TypeName - 8) + 56);

  return v7(a2 + v5, 1, 1, TypeName);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateOpClassStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassStmt and conformance PgQuery_CreateOpClassStmt, type metadata accessor for PgQuery_CreateOpClassStmt, &protocol conformance descriptor for PgQuery_CreateOpClassStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateOpClassStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassStmt and conformance PgQuery_CreateOpClassStmt, type metadata accessor for PgQuery_CreateOpClassStmt, &protocol conformance descriptor for PgQuery_CreateOpClassStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateOpClassStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassStmt and conformance PgQuery_CreateOpClassStmt, type metadata accessor for PgQuery_CreateOpClassStmt, &protocol conformance descriptor for PgQuery_CreateOpClassStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateOpFamilyStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
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

uint64_t PgQuery_CreateOpFamilyStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    v6 = v3[2];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for PgQuery_CreateOpFamilyStmt(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateOpFamilyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpFamilyStmt and conformance PgQuery_CreateOpFamilyStmt, type metadata accessor for PgQuery_CreateOpFamilyStmt, &protocol conformance descriptor for PgQuery_CreateOpFamilyStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateOpFamilyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpFamilyStmt and conformance PgQuery_CreateOpFamilyStmt, type metadata accessor for PgQuery_CreateOpFamilyStmt, &protocol conformance descriptor for PgQuery_CreateOpFamilyStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateOpFamilyStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpFamilyStmt and conformance PgQuery_CreateOpFamilyStmt, type metadata accessor for PgQuery_CreateOpFamilyStmt, &protocol conformance descriptor for PgQuery_CreateOpFamilyStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_CreateOpFamilyStmt(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_AlterOpFamilyStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
LABEL_13:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_13;
        }

        if (result == 2)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterOpFamilyStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    v6 = *(v3 + 16);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      if (*(v3 + 24) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
      {
        if (!*(*(v3 + 32) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
        {
          type metadata accessor for PgQuery_AlterOpFamilyStmt(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterOpFamilyStmt@<X0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = v1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterOpFamilyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOpFamilyStmt and conformance PgQuery_AlterOpFamilyStmt, type metadata accessor for PgQuery_AlterOpFamilyStmt, &protocol conformance descriptor for PgQuery_AlterOpFamilyStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterOpFamilyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOpFamilyStmt and conformance PgQuery_AlterOpFamilyStmt, type metadata accessor for PgQuery_AlterOpFamilyStmt, &protocol conformance descriptor for PgQuery_AlterOpFamilyStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterOpFamilyStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOpFamilyStmt and conformance PgQuery_AlterOpFamilyStmt, type metadata accessor for PgQuery_AlterOpFamilyStmt, &protocol conformance descriptor for PgQuery_AlterOpFamilyStmt);

  return Message.hash(into:)();
}

char *PgQuery_PrepareStmt._StorageClass.init(copying:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0xE000000000000000;
  *(v1 + 4) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(&v1[v7], 1, 1, Node);
  v9 = a1[3];
  *(v1 + 2) = a1[2];
  *(v1 + 3) = v9;
  *(v1 + 4) = a1[4];
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;

  outlined init with copy of PgQuery_Alias?(a1 + v10, v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v6, &v1[v7], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return v1;
}

uint64_t PgQuery_PrepareStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(type metadata accessor for PgQuery_PrepareStmt(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_PrepareStmt._StorageClass(0);
    swift_allocObject();
    *(v3 + v5) = PgQuery_PrepareStmt._StorageClass.init(copying:)(v7);
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 2:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 3:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_PrepareStmt.traverse<A>(visitor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v12);
  v19 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v11 + 48))(v9, 1, Node) == 1)
      {
        return _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v17 = v19;
        outlined init with take of PgQuery_OidList(v9, v19, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        return outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_PrepareStmt.== infix(_:_:)(void *a1, void *a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v32 - v15;
  if (*(a1 + 1) != *(a2 + 1) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v33 = v8;
  v17 = a1[4];
  v18 = a2[4];

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v17, v18);

  if ((NodeV_Tt1g5 & 1) == 0)
  {

    return 0;
  }

  v20 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v21 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v20, &v16[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v5 + 48);
  if (v22(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v22(&v16[v21], 1, Node) == 1)
    {

      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
      goto LABEL_10;
    }

    v26 = v33;
    outlined init with take of PgQuery_OidList(&v16[v21], v33, type metadata accessor for PgQuery_Node);
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
        goto LABEL_11;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    return (v31 & 1) != 0;
  }

  if (v22(&v16[v21], 1, Node) != 1)
  {
LABEL_10:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_11:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
    return 0;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_PrepareStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PrepareStmt and conformance PgQuery_PrepareStmt, type metadata accessor for PgQuery_PrepareStmt, &protocol conformance descriptor for PgQuery_PrepareStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_PrepareStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PrepareStmt and conformance PgQuery_PrepareStmt, type metadata accessor for PgQuery_PrepareStmt, &protocol conformance descriptor for PgQuery_PrepareStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_PrepareStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PrepareStmt and conformance PgQuery_PrepareStmt, type metadata accessor for PgQuery_PrepareStmt, &protocol conformance descriptor for PgQuery_PrepareStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ExecuteStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExecuteStmt and conformance PgQuery_ExecuteStmt, type metadata accessor for PgQuery_ExecuteStmt, &protocol conformance descriptor for PgQuery_ExecuteStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ExecuteStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExecuteStmt and conformance PgQuery_ExecuteStmt, type metadata accessor for PgQuery_ExecuteStmt, &protocol conformance descriptor for PgQuery_ExecuteStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ExecuteStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExecuteStmt and conformance PgQuery_ExecuteStmt, type metadata accessor for PgQuery_ExecuteStmt, &protocol conformance descriptor for PgQuery_ExecuteStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DeallocateStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeallocateStmt and conformance PgQuery_DeallocateStmt, type metadata accessor for PgQuery_DeallocateStmt, &protocol conformance descriptor for PgQuery_DeallocateStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DeallocateStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeallocateStmt and conformance PgQuery_DeallocateStmt, type metadata accessor for PgQuery_DeallocateStmt, &protocol conformance descriptor for PgQuery_DeallocateStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DeallocateStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeallocateStmt and conformance PgQuery_DeallocateStmt, type metadata accessor for PgQuery_DeallocateStmt, &protocol conformance descriptor for PgQuery_DeallocateStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_Float(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_DeclareCursorStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for PgQuery_DeclareCursorStmt(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_DeclareCursorStmt._StorageClass(0);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0xE000000000000000;
    *(v11 + 32) = 0;
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
    v19 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v11 + v12, 1, 1, Node);
    v14 = *(v10 + 24);
    *(v11 + 16) = *(v10 + 16);
    *(v11 + 24) = v14;
    *(v11 + 32) = *(v10 + 32);
    outlined init with copy of PgQuery_Alias?(v10 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

    outlined assign with take of PgQuery_Node?(v7, v11 + v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v3 + v8) = v11;
  }

  v15 = v20;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v15)
  {
    while ((v17 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 3:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_DeclareCursorStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v17 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 24);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
  {
    if (!*(a1 + 32) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v10 + 48))(v9, 1, Node) == 1)
      {
        return _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        outlined init with take of PgQuery_OidList(v9, v13, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        return outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_DeclareCursorStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v29 - v15;
  if (*(a1 + 16) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v30 = v8;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v19(&v16[v18], 1, Node) != 1)
    {
      v23 = v30;
      outlined init with take of PgQuery_OidList(&v16[v18], v30, type metadata accessor for PgQuery_Node);
      v24 = *(Node + 20);
      v25 = *&v12[v24];
      v26 = *(v23 + v24);
      if (v25 == v26 || (, , v27 = closure #1 in static PgQuery_Node.== infix(_:_:)(v25, v26), , , v27))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        return (v28 & 1) != 0;
      }

      outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_10:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v20, v21);
      return 0;
    }

    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
LABEL_9:
    v20 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v21 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_10;
  }

  if (v19(&v16[v18], 1, Node) != 1)
  {
    goto LABEL_9;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DeclareCursorStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeclareCursorStmt and conformance PgQuery_DeclareCursorStmt, type metadata accessor for PgQuery_DeclareCursorStmt, &protocol conformance descriptor for PgQuery_DeclareCursorStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DeclareCursorStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeclareCursorStmt and conformance PgQuery_DeclareCursorStmt, type metadata accessor for PgQuery_DeclareCursorStmt, &protocol conformance descriptor for PgQuery_DeclareCursorStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DeclareCursorStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeclareCursorStmt and conformance PgQuery_DeclareCursorStmt, type metadata accessor for PgQuery_DeclareCursorStmt, &protocol conformance descriptor for PgQuery_DeclareCursorStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateTableSpaceStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
LABEL_4:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2)
        {
          type metadata accessor for PgQuery_CreateTableSpaceStmt(0);
          type metadata accessor for PgQuery_RoleSpec(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateTableSpaceStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v21 - v8;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v11 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v3[1];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  TableSpaceStmt = type metadata accessor for PgQuery_CreateTableSpaceStmt(0);
  outlined init with copy of PgQuery_Alias?(v3 + *(TableSpaceStmt + 32), v9, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v11 + 48))(v9, 1, RoleSpec) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v18 = v5;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v9, v14, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
    v18 = v5;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_RoleSpec);
    if (v5)
    {
      return result;
    }
  }

  v19 = v3[3];
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v20 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v18))
  {
    if (!*(v3[4] + 16))
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

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateTableSpaceStmt@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = MEMORY[0x1E69E7CC0];
  UnknownStorage.init()();
  v4 = *(a1 + 32);
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v6 = *(*(RoleSpec - 8) + 56);

  return v6(&a2[v4], 1, 1, RoleSpec);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateTableSpaceStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableSpaceStmt and conformance PgQuery_CreateTableSpaceStmt, type metadata accessor for PgQuery_CreateTableSpaceStmt, &protocol conformance descriptor for PgQuery_CreateTableSpaceStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateTableSpaceStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableSpaceStmt and conformance PgQuery_CreateTableSpaceStmt, type metadata accessor for PgQuery_CreateTableSpaceStmt, &protocol conformance descriptor for PgQuery_CreateTableSpaceStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateTableSpaceStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableSpaceStmt and conformance PgQuery_CreateTableSpaceStmt, type metadata accessor for PgQuery_CreateTableSpaceStmt, &protocol conformance descriptor for PgQuery_CreateTableSpaceStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DropTableSpaceStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_DropTableSpaceStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for PgQuery_DropTableSpaceStmt(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_DropTableSpaceStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropTableSpaceStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropTableSpaceStmt and conformance PgQuery_DropTableSpaceStmt, type metadata accessor for PgQuery_DropTableSpaceStmt, &protocol conformance descriptor for PgQuery_DropTableSpaceStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropTableSpaceStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropTableSpaceStmt and conformance PgQuery_DropTableSpaceStmt, type metadata accessor for PgQuery_DropTableSpaceStmt, &protocol conformance descriptor for PgQuery_DropTableSpaceStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropTableSpaceStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropTableSpaceStmt and conformance PgQuery_DropTableSpaceStmt, type metadata accessor for PgQuery_DropTableSpaceStmt, &protocol conformance descriptor for PgQuery_DropTableSpaceStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_DropTableSpaceStmt(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_AlterObjectDependsStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_AlterObjectDependsStmt._StorageClass(uint64_t a1)
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

uint64_t closure #1 in PgQuery_AlterObjectDependsStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
          lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
LABEL_16:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 3 || result == 4)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          goto LABEL_16;
        }

        if (result == 5)
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

uint64_t closure #1 in PgQuery_AlterObjectDependsStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v49 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v48 = &v45 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(Node - 8);
  v50 = Node;
  v51 = v12;
  v14 = MEMORY[0x1EEE9AC00](Node, v13);
  v46 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v47 = &v45 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v45 - v20;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v23 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v24);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 16);
  v28 = a1;
  v29 = *(a1 + 24);
  destructiveProjectEnumData for StorableValue();
  if (v30)
  {
    v53 = v27;
    v54 = v29;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v31 = v55;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v31)
    {
      return result;
    }

    v55 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v21, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v23 + 48))(v21, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v21, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v33 = v51;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v21, v26, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v34 = v55;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_RangeVar);
    v33 = v51;
    if (v34)
    {
      return result;
    }

    v55 = 0;
  }

  v35 = v48;
  outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v36 = *(v33 + 48);
  v37 = v50;
  v38 = v36(v35, 1, v50);
  v39 = v49;
  if (v38 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v52 = v28;
    v40 = v35;
    v41 = v47;
    outlined init with take of PgQuery_OidList(v40, v47, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v42 = v55;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
    if (v42)
    {
      return result;
    }

    v55 = 0;
    v28 = v52;
  }

  outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname, v39, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v36(v39, 1, v37) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v39, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v43 = v46;
    outlined init with take of PgQuery_OidList(v39, v46, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v44 = v55;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
    if (v44)
    {
      return result;
    }
  }

  if (*(v28 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__remove) == 1)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static PgQuery_AlterObjectDependsStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v86 = *(Node - 8);
  v87 = Node;
  v6 = MEMORY[0x1EEE9AC00](Node, v5);
  v79 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v81 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v80 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v84 = &v79 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = MEMORY[0x1EEE9AC00](v85, v16);
  v82 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v88 = &v79 - v20;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v22 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v23);
  v83 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v79 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v79 - v31;
  destructiveProjectEnumData for StorableValue();
  v34 = v33;
  destructiveProjectEnumData for StorableValue();
  if (v34 != v35)
  {
    goto LABEL_27;
  }

  v36 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v37 = *(v29 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v36, &v32[v37], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v38 = *(v22 + 48);
  if (v38(v32, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v32, v28, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v38(&v32[v37], 1, RangeVar) != 1)
    {
      v44 = v83;
      outlined init with take of PgQuery_OidList(&v32[v37], v83, type metadata accessor for PgQuery_RangeVar);
      v40 = a1;

      v45 = specialized static PgQuery_RangeVar.== infix(_:_:)(v28, v44);
      outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v45 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_9;
    }

    outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_RangeVar);
LABEL_7:
    v41 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v42 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v43 = v32;
LABEL_25:
    _s10Foundation4UUIDVSgWOhTm_0(v43, v41, v42);
    goto LABEL_26;
  }

  v39 = v38(&v32[v37], 1, RangeVar);

  v40 = a1;
  if (v39 != 1)
  {
    goto LABEL_7;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_9:
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v47 = v85;
  v48 = *(v85 + 48);
  v49 = v88;
  outlined init with copy of PgQuery_Alias?(v40 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v88, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v46, v49 + v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v50 = v87;
  v51 = *(v86 + 48);
  if (v51(v49, 1, v87) == 1)
  {
    if (v51(v49 + v48, 1, v50) != 1)
    {
LABEL_23:
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_24:
      v43 = v49;
      goto LABEL_25;
    }

    _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    goto LABEL_17;
  }

  v52 = v84;
  outlined init with copy of PgQuery_Alias?(v49, v84, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v51(v49 + v48, 1, v50) == 1)
  {
    v53 = v52;
LABEL_22:
    outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
    goto LABEL_23;
  }

  v54 = v49 + v48;
  v55 = v81;
  outlined init with take of PgQuery_OidList(v54, v81, type metadata accessor for PgQuery_Node);
  v56 = *(v50 + 20);
  v57 = *(v52 + v56);
  v58 = *(v55 + v56);
  if (v57 != v58)
  {

    v59 = closure #1 in static PgQuery_Node.== infix(_:_:)(v57, v58);

    if (!v59)
    {
      outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v84, type metadata accessor for PgQuery_Node);
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v43 = v88;
      goto LABEL_25;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v60 = v84;
  v61 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v88, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v61)
  {
LABEL_17:
    v62 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname;
    v63 = *(v47 + 48);
    v64 = v82;
    outlined init with copy of PgQuery_Alias?(v40 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname, v82, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v65 = a2 + v62;
    v49 = v64;
    outlined init with copy of PgQuery_Alias?(v65, v64 + v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v51(v64, 1, v50) == 1)
    {
      if (v51(v64 + v63, 1, v50) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v64, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_32:
        v77 = *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__remove);

        v78 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__remove);

        v68 = v77 ^ v78 ^ 1;
        return v68 & 1;
      }

      goto LABEL_23;
    }

    v66 = v64;
    v67 = v80;
    outlined init with copy of PgQuery_Alias?(v66, v80, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v51(v49 + v63, 1, v50) != 1)
    {
      v70 = v49 + v63;
      v71 = v79;
      outlined init with take of PgQuery_OidList(v70, v79, type metadata accessor for PgQuery_Node);
      v72 = *(v50 + 20);
      v73 = *(v67 + v72);
      v74 = *(v71 + v72);
      if (v73 == v74 || (, , v75 = closure #1 in static PgQuery_Node.== infix(_:_:)(v73, v74), , , v75))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v76 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v76)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }

      outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_24;
    }

    v53 = v67;
    goto LABEL_22;
  }

LABEL_26:

LABEL_27:
  v68 = 0;
  return v68 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterObjectDependsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectDependsStmt and conformance PgQuery_AlterObjectDependsStmt, type metadata accessor for PgQuery_AlterObjectDependsStmt, &protocol conformance descriptor for PgQuery_AlterObjectDependsStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterObjectDependsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectDependsStmt and conformance PgQuery_AlterObjectDependsStmt, type metadata accessor for PgQuery_AlterObjectDependsStmt, &protocol conformance descriptor for PgQuery_AlterObjectDependsStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterObjectDependsStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectDependsStmt and conformance PgQuery_AlterObjectDependsStmt, type metadata accessor for PgQuery_AlterObjectDependsStmt, &protocol conformance descriptor for PgQuery_AlterObjectDependsStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterObjectSchemaStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_AlterObjectSchemaStmt._StorageClass(uint64_t a1)
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

uint64_t closure #1 in PgQuery_AlterObjectSchemaStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
          goto LABEL_16;
        }

        lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 3:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_16:
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 4:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_AlterObjectSchemaStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v35 = &v32 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v34 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v8);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v32 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v15 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  v20 = a1;
  v21 = *(a1 + 24);
  destructiveProjectEnumData for StorableValue();
  if (v22)
  {
    v38 = v19;
    v39 = v21;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v23 = v40;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v23)
    {
      return result;
    }

    v40 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v20 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v15 + 48))(v13, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v18, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v25 = v40;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    if (v25)
    {
      return result;
    }

    v40 = 0;
  }

  v26 = v35;
  outlined init with copy of PgQuery_Alias?(v20 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v34 + 48))(v26, 1, Node) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v27 = v40;
  }

  else
  {
    v28 = v26;
    v29 = v33;
    outlined init with take of PgQuery_OidList(v28, v33, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v27 = v40;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_Node);
    if (v27)
    {
      return result;
    }
  }

  v30 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema + 8);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema) & 0xFFFFFFFFFFFFLL;
  }

  if (!v31 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v27))
  {
    if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) == 1)
    {
      return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_AlterObjectSchemaStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v57 = *(Node - 8);
  v58 = Node;
  MEMORY[0x1EEE9AC00](Node, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v54 = &v53 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v56, v11);
  v59 = &v53 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v14 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v15);
  v55 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v60 = &v53 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v53 - v22;
  destructiveProjectEnumData for StorableValue();
  v25 = v24;
  destructiveProjectEnumData for StorableValue();
  if (v25 != v26)
  {
    goto LABEL_17;
  }

  v53 = v7;
  v27 = a2;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v29 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(v27 + v28, &v23[v29], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v30 = *(v14 + 48);
  if (v30(v23, 1, RangeVar) != 1)
  {
    v32 = v60;
    outlined init with copy of PgQuery_Alias?(v23, v60, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v30(&v23[v29], 1, RangeVar) != 1)
    {
      v35 = v55;
      outlined init with take of PgQuery_OidList(&v23[v29], v55, type metadata accessor for PgQuery_RangeVar);

      v36 = specialized static PgQuery_RangeVar.== infix(_:_:)(v32, v35);
      outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v36 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_RangeVar);
LABEL_7:
    v33 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v34 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_15:
    _s10Foundation4UUIDVSgWOhTm_0(v23, v33, v34);
    goto LABEL_16;
  }

  v31 = v30(&v23[v29], 1, RangeVar);

  if (v31 != 1)
  {
    goto LABEL_7;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_9:
  v37 = OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v38 = *(v56 + 48);
  v23 = v59;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v27 + v37, &v23[v38], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v39 = v58;
  v40 = *(v57 + 48);
  if (v40(v23, 1, v58) == 1)
  {
    if (v40(&v23[v38], 1, v39) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  v41 = v54;
  outlined init with copy of PgQuery_Alias?(v23, v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v40(&v23[v38], 1, v39) == 1)
  {
    outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
LABEL_14:
    v33 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_15;
  }

  v44 = v53;
  outlined init with take of PgQuery_OidList(&v23[v38], v53, type metadata accessor for PgQuery_Node);
  v45 = *(v39 + 20);
  v46 = *(v41 + v45);
  v47 = *(v44 + v45);
  if (v46 != v47)
  {

    v48 = closure #1 in static PgQuery_Node.== infix(_:_:)(v46, v47);

    if (!v48)
    {
      outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
      v33 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v34 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_15;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v49 = v53;
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v50)
  {
LABEL_22:
    if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema) == *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema + 8) == *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v51 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

      v52 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

      v42 = v51 ^ v52 ^ 1;
      return v42 & 1;
    }
  }

LABEL_16:

LABEL_17:
  v42 = 0;
  return v42 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterObjectSchemaStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectSchemaStmt and conformance PgQuery_AlterObjectSchemaStmt, type metadata accessor for PgQuery_AlterObjectSchemaStmt, &protocol conformance descriptor for PgQuery_AlterObjectSchemaStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterObjectSchemaStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectSchemaStmt and conformance PgQuery_AlterObjectSchemaStmt, type metadata accessor for PgQuery_AlterObjectSchemaStmt, &protocol conformance descriptor for PgQuery_AlterObjectSchemaStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterObjectSchemaStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectSchemaStmt and conformance PgQuery_AlterObjectSchemaStmt, type metadata accessor for PgQuery_AlterObjectSchemaStmt, &protocol conformance descriptor for PgQuery_AlterObjectSchemaStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterOwnerStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v7, 1, 1, RangeVar);
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v9, 1, 1, Node);
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  (*(*(RoleSpec - 8) + 56))(v1 + v11, 1, 1, RoleSpec);
  v13 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v13;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v1 + v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, v6, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);

  outlined assign with take of PgQuery_Node?(v6, v1 + v11, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  return v1;
}

uint64_t PgQuery_AlterOwnerStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_AlterOwnerStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RoleSpec?, type metadata accessor for PgQuery_RoleSpec, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t closure #1 in PgQuery_AlterOwnerStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v6 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        goto LABEL_13;
      }

      if (result == 4)
      {
        type metadata accessor for PgQuery_RoleSpec(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
LABEL_13:
        v4 = 0;
LABEL_14:
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }
    }

    else if (result == 1)
    {
      lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for PgQuery_RangeVar(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
      goto LABEL_14;
    }
  }
}

uint64_t closure #1 in PgQuery_AlterOwnerStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v46 = &v39 - v7;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v42 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v9);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v44 = &v39 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v43 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v14);
  v41 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v39 - v18;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v21 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v22);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 16);
  v26 = a1;
  v27 = *(a1 + 24);
  destructiveProjectEnumData for StorableValue();
  if (v28)
  {
    v49 = v25;
    v50 = v27;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v29 = v47;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    v31 = v29;
    if (v29)
    {
      return result;
    }

    v39 = RoleSpec;
  }

  else
  {
    v39 = RoleSpec;
    v31 = v47;
  }

  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v21 + 48))(v19, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v19, v24, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RangeVar);
    if (v31)
    {
      return result;
    }
  }

  v32 = v44;
  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v44, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = (*(v43 + 48))(v32, 1, Node);
  v34 = v46;
  if (v33 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v35 = v32;
    v36 = v41;
    outlined init with take of PgQuery_OidList(v35, v41, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
    if (v31)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, v34, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v42 + 48))(v34, 1, v39) == 1)
  {
    return _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  }

  v37 = v34;
  v38 = v40;
  outlined init with take of PgQuery_OidList(v37, v40, type metadata accessor for PgQuery_RoleSpec);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_RoleSpec);
}

BOOL closure #1 in static PgQuery_AlterOwnerStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v76 = *(RoleSpec - 8);
  v77 = RoleSpec;
  MEMORY[0x1EEE9AC00](RoleSpec, v5);
  v72 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v73 = (&v71 - v9);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v75, v10);
  v12 = &v71 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v81 = *(Node - 8);
  v82 = Node;
  MEMORY[0x1EEE9AC00](Node, v14);
  v74 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v78 = &v71 - v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v80, v19);
  v83 = &v71 - v20;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v22 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v23);
  v79 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v84 = &v71 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v71 - v30;
  v32 = a1;
  destructiveProjectEnumData for StorableValue();
  v34 = v33;
  destructiveProjectEnumData for StorableValue();
  if (v34 != v35)
  {
    return 0;
  }

  v71 = v12;
  v36 = a2;
  v37 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v38 = *(v28 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(v36 + v37, &v31[v38], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v39 = *(v22 + 48);
  if (v39(v31, 1, RangeVar) == 1)
  {
    v40 = v39(&v31[v38], 1, RangeVar);

    if (v40 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_10;
    }

LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    goto LABEL_17;
  }

  v41 = v84;
  outlined init with copy of PgQuery_Alias?(v31, v84, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v39(&v31[v38], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_7;
  }

  v42 = &v31[v38];
  v43 = v79;
  outlined init with take of PgQuery_OidList(v42, v79, type metadata accessor for PgQuery_RangeVar);

  v44 = specialized static PgQuery_RangeVar.== infix(_:_:)(v41, v43);
  outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v44 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v45 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v46 = *(v80 + 48);
  v47 = v32;
  v48 = v83;
  outlined init with copy of PgQuery_Alias?(v32 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v36 + v45, v48 + v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v49 = v82;
  v50 = *(v81 + 48);
  if (v50(v48, 1, v82) != 1)
  {
    v51 = v78;
    outlined init with copy of PgQuery_Alias?(v48, v78, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v50(v48 + v46, 1, v49) != 1)
    {
      v55 = v48 + v46;
      v56 = v74;
      outlined init with take of PgQuery_OidList(v55, v74, type metadata accessor for PgQuery_Node);
      v57 = *(v49 + 20);
      v58 = *(v51 + v57);
      v59 = *(v56 + v57);
      if (v58 == v59 || (, , v60 = closure #1 in static PgQuery_Node.== infix(_:_:)(v58, v59), , , v60))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v61 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v61)
        {
          goto LABEL_23;
        }

LABEL_17:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
      v52 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v53 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_16:
      _s10Foundation4UUIDVSgWOhTm_0(v48, v52, v53);
      goto LABEL_17;
    }

    outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
LABEL_15:
    v52 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v53 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_16;
  }

  if (v50(v48 + v46, 1, v49) != 1)
  {
    goto LABEL_15;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_23:
  v62 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner;
  v63 = *(v75 + 48);
  v64 = v71;
  outlined init with copy of PgQuery_Alias?(v47 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, v71, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  outlined init with copy of PgQuery_Alias?(v36 + v62, v64 + v63, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v65 = v77;
  v66 = *(v76 + 48);
  if (v66(v64, 1, v77) == 1)
  {

    if (v66(v64 + v63, 1, v65) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v64, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      return 1;
    }

    goto LABEL_28;
  }

  v67 = v73;
  outlined init with copy of PgQuery_Alias?(v64, v73, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if (v66(v64 + v63, 1, v65) == 1)
  {

    outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_RoleSpec);
LABEL_28:
    _s10Foundation4UUIDVSgWOhTm_0(v64, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
    return 0;
  }

  v68 = v64 + v63;
  v69 = v72;
  outlined init with take of PgQuery_OidList(v68, v72, type metadata accessor for PgQuery_RoleSpec);
  v70 = specialized static PgQuery_RoleSpec.== infix(_:_:)(v67, v69);

  outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_RoleSpec);
  outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_RoleSpec);
  _s10Foundation4UUIDVSgWOhTm_0(v64, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  return (v70 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterOwnerStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOwnerStmt and conformance PgQuery_AlterOwnerStmt, type metadata accessor for PgQuery_AlterOwnerStmt, &protocol conformance descriptor for PgQuery_AlterOwnerStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterOwnerStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOwnerStmt and conformance PgQuery_AlterOwnerStmt, type metadata accessor for PgQuery_AlterOwnerStmt, &protocol conformance descriptor for PgQuery_AlterOwnerStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterOwnerStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOwnerStmt and conformance PgQuery_AlterOwnerStmt, type metadata accessor for PgQuery_AlterOwnerStmt, &protocol conformance descriptor for PgQuery_AlterOwnerStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterOperatorStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 2)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for PgQuery_AlterOperatorStmt(0);
        type metadata accessor for PgQuery_ObjectWithArgs(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterOperatorStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v9 = *(ObjectWithArgs - 8);
  MEMORY[0x1EEE9AC00](ObjectWithArgs, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterOperatorStmt = type metadata accessor for PgQuery_AlterOperatorStmt(0);
  v17 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterOperatorStmt + 24), v7, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((*(v9 + 48))(v7, 1, ObjectWithArgs) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    v13 = v19;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v12, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);
    v13 = v19;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v13)
    {
      return result;
    }
  }

  if (!*(*v17 + 16))
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  type metadata accessor for PgQuery_Node(0);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
  result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  if (!v13)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterDefaultPrivilegesStmt@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = MEMORY[0x1E69E7CC0];
  UnknownStorage.init()();
  v6 = *(a1 + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a3[v6], 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterOperatorStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOperatorStmt and conformance PgQuery_AlterOperatorStmt, type metadata accessor for PgQuery_AlterOperatorStmt, &protocol conformance descriptor for PgQuery_AlterOperatorStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterOperatorStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOperatorStmt and conformance PgQuery_AlterOperatorStmt, type metadata accessor for PgQuery_AlterOperatorStmt, &protocol conformance descriptor for PgQuery_AlterOperatorStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterOperatorStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOperatorStmt and conformance PgQuery_AlterOperatorStmt, type metadata accessor for PgQuery_AlterOperatorStmt, &protocol conformance descriptor for PgQuery_AlterOperatorStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTypeStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTypeStmt and conformance PgQuery_AlterTypeStmt, type metadata accessor for PgQuery_AlterTypeStmt, &protocol conformance descriptor for PgQuery_AlterTypeStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTypeStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTypeStmt and conformance PgQuery_AlterTypeStmt, type metadata accessor for PgQuery_AlterTypeStmt, &protocol conformance descriptor for PgQuery_AlterTypeStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTypeStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTypeStmt and conformance PgQuery_AlterTypeStmt, type metadata accessor for PgQuery_AlterTypeStmt, &protocol conformance descriptor for PgQuery_AlterTypeStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DropOwnedStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 2)
      {
        lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
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

uint64_t PgQuery_DropOwnedStmt.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), v5 = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior(), v5 = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for PgQuery_DropOwnedStmt(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return v5;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_DropOwnedStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropOwnedStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropOwnedStmt and conformance PgQuery_DropOwnedStmt, type metadata accessor for PgQuery_DropOwnedStmt, &protocol conformance descriptor for PgQuery_DropOwnedStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropOwnedStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropOwnedStmt and conformance PgQuery_DropOwnedStmt, type metadata accessor for PgQuery_DropOwnedStmt, &protocol conformance descriptor for PgQuery_DropOwnedStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropOwnedStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropOwnedStmt and conformance PgQuery_DropOwnedStmt, type metadata accessor for PgQuery_DropOwnedStmt, &protocol conformance descriptor for PgQuery_DropOwnedStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_ReassignOwnedStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 2)
      {
        type metadata accessor for PgQuery_ReassignOwnedStmt(0);
        type metadata accessor for PgQuery_RoleSpec(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
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

uint64_t PgQuery_ReassignOwnedStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v18 - v6;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v9 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v10);
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

  ReassignOwnedStmt = type metadata accessor for PgQuery_ReassignOwnedStmt(0);
  outlined init with copy of PgQuery_Alias?(v3 + *(ReassignOwnedStmt + 24), v7, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v9 + 48))(v7, 1, RoleSpec) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v12, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
    v17 = v20;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
    if (v17)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ReassignOwnedStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReassignOwnedStmt and conformance PgQuery_ReassignOwnedStmt, type metadata accessor for PgQuery_ReassignOwnedStmt, &protocol conformance descriptor for PgQuery_ReassignOwnedStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ReassignOwnedStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReassignOwnedStmt and conformance PgQuery_ReassignOwnedStmt, type metadata accessor for PgQuery_ReassignOwnedStmt, &protocol conformance descriptor for PgQuery_ReassignOwnedStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ReassignOwnedStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReassignOwnedStmt and conformance PgQuery_ReassignOwnedStmt, type metadata accessor for PgQuery_ReassignOwnedStmt, &protocol conformance descriptor for PgQuery_ReassignOwnedStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CompositeTypeStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 2)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for PgQuery_CompositeTypeStmt(0);
        type metadata accessor for PgQuery_RangeVar(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CompositeTypeStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v9 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  CompositeTypeStmt = type metadata accessor for PgQuery_CompositeTypeStmt(0);
  v17 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(CompositeTypeStmt + 24), v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v9 + 48))(v7, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v13 = v19;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v12, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v13 = v19;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeVar);
    if (v13)
    {
      return result;
    }
  }

  if (!*(*v17 + 16))
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  type metadata accessor for PgQuery_Node(0);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
  result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  if (!v13)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CompositeTypeStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CompositeTypeStmt and conformance PgQuery_CompositeTypeStmt, type metadata accessor for PgQuery_CompositeTypeStmt, &protocol conformance descriptor for PgQuery_CompositeTypeStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CompositeTypeStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CompositeTypeStmt and conformance PgQuery_CompositeTypeStmt, type metadata accessor for PgQuery_CompositeTypeStmt, &protocol conformance descriptor for PgQuery_CompositeTypeStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CompositeTypeStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CompositeTypeStmt and conformance PgQuery_CompositeTypeStmt, type metadata accessor for PgQuery_CompositeTypeStmt, &protocol conformance descriptor for PgQuery_CompositeTypeStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateEnumStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEnumStmt and conformance PgQuery_CreateEnumStmt, type metadata accessor for PgQuery_CreateEnumStmt, &protocol conformance descriptor for PgQuery_CreateEnumStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateEnumStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEnumStmt and conformance PgQuery_CreateEnumStmt, type metadata accessor for PgQuery_CreateEnumStmt, &protocol conformance descriptor for PgQuery_CreateEnumStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateEnumStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEnumStmt and conformance PgQuery_CreateEnumStmt, type metadata accessor for PgQuery_CreateEnumStmt, &protocol conformance descriptor for PgQuery_CreateEnumStmt);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_184D29A90;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "type_name";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADE8];
  v13 = type metadata accessor for _NameMap.NameDescription();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = a3;
  *(v15 + 1) = a4;
  v15[16] = 2;
  v14();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v7 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_184D29AA0;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v13 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateRangeStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRangeStmt and conformance PgQuery_CreateRangeStmt, type metadata accessor for PgQuery_CreateRangeStmt, &protocol conformance descriptor for PgQuery_CreateRangeStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateRangeStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRangeStmt and conformance PgQuery_CreateRangeStmt, type metadata accessor for PgQuery_CreateRangeStmt, &protocol conformance descriptor for PgQuery_CreateRangeStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateRangeStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRangeStmt and conformance PgQuery_CreateRangeStmt, type metadata accessor for PgQuery_CreateRangeStmt, &protocol conformance descriptor for PgQuery_CreateRangeStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterEnumStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          goto LABEL_4;
        }

        if (result == 5 || result == 6)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2 || result == 3)
      {
LABEL_4:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterEnumStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    v6 = *(v3 + 16);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 8) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      v8 = *(v3 + 32);
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = *(v3 + 24) & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
      {
        v10 = *(v3 + 48);
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = *(v3 + 40) & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
        {
          if (*(v3 + 56) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
          {
            if (*(v3 + 57) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
            {
              type metadata accessor for PgQuery_AlterEnumStmt(0);
              return UnknownStorage.traverse<A>(visitor:)();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterEnumStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterEnumStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEnumStmt and conformance PgQuery_AlterEnumStmt, type metadata accessor for PgQuery_AlterEnumStmt, &protocol conformance descriptor for PgQuery_AlterEnumStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterEnumStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEnumStmt and conformance PgQuery_AlterEnumStmt, type metadata accessor for PgQuery_AlterEnumStmt, &protocol conformance descriptor for PgQuery_AlterEnumStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterEnumStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEnumStmt and conformance PgQuery_AlterEnumStmt, type metadata accessor for PgQuery_AlterEnumStmt, &protocol conformance descriptor for PgQuery_AlterEnumStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterTypeStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
  {
    if (!*(v4[1] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
    {
      (a4)(0, a2, a3);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTSDictionaryStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSDictionaryStmt and conformance PgQuery_AlterTSDictionaryStmt, type metadata accessor for PgQuery_AlterTSDictionaryStmt, &protocol conformance descriptor for PgQuery_AlterTSDictionaryStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTSDictionaryStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSDictionaryStmt and conformance PgQuery_AlterTSDictionaryStmt, type metadata accessor for PgQuery_AlterTSDictionaryStmt, &protocol conformance descriptor for PgQuery_AlterTSDictionaryStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTSDictionaryStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSDictionaryStmt and conformance PgQuery_AlterTSDictionaryStmt, type metadata accessor for PgQuery_AlterTSDictionaryStmt, &protocol conformance descriptor for PgQuery_AlterTSDictionaryStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_AlterTypeStmt(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_AlterTSConfigurationStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 1)
        {
          lazy protocol witness table accessor for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2 || result == 3)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result != 4)
          {
            goto LABEL_4;
          }

LABEL_19:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 6 || result == 7)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterTSConfigurationStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*v3)
  {
    lazy protocol witness table accessor for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
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
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(*(v3 + 32) + 16))
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

  if (*(v3 + 40) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v7))
  {
    if (*(v3 + 41) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v7))
    {
      if (*(v3 + 42) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v7))
      {
        type metadata accessor for PgQuery_AlterTSConfigurationStmt(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterTSConfigurationStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = v1;
  *(a1 + 32) = v1;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_DefineStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_DefineStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTSConfigurationStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSConfigurationStmt and conformance PgQuery_AlterTSConfigurationStmt, type metadata accessor for PgQuery_AlterTSConfigurationStmt, &protocol conformance descriptor for PgQuery_AlterTSConfigurationStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTSConfigurationStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSConfigurationStmt and conformance PgQuery_AlterTSConfigurationStmt, type metadata accessor for PgQuery_AlterTSConfigurationStmt, &protocol conformance descriptor for PgQuery_AlterTSConfigurationStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTSConfigurationStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSConfigurationStmt and conformance PgQuery_AlterTSConfigurationStmt, type metadata accessor for PgQuery_AlterTSConfigurationStmt, &protocol conformance descriptor for PgQuery_AlterTSConfigurationStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateFdwStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFdwStmt and conformance PgQuery_CreateFdwStmt, type metadata accessor for PgQuery_CreateFdwStmt, &protocol conformance descriptor for PgQuery_CreateFdwStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateFdwStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFdwStmt and conformance PgQuery_CreateFdwStmt, type metadata accessor for PgQuery_CreateFdwStmt, &protocol conformance descriptor for PgQuery_CreateFdwStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateFdwStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFdwStmt and conformance PgQuery_CreateFdwStmt, type metadata accessor for PgQuery_CreateFdwStmt, &protocol conformance descriptor for PgQuery_CreateFdwStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateFdwStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

{
  return PgQuery_AlterFdwStmt.decodeMessage<A>(decoder:)(a1, a2, a3);
}

uint64_t PgQuery_CreateFdwStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    if (!*(v4[2] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
    {
      if (!*(v4[3] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
      {
        a4(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateFdwStmt@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  a1[2] = MEMORY[0x1E69E7CC0];
  a1[3] = v1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterFdwStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFdwStmt and conformance PgQuery_AlterFdwStmt, type metadata accessor for PgQuery_AlterFdwStmt, &protocol conformance descriptor for PgQuery_AlterFdwStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterFdwStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFdwStmt and conformance PgQuery_AlterFdwStmt, type metadata accessor for PgQuery_AlterFdwStmt, &protocol conformance descriptor for PgQuery_AlterFdwStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterFdwStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFdwStmt and conformance PgQuery_AlterFdwStmt, type metadata accessor for PgQuery_AlterFdwStmt, &protocol conformance descriptor for PgQuery_AlterFdwStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateForeignServerStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 6:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
LABEL_4:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateForeignServerStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      v10 = *(v3 + 40);
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
      {
        v12 = *(v3 + 56);
        v13 = HIBYTE(v12) & 0xF;
        if ((v12 & 0x2000000000000000) == 0)
        {
          v13 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
        }

        if (!v13 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
        {
          if (*(v3 + 64) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
          {
            if (!*(*(v3 + 72) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
            {
              type metadata accessor for PgQuery_CreateForeignServerStmt(0);
              return UnknownStorage.traverse<A>(visitor:)();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateForeignServerStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = MEMORY[0x1E69E7CC0];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateForeignServerStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignServerStmt and conformance PgQuery_CreateForeignServerStmt, type metadata accessor for PgQuery_CreateForeignServerStmt, &protocol conformance descriptor for PgQuery_CreateForeignServerStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateForeignServerStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignServerStmt and conformance PgQuery_CreateForeignServerStmt, type metadata accessor for PgQuery_CreateForeignServerStmt, &protocol conformance descriptor for PgQuery_CreateForeignServerStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateForeignServerStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignServerStmt and conformance PgQuery_CreateForeignServerStmt, type metadata accessor for PgQuery_CreateForeignServerStmt, &protocol conformance descriptor for PgQuery_CreateForeignServerStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterForeignServerStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterForeignServerStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      if (!*(*(v3 + 32) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
      {
        if (*(v3 + 40) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
        {
          type metadata accessor for PgQuery_AlterForeignServerStmt(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterForeignServerStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterForeignServerStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterForeignServerStmt and conformance PgQuery_AlterForeignServerStmt, type metadata accessor for PgQuery_AlterForeignServerStmt, &protocol conformance descriptor for PgQuery_AlterForeignServerStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterForeignServerStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterForeignServerStmt and conformance PgQuery_AlterForeignServerStmt, type metadata accessor for PgQuery_AlterForeignServerStmt, &protocol conformance descriptor for PgQuery_AlterForeignServerStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterForeignServerStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterForeignServerStmt and conformance PgQuery_AlterForeignServerStmt, type metadata accessor for PgQuery_AlterForeignServerStmt, &protocol conformance descriptor for PgQuery_AlterForeignServerStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateUserMappingStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else if (result == 4)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for PgQuery_CreateUserMappingStmt(0);
        type metadata accessor for PgQuery_RoleSpec(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateUserMappingStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v18 - v6;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v9 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UserMappingStmt = type metadata accessor for PgQuery_CreateUserMappingStmt(0);
  v20 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(UserMappingStmt + 32), v7, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v9 + 48))(v7, 1, RoleSpec) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v13 = v22;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v12, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
    v13 = v22;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
    if (v13)
    {
      return result;
    }
  }

  v15 = v20;
  v16 = v20[1];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v13))
  {
    if (*(v15 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v13))
    {
      if (!*(v15[3] + 16))
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }

      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (!v13)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateUserMappingStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  UnknownStorage.init()();
  v4 = *(a1 + 32);
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v6 = *(*(RoleSpec - 8) + 56);

  return v6(a2 + v4, 1, 1, RoleSpec);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateUserMappingStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateUserMappingStmt and conformance PgQuery_CreateUserMappingStmt, type metadata accessor for PgQuery_CreateUserMappingStmt, &protocol conformance descriptor for PgQuery_CreateUserMappingStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateUserMappingStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateUserMappingStmt and conformance PgQuery_CreateUserMappingStmt, type metadata accessor for PgQuery_CreateUserMappingStmt, &protocol conformance descriptor for PgQuery_CreateUserMappingStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateUserMappingStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateUserMappingStmt and conformance PgQuery_CreateUserMappingStmt, type metadata accessor for PgQuery_CreateUserMappingStmt, &protocol conformance descriptor for PgQuery_CreateUserMappingStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterUserMappingStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          type metadata accessor for PgQuery_AlterUserMappingStmt(0);
          type metadata accessor for PgQuery_RoleSpec(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterUserMappingStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v18 - v7;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v10 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = type metadata accessor for PgQuery_AlterUserMappingStmt(0);
  outlined init with copy of PgQuery_Alias?(v4 + *(v18[0] + 28), v8, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v10 + 48))(v8, 1, RoleSpec) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v14 = v19;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
    v14 = v19;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_RoleSpec);
    if (v14)
    {
      return result;
    }
  }

  v16 = v4[1];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v14))
  {
    if (!*(v4[2] + 16))
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (!v14)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterUserMappingStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterUserMappingStmt and conformance PgQuery_AlterUserMappingStmt, type metadata accessor for PgQuery_AlterUserMappingStmt, &protocol conformance descriptor for PgQuery_AlterUserMappingStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterUserMappingStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterUserMappingStmt and conformance PgQuery_AlterUserMappingStmt, type metadata accessor for PgQuery_AlterUserMappingStmt, &protocol conformance descriptor for PgQuery_AlterUserMappingStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterUserMappingStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterUserMappingStmt and conformance PgQuery_AlterUserMappingStmt, type metadata accessor for PgQuery_AlterUserMappingStmt, &protocol conformance descriptor for PgQuery_AlterUserMappingStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DropUserMappingStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          type metadata accessor for PgQuery_DropUserMappingStmt(0);
          type metadata accessor for PgQuery_RoleSpec(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_DropUserMappingStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v18 - v7;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v10 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = type metadata accessor for PgQuery_DropUserMappingStmt(0);
  outlined init with copy of PgQuery_Alias?(v4 + *(v18[0] + 28), v8, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v10 + 48))(v8, 1, RoleSpec) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v14 = v19;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
    v14 = v19;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_RoleSpec);
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
    if (*(v4 + 16) != 1)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (!v14)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_DropUserMappingStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v6 = *(*(RoleSpec - 8) + 56);

  return v6(a2 + v4, 1, 1, RoleSpec);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropUserMappingStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropUserMappingStmt and conformance PgQuery_DropUserMappingStmt, type metadata accessor for PgQuery_DropUserMappingStmt, &protocol conformance descriptor for PgQuery_DropUserMappingStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropUserMappingStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropUserMappingStmt and conformance PgQuery_DropUserMappingStmt, type metadata accessor for PgQuery_DropUserMappingStmt, &protocol conformance descriptor for PgQuery_DropUserMappingStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropUserMappingStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropUserMappingStmt and conformance PgQuery_DropUserMappingStmt, type metadata accessor for PgQuery_DropUserMappingStmt, &protocol conformance descriptor for PgQuery_DropUserMappingStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterTableSpaceOptionsStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 2:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
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

uint64_t PgQuery_AlterTableSpaceOptionsStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!*(*(v3 + 16) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      if (*(v3 + 24) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterTableSpaceOptionsStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTableSpaceOptionsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableSpaceOptionsStmt and conformance PgQuery_AlterTableSpaceOptionsStmt, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt, &protocol conformance descriptor for PgQuery_AlterTableSpaceOptionsStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTableSpaceOptionsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableSpaceOptionsStmt and conformance PgQuery_AlterTableSpaceOptionsStmt, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt, &protocol conformance descriptor for PgQuery_AlterTableSpaceOptionsStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTableSpaceOptionsStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableSpaceOptionsStmt and conformance PgQuery_AlterTableSpaceOptionsStmt, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt, &protocol conformance descriptor for PgQuery_AlterTableSpaceOptionsStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterTableMoveAllStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          goto LABEL_15;
        }

        if (result == 2)
        {
          lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 4:
LABEL_15:
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_AlterTableMoveAllStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
    destructiveProjectEnumData for StorableValue();
    if (v9)
    {
      lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      v8 = 0;
    }

    if (*(*(v3 + 32) + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      v10 = v8;
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v8)
      {
        return result;
      }
    }

    else
    {
      v10 = v8;
    }

    v11 = *(v3 + 48);
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = *(v3 + 40) & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v10))
    {
      if (*(v3 + 56) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v10))
      {
        type metadata accessor for PgQuery_AlterTableMoveAllStmt(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterTableMoveAllStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 1;
  *(a1 + 32) = v1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTableMoveAllStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableMoveAllStmt and conformance PgQuery_AlterTableMoveAllStmt, type metadata accessor for PgQuery_AlterTableMoveAllStmt, &protocol conformance descriptor for PgQuery_AlterTableMoveAllStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTableMoveAllStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableMoveAllStmt and conformance PgQuery_AlterTableMoveAllStmt, type metadata accessor for PgQuery_AlterTableMoveAllStmt, &protocol conformance descriptor for PgQuery_AlterTableMoveAllStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTableMoveAllStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableMoveAllStmt and conformance PgQuery_AlterTableMoveAllStmt, type metadata accessor for PgQuery_AlterTableMoveAllStmt, &protocol conformance descriptor for PgQuery_AlterTableMoveAllStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_SecLabelStmt._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v7;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider + 8);
  *v5 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider);
  v5[1] = v8;

  v10 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label);
  v9 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label + 8);

  *v6 = v10;
  v6[1] = v9;

  return v1;
}

uint64_t PgQuery_SecLabelStmt._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t closure #1 in PgQuery_SecLabelStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v6 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }
    }

    else if (result == 1)
    {
      lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_SecLabelStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v27 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = a1;
  v15 = *(a1 + 24);
  destructiveProjectEnumData for StorableValue();
  if (v16)
  {
    v29 = v13;
    v30 = v15;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v17 = v31;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v17)
    {
      return result;
    }

    v31 = 0;
  }

  v19 = v14;
  outlined init with copy of PgQuery_Alias?(v14 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v9 + 48))(v8, 1, Node) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v20 = v31;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v20 = v31;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    if (v20)
    {
      return result;
    }
  }

  v22 = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider);
  v21 = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider + 8);
  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v20))
  {
    v25 = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label);
    v24 = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label + 8);
    v26 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v26 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {

      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_SecLabelStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

  v19 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v20 = *(v12 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
  if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider + 8) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label + 8) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label + 8))
  {

    return 1;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return (v32 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SecLabelStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SecLabelStmt and conformance PgQuery_SecLabelStmt, type metadata accessor for PgQuery_SecLabelStmt, &protocol conformance descriptor for PgQuery_SecLabelStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SecLabelStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SecLabelStmt and conformance PgQuery_SecLabelStmt, type metadata accessor for PgQuery_SecLabelStmt, &protocol conformance descriptor for PgQuery_SecLabelStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SecLabelStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SecLabelStmt and conformance PgQuery_SecLabelStmt, type metadata accessor for PgQuery_SecLabelStmt, &protocol conformance descriptor for PgQuery_SecLabelStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateForeignTableStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          type metadata accessor for PgQuery_CreateForeignTableStmt(0);
          type metadata accessor for PgQuery_CreateStmt(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt, &protocol conformance descriptor for PgQuery_CreateStmt);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateForeignTableStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v18 - v7;
  Stmt = type metadata accessor for PgQuery_CreateStmt(0);
  v10 = *(Stmt - 8);
  MEMORY[0x1EEE9AC00](Stmt, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = type metadata accessor for PgQuery_CreateForeignTableStmt(0);
  outlined init with copy of PgQuery_Alias?(v4 + *(v18[0] + 28), v8, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  if ((*(v10 + 48))(v8, 1, Stmt) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
    v14 = v19;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_CreateStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt, &protocol conformance descriptor for PgQuery_CreateStmt);
    v14 = v19;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_CreateStmt);
    if (v14)
    {
      return result;
    }
  }

  v16 = v4[1];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v14))
  {
    if (!*(v4[2] + 16))
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (!v14)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterUserMappingStmt@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  *(a3 + 2) = MEMORY[0x1E69E7CC0];
  UnknownStorage.init()();
  v6 = *(a1 + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a3[v6], 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateForeignTableStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignTableStmt and conformance PgQuery_CreateForeignTableStmt, type metadata accessor for PgQuery_CreateForeignTableStmt, &protocol conformance descriptor for PgQuery_CreateForeignTableStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateForeignTableStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignTableStmt and conformance PgQuery_CreateForeignTableStmt, type metadata accessor for PgQuery_CreateForeignTableStmt, &protocol conformance descriptor for PgQuery_CreateForeignTableStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateForeignTableStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignTableStmt and conformance PgQuery_CreateForeignTableStmt, type metadata accessor for PgQuery_CreateForeignTableStmt, &protocol conformance descriptor for PgQuery_CreateForeignTableStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_ImportForeignSchemaStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4)
        {
          lazy protocol witness table accessor for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 5 || result == 6)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_ImportForeignSchemaStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      v10 = v3[5];
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
      {
        v12 = v4;
        if (v3[6])
        {
          lazy protocol witness table accessor for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType();
          result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
          if (v4)
          {
            return result;
          }

          v12 = 0;
        }

        if (*(v3[8] + 16))
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          v13 = v12;
          result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
          if (v12)
          {
            return result;
          }
        }

        else
        {
          v13 = v12;
        }

        if (!*(v3[9] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v13))
        {
          type metadata accessor for PgQuery_ImportForeignSchemaStmt(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_ImportForeignSchemaStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 64) = MEMORY[0x1E69E7CC0];
  *(a1 + 72) = v1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ImportForeignSchemaStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaStmt and conformance PgQuery_ImportForeignSchemaStmt, type metadata accessor for PgQuery_ImportForeignSchemaStmt, &protocol conformance descriptor for PgQuery_ImportForeignSchemaStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ImportForeignSchemaStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaStmt and conformance PgQuery_ImportForeignSchemaStmt, type metadata accessor for PgQuery_ImportForeignSchemaStmt, &protocol conformance descriptor for PgQuery_ImportForeignSchemaStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ImportForeignSchemaStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaStmt and conformance PgQuery_ImportForeignSchemaStmt, type metadata accessor for PgQuery_ImportForeignSchemaStmt, &protocol conformance descriptor for PgQuery_ImportForeignSchemaStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_DropdbStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = *(v4 + 8);
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    if (*(v4 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v5))
    {
      if (!*(*(v4 + 24) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
      {
        a4(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_DropdbStmt@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateExtensionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateExtensionStmt and conformance PgQuery_CreateExtensionStmt, type metadata accessor for PgQuery_CreateExtensionStmt, &protocol conformance descriptor for PgQuery_CreateExtensionStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateExtensionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateExtensionStmt and conformance PgQuery_CreateExtensionStmt, type metadata accessor for PgQuery_CreateExtensionStmt, &protocol conformance descriptor for PgQuery_CreateExtensionStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateExtensionStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateExtensionStmt and conformance PgQuery_CreateExtensionStmt, type metadata accessor for PgQuery_CreateExtensionStmt, &protocol conformance descriptor for PgQuery_CreateExtensionStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterExtensionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionStmt and conformance PgQuery_AlterExtensionStmt, type metadata accessor for PgQuery_AlterExtensionStmt, &protocol conformance descriptor for PgQuery_AlterExtensionStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterExtensionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionStmt and conformance PgQuery_AlterExtensionStmt, type metadata accessor for PgQuery_AlterExtensionStmt, &protocol conformance descriptor for PgQuery_AlterExtensionStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterExtensionStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionStmt and conformance PgQuery_AlterExtensionStmt, type metadata accessor for PgQuery_AlterExtensionStmt, &protocol conformance descriptor for PgQuery_AlterExtensionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterExtensionContentsStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v7, 1, 1, Node);
  v9 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v9;
  *(v1 + 32) = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 40) = *(a1 + 40);
  *(v1 + 48) = v10;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v6, v1 + v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return v1;
}

uint64_t PgQuery_DeclareCursorStmt._StorageClass.__deallocating_deinit(void *a1)
{

  _s10Foundation4UUIDVSgWOhTm_0(v1 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v3, v4);
}

void type metadata completion function for PgQuery_AlterExtensionContentsStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_AlterExtensionContentsStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
          lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 4)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
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

uint64_t closure #1 in PgQuery_AlterExtensionContentsStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v21 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v23 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 24);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v16 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
  {
    if (!*(a1 + 32) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
    {
      v21[1] = a3;
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      destructiveProjectEnumData for StorableValue();
      if (!v20 || (v21[2] = v18, v22 = v19, lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
      {
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((*(v23 + 48))(v10, 1, Node) == 1)
        {
          return _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          outlined init with take of PgQuery_OidList(v10, v14, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          return outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_AlterExtensionContentsStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v32 - v15;
  if (*(a1 + 16) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v33 = v8;
  destructiveProjectEnumData for StorableValue();
  v18 = v17;
  destructiveProjectEnumData for StorableValue();
  if (v18 != v19)
  {
    return 0;
  }

  v20 = OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v21 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v20, &v16[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v5 + 48);
  if (v22(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v22(&v16[v21], 1, Node) != 1)
    {
      v26 = v33;
      outlined init with take of PgQuery_OidList(&v16[v21], v33, type metadata accessor for PgQuery_Node);
      v27 = *(Node + 20);
      v28 = *&v12[v27];
      v29 = *(v26 + v27);
      if (v28 == v29 || (, , v30 = closure #1 in static PgQuery_Node.== infix(_:_:)(v28, v29), , , v30))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        return (v31 & 1) != 0;
      }

      outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_11:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      return 0;
    }

    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
LABEL_10:
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_11;
  }

  if (v22(&v16[v21], 1, Node) != 1)
  {
    goto LABEL_10;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterExtensionContentsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionContentsStmt and conformance PgQuery_AlterExtensionContentsStmt, type metadata accessor for PgQuery_AlterExtensionContentsStmt, &protocol conformance descriptor for PgQuery_AlterExtensionContentsStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterExtensionContentsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionContentsStmt and conformance PgQuery_AlterExtensionContentsStmt, type metadata accessor for PgQuery_AlterExtensionContentsStmt, &protocol conformance descriptor for PgQuery_AlterExtensionContentsStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterExtensionContentsStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionContentsStmt and conformance PgQuery_AlterExtensionContentsStmt, type metadata accessor for PgQuery_AlterExtensionContentsStmt, &protocol conformance descriptor for PgQuery_AlterExtensionContentsStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateEventTrigStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEventTrigStmt and conformance PgQuery_CreateEventTrigStmt, type metadata accessor for PgQuery_CreateEventTrigStmt, &protocol conformance descriptor for PgQuery_CreateEventTrigStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateEventTrigStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEventTrigStmt and conformance PgQuery_CreateEventTrigStmt, type metadata accessor for PgQuery_CreateEventTrigStmt, &protocol conformance descriptor for PgQuery_CreateEventTrigStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateEventTrigStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEventTrigStmt and conformance PgQuery_CreateEventTrigStmt, type metadata accessor for PgQuery_CreateEventTrigStmt, &protocol conformance descriptor for PgQuery_CreateEventTrigStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_NotifyStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
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
      a4(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterEventTrigStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEventTrigStmt and conformance PgQuery_AlterEventTrigStmt, type metadata accessor for PgQuery_AlterEventTrigStmt, &protocol conformance descriptor for PgQuery_AlterEventTrigStmt);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterEventTrigStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEventTrigStmt and conformance PgQuery_AlterEventTrigStmt, type metadata accessor for PgQuery_AlterEventTrigStmt, &protocol conformance descriptor for PgQuery_AlterEventTrigStmt);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterEventTrigStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEventTrigStmt and conformance PgQuery_AlterEventTrigStmt, type metadata accessor for PgQuery_AlterEventTrigStmt, &protocol conformance descriptor for PgQuery_AlterEventTrigStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_RefreshMatViewStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for PgQuery_RefreshMatViewStmt(0);
        type metadata accessor for PgQuery_RangeVar(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2 || result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_RefreshMatViewStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17 - v7;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v10 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    if (v3[1] != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      v18 = v4;
      RefreshMatViewStmt = type metadata accessor for PgQuery_RefreshMatViewStmt(0);
      outlined init with copy of PgQuery_Alias?(&v3[*(RefreshMatViewStmt + 28)], v8, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((*(v10 + 48))(v8, 1, RangeVar) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      }

      else
      {
        outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_RangeVar);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
        v16 = v18;
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_RangeVar);
        if (v16)
        {
          return result;
        }
      }

      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_RefreshMatViewStmt@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v6 = *(*(RangeVar - 8) + 56);

  return v6(&a2[v4], 1, 1, RangeVar);
}
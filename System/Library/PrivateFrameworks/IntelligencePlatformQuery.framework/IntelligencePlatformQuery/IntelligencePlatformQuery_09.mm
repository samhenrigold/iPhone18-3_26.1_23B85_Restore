uint64_t closure #1 in static PgQuery_RenameStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v58 = *(Node - 8);
  v59 = Node;
  MEMORY[0x28223BE20](Node);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v53 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v57);
  v60 = &v53 - v8;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v10 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v56 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x28223BE20](v15);
  v17 = &v53 - v16;
  ResultSetCursor.columns.modify();
  v19 = v18;
  ResultSetCursor.columns.modify();
  if (v19 != v20)
  {
    goto LABEL_18;
  }

  ResultSetCursor.columns.modify();
  v22 = v21;
  ResultSetCursor.columns.modify();
  if (v22 != v23)
  {
    goto LABEL_18;
  }

  v24 = a2;
  v25 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v26 = *(v15 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v27 = v24 + v25;
  v28 = v24;
  outlined init with copy of PgQuery_Alias?(v27, &v17[v26], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v29 = *(v10 + 48);
  if (v29(v17, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v17, v14, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v29(&v17[v26], 1, RangeVar) != 1)
    {
      v33 = v56;
      outlined init with take of PgQuery_OidList(&v17[v26], v56, type metadata accessor for PgQuery_RangeVar);

      v34 = specialized static PgQuery_RangeVar.== infix(_:_:)(v14, v33);
      outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v34 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_RangeVar);
LABEL_8:
    v31 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v32 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_16:
    outlined destroy of URL?(v17, v31, v32);
    goto LABEL_17;
  }

  v30 = v29(&v17[v26], 1, RangeVar);

  if (v30 != 1)
  {
    goto LABEL_8;
  }

  outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_10:
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v36 = *(v57 + 48);
  v17 = v60;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v60, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v28 + v35, &v17[v36], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v37 = v59;
  v38 = *(v58 + 48);
  if (v38(v17, 1, v59) == 1)
  {
    if (v38(&v17[v36], 1, v37) == 1)
    {
      outlined destroy of URL?(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_23:
      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname) == *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname + 8) == *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname) == *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname + 8) == *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
      {
        v49 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
        v50 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior);
        if (*(v28 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior + 8) == 1)
        {
          if (v50)
          {
            if (v50 == 1)
            {
              if (v49 == 1)
              {
                goto LABEL_40;
              }
            }

            else if (v49 == 2)
            {
LABEL_40:
              v51 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

              v52 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

              v40 = v51 ^ v52 ^ 1;
              return v40 & 1;
            }
          }

          else if (!v49)
          {
            goto LABEL_40;
          }
        }

        else if (v49 == v50)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v39 = v55;
  outlined init with copy of PgQuery_Alias?(v17, v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v38(&v17[v36], 1, v37) == 1)
  {
    outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
LABEL_15:
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_16;
  }

  v42 = &v17[v36];
  v43 = v54;
  outlined init with take of PgQuery_OidList(v42, v54, type metadata accessor for PgQuery_Node);
  v44 = *(v37 + 20);
  v45 = *(v39 + v44);
  v46 = *(v43 + v44);
  if (v45 != v46)
  {

    v47 = closure #1 in static PgQuery_Node.== infix(_:_:)(v45, v46);

    if (!v47)
    {
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
      v31 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v48)
  {
    goto LABEL_23;
  }

LABEL_17:

LABEL_18:
  v40 = 0;
  return v40 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RenameStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RenameStmt and conformance PgQuery_RenameStmt, type metadata accessor for PgQuery_RenameStmt, &protocol conformance descriptor for PgQuery_RenameStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RenameStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RenameStmt and conformance PgQuery_RenameStmt, type metadata accessor for PgQuery_RenameStmt, &protocol conformance descriptor for PgQuery_RenameStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RenameStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RenameStmt and conformance PgQuery_RenameStmt, type metadata accessor for PgQuery_RenameStmt, &protocol conformance descriptor for PgQuery_RenameStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_RuleStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_RuleStmt._StorageClass(uint64_t a1)
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
  v29 = a3;
  v32 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v26 = &v24 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v25 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v24 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v12 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v10, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v12 + 48))(v10, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v10, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v15 = v28;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v14, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v16 = v28;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v15 = v16;
    result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_RangeVar);
    if (v16)
    {
      return result;
    }
  }

  v18 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename + 8);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename) & 0xFFFFFFFFFFFFLL;
  }

  if (!v19 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v15))
  {
    v20 = v26;
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v25 + 48))(v20, 1, Node) == 1)
    {
      result = outlined destroy of URL?(v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      v21 = v20;
      v22 = v24;
      outlined init with take of PgQuery_OidList(v21, v24, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      if (v15)
      {
        return result;
      }
    }

    if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event) || (v23 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event + 8), v30 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event), v31 = v23, lazy protocol witness table accessor for type PgQuery_CmdType and conformance PgQuery_CmdType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v15))
    {
      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__instead) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v15))
      {
        if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__actions) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v15))
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
  v55 = a2;
  Node = type metadata accessor for PgQuery_Node(0);
  v52 = *(Node - 8);
  v53 = Node;
  MEMORY[0x28223BE20](Node);
  v48 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v48 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v51);
  v54 = &v48 - v7;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v9 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v48 - v16;
  v18 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v19 = *(v15 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &v48 - v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v20 = v55 + v18;
  v21 = v55;
  outlined init with copy of PgQuery_Alias?(v20, &v17[v19], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v22 = *(v9 + 48);
  if (v22(v17, 1, RangeVar) == 1)
  {
    v23 = v22(&v17[v19], 1, RangeVar);

    if (v23 == 1)
    {
      outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v24 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v25 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    goto LABEL_17;
  }

  outlined init with copy of PgQuery_Alias?(v17, v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v22(&v17[v19], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  v26 = v50;
  outlined init with take of PgQuery_OidList(&v17[v19], v50, type metadata accessor for PgQuery_RangeVar);

  v27 = specialized static PgQuery_RangeVar.== infix(_:_:)(v13, v26);
  outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v27 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename) != *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename + 8) != *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v28 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v29 = *(v51 + 48);
  v17 = v54;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v21 + v28, &v17[v29], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v30 = v53;
  v31 = *(v52 + 48);
  if (v31(v17, 1, v53) != 1)
  {
    v32 = v49;
    outlined init with copy of PgQuery_Alias?(v17, v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v31(&v17[v29], 1, v30) == 1)
    {
      outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_Node);
      goto LABEL_16;
    }

    v35 = &v17[v29];
    v36 = v48;
    outlined init with take of PgQuery_OidList(v35, v48, type metadata accessor for PgQuery_Node);
    v37 = *(v30 + 20);
    v38 = *(v32 + v37);
    v39 = *(v36 + v37);
    if (v38 == v39 || (, , v40 = closure #1 in static PgQuery_Node.== infix(_:_:)(v38, v39), , , v40))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_Node);
      outlined destroy of URL?(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((v41 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_Node);
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_17:
    outlined destroy of URL?(v17, v24, v25);
    goto LABEL_18;
  }

  if (v31(&v17[v29], 1, v30) != 1)
  {
LABEL_16:
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_17;
  }

  outlined destroy of URL?(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_23:
  if (specialized == infix<A>(_:_:)(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event), *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event + 8), *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event)) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__instead) == *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__instead))
  {
    v42 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__actions);
    v43 = v21;
    v44 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__actions);

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v42, v44);

    if (NodeV_Tt1g5)
    {
      v46 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace);

      v47 = *(v43 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace);

      v33 = v46 ^ v47 ^ 1;
      return v33 & 1;
    }
  }

LABEL_18:

  v33 = 0;
  return v33 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RuleStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RuleStmt and conformance PgQuery_RuleStmt, type metadata accessor for PgQuery_RuleStmt, &protocol conformance descriptor for PgQuery_RuleStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RuleStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RuleStmt and conformance PgQuery_RuleStmt, type metadata accessor for PgQuery_RuleStmt, &protocol conformance descriptor for PgQuery_RuleStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RuleStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RuleStmt and conformance PgQuery_RuleStmt, type metadata accessor for PgQuery_RuleStmt, &protocol conformance descriptor for PgQuery_RuleStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_NotifyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NotifyStmt and conformance PgQuery_NotifyStmt, type metadata accessor for PgQuery_NotifyStmt, &protocol conformance descriptor for PgQuery_NotifyStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_NotifyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NotifyStmt and conformance PgQuery_NotifyStmt, type metadata accessor for PgQuery_NotifyStmt, &protocol conformance descriptor for PgQuery_NotifyStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_NotifyStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NotifyStmt and conformance PgQuery_NotifyStmt, type metadata accessor for PgQuery_NotifyStmt, &protocol conformance descriptor for PgQuery_NotifyStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ListenStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ListenStmt and conformance PgQuery_ListenStmt, type metadata accessor for PgQuery_ListenStmt, &protocol conformance descriptor for PgQuery_ListenStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ListenStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ListenStmt and conformance PgQuery_ListenStmt, type metadata accessor for PgQuery_ListenStmt, &protocol conformance descriptor for PgQuery_ListenStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ListenStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ListenStmt and conformance PgQuery_ListenStmt, type metadata accessor for PgQuery_ListenStmt, &protocol conformance descriptor for PgQuery_ListenStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_UnlistenStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UnlistenStmt and conformance PgQuery_UnlistenStmt, type metadata accessor for PgQuery_UnlistenStmt, &protocol conformance descriptor for PgQuery_UnlistenStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_UnlistenStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UnlistenStmt and conformance PgQuery_UnlistenStmt, type metadata accessor for PgQuery_UnlistenStmt, &protocol conformance descriptor for PgQuery_UnlistenStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  *(a1 + 16) = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TransactionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TransactionStmt and conformance PgQuery_TransactionStmt, type metadata accessor for PgQuery_TransactionStmt, &protocol conformance descriptor for PgQuery_TransactionStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TransactionStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TransactionStmt and conformance PgQuery_TransactionStmt, type metadata accessor for PgQuery_TransactionStmt, &protocol conformance descriptor for PgQuery_TransactionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_ViewStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__view, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_ViewStmt._StorageClass(uint64_t a1)
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
  v28 = a3;
  v31 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v25 = &v23 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v24 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v23 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v12 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__view, v10, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v12 + 48))(v10, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v10, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v15 = v27;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v14, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v16 = v27;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v15 = v16;
    result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_RangeVar);
    if (v16)
    {
      return result;
    }
  }

  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aliases) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v18 = Node;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v15)
    {
      return result;
    }
  }

  else
  {
    v18 = Node;
  }

  v19 = v25;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v24 + 48))(v19, 1, v18) == 1)
  {
    result = outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v20 = v19;
    v21 = v23;
    outlined init with take of PgQuery_OidList(v20, v23, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
    if (v15)
    {
      return result;
    }
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v15))
  {
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v15))
    {
      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption))
      {
        v22 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption + 8);
        v29 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption);
        v30 = v22;
        lazy protocol witness table accessor for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption();
        return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_ViewStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  Node = type metadata accessor for PgQuery_Node(0);
  v54 = *(Node - 8);
  v55 = Node;
  MEMORY[0x28223BE20](Node);
  v51 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v52 = &v51 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v53);
  v56 = &v51 - v7;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v9 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v51 - v16;
  v18 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__view;
  v19 = *(v15 + 56);
  v20 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__view, &v51 - v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v21 = v58 + v18;
  v22 = v58;
  outlined init with copy of PgQuery_Alias?(v21, &v17[v19], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v23 = *(v9 + 48);
  if (v23(v17, 1, RangeVar) == 1)
  {
    v24 = v23(&v17[v19], 1, RangeVar);

    if (v24 == 1)
    {
      outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v25 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v26 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    goto LABEL_7;
  }

  outlined init with copy of PgQuery_Alias?(v17, v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v23(&v17[v19], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  v27 = &v17[v19];
  v28 = v57;
  outlined init with take of PgQuery_OidList(v27, v57, type metadata accessor for PgQuery_RangeVar);

  v29 = specialized static PgQuery_RangeVar.== infix(_:_:)(v13, v28);
  outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v29 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  v30 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aliases);
  v31 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aliases);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v30, v31);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_26;
  }

  v33 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v34 = *(v53 + 48);
  v17 = v56;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v56, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v22 + v33, &v17[v34], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v35 = v55;
  v36 = *(v54 + 48);
  if (v36(v17, 1, v55) != 1)
  {
    v37 = v52;
    outlined init with copy of PgQuery_Alias?(v17, v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v36(&v17[v34], 1, v35) == 1)
    {
      outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_Node);
      goto LABEL_15;
    }

    v38 = v51;
    outlined init with take of PgQuery_OidList(&v17[v34], v51, type metadata accessor for PgQuery_Node);
    v39 = *(v35 + 20);
    v40 = *(v37 + v39);
    v41 = *(v38 + v39);
    if (v40 == v41 || (, , v42 = closure #1 in static PgQuery_Node.== infix(_:_:)(v40, v41), , , v42))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_Node);
      outlined destroy of URL?(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v43)
      {
        goto LABEL_19;
      }

LABEL_26:

      return 0;
    }

    outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_Node);
    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
    v26 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
    outlined destroy of URL?(v17, v25, v26);
    goto LABEL_26;
  }

  if (v36(&v17[v34], 1, v35) != 1)
  {
LABEL_15:
    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v26 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  outlined destroy of URL?(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_19:
  if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace) != *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace))
  {
    goto LABEL_26;
  }

  v44 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
  v45 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v46 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v44, v45);

  if ((v46 & 1) == 0)
  {
    goto LABEL_26;
  }

  v47 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption);

  v48 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption);
  v49 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption + 8);

  if (v49 == 1)
  {
    if (v48 > 1)
    {
      if (v48 == 2)
      {
        if (v47 == 2)
        {
          return 1;
        }
      }

      else if (v47 == 3)
      {
        return 1;
      }
    }

    else if (v48)
    {
      if (v47 == 1)
      {
        return 1;
      }
    }

    else if (!v47)
    {
      return 1;
    }

    return 0;
  }

  return v47 == v48;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ViewStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ViewStmt and conformance PgQuery_ViewStmt, type metadata accessor for PgQuery_ViewStmt, &protocol conformance descriptor for PgQuery_ViewStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ViewStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ViewStmt and conformance PgQuery_ViewStmt, type metadata accessor for PgQuery_ViewStmt, &protocol conformance descriptor for PgQuery_ViewStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ViewStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ViewStmt and conformance PgQuery_ViewStmt, type metadata accessor for PgQuery_ViewStmt, &protocol conformance descriptor for PgQuery_ViewStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_LoadStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LoadStmt and conformance PgQuery_LoadStmt, type metadata accessor for PgQuery_LoadStmt, &protocol conformance descriptor for PgQuery_LoadStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_LoadStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LoadStmt and conformance PgQuery_LoadStmt, type metadata accessor for PgQuery_LoadStmt, &protocol conformance descriptor for PgQuery_LoadStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_LoadStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LoadStmt and conformance PgQuery_LoadStmt, type metadata accessor for PgQuery_LoadStmt, &protocol conformance descriptor for PgQuery_LoadStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateDomainStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
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

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_CreateDomainStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_CollateClause?, type metadata accessor for PgQuery_CollateClause, MEMORY[0x277D83D88]);
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
  MEMORY[0x28223BE20](v7 - 8);
  v24 = &v20 - v8;
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  v23 = *(CollateClause - 8);
  MEMORY[0x28223BE20](CollateClause);
  v22 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v13 = *(TypeName - 8);
  MEMORY[0x28223BE20](TypeName);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(a1 + 16) + 16))
  {
    v21 = a1;
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    v5 = v4;

    if (v4)
    {
      return result;
    }

    a1 = v21;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v12, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v13 + 48))(v12, 1, TypeName) == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v15, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_TypeName);
    if (v5)
    {
      return result;
    }
  }

  v17 = v24;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, v24, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  if ((*(v23 + 48))(v17, 1, CollateClause) == 1)
  {
    result = outlined destroy of URL?(v17, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  }

  else
  {
    v18 = v17;
    v19 = v22;
    outlined init with take of PgQuery_OidList(v18, v22, type metadata accessor for PgQuery_CollateClause);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateClause and conformance PgQuery_CollateClause, type metadata accessor for PgQuery_CollateClause, &protocol conformance descriptor for PgQuery_CollateClause);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_CollateClause);
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
  v53 = *(CollateClause - 8);
  v54 = CollateClause;
  MEMORY[0x28223BE20](CollateClause);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v49 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMR);
  MEMORY[0x28223BE20](v52);
  v55 = &v49 - v9;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v11 = *(TypeName - 8);
  MEMORY[0x28223BE20](TypeName);
  v51 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v56 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v18 = *(a1 + 16);
  v19 = *(a2 + 16);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v18, v19);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_18;
  }

  v49 = v6;
  v21 = a2;
  v22 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  v23 = *(v15 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v17, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined init with copy of PgQuery_Alias?(v21 + v22, &v17[v23], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v24 = *(v11 + 48);
  v25 = a1;
  if (v24(v17, 1, TypeName) != 1)
  {
    v26 = v56;
    outlined init with copy of PgQuery_Alias?(v17, v56, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    if (v24(&v17[v23], 1, TypeName) != 1)
    {
      v30 = v51;
      outlined init with take of PgQuery_OidList(&v17[v23], v51, type metadata accessor for PgQuery_TypeName);
      v31 = specialized static PgQuery_TypeName.== infix(_:_:)(v26, v30);
      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_TypeName);
      outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_TypeName);
      outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      if ((v31 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_TypeName);
LABEL_8:
    v27 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v28 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    v29 = v17;
LABEL_17:
    outlined destroy of URL?(v29, v27, v28);
    goto LABEL_18;
  }

  if (v24(&v17[v23], 1, TypeName) != 1)
  {
    goto LABEL_8;
  }

  outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
LABEL_10:
  v32 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause;
  v33 = *(v52 + 48);
  v34 = v55;
  outlined init with copy of PgQuery_Alias?(v25 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause, v55, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  outlined init with copy of PgQuery_Alias?(v21 + v32, v34 + v33, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  v35 = v54;
  v36 = *(v53 + 48);
  if (v36(v34, 1, v54) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      outlined destroy of URL?(v34, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
LABEL_23:
      v47 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);
      v48 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints);

      v38 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v47, v48);

      return v38 & 1;
    }

    goto LABEL_15;
  }

  v37 = v50;
  outlined init with copy of PgQuery_Alias?(v34, v50, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_CollateClause);
LABEL_15:
    v27 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMd;
    v28 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSg_ADtMR;
LABEL_16:
    v29 = v34;
    goto LABEL_17;
  }

  v40 = v49;
  outlined init with take of PgQuery_OidList(v34 + v33, v49, type metadata accessor for PgQuery_CollateClause);
  v41 = *(v35 + 20);
  v42 = *(v37 + v41);
  v43 = *(v40 + v41);
  if (v42 != v43)
  {

    v44 = closure #1 in static PgQuery_CollateClause.== infix(_:_:)(v42, v43);

    if (!v44)
    {
      outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_CollateClause);
      outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_CollateClause);
      v27 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd;
      v28 = &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v45 = v49;
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_CollateClause);
  outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_CollateClause);
  outlined destroy of URL?(v34, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMd, &_s14BiomeSQLParser21PgQuery_CollateClauseVSgMR);
  if (v46)
  {
    goto LABEL_23;
  }

LABEL_18:

  v38 = 0;
  return v38 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateDomainStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateDomainStmt and conformance PgQuery_CreateDomainStmt, type metadata accessor for PgQuery_CreateDomainStmt, &protocol conformance descriptor for PgQuery_CreateDomainStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateDomainStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateDomainStmt and conformance PgQuery_CreateDomainStmt, type metadata accessor for PgQuery_CreateDomainStmt, &protocol conformance descriptor for PgQuery_CreateDomainStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateDomainStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateDomainStmt and conformance PgQuery_CreateDomainStmt, type metadata accessor for PgQuery_CreateDomainStmt, &protocol conformance descriptor for PgQuery_CreateDomainStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreatedbStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatedbStmt and conformance PgQuery_CreatedbStmt, type metadata accessor for PgQuery_CreatedbStmt, &protocol conformance descriptor for PgQuery_CreatedbStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreatedbStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatedbStmt and conformance PgQuery_CreatedbStmt, type metadata accessor for PgQuery_CreatedbStmt, &protocol conformance descriptor for PgQuery_CreatedbStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreatedbStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatedbStmt and conformance PgQuery_CreatedbStmt, type metadata accessor for PgQuery_CreatedbStmt, &protocol conformance descriptor for PgQuery_CreatedbStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropdbStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropdbStmt and conformance PgQuery_DropdbStmt, type metadata accessor for PgQuery_DropdbStmt, &protocol conformance descriptor for PgQuery_DropdbStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropdbStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropdbStmt and conformance PgQuery_DropdbStmt, type metadata accessor for PgQuery_DropdbStmt, &protocol conformance descriptor for PgQuery_DropdbStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropdbStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropdbStmt and conformance PgQuery_DropdbStmt, type metadata accessor for PgQuery_DropdbStmt, &protocol conformance descriptor for PgQuery_DropdbStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_VacuumStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumStmt and conformance PgQuery_VacuumStmt, type metadata accessor for PgQuery_VacuumStmt, &protocol conformance descriptor for PgQuery_VacuumStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_VacuumStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumStmt and conformance PgQuery_VacuumStmt, type metadata accessor for PgQuery_VacuumStmt, &protocol conformance descriptor for PgQuery_VacuumStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  *(v8 + *a4) = MEMORY[0x277D84F90];
  *a5 = v8;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ExplainStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExplainStmt and conformance PgQuery_ExplainStmt, type metadata accessor for PgQuery_ExplainStmt, &protocol conformance descriptor for PgQuery_ExplainStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ExplainStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExplainStmt and conformance PgQuery_ExplainStmt, type metadata accessor for PgQuery_ExplainStmt, &protocol conformance descriptor for PgQuery_ExplainStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ExplainStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExplainStmt and conformance PgQuery_ExplainStmt, type metadata accessor for PgQuery_ExplainStmt, &protocol conformance descriptor for PgQuery_ExplainStmt);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_CreateTableAsStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_IntoClause?, type metadata accessor for PgQuery_IntoClause, MEMORY[0x277D83D88]);
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
  v29 = a3;
  v30 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v26 = *(IntoClause - 8);
  v27 = IntoClause;
  MEMORY[0x28223BE20](IntoClause);
  v25 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v14 + 48))(v12, 1, Node) == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v16, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v17 = v33;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
    if (v17)
    {
      return;
    }

    v33 = 0;
  }

  v18 = v28;
  outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__into, v7, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  if ((*(v26 + 48))(v7, 1, v27) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  }

  else
  {
    v19 = v25;
    outlined init with take of PgQuery_OidList(v7, v25, type metadata accessor for PgQuery_IntoClause);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause, &protocol conformance descriptor for PgQuery_IntoClause);
    v20 = v33;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_IntoClause);
    if (v20)
    {
      return;
    }

    v33 = 0;
  }

  v21 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind);
  v22 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind + 8);
  ResultSetCursor.columns.modify();
  if (v23)
  {
    v31 = v21;
    v32 = v22;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v24 = v33;
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v24)
    {
      return;
    }
  }

  else
  {
    v24 = v33;
  }

  if (*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isSelectInto) != 1 || (dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v24))
  {
    if (*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }
  }
}

uint64_t closure #1 in static PgQuery_CreateTableAsStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v60 = *(IntoClause - 8);
  v61 = IntoClause;
  MEMORY[0x28223BE20](IntoClause);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v55 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMR);
  MEMORY[0x28223BE20](v59);
  v62 = &v55 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v58 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v55 - v17;
  v19 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v20 = *(v16 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, &v55 - v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = a2 + v19;
  v22 = a2;
  outlined init with copy of PgQuery_Alias?(v21, &v18[v20], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v23 = *(v10 + 48);
  if (v23(v18, 1, Node) == 1)
  {
    v24 = v23(&v18[v20], 1, Node);

    v25 = a1;
    if (v24 == 1)
    {
      outlined destroy of URL?(v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  outlined init with copy of PgQuery_Alias?(v18, v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v23(&v18[v20], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
LABEL_6:
    v26 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v27 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_7:
    v28 = v18;
LABEL_18:
    outlined destroy of URL?(v28, v26, v27);
    goto LABEL_19;
  }

  v29 = &v18[v20];
  v30 = v58;
  outlined init with take of PgQuery_OidList(v29, v58, type metadata accessor for PgQuery_Node);
  v31 = *(Node + 20);
  v32 = *&v14[v31];
  v33 = *(v30 + v31);
  v25 = a1;

  if (v32 != v33)
  {

    v34 = closure #1 in static PgQuery_Node.== infix(_:_:)(v32, v33);

    if (!v34)
    {
      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
      v26 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v27 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v35 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__into;
  v37 = *(v59 + 48);
  v38 = v62;
  outlined init with copy of PgQuery_Alias?(v25 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__into, v62, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  outlined init with copy of PgQuery_Alias?(v22 + v36, v38 + v37, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v39 = v61;
  v40 = *(v60 + 48);
  if (v40(v38, 1, v61) != 1)
  {
    v41 = v57;
    outlined init with copy of PgQuery_Alias?(v38, v57, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
    if (v40(v38 + v37, 1, v39) != 1)
    {
      v44 = v56;
      outlined init with take of PgQuery_OidList(v38 + v37, v56, type metadata accessor for PgQuery_IntoClause);
      v45 = *(v39 + 20);
      v46 = *(v41 + v45);
      v47 = *(v44 + v45);
      if (v46 == v47 || (, , v48 = closure #1 in static PgQuery_IntoClause.== infix(_:_:)(v46, v47), , , (v48 & 1) != 0))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v49 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_IntoClause);
        outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_IntoClause);
        outlined destroy of URL?(v38, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
        if ((v49 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_24;
      }

      outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_IntoClause);
      outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_IntoClause);
      v26 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd;
      v27 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR;
      goto LABEL_17;
    }

    outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_IntoClause);
LABEL_16:
    v26 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMd;
    v27 = &_s14BiomeSQLParser18PgQuery_IntoClauseVSg_ADtMR;
LABEL_17:
    v28 = v38;
    goto LABEL_18;
  }

  if (v40(v38 + v37, 1, v39) != 1)
  {
    goto LABEL_16;
  }

  outlined destroy of URL?(v38, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
LABEL_24:
  ResultSetCursor.columns.modify();
  v51 = v50;
  ResultSetCursor.columns.modify();
  if (v51 == v52 && *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isSelectInto) == *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isSelectInto))
  {
    v53 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists);

    v54 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists);

    v42 = v53 ^ v54 ^ 1;
    return v42 & 1;
  }

LABEL_19:

  v42 = 0;
  return v42 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateTableAsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableAsStmt and conformance PgQuery_CreateTableAsStmt, type metadata accessor for PgQuery_CreateTableAsStmt, &protocol conformance descriptor for PgQuery_CreateTableAsStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateTableAsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableAsStmt and conformance PgQuery_CreateTableAsStmt, type metadata accessor for PgQuery_CreateTableAsStmt, &protocol conformance descriptor for PgQuery_CreateTableAsStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v17 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v8 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  SeqStmt = type metadata accessor for PgQuery_CreateSeqStmt(0);
  v16 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(SeqStmt + 36), v6, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v8 + 48))(v6, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v6, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v11 = v18;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v6, v10, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v11 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RangeVar);
    if (v11)
    {
      return result;
    }
  }

  v13 = v16;
  if (!*(*v16 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v11))
  {
    if (!*(v13 + 8) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v11))
    {
      if (*(v13 + 12) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v11))
      {
        if (*(v13 + 13) != 1)
        {
          return UnknownStorage.traverse<A>(visitor:)();
        }

        result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
        if (!v11)
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
  *a2 = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateSeqStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSeqStmt and conformance PgQuery_CreateSeqStmt, type metadata accessor for PgQuery_CreateSeqStmt, &protocol conformance descriptor for PgQuery_CreateSeqStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v17 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v8 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterSeqStmt = type metadata accessor for PgQuery_AlterSeqStmt(0);
  v16 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterSeqStmt + 32), v6, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v8 + 48))(v6, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v6, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v11 = v18;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v6, v10, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v11 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RangeVar);
    if (v11)
    {
      return result;
    }
  }

  v13 = v16;
  if (!*(*v16 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v11))
  {
    if (*(v13 + 8) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v11))
    {
      if (*(v13 + 9) != 1)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }

      result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      if (!v11)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterSeqStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterSeqStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterSeqStmt and conformance PgQuery_AlterSeqStmt, type metadata accessor for PgQuery_AlterSeqStmt, &protocol conformance descriptor for PgQuery_AlterSeqStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  *(a1 + 32) = MEMORY[0x277D84F90];
  *(a1 + 40) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_VariableSetStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_VariableSetStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_VariableSetStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_VariableShowStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableShowStmt and conformance PgQuery_VariableShowStmt, type metadata accessor for PgQuery_VariableShowStmt, &protocol conformance descriptor for PgQuery_VariableShowStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_VariableShowStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableShowStmt and conformance PgQuery_VariableShowStmt, type metadata accessor for PgQuery_VariableShowStmt, &protocol conformance descriptor for PgQuery_VariableShowStmt);

  return MEMORY[0x28217E428](a1, Scan);
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DiscardStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DiscardStmt and conformance PgQuery_DiscardStmt, type metadata accessor for PgQuery_DiscardStmt, &protocol conformance descriptor for PgQuery_DiscardStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v4 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname) = MEMORY[0x277D84F90];
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
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v22 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v23 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v7 = *(*(RangeVar - 8) + 56);
  v7(v1 + v5, 1, 1, RangeVar);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname;
  v9 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname) = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = v9;
  v27 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row) = 0;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing) = 0;
  v25 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events) = 0;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns) = v9;
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v12, 1, 1, Node);
  v24 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) = 0;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels) = v9;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) = 0;
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) = 0;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel;
  v7(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel, 1, 1, RangeVar);
  v16 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v16;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;

  outlined assign with copy of PgQuery_Node?(a1 + v17, v1 + v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname);

  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v18 = v26;
  *(v1 + v27) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row);
  *(v1 + v18) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing);
  *(v1 + v25) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause, v1 + v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v24) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint);
  *(v1 + v14) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels);

  v19 = v29;
  *(v1 + v30) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable);
  *(v1 + v19) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred);
  v20 = v31;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel, v31, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  outlined assign with take of PgQuery_Node?(v20, v1 + v15, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  return v1;
}

uint64_t PgQuery_CreateTrigStmt._StorageClass.deinit()
{

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  return v0;
}

void type metadata completion function for PgQuery_CreateTrigStmt._StorageClass(uint64_t a1)
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
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v33 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v37 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v14 = *(RangeVar - 8);
  v15 = MEMORY[0x28223BE20](RangeVar);
  v34 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  v19 = *(a1 + 24);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  v39 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v21 = *(v14 + 48);
  v33 = v14 + 48;
  v22 = v21;
  if (v21(v13, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v18, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
      return outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    }

    outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
  }

  v24 = v39;
  if (*(*(v39 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v25 = Node;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  else
  {
    v25 = Node;
  }

  if (!*(*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    if (*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__row) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__timing) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
      {
        if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__events) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
        {
          if (!*(*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
          {
            v26 = v38;
            outlined init with copy of PgQuery_Alias?(v24 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause, v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if ((*(v37 + 48))(v26, 1, v25) == 1)
            {
              outlined destroy of URL?(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            }

            else
            {
              v27 = v26;
              v28 = v36;
              outlined init with take of PgQuery_OidList(v27, v36, type metadata accessor for PgQuery_Node);
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
              dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
              result = outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
              if (v4)
              {
                return result;
              }
            }

            if (*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
            {
              if (!*(*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
              {
                if (*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
                {
                  if (*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
                  {
                    v29 = v24 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel;
                    v30 = v35;
                    outlined init with copy of PgQuery_Alias?(v29, v35, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
                    if (v22(v30, 1, RangeVar) == 1)
                    {
                      return outlined destroy of URL?(v30, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
                    }

                    else
                    {
                      v31 = v30;
                      v32 = v34;
                      outlined init with take of PgQuery_OidList(v31, v34, type metadata accessor for PgQuery_RangeVar);
                      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
                      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
                      return outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_RangeVar);
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
  v78 = *(Node - 8);
  v79 = Node;
  MEMORY[0x28223BE20](Node);
  v75 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v76 = &v69 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v77);
  v9 = &v69 - v8;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v11 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v69 - v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v20 = MEMORY[0x28223BE20](v80);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v69 - v23;
  if (*(a1 + 16) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v73 = v9;
  v74 = v13;
  v71 = v17;
  v72 = v22;
  v25 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v26 = *(v80 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v25, &v24[v26], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v27 = *(v11 + 48);
  if (v27(v24, 1, RangeVar) == 1)
  {
    v28 = v27(&v24[v26], 1, RangeVar);

    if (v28 == 1)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_11;
    }

LABEL_8:
    v29 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v30 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v31 = v24;
LABEL_9:
    outlined destroy of URL?(v31, v29, v30);
    goto LABEL_31;
  }

  outlined init with copy of PgQuery_Alias?(v24, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v27(&v24[v26], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_8;
  }

  v32 = &v24[v26];
  v33 = v74;
  outlined init with take of PgQuery_OidList(v32, v74, type metadata accessor for PgQuery_RangeVar);

  v34 = specialized static PgQuery_RangeVar.== infix(_:_:)(v19, v33);
  outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v34 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v35 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname);
  v36 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcname);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v35, v36);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_31;
  }

  v38 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v39 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v40 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v38, v39);

  if ((v40 & 1) == 0)
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

  v41 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);
  v42 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns);

  v43 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v41, v42);

  if ((v43 & 1) == 0)
  {
    goto LABEL_31;
  }

  v70 = v27;
  v44 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause;
  v45 = *(v77 + 48);
  v46 = v73;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whenClause, v73, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v44, v46 + v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v47 = v79;
  v48 = *(v78 + 48);
  if (v48(v46, 1, v79) != 1)
  {
    v49 = v76;
    outlined init with copy of PgQuery_Alias?(v46, v76, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v48(v46 + v45, 1, v47) != 1)
    {
      v50 = v46 + v45;
      v51 = v75;
      outlined init with take of PgQuery_OidList(v50, v75, type metadata accessor for PgQuery_Node);
      v52 = *(v47 + 20);
      v53 = *(v49 + v52);
      v54 = *(v51 + v52);
      if (v53 == v54 || (, , v55 = closure #1 in static PgQuery_Node.== infix(_:_:)(v53, v54), , , v55))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v56 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v56)
        {
          goto LABEL_27;
        }

LABEL_31:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
      v29 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v30 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_23;
    }

    outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
LABEL_22:
    v29 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v30 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_23:
    v31 = v46;
    goto LABEL_9;
  }

  if (v48(v46 + v45, 1, v47) != 1)
  {
    goto LABEL_22;
  }

  outlined destroy of URL?(v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_27:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isconstraint))
  {
    goto LABEL_31;
  }

  v57 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels);
  v58 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__transitionRels);

  v59 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v57, v58);

  if ((v59 & 1) == 0 || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__deferrable) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initdeferred))
  {
    goto LABEL_31;
  }

  v61 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel;
  v62 = *(v80 + 48);
  v63 = v72;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateTrigStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constrrel, v72, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v61, v63 + v62, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v64 = v70;
  if (v70(v63, 1, RangeVar) == 1)
  {

    if (v64(v63 + v62, 1, RangeVar) == 1)
    {
      outlined destroy of URL?(v72, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      return 1;
    }

LABEL_39:
    outlined destroy of URL?(v72, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    return 0;
  }

  outlined init with copy of PgQuery_Alias?(v63, v71, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v64(v63 + v62, 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_39;
  }

  v65 = v72;
  v66 = v74;
  outlined init with take of PgQuery_OidList(&v72[v62], v74, type metadata accessor for PgQuery_RangeVar);
  v67 = v71;
  v68 = specialized static PgQuery_RangeVar.== infix(_:_:)(v71, v66);

  outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v65, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  return (v68 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateTrigStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTrigStmt and conformance PgQuery_CreateTrigStmt, type metadata accessor for PgQuery_CreateTrigStmt, &protocol conformance descriptor for PgQuery_CreateTrigStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateTrigStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTrigStmt and conformance PgQuery_CreateTrigStmt, type metadata accessor for PgQuery_CreateTrigStmt, &protocol conformance descriptor for PgQuery_CreateTrigStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v1 = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreatePLangStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreatePLangStmt and conformance PgQuery_CreatePLangStmt, type metadata accessor for PgQuery_CreatePLangStmt, &protocol conformance descriptor for PgQuery_CreatePLangStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  *(a1 + 32) = MEMORY[0x277D84F90];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateRoleStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRoleStmt and conformance PgQuery_CreateRoleStmt, type metadata accessor for PgQuery_CreateRoleStmt, &protocol conformance descriptor for PgQuery_CreateRoleStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateRoleStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRoleStmt and conformance PgQuery_CreateRoleStmt, type metadata accessor for PgQuery_CreateRoleStmt, &protocol conformance descriptor for PgQuery_CreateRoleStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v17 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v8 = *(RoleSpec - 8);
  MEMORY[0x28223BE20](RoleSpec);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterRoleStmt = type metadata accessor for PgQuery_AlterRoleStmt(0);
  v16 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterRoleStmt + 28), v6, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v8 + 48))(v6, 1, RoleSpec) == 1)
  {
    outlined destroy of URL?(v6, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v11 = v18;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v6, v10, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
    v11 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RoleSpec);
    if (v11)
    {
      return result;
    }
  }

  v13 = v16;
  if (!*(*v16 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v11))
  {
    if (!*(v13 + 8))
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (!v11)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterRoleStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterRoleStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleStmt and conformance PgQuery_AlterRoleStmt, type metadata accessor for PgQuery_AlterRoleStmt, &protocol conformance descriptor for PgQuery_AlterRoleStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterRoleStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleStmt and conformance PgQuery_AlterRoleStmt, type metadata accessor for PgQuery_AlterRoleStmt, &protocol conformance descriptor for PgQuery_AlterRoleStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropRoleStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropRoleStmt and conformance PgQuery_DropRoleStmt, type metadata accessor for PgQuery_DropRoleStmt, &protocol conformance descriptor for PgQuery_DropRoleStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropRoleStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropRoleStmt and conformance PgQuery_DropRoleStmt, type metadata accessor for PgQuery_DropRoleStmt, &protocol conformance descriptor for PgQuery_DropRoleStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DropRoleStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropRoleStmt and conformance PgQuery_DropRoleStmt, type metadata accessor for PgQuery_DropRoleStmt, &protocol conformance descriptor for PgQuery_DropRoleStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_LockStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockStmt and conformance PgQuery_LockStmt, type metadata accessor for PgQuery_LockStmt, &protocol conformance descriptor for PgQuery_LockStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_LockStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockStmt and conformance PgQuery_LockStmt, type metadata accessor for PgQuery_LockStmt, &protocol conformance descriptor for PgQuery_LockStmt);

  return MEMORY[0x28217E428](a1, Scan);
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ConstraintsSetStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConstraintsSetStmt and conformance PgQuery_ConstraintsSetStmt, type metadata accessor for PgQuery_ConstraintsSetStmt, &protocol conformance descriptor for PgQuery_ConstraintsSetStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
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
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v10 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3)
  {
    v13 = *(v3 + 8);
    v18 = *v3;
    v19 = v13;
    lazy protocol witness table accessor for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  ReindexStmt = type metadata accessor for PgQuery_ReindexStmt(0);
  outlined init with copy of PgQuery_Alias?(v3 + *(ReindexStmt + 36), v8, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v10 + 48))(v8, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v15 = v5;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v15 = v5;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeVar);
    if (v5)
    {
      return result;
    }
  }

  v16 = v3[3];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v15))
  {
    if (!*(v3 + 8) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v15))
    {
      if (*(v3 + 36) != 1)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }

      result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      if (!v15)
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ReindexStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReindexStmt and conformance PgQuery_ReindexStmt, type metadata accessor for PgQuery_ReindexStmt, &protocol conformance descriptor for PgQuery_ReindexStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ReindexStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReindexStmt and conformance PgQuery_ReindexStmt, type metadata accessor for PgQuery_ReindexStmt, &protocol conformance descriptor for PgQuery_ReindexStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CheckPointStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CheckPointStmt and conformance PgQuery_CheckPointStmt, type metadata accessor for PgQuery_CheckPointStmt, &protocol conformance descriptor for PgQuery_CheckPointStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CheckPointStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CheckPointStmt and conformance PgQuery_CheckPointStmt, type metadata accessor for PgQuery_CheckPointStmt, &protocol conformance descriptor for PgQuery_CheckPointStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v10 = *(RoleSpec - 8);
  MEMORY[0x28223BE20](RoleSpec);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 8);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  SchemaStmt = type metadata accessor for PgQuery_CreateSchemaStmt(0);
  outlined init with copy of PgQuery_Alias?(v3 + *(SchemaStmt + 32), v8, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v10 + 48))(v8, 1, RoleSpec) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v16 = v5;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
    v16 = v5;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
    if (v5)
    {
      return result;
    }
  }

  if (!*(*(v3 + 16) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v16))
  {
    if (*(v3 + 24) != 1)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (!v16)
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
  *(a2 + 16) = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateSchemaStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSchemaStmt and conformance PgQuery_CreateSchemaStmt, type metadata accessor for PgQuery_CreateSchemaStmt, &protocol conformance descriptor for PgQuery_CreateSchemaStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateSchemaStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateSchemaStmt and conformance PgQuery_CreateSchemaStmt, type metadata accessor for PgQuery_CreateSchemaStmt, &protocol conformance descriptor for PgQuery_CreateSchemaStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterDatabaseStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseStmt and conformance PgQuery_AlterDatabaseStmt, type metadata accessor for PgQuery_AlterDatabaseStmt, &protocol conformance descriptor for PgQuery_AlterDatabaseStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterDatabaseStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseStmt and conformance PgQuery_AlterDatabaseStmt, type metadata accessor for PgQuery_AlterDatabaseStmt, &protocol conformance descriptor for PgQuery_AlterDatabaseStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v11 = *(VariableSetStmt - 8);
  MEMORY[0x28223BE20](VariableSetStmt);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v3[1];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v19 = a2;
    v5 = 0;
  }

  else
  {
    v19 = a2;
  }

  AlterDatabaseSetStmt = type metadata accessor for PgQuery_AlterDatabaseSetStmt(0);
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterDatabaseSetStmt + 24), v9, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  if ((*(v11 + 48))(v9, 1, VariableSetStmt) == 1)
  {
    outlined destroy of URL?(v9, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v9, v13, type metadata accessor for PgQuery_VariableSetStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_VariableSetStmt);
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterDatabaseSetStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDatabaseSetStmt and conformance PgQuery_AlterDatabaseSetStmt, type metadata accessor for PgQuery_AlterDatabaseSetStmt, &protocol conformance descriptor for PgQuery_AlterDatabaseSetStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v29 = &v25 - v6;
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v27 = *(VariableSetStmt - 8);
  v28 = VariableSetStmt;
  MEMORY[0x28223BE20](VariableSetStmt);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v13 = *(RoleSpec - 8);
  MEMORY[0x28223BE20](RoleSpec);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterRoleSetStmt = type metadata accessor for PgQuery_AlterRoleSetStmt(0);
  outlined init with copy of PgQuery_Alias?(v4 + *(AlterRoleSetStmt + 24), v11, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v13 + 48))(v11, 1, RoleSpec) == 1)
  {
    outlined destroy of URL?(v11, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v17 = v33;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v11, v15, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
    v17 = v33;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_RoleSpec);
    if (v17)
    {
      return result;
    }
  }

  v19 = v4[1];
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    v21 = v29;
    if (v17)
    {
      return result;
    }

    v22 = 0;
  }

  else
  {
    v22 = v17;
    v21 = v29;
  }

  outlined init with copy of PgQuery_Alias?(v4 + *(AlterRoleSetStmt + 28), v21, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  if ((*(v27 + 48))(v21, 1, v28) == 1)
  {
    outlined destroy of URL?(v21, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  }

  else
  {
    v23 = v21;
    v24 = v26;
    outlined init with take of PgQuery_OidList(v23, v26, type metadata accessor for PgQuery_VariableSetStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VariableSetStmt and conformance PgQuery_VariableSetStmt, type metadata accessor for PgQuery_VariableSetStmt, &protocol conformance descriptor for PgQuery_VariableSetStmt);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_VariableSetStmt);
    if (v22)
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterRoleSetStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterRoleSetStmt and conformance PgQuery_AlterRoleSetStmt, type metadata accessor for PgQuery_AlterRoleSetStmt, &protocol conformance descriptor for PgQuery_AlterRoleSetStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateConversionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateConversionStmt and conformance PgQuery_CreateConversionStmt, type metadata accessor for PgQuery_CreateConversionStmt, &protocol conformance descriptor for PgQuery_CreateConversionStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateConversionStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateConversionStmt and conformance PgQuery_CreateConversionStmt, type metadata accessor for PgQuery_CreateConversionStmt, &protocol conformance descriptor for PgQuery_CreateConversionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_CreateCastStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sourcetype, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__func, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_CreateCastStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_ObjectWithArgs?, type metadata accessor for PgQuery_ObjectWithArgs, MEMORY[0x277D83D88]);
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
  v35 = a3;
  v36 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = &v29 - v6;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v31 = *(ObjectWithArgs - 8);
  MEMORY[0x28223BE20](ObjectWithArgs);
  v29 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v15 = *(TypeName - 8);
  v16 = MEMORY[0x28223BE20](TypeName);
  v30 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  v39 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sourcetype, v13, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v20 = *(v15 + 48);
  if (v20(v13, 1, TypeName) == 1)
  {
    outlined destroy of URL?(v13, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v21 = v34;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v19, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    v22 = v34;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v21 = v22;
    result = outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_TypeName);
    if (v22)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v39 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype, v11, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v20(v11, 1, TypeName) == 1)
  {
    outlined destroy of URL?(v11, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    v24 = v30;
    outlined init with take of PgQuery_OidList(v11, v30, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_TypeName);
    if (v21)
    {
      return result;
    }
  }

  v25 = v32;
  outlined init with copy of PgQuery_Alias?(v39 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__func, v32, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((*(v31 + 48))(v25, 1, ObjectWithArgs) == 1)
  {
    result = outlined destroy of URL?(v25, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  }

  else
  {
    v26 = v25;
    v27 = v29;
    outlined init with take of PgQuery_OidList(v26, v29, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v21)
    {
      return result;
    }
  }

  if (!*(v39 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context) || (v28 = *(v39 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context + 8), v37 = *(v39 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context), v38 = v28, lazy protocol witness table accessor for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v21))
  {
    if (*(v39 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inout) == 1)
    {
      return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_CreateCastStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v62 = *(ObjectWithArgs - 8);
  v63 = ObjectWithArgs;
  MEMORY[0x28223BE20](ObjectWithArgs);
  v59 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v58 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR);
  MEMORY[0x28223BE20](v61);
  v64 = &v58 - v7;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v9 = *(TypeName - 8);
  MEMORY[0x28223BE20](TypeName);
  v66 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v65 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  v17 = MEMORY[0x28223BE20](v16);
  v68 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  v22 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sourcetype;
  v67 = v19;
  v23 = *(v19 + 48);
  v24 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sourcetype, &v58 - v20, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined init with copy of PgQuery_Alias?(v69 + v22, &v21[v23], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v25 = *(v9 + 48);
  if (v25(v21, 1, TypeName) == 1)
  {
    v26 = v25(&v21[v23], 1, TypeName);

    if (v26 == 1)
    {
      outlined destroy of URL?(v21, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      v27 = a1;
      goto LABEL_8;
    }

LABEL_6:
    outlined destroy of URL?(v21, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
    goto LABEL_33;
  }

  outlined init with copy of PgQuery_Alias?(v21, v15, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v25(&v21[v23], 1, TypeName) == 1)
  {

    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_TypeName);
    goto LABEL_6;
  }

  v28 = v66;
  outlined init with take of PgQuery_OidList(&v21[v23], v66, type metadata accessor for PgQuery_TypeName);
  v27 = v24;

  v29 = specialized static PgQuery_TypeName.== infix(_:_:)(v15, v28);
  outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_TypeName);
  outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_TypeName);
  outlined destroy of URL?(v21, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((v29 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_8:
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype;
  v31 = *(v67 + 48);
  v32 = v27;
  v33 = v27 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype;
  v34 = v68;
  outlined init with copy of PgQuery_Alias?(v33, v68, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined init with copy of PgQuery_Alias?(v69 + v30, v34 + v31, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v25(v34, 1, TypeName) == 1)
  {
    v35 = v25((v34 + v31), 1, TypeName);
    v36 = v32;
    if (v35 == 1)
    {
      outlined destroy of URL?(v34, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      goto LABEL_16;
    }

LABEL_13:
    v38 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v39 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    v40 = v34;
LABEL_32:
    outlined destroy of URL?(v40, v38, v39);
    goto LABEL_33;
  }

  v37 = v65;
  outlined init with copy of PgQuery_Alias?(v34, v65, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v25((v34 + v31), 1, TypeName) == 1)
  {
    outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_TypeName);
    goto LABEL_13;
  }

  v41 = v66;
  outlined init with take of PgQuery_OidList(v34 + v31, v66, type metadata accessor for PgQuery_TypeName);
  v42 = specialized static PgQuery_TypeName.== infix(_:_:)(v37, v41);
  outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_TypeName);
  outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_TypeName);
  outlined destroy of URL?(v34, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v36 = v32;
  if ((v42 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_16:
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__func;
  v44 = *(v61 + 48);
  v45 = v64;
  outlined init with copy of PgQuery_Alias?(v36 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__func, v64, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  outlined init with copy of PgQuery_Alias?(v69 + v43, v45 + v44, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v46 = v63;
  v47 = *(v62 + 48);
  if (v47(v45, 1, v63) == 1)
  {
    if (v47(v45 + v44, 1, v46) == 1)
    {
      outlined destroy of URL?(v45, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  v50 = v60;
  outlined init with copy of PgQuery_Alias?(v45, v60, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if (v47(v45 + v44, 1, v46) == 1)
  {
    outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_26:
    v38 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd;
    v39 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR;
LABEL_31:
    v40 = v45;
    goto LABEL_32;
  }

  v51 = v45 + v44;
  v52 = v59;
  outlined init with take of PgQuery_OidList(v51, v59, type metadata accessor for PgQuery_ObjectWithArgs);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v50, *v52) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v50 + 8), *(v52 + 8)) & 1) == 0 || *(v50 + 16) != *(v52 + 16))
  {
    outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_ObjectWithArgs);
    outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_ObjectWithArgs);
    v38 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd;
    v39 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR;
    goto LABEL_31;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_ObjectWithArgs);
  outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_ObjectWithArgs);
  outlined destroy of URL?(v45, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((v57 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_19:
  v48 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context);
  v49 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context);
  if (*(v69 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context + 8) != 1)
  {
    if (v48 != v49)
    {
      goto LABEL_33;
    }

LABEL_36:
    v55 = *(v36 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inout);

    v56 = *(v69 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inout);

    v53 = v55 ^ v56 ^ 1;
    return v53 & 1;
  }

  if (v49 > 1)
  {
    if (v49 == 2)
    {
      if (v48 != 2)
      {
        goto LABEL_33;
      }
    }

    else if (v48 != 3)
    {
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  if (v49)
  {
    if (v48 != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_36;
  }

  if (!v48)
  {
    goto LABEL_36;
  }

LABEL_33:

  v53 = 0;
  return v53 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateCastStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateCastStmt and conformance PgQuery_CreateCastStmt, type metadata accessor for PgQuery_CreateCastStmt, &protocol conformance descriptor for PgQuery_CreateCastStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateCastStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateCastStmt and conformance PgQuery_CreateCastStmt, type metadata accessor for PgQuery_CreateCastStmt, &protocol conformance descriptor for PgQuery_CreateCastStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v18 = *(TypeName - 8);
  v19 = TypeName;
  MEMORY[0x28223BE20](TypeName);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v3 + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v20 = a1;
    v5 = 0;
  }

  else
  {
    v20 = a1;
  }

  if (*(*(v3 + 8) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v14 = v5;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v14 = v5;
  }

  v15 = *(v3 + 24);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v16 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v14))
  {
    OpClassStmt = type metadata accessor for PgQuery_CreateOpClassStmt(0);
    outlined init with copy of PgQuery_Alias?(v3 + *(OpClassStmt + 40), v9, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    if ((*(v18 + 48))(v9, 1, v19) == 1)
    {
      outlined destroy of URL?(v9, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v9, v12, type metadata accessor for PgQuery_TypeName);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TypeName);
      if (v14)
      {
        return result;
      }
    }

    if (!*(*(v3 + 32) + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v14))
    {
      if (*(v3 + 40) != 1)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }

      result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      if (!v14)
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateOpClassStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateOpClassStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassStmt and conformance PgQuery_CreateOpClassStmt, type metadata accessor for PgQuery_CreateOpClassStmt, &protocol conformance descriptor for PgQuery_CreateOpClassStmt);

  return MEMORY[0x28217E428](a1, Scan);
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateOpFamilyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpFamilyStmt and conformance PgQuery_CreateOpFamilyStmt, type metadata accessor for PgQuery_CreateOpFamilyStmt, &protocol conformance descriptor for PgQuery_CreateOpFamilyStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
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
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = v1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterOpFamilyStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOpFamilyStmt and conformance PgQuery_AlterOpFamilyStmt, type metadata accessor for PgQuery_AlterOpFamilyStmt, &protocol conformance descriptor for PgQuery_AlterOpFamilyStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterOpFamilyStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOpFamilyStmt and conformance PgQuery_AlterOpFamilyStmt, type metadata accessor for PgQuery_AlterOpFamilyStmt, &protocol conformance descriptor for PgQuery_AlterOpFamilyStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterOpFamilyStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOpFamilyStmt and conformance PgQuery_AlterOpFamilyStmt, type metadata accessor for PgQuery_AlterOpFamilyStmt, &protocol conformance descriptor for PgQuery_AlterOpFamilyStmt);

  return Message.hash(into:)();
}

char *PgQuery_PrepareStmt._StorageClass.init(copying:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0xE000000000000000;
  *(v1 + 4) = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(&v1[v6], 1, 1, Node);
  v8 = a1[3];
  *(v1 + 2) = a1[2];
  *(v1 + 3) = v8;
  *(v1 + 4) = a1[4];
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;

  outlined init with copy of PgQuery_Alias?(a1 + v9, v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v5, &v1[v6], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v17 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v10 + 48))(v8, 1, Node) == 1)
      {
        return outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v15 = v17;
        outlined init with take of PgQuery_OidList(v8, v17, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        return outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_PrepareStmt.== infix(_:_:)(void *a1, void *a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  if (*(a1 + 1) != *(a2 + 1) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v30 = v7;
  v14 = a1[4];
  v15 = a2[4];

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v14, v15);

  if ((NodeV_Tt1g5 & 1) == 0)
  {

    return 0;
  }

  v17 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v18 = *(v11 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v13[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(v5 + 48);
  if (v19(v13, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v13, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v19(&v13[v18], 1, Node) == 1)
    {

      outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
      goto LABEL_10;
    }

    v23 = v30;
    outlined init with take of PgQuery_OidList(&v13[v18], v30, type metadata accessor for PgQuery_Node);
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
        goto LABEL_11;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v28 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    return (v28 & 1) != 0;
  }

  if (v19(&v13[v18], 1, Node) != 1)
  {
LABEL_10:
    v20 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v21 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_11:
    outlined destroy of URL?(v13, v20, v21);
    return 0;
  }

  outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_PrepareStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PrepareStmt and conformance PgQuery_PrepareStmt, type metadata accessor for PgQuery_PrepareStmt, &protocol conformance descriptor for PgQuery_PrepareStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_PrepareStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PrepareStmt and conformance PgQuery_PrepareStmt, type metadata accessor for PgQuery_PrepareStmt, &protocol conformance descriptor for PgQuery_PrepareStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_PrepareStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PrepareStmt and conformance PgQuery_PrepareStmt, type metadata accessor for PgQuery_PrepareStmt, &protocol conformance descriptor for PgQuery_PrepareStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ExecuteStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExecuteStmt and conformance PgQuery_ExecuteStmt, type metadata accessor for PgQuery_ExecuteStmt, &protocol conformance descriptor for PgQuery_ExecuteStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ExecuteStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExecuteStmt and conformance PgQuery_ExecuteStmt, type metadata accessor for PgQuery_ExecuteStmt, &protocol conformance descriptor for PgQuery_ExecuteStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ExecuteStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ExecuteStmt and conformance PgQuery_ExecuteStmt, type metadata accessor for PgQuery_ExecuteStmt, &protocol conformance descriptor for PgQuery_ExecuteStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DeallocateStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeallocateStmt and conformance PgQuery_DeallocateStmt, type metadata accessor for PgQuery_DeallocateStmt, &protocol conformance descriptor for PgQuery_DeallocateStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DeallocateStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeallocateStmt and conformance PgQuery_DeallocateStmt, type metadata accessor for PgQuery_DeallocateStmt, &protocol conformance descriptor for PgQuery_DeallocateStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_DeclareCursorStmt.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = *(type metadata accessor for PgQuery_DeclareCursorStmt(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_DeclareCursorStmt._StorageClass(0);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0xE000000000000000;
    *(v10 + 32) = 0;
    v11 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
    v18 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v10 + v11, 1, 1, Node);
    v13 = *(v9 + 24);
    *(v10 + 16) = *(v9 + 16);
    *(v10 + 24) = v13;
    *(v10 + 32) = *(v9 + 32);
    outlined init with copy of PgQuery_Alias?(v9 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

    outlined assign with take of PgQuery_Node?(v6, v10 + v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v3 + v7) = v10;
  }

  v14 = v19;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v14)
  {
    while ((v16 & 1) == 0)
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
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
  {
    if (!*(a1 + 32) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v9 + 48))(v8, 1, Node) == 1)
      {
        return outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        outlined init with take of PgQuery_OidList(v8, v11, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        return outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_DeclareCursorStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (*(a1 + 16) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v27 = v7;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  v15 = *(v11 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v14, &v13[v15], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v13, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v16(&v13[v15], 1, Node) != 1)
    {
      v20 = v27;
      outlined init with take of PgQuery_OidList(&v13[v15], v27, type metadata accessor for PgQuery_Node);
      v21 = *(Node + 20);
      v22 = *&v10[v21];
      v23 = *(v20 + v21);
      if (v22 == v23 || (, , v24 = closure #1 in static PgQuery_Node.== infix(_:_:)(v22, v23), , , v24))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        return (v25 & 1) != 0;
      }

      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
      v17 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v18 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_10:
      outlined destroy of URL?(v13, v17, v18);
      return 0;
    }

    outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
LABEL_9:
    v17 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v18 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_10;
  }

  if (v16(&v13[v15], 1, Node) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DeclareCursorStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeclareCursorStmt and conformance PgQuery_DeclareCursorStmt, type metadata accessor for PgQuery_DeclareCursorStmt, &protocol conformance descriptor for PgQuery_DeclareCursorStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DeclareCursorStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeclareCursorStmt and conformance PgQuery_DeclareCursorStmt, type metadata accessor for PgQuery_DeclareCursorStmt, &protocol conformance descriptor for PgQuery_DeclareCursorStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v10 = *(RoleSpec - 8);
  MEMORY[0x28223BE20](RoleSpec);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v3[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  TableSpaceStmt = type metadata accessor for PgQuery_CreateTableSpaceStmt(0);
  outlined init with copy of PgQuery_Alias?(v3 + *(TableSpaceStmt + 32), v8, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v10 + 48))(v8, 1, RoleSpec) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v16 = v5;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
    v16 = v5;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
    if (v5)
    {
      return result;
    }
  }

  v17 = v3[3];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v16))
  {
    if (!*(v3[4] + 16))
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (!v16)
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
  *(a2 + 4) = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v4 = *(a1 + 32);
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v6 = *(*(RoleSpec - 8) + 56);

  return v6(&a2[v4], 1, 1, RoleSpec);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateTableSpaceStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableSpaceStmt and conformance PgQuery_CreateTableSpaceStmt, type metadata accessor for PgQuery_CreateTableSpaceStmt, &protocol conformance descriptor for PgQuery_CreateTableSpaceStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateTableSpaceStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateTableSpaceStmt and conformance PgQuery_CreateTableSpaceStmt, type metadata accessor for PgQuery_CreateTableSpaceStmt, &protocol conformance descriptor for PgQuery_CreateTableSpaceStmt);

  return MEMORY[0x28217E428](a1, Scan);
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropTableSpaceStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropTableSpaceStmt and conformance PgQuery_DropTableSpaceStmt, type metadata accessor for PgQuery_DropTableSpaceStmt, &protocol conformance descriptor for PgQuery_DropTableSpaceStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_AlterObjectDependsStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_AlterObjectDependsStmt._StorageClass(uint64_t a1)
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
  v46 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v39 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  v44 = Node;
  v45 = v10;
  v11 = MEMORY[0x28223BE20](Node);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v39 - v15;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v18 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  v22 = a1;
  v23 = *(a1 + 24);
  ResultSetCursor.columns.modify();
  if (v24)
  {
    v47 = v21;
    v48 = v23;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v25 = v49;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v25)
    {
      return result;
    }

    v49 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v22 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v18 + 48))(v16, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v27 = v45;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v16, v20, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v28 = v49;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
    v27 = v45;
    if (v28)
    {
      return result;
    }

    v49 = 0;
  }

  v29 = v42;
  outlined init with copy of PgQuery_Alias?(v22 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v42, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v30 = *(v27 + 48);
  v31 = v44;
  v32 = v30(v29, 1, v44);
  v33 = v43;
  if (v32 == 1)
  {
    outlined destroy of URL?(v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v46 = v22;
    v34 = v29;
    v35 = v41;
    outlined init with take of PgQuery_OidList(v34, v41, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v36 = v49;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_Node);
    if (v36)
    {
      return result;
    }

    v49 = 0;
    v22 = v46;
  }

  outlined init with copy of PgQuery_Alias?(v22 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname, v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v30(v33, 1, v31) == 1)
  {
    result = outlined destroy of URL?(v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v37 = v40;
    outlined init with take of PgQuery_OidList(v33, v40, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v38 = v49;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_Node);
    if (v38)
    {
      return result;
    }
  }

  if (*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__remove) == 1)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static PgQuery_AlterObjectDependsStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v77 = *(Node - 8);
  v78 = Node;
  v5 = MEMORY[0x28223BE20](Node);
  v70 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v72 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v71 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v75 = &v70 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v12 = MEMORY[0x28223BE20](v76);
  v73 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v79 = &v70 - v14;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v16 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v74 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v70 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x28223BE20](v21);
  v23 = &v70 - v22;
  ResultSetCursor.columns.modify();
  v25 = v24;
  ResultSetCursor.columns.modify();
  if (v25 != v26)
  {
    goto LABEL_27;
  }

  v27 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v28 = *(v21 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v27, &v23[v28], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v29 = *(v16 + 48);
  if (v29(v23, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v23, v20, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v29(&v23[v28], 1, RangeVar) != 1)
    {
      v35 = v74;
      outlined init with take of PgQuery_OidList(&v23[v28], v74, type metadata accessor for PgQuery_RangeVar);
      v31 = a1;

      v36 = specialized static PgQuery_RangeVar.== infix(_:_:)(v20, v35);
      outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of URL?(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v36 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_9;
    }

    outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
LABEL_7:
    v32 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v33 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v34 = v23;
LABEL_25:
    outlined destroy of URL?(v34, v32, v33);
    goto LABEL_26;
  }

  v30 = v29(&v23[v28], 1, RangeVar);

  v31 = a1;
  if (v30 != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of URL?(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_9:
  v37 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v38 = v76;
  v39 = *(v76 + 48);
  v40 = v79;
  outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v79, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v37, v40 + v39, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v41 = v78;
  v42 = *(v77 + 48);
  if (v42(v40, 1, v78) == 1)
  {
    if (v42(v40 + v39, 1, v41) != 1)
    {
LABEL_23:
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v33 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_24:
      v34 = v40;
      goto LABEL_25;
    }

    outlined destroy of URL?(v40, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    goto LABEL_17;
  }

  v43 = v75;
  outlined init with copy of PgQuery_Alias?(v40, v75, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v42(v40 + v39, 1, v41) == 1)
  {
    v44 = v43;
LABEL_22:
    outlined destroy of PgQuery_OidList(v44, type metadata accessor for PgQuery_Node);
    goto LABEL_23;
  }

  v45 = v40 + v39;
  v46 = v72;
  outlined init with take of PgQuery_OidList(v45, v72, type metadata accessor for PgQuery_Node);
  v47 = *(v41 + 20);
  v48 = *(v43 + v47);
  v49 = *(v46 + v47);
  if (v48 != v49)
  {

    v50 = closure #1 in static PgQuery_Node.== infix(_:_:)(v48, v49);

    if (!v50)
    {
      outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_Node);
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v33 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v34 = v79;
      goto LABEL_25;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v51 = v75;
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v79, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v52)
  {
LABEL_17:
    v53 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname;
    v54 = *(v38 + 48);
    v55 = v73;
    outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname, v73, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v56 = a2 + v53;
    v40 = v55;
    outlined init with copy of PgQuery_Alias?(v56, v55 + v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v42(v55, 1, v41) == 1)
    {
      if (v42(v55 + v54, 1, v41) == 1)
      {
        outlined destroy of URL?(v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_32:
        v68 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__remove);

        v69 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__remove);

        v59 = v68 ^ v69 ^ 1;
        return v59 & 1;
      }

      goto LABEL_23;
    }

    v57 = v55;
    v58 = v71;
    outlined init with copy of PgQuery_Alias?(v57, v71, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v42(v40 + v54, 1, v41) != 1)
    {
      v61 = v40 + v54;
      v62 = v70;
      outlined init with take of PgQuery_OidList(v61, v70, type metadata accessor for PgQuery_Node);
      v63 = *(v41 + 20);
      v64 = *(v58 + v63);
      v65 = *(v62 + v63);
      if (v64 == v65 || (, , v66 = closure #1 in static PgQuery_Node.== infix(_:_:)(v64, v65), , , v66))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v67 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v40, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v67)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }

      outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v33 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_24;
    }

    v44 = v58;
    goto LABEL_22;
  }

LABEL_26:

LABEL_27:
  v59 = 0;
  return v59 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterObjectDependsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectDependsStmt and conformance PgQuery_AlterObjectDependsStmt, type metadata accessor for PgQuery_AlterObjectDependsStmt, &protocol conformance descriptor for PgQuery_AlterObjectDependsStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterObjectDependsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectDependsStmt and conformance PgQuery_AlterObjectDependsStmt, type metadata accessor for PgQuery_AlterObjectDependsStmt, &protocol conformance descriptor for PgQuery_AlterObjectDependsStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterObjectDependsStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectDependsStmt and conformance PgQuery_AlterObjectDependsStmt, type metadata accessor for PgQuery_AlterObjectDependsStmt, &protocol conformance descriptor for PgQuery_AlterObjectDependsStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterObjectSchemaStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_AlterObjectSchemaStmt._StorageClass(uint64_t a1)
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
  v33 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v28 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v30 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v12 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = a1;
  v17 = *(a1 + 24);
  ResultSetCursor.columns.modify();
  if (v18)
  {
    v34 = v15;
    v35 = v17;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v19 = v36;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v19)
    {
      return result;
    }

    v36 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v16 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v10, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v12 + 48))(v10, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v10, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v14, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v21 = v36;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_RangeVar);
    if (v21)
    {
      return result;
    }

    v36 = 0;
  }

  v22 = v31;
  outlined init with copy of PgQuery_Alias?(v16 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v30 + 48))(v22, 1, Node) == 1)
  {
    result = outlined destroy of URL?(v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v23 = v36;
  }

  else
  {
    v24 = v22;
    v25 = v29;
    outlined init with take of PgQuery_OidList(v24, v29, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v23 = v36;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    if (v23)
    {
      return result;
    }
  }

  v26 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema + 8);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema) & 0xFFFFFFFFFFFFLL;
  }

  if (!v27 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v23))
  {
    if (*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) == 1)
    {
      return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_AlterObjectSchemaStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v51 = *(Node - 8);
  v52 = Node;
  MEMORY[0x28223BE20](Node);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v47 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v50);
  v53 = &v47 - v9;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v11 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v49 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v54 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  ResultSetCursor.columns.modify();
  v19 = v18;
  ResultSetCursor.columns.modify();
  if (v19 != v20)
  {
    goto LABEL_17;
  }

  v47 = v6;
  v21 = a2;
  v22 = OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v23 = *(v15 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(v21 + v22, &v17[v23], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v24 = *(v11 + 48);
  if (v24(v17, 1, RangeVar) != 1)
  {
    v26 = v54;
    outlined init with copy of PgQuery_Alias?(v17, v54, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v24(&v17[v23], 1, RangeVar) != 1)
    {
      v29 = v49;
      outlined init with take of PgQuery_OidList(&v17[v23], v49, type metadata accessor for PgQuery_RangeVar);

      v30 = specialized static PgQuery_RangeVar.== infix(_:_:)(v26, v29);
      outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v30 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_RangeVar);
LABEL_7:
    v27 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v28 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
LABEL_15:
    outlined destroy of URL?(v17, v27, v28);
    goto LABEL_16;
  }

  v25 = v24(&v17[v23], 1, RangeVar);

  if (v25 != 1)
  {
    goto LABEL_7;
  }

  outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_9:
  v31 = OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v32 = *(v50 + 48);
  v17 = v53;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v53, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v21 + v31, &v17[v32], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = v52;
  v34 = *(v51 + 48);
  if (v34(v17, 1, v52) == 1)
  {
    if (v34(&v17[v32], 1, v33) == 1)
    {
      outlined destroy of URL?(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  v35 = v48;
  outlined init with copy of PgQuery_Alias?(v17, v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v34(&v17[v32], 1, v33) == 1)
  {
    outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_Node);
LABEL_14:
    v27 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v28 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_15;
  }

  v38 = v47;
  outlined init with take of PgQuery_OidList(&v17[v32], v47, type metadata accessor for PgQuery_Node);
  v39 = *(v33 + 20);
  v40 = *(v35 + v39);
  v41 = *(v38 + v39);
  if (v40 != v41)
  {

    v42 = closure #1 in static PgQuery_Node.== infix(_:_:)(v40, v41);

    if (!v42)
    {
      outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_Node);
      v27 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v28 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_15;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v43 = v47;
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v44)
  {
LABEL_22:
    if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema) == *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema + 8) == *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v45 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

      v46 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk);

      v36 = v45 ^ v46 ^ 1;
      return v36 & 1;
    }
  }

LABEL_16:

LABEL_17:
  v36 = 0;
  return v36 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterObjectSchemaStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectSchemaStmt and conformance PgQuery_AlterObjectSchemaStmt, type metadata accessor for PgQuery_AlterObjectSchemaStmt, &protocol conformance descriptor for PgQuery_AlterObjectSchemaStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterObjectSchemaStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectSchemaStmt and conformance PgQuery_AlterObjectSchemaStmt, type metadata accessor for PgQuery_AlterObjectSchemaStmt, &protocol conformance descriptor for PgQuery_AlterObjectSchemaStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterObjectSchemaStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterObjectSchemaStmt and conformance PgQuery_AlterObjectSchemaStmt, type metadata accessor for PgQuery_AlterObjectSchemaStmt, &protocol conformance descriptor for PgQuery_AlterObjectSchemaStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterOwnerStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v1 + v6, 1, 1, RangeVar);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v8, 1, 1, Node);
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  (*(*(RoleSpec - 8) + 56))(v1 + v10, 1, 1, RoleSpec);
  v12 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v12;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v1 + v6, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v1 + v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, v5, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);

  outlined assign with take of PgQuery_Node?(v5, v1 + v10, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  return v1;
}

uint64_t PgQuery_AlterOwnerStmt._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_AlterOwnerStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RoleSpec?, type metadata accessor for PgQuery_RoleSpec, MEMORY[0x277D83D88]);
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
  v42 = a4;
  v45 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v33 - v6;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v36 = *(RoleSpec - 8);
  MEMORY[0x28223BE20](RoleSpec);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v38 = &v33 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v37 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v33 - v13;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v16 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  v20 = a1;
  v21 = *(a1 + 24);
  ResultSetCursor.columns.modify();
  if (v22)
  {
    v43 = v19;
    v44 = v21;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v23 = v41;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    v25 = v23;
    if (v23)
    {
      return result;
    }

    v33 = RoleSpec;
  }

  else
  {
    v33 = RoleSpec;
    v25 = v41;
  }

  outlined init with copy of PgQuery_Alias?(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v14, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v16 + 48))(v14, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v14, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v18, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    if (v25)
    {
      return result;
    }
  }

  v26 = v38;
  outlined init with copy of PgQuery_Alias?(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v27 = (*(v37 + 48))(v26, 1, Node);
  v28 = v40;
  if (v27 == 1)
  {
    outlined destroy of URL?(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v29 = v26;
    v30 = v35;
    outlined init with take of PgQuery_OidList(v29, v35, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
    if (v25)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, v28, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v36 + 48))(v28, 1, v33) == 1)
  {
    return outlined destroy of URL?(v28, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  }

  v31 = v28;
  v32 = v34;
  outlined init with take of PgQuery_OidList(v31, v34, type metadata accessor for PgQuery_RoleSpec);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_RoleSpec);
}

BOOL closure #1 in static PgQuery_AlterOwnerStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v67 = *(RoleSpec - 8);
  v68 = RoleSpec;
  MEMORY[0x28223BE20](RoleSpec);
  v63 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = (&v62 - v7);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  MEMORY[0x28223BE20](v66);
  v9 = &v62 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v72 = *(Node - 8);
  v73 = Node;
  MEMORY[0x28223BE20](Node);
  v65 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v69 = &v62 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v71);
  v74 = &v62 - v14;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v16 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v70 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v75 = &v62 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  v23 = a1;
  ResultSetCursor.columns.modify();
  v25 = v24;
  ResultSetCursor.columns.modify();
  if (v25 != v26)
  {
    return 0;
  }

  v62 = v9;
  v27 = a2;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  v29 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation, v22, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(v27 + v28, &v22[v29], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v30 = *(v16 + 48);
  if (v30(v22, 1, RangeVar) == 1)
  {
    v31 = v30(&v22[v29], 1, RangeVar);

    if (v31 == 1)
    {
      outlined destroy of URL?(v22, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_10;
    }

LABEL_7:
    outlined destroy of URL?(v22, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    goto LABEL_17;
  }

  v32 = v75;
  outlined init with copy of PgQuery_Alias?(v22, v75, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v30(&v22[v29], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_7;
  }

  v33 = &v22[v29];
  v34 = v70;
  outlined init with take of PgQuery_OidList(v33, v70, type metadata accessor for PgQuery_RangeVar);

  v35 = specialized static PgQuery_RangeVar.== infix(_:_:)(v32, v34);
  outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v22, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v35 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v37 = *(v71 + 48);
  v38 = v23;
  v39 = v74;
  outlined init with copy of PgQuery_Alias?(v23 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v74, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v27 + v36, v39 + v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v40 = v73;
  v41 = *(v72 + 48);
  if (v41(v39, 1, v73) != 1)
  {
    v42 = v69;
    outlined init with copy of PgQuery_Alias?(v39, v69, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v41(v39 + v37, 1, v40) != 1)
    {
      v46 = v39 + v37;
      v47 = v65;
      outlined init with take of PgQuery_OidList(v46, v65, type metadata accessor for PgQuery_Node);
      v48 = *(v40 + 20);
      v49 = *(v42 + v48);
      v50 = *(v47 + v48);
      if (v49 == v50 || (, , v51 = closure #1 in static PgQuery_Node.== infix(_:_:)(v49, v50), , , v51))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v52 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v39, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v52)
        {
          goto LABEL_23;
        }

LABEL_17:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
      v43 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v44 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_16:
      outlined destroy of URL?(v39, v43, v44);
      goto LABEL_17;
    }

    outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
LABEL_15:
    v43 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_16;
  }

  if (v41(v39 + v37, 1, v40) != 1)
  {
    goto LABEL_15;
  }

  outlined destroy of URL?(v39, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_23:
  v53 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner;
  v54 = *(v66 + 48);
  v55 = v62;
  outlined init with copy of PgQuery_Alias?(v38 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner, v62, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  outlined init with copy of PgQuery_Alias?(v27 + v53, v55 + v54, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v56 = v68;
  v57 = *(v67 + 48);
  if (v57(v55, 1, v68) == 1)
  {

    if (v57(v55 + v54, 1, v56) == 1)
    {
      outlined destroy of URL?(v55, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      return 1;
    }

    goto LABEL_28;
  }

  v58 = v64;
  outlined init with copy of PgQuery_Alias?(v55, v64, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if (v57(v55 + v54, 1, v56) == 1)
  {

    outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_RoleSpec);
LABEL_28:
    outlined destroy of URL?(v55, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
    return 0;
  }

  v59 = v55 + v54;
  v60 = v63;
  outlined init with take of PgQuery_OidList(v59, v63, type metadata accessor for PgQuery_RoleSpec);
  v61 = specialized static PgQuery_RoleSpec.== infix(_:_:)(v58, v60);

  outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_RoleSpec);
  outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_RoleSpec);
  outlined destroy of URL?(v55, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  return (v61 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterOwnerStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOwnerStmt and conformance PgQuery_AlterOwnerStmt, type metadata accessor for PgQuery_AlterOwnerStmt, &protocol conformance descriptor for PgQuery_AlterOwnerStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterOwnerStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOwnerStmt and conformance PgQuery_AlterOwnerStmt, type metadata accessor for PgQuery_AlterOwnerStmt, &protocol conformance descriptor for PgQuery_AlterOwnerStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v8 = *(ObjectWithArgs - 8);
  MEMORY[0x28223BE20](ObjectWithArgs);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AlterOperatorStmt = type metadata accessor for PgQuery_AlterOperatorStmt(0);
  v15 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(AlterOperatorStmt + 24), v6, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((*(v8 + 48))(v6, 1, ObjectWithArgs) == 1)
  {
    outlined destroy of URL?(v6, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    v11 = v17;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v6, v10, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);
    v11 = v17;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v11)
    {
      return result;
    }
  }

  if (!*(*v15 + 16))
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  type metadata accessor for PgQuery_Node(0);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
  result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  if (!v11)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_AlterDefaultPrivilegesStmt@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v6 = *(a1 + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a3[v6], 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterOperatorStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOperatorStmt and conformance PgQuery_AlterOperatorStmt, type metadata accessor for PgQuery_AlterOperatorStmt, &protocol conformance descriptor for PgQuery_AlterOperatorStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterOperatorStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOperatorStmt and conformance PgQuery_AlterOperatorStmt, type metadata accessor for PgQuery_AlterOperatorStmt, &protocol conformance descriptor for PgQuery_AlterOperatorStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterOperatorStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterOperatorStmt and conformance PgQuery_AlterOperatorStmt, type metadata accessor for PgQuery_AlterOperatorStmt, &protocol conformance descriptor for PgQuery_AlterOperatorStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTypeStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTypeStmt and conformance PgQuery_AlterTypeStmt, type metadata accessor for PgQuery_AlterTypeStmt, &protocol conformance descriptor for PgQuery_AlterTypeStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTypeStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTypeStmt and conformance PgQuery_AlterTypeStmt, type metadata accessor for PgQuery_AlterTypeStmt, &protocol conformance descriptor for PgQuery_AlterTypeStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DropOwnedStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropOwnedStmt and conformance PgQuery_DropOwnedStmt, type metadata accessor for PgQuery_DropOwnedStmt, &protocol conformance descriptor for PgQuery_DropOwnedStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropOwnedStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropOwnedStmt and conformance PgQuery_DropOwnedStmt, type metadata accessor for PgQuery_DropOwnedStmt, &protocol conformance descriptor for PgQuery_DropOwnedStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v8 = *(RoleSpec - 8);
  MEMORY[0x28223BE20](RoleSpec);
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

  ReassignOwnedStmt = type metadata accessor for PgQuery_ReassignOwnedStmt(0);
  outlined init with copy of PgQuery_Alias?(v3 + *(ReassignOwnedStmt + 24), v6, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v8 + 48))(v6, 1, RoleSpec) == 1)
  {
    outlined destroy of URL?(v6, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v6, v10, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
    v15 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RoleSpec);
    if (v15)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ReassignOwnedStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReassignOwnedStmt and conformance PgQuery_ReassignOwnedStmt, type metadata accessor for PgQuery_ReassignOwnedStmt, &protocol conformance descriptor for PgQuery_ReassignOwnedStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ReassignOwnedStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ReassignOwnedStmt and conformance PgQuery_ReassignOwnedStmt, type metadata accessor for PgQuery_ReassignOwnedStmt, &protocol conformance descriptor for PgQuery_ReassignOwnedStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v16 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v8 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  CompositeTypeStmt = type metadata accessor for PgQuery_CompositeTypeStmt(0);
  v15 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(CompositeTypeStmt + 24), v6, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v8 + 48))(v6, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v6, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v11 = v17;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v6, v10, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v11 = v17;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RangeVar);
    if (v11)
    {
      return result;
    }
  }

  if (!*(*v15 + 16))
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  type metadata accessor for PgQuery_Node(0);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
  result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  if (!v11)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CompositeTypeStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CompositeTypeStmt and conformance PgQuery_CompositeTypeStmt, type metadata accessor for PgQuery_CompositeTypeStmt, &protocol conformance descriptor for PgQuery_CompositeTypeStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CompositeTypeStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CompositeTypeStmt and conformance PgQuery_CompositeTypeStmt, type metadata accessor for PgQuery_CompositeTypeStmt, &protocol conformance descriptor for PgQuery_CompositeTypeStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CompositeTypeStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CompositeTypeStmt and conformance PgQuery_CompositeTypeStmt, type metadata accessor for PgQuery_CompositeTypeStmt, &protocol conformance descriptor for PgQuery_CompositeTypeStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateEnumStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEnumStmt and conformance PgQuery_CreateEnumStmt, type metadata accessor for PgQuery_CreateEnumStmt, &protocol conformance descriptor for PgQuery_CreateEnumStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateEnumStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEnumStmt and conformance PgQuery_CreateEnumStmt, type metadata accessor for PgQuery_CreateEnumStmt, &protocol conformance descriptor for PgQuery_CreateEnumStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  *(v9 + 16) = xmmword_2552FDFE0;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "type_name";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21888];
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
  *(v10 + 16) = xmmword_2552FE080;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateRangeStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRangeStmt and conformance PgQuery_CreateRangeStmt, type metadata accessor for PgQuery_CreateRangeStmt, &protocol conformance descriptor for PgQuery_CreateRangeStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateRangeStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateRangeStmt and conformance PgQuery_CreateRangeStmt, type metadata accessor for PgQuery_CreateRangeStmt, &protocol conformance descriptor for PgQuery_CreateRangeStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  *a1 = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterEnumStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEnumStmt and conformance PgQuery_AlterEnumStmt, type metadata accessor for PgQuery_AlterEnumStmt, &protocol conformance descriptor for PgQuery_AlterEnumStmt);

  return MEMORY[0x28217E428](a1, Scan);
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTSDictionaryStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSDictionaryStmt and conformance PgQuery_AlterTSDictionaryStmt, type metadata accessor for PgQuery_AlterTSDictionaryStmt, &protocol conformance descriptor for PgQuery_AlterTSDictionaryStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
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
  v1 = MEMORY[0x277D84F90];
  *(a1 + 16) = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTSConfigurationStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSConfigurationStmt and conformance PgQuery_AlterTSConfigurationStmt, type metadata accessor for PgQuery_AlterTSConfigurationStmt, &protocol conformance descriptor for PgQuery_AlterTSConfigurationStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterTSConfigurationStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTSConfigurationStmt and conformance PgQuery_AlterTSConfigurationStmt, type metadata accessor for PgQuery_AlterTSConfigurationStmt, &protocol conformance descriptor for PgQuery_AlterTSConfigurationStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateFdwStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFdwStmt and conformance PgQuery_CreateFdwStmt, type metadata accessor for PgQuery_CreateFdwStmt, &protocol conformance descriptor for PgQuery_CreateFdwStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateFdwStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFdwStmt and conformance PgQuery_CreateFdwStmt, type metadata accessor for PgQuery_CreateFdwStmt, &protocol conformance descriptor for PgQuery_CreateFdwStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v1 = MEMORY[0x277D84F90];
  a1[2] = MEMORY[0x277D84F90];
  a1[3] = v1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterFdwStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFdwStmt and conformance PgQuery_AlterFdwStmt, type metadata accessor for PgQuery_AlterFdwStmt, &protocol conformance descriptor for PgQuery_AlterFdwStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterFdwStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterFdwStmt and conformance PgQuery_AlterFdwStmt, type metadata accessor for PgQuery_AlterFdwStmt, &protocol conformance descriptor for PgQuery_AlterFdwStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  *(a1 + 72) = MEMORY[0x277D84F90];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateForeignServerStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignServerStmt and conformance PgQuery_CreateForeignServerStmt, type metadata accessor for PgQuery_CreateForeignServerStmt, &protocol conformance descriptor for PgQuery_CreateForeignServerStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateForeignServerStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignServerStmt and conformance PgQuery_CreateForeignServerStmt, type metadata accessor for PgQuery_CreateForeignServerStmt, &protocol conformance descriptor for PgQuery_CreateForeignServerStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  *(a1 + 32) = MEMORY[0x277D84F90];
  *(a1 + 40) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterForeignServerStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterForeignServerStmt and conformance PgQuery_AlterForeignServerStmt, type metadata accessor for PgQuery_AlterForeignServerStmt, &protocol conformance descriptor for PgQuery_AlterForeignServerStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterForeignServerStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterForeignServerStmt and conformance PgQuery_AlterForeignServerStmt, type metadata accessor for PgQuery_AlterForeignServerStmt, &protocol conformance descriptor for PgQuery_AlterForeignServerStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v19 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v8 = *(RoleSpec - 8);
  MEMORY[0x28223BE20](RoleSpec);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UserMappingStmt = type metadata accessor for PgQuery_CreateUserMappingStmt(0);
  v18 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(UserMappingStmt + 32), v6, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v8 + 48))(v6, 1, RoleSpec) == 1)
  {
    outlined destroy of URL?(v6, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v11 = v20;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v6, v10, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
    v11 = v20;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_RoleSpec);
    if (v11)
    {
      return result;
    }
  }

  v13 = v18;
  v14 = v18[1];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v11))
  {
    if (*(v13 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v11))
    {
      if (!*(v13[3] + 16))
      {
        return UnknownStorage.traverse<A>(visitor:)();
      }

      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (!v11)
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
  *(a2 + 24) = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v4 = *(a1 + 32);
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v6 = *(*(RoleSpec - 8) + 56);

  return v6(a2 + v4, 1, 1, RoleSpec);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateUserMappingStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateUserMappingStmt and conformance PgQuery_CreateUserMappingStmt, type metadata accessor for PgQuery_CreateUserMappingStmt, &protocol conformance descriptor for PgQuery_CreateUserMappingStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateUserMappingStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateUserMappingStmt and conformance PgQuery_CreateUserMappingStmt, type metadata accessor for PgQuery_CreateUserMappingStmt, &protocol conformance descriptor for PgQuery_CreateUserMappingStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v9 = *(RoleSpec - 8);
  MEMORY[0x28223BE20](RoleSpec);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = type metadata accessor for PgQuery_AlterUserMappingStmt(0);
  outlined init with copy of PgQuery_Alias?(v4 + *(v16[0] + 28), v7, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v9 + 48))(v7, 1, RoleSpec) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v12 = v17;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
    v12 = v17;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
    if (v12)
    {
      return result;
    }
  }

  v14 = v4[1];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v12))
  {
    if (!*(v4[2] + 16))
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (!v12)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterUserMappingStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterUserMappingStmt and conformance PgQuery_AlterUserMappingStmt, type metadata accessor for PgQuery_AlterUserMappingStmt, &protocol conformance descriptor for PgQuery_AlterUserMappingStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterUserMappingStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterUserMappingStmt and conformance PgQuery_AlterUserMappingStmt, type metadata accessor for PgQuery_AlterUserMappingStmt, &protocol conformance descriptor for PgQuery_AlterUserMappingStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v16[1] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v9 = *(RoleSpec - 8);
  MEMORY[0x28223BE20](RoleSpec);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = type metadata accessor for PgQuery_DropUserMappingStmt(0);
  outlined init with copy of PgQuery_Alias?(v4 + *(v16[0] + 28), v7, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((*(v9 + 48))(v7, 1, RoleSpec) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    v12 = v17;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_RoleSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);
    v12 = v17;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
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
    if (*(v4 + 16) != 1)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (!v12)
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DropUserMappingStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropUserMappingStmt and conformance PgQuery_DropUserMappingStmt, type metadata accessor for PgQuery_DropUserMappingStmt, &protocol conformance descriptor for PgQuery_DropUserMappingStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterTableSpaceOptionsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableSpaceOptionsStmt and conformance PgQuery_AlterTableSpaceOptionsStmt, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt, &protocol conformance descriptor for PgQuery_AlterTableSpaceOptionsStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTableSpaceOptionsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableSpaceOptionsStmt and conformance PgQuery_AlterTableSpaceOptionsStmt, type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt, &protocol conformance descriptor for PgQuery_AlterTableSpaceOptionsStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
    ResultSetCursor.columns.modify();
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
  v1 = MEMORY[0x277D84F90];
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterTableMoveAllStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableMoveAllStmt and conformance PgQuery_AlterTableMoveAllStmt, type metadata accessor for PgQuery_AlterTableMoveAllStmt, &protocol conformance descriptor for PgQuery_AlterTableMoveAllStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
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
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v8 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = a1;
  v13 = *(a1 + 24);
  ResultSetCursor.columns.modify();
  if (v14)
  {
    v27 = v11;
    v28 = v13;
    lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType();
    v15 = v29;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v15)
    {
      return result;
    }

    v29 = 0;
  }

  v17 = v12;
  outlined init with copy of PgQuery_Alias?(v12 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v8 + 48))(v7, 1, Node) == 1)
  {
    result = outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v18 = v29;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v10, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v18 = v29;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
    if (v18)
    {
      return result;
    }
  }

  v20 = *(v12 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider);
  v19 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider + 8);
  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v18))
  {
    v23 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label);
    v22 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label + 8);
    v24 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v24 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
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

  v16 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v17 = *(v10 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
  if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider + 8) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label + 8) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label + 8))
  {

    return 1;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return (v29 & 1) != 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SecLabelStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SecLabelStmt and conformance PgQuery_SecLabelStmt, type metadata accessor for PgQuery_SecLabelStmt, &protocol conformance descriptor for PgQuery_SecLabelStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SecLabelStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SecLabelStmt and conformance PgQuery_SecLabelStmt, type metadata accessor for PgQuery_SecLabelStmt, &protocol conformance descriptor for PgQuery_SecLabelStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  Stmt = type metadata accessor for PgQuery_CreateStmt(0);
  v9 = *(Stmt - 8);
  MEMORY[0x28223BE20](Stmt);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = type metadata accessor for PgQuery_CreateForeignTableStmt(0);
  outlined init with copy of PgQuery_Alias?(v4 + *(v16[0] + 28), v7, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  if ((*(v9 + 48))(v7, 1, Stmt) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
    v12 = v17;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_CreateStmt);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt, &protocol conformance descriptor for PgQuery_CreateStmt);
    v12 = v17;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_CreateStmt);
    if (v12)
    {
      return result;
    }
  }

  v14 = v4[1];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v12))
  {
    if (!*(v4[2] + 16))
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (!v12)
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
  *(a3 + 2) = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v6 = *(a1 + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a3[v6], 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateForeignTableStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignTableStmt and conformance PgQuery_CreateForeignTableStmt, type metadata accessor for PgQuery_CreateForeignTableStmt, &protocol conformance descriptor for PgQuery_CreateForeignTableStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateForeignTableStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateForeignTableStmt and conformance PgQuery_CreateForeignTableStmt, type metadata accessor for PgQuery_CreateForeignTableStmt, &protocol conformance descriptor for PgQuery_CreateForeignTableStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  v1 = MEMORY[0x277D84F90];
  *(a1 + 64) = MEMORY[0x277D84F90];
  *(a1 + 72) = v1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ImportForeignSchemaStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaStmt and conformance PgQuery_ImportForeignSchemaStmt, type metadata accessor for PgQuery_ImportForeignSchemaStmt, &protocol conformance descriptor for PgQuery_ImportForeignSchemaStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ImportForeignSchemaStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaStmt and conformance PgQuery_ImportForeignSchemaStmt, type metadata accessor for PgQuery_ImportForeignSchemaStmt, &protocol conformance descriptor for PgQuery_ImportForeignSchemaStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  *(a1 + 24) = MEMORY[0x277D84F90];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateExtensionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateExtensionStmt and conformance PgQuery_CreateExtensionStmt, type metadata accessor for PgQuery_CreateExtensionStmt, &protocol conformance descriptor for PgQuery_CreateExtensionStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateExtensionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateExtensionStmt and conformance PgQuery_CreateExtensionStmt, type metadata accessor for PgQuery_CreateExtensionStmt, &protocol conformance descriptor for PgQuery_CreateExtensionStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateExtensionStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateExtensionStmt and conformance PgQuery_CreateExtensionStmt, type metadata accessor for PgQuery_CreateExtensionStmt, &protocol conformance descriptor for PgQuery_CreateExtensionStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterExtensionStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionStmt and conformance PgQuery_AlterExtensionStmt, type metadata accessor for PgQuery_AlterExtensionStmt, &protocol conformance descriptor for PgQuery_AlterExtensionStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterExtensionStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionStmt and conformance PgQuery_AlterExtensionStmt, type metadata accessor for PgQuery_AlterExtensionStmt, &protocol conformance descriptor for PgQuery_AlterExtensionStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterExtensionStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionStmt and conformance PgQuery_AlterExtensionStmt, type metadata accessor for PgQuery_AlterExtensionStmt, &protocol conformance descriptor for PgQuery_AlterExtensionStmt);

  return Message.hash(into:)();
}

uint64_t PgQuery_AlterExtensionContentsStmt._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v6, 1, 1, Node);
  v8 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v8;
  *(v1 + 32) = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 40) = *(a1 + 40);
  *(v1 + 48) = v9;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v5, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v5, v1 + v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return v1;
}

uint64_t PgQuery_DeclareCursorStmt._StorageClass.__deallocating_deinit(void *a1)
{

  outlined destroy of URL?(v1 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v3, v4);
}

void type metadata completion function for PgQuery_AlterExtensionContentsStmt._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v19 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v21 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 24);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
  {
    if (!*(a1 + 32) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
    {
      v19[1] = a3;
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      ResultSetCursor.columns.modify();
      if (!v18 || (v19[2] = v16, v20 = v17, lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
      {
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((*(v21 + 48))(v9, 1, Node) == 1)
        {
          return outlined destroy of URL?(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          outlined init with take of PgQuery_OidList(v9, v12, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
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
  MEMORY[0x28223BE20](Node);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  if (*(a1 + 16) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v30 = v7;
  ResultSetCursor.columns.modify();
  v15 = v14;
  ResultSetCursor.columns.modify();
  if (v15 != v16)
  {
    return 0;
  }

  v17 = OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  v18 = *(v11 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v13[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(v5 + 48);
  if (v19(v13, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v13, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v19(&v13[v18], 1, Node) != 1)
    {
      v23 = v30;
      outlined init with take of PgQuery_OidList(&v13[v18], v30, type metadata accessor for PgQuery_Node);
      v24 = *(Node + 20);
      v25 = *&v10[v24];
      v26 = *(v23 + v24);
      if (v25 == v26 || (, , v27 = closure #1 in static PgQuery_Node.== infix(_:_:)(v25, v26), , , v27))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        return (v28 & 1) != 0;
      }

      outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_11:
      outlined destroy of URL?(v13, v20, v21);
      return 0;
    }

    outlined destroy of PgQuery_OidList(v10, type metadata accessor for PgQuery_Node);
LABEL_10:
    v20 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v21 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_11;
  }

  if (v19(&v13[v18], 1, Node) != 1)
  {
    goto LABEL_10;
  }

  outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AlterExtensionContentsStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionContentsStmt and conformance PgQuery_AlterExtensionContentsStmt, type metadata accessor for PgQuery_AlterExtensionContentsStmt, &protocol conformance descriptor for PgQuery_AlterExtensionContentsStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterExtensionContentsStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionContentsStmt and conformance PgQuery_AlterExtensionContentsStmt, type metadata accessor for PgQuery_AlterExtensionContentsStmt, &protocol conformance descriptor for PgQuery_AlterExtensionContentsStmt);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AlterExtensionContentsStmt(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterExtensionContentsStmt and conformance PgQuery_AlterExtensionContentsStmt, type metadata accessor for PgQuery_AlterExtensionContentsStmt, &protocol conformance descriptor for PgQuery_AlterExtensionContentsStmt);

  return Message.hash(into:)();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateEventTrigStmt(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEventTrigStmt and conformance PgQuery_CreateEventTrigStmt, type metadata accessor for PgQuery_CreateEventTrigStmt, &protocol conformance descriptor for PgQuery_CreateEventTrigStmt);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateEventTrigStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateEventTrigStmt and conformance PgQuery_CreateEventTrigStmt, type metadata accessor for PgQuery_CreateEventTrigStmt, &protocol conformance descriptor for PgQuery_CreateEventTrigStmt);

  return MEMORY[0x28217E428](a1, Scan);
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AlterEventTrigStmt(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterEventTrigStmt and conformance PgQuery_AlterEventTrigStmt, type metadata accessor for PgQuery_AlterEventTrigStmt, &protocol conformance descriptor for PgQuery_AlterEventTrigStmt);

  return MEMORY[0x28217E428](a1, Scan);
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
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v9 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    if (v3[1] != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      v16 = v4;
      RefreshMatViewStmt = type metadata accessor for PgQuery_RefreshMatViewStmt(0);
      outlined init with copy of PgQuery_Alias?(&v3[*(RefreshMatViewStmt + 28)], v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((*(v9 + 48))(v7, 1, RangeVar) == 1)
      {
        outlined destroy of URL?(v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      }

      else
      {
        outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_RangeVar);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
        v14 = v16;
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
        if (v14)
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
uint64_t closure #1 in PgQuery_FieldStore.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v26 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v16 = MEMORY[0x1EEE9AC00](Node, v15);
  v26 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v26 - v19;
  v30 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v14 + 48);
  if (v21(v12, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v22 = v27;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v20, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v23 = v27;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v22 = v23;
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
    if (v23)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v21(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v25 = v26;
    outlined init with take of PgQuery_OidList(v9, v26, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    if (v22)
    {
      return result;
    }
  }

  if (!*(*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newvals) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v22))
  {
    if (!*(*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnums) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v22))
    {
      result = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_FieldStore.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v7 = MEMORY[0x1EEE9AC00](Node, v6);
  v61 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v64 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v63 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v61 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v67 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v61 - v24;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v66 = v23;
  v27 = *(v23 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v61 - v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v26, &v25[v27], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v28 = *(v5 + 48);
  if (v28(v25, 1, Node) == 1)
  {
    v62 = Node;
    v29 = v28(&v25[v27], 1, Node);

    if (v29 == 1)
    {
      v68 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_25;
  }

  v68 = a1;
  v65 = a2;
  outlined init with copy of PgQuery_Alias?(v25, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28(&v25[v27], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v30 = v64;
  outlined init with take of PgQuery_OidList(&v25[v27], v64, type metadata accessor for PgQuery_Node);
  v62 = Node;
  v31 = *(Node + 20);
  v32 = *&v17[v31];
  v33 = *(v30 + v31);

  if (v32 != v33)
  {

    v34 = closure #1 in static PgQuery_Node.== infix(_:_:)(v32, v33);

    if (!v34)
    {
      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_25;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v65;
  if (v35)
  {
LABEL_10:
    v36 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
    v37 = v67;
    v38 = *(v66 + 48);
    outlined init with copy of PgQuery_Alias?(v68 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v67, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v36, v37 + v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v39 = v62;
    if (v28(v37, 1, v62) == 1)
    {
      v40 = v28((v37 + v38), 1, v39);
      v41 = v68;
      if (v40 == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
        v52 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newvals);
        v53 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newvals);

        NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v52, v53);

        if (NodeV_Tt1g5)
        {
          v55 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnums);
          v56 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnums);

          v57 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v55, v56);

          if (v57)
          {
            v58 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype);

            v59 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype);

            return v58 == v59;
          }
        }

        goto LABEL_25;
      }
    }

    else
    {
      v42 = v63;
      outlined init with copy of PgQuery_Alias?(v37, v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v43 = v28((v37 + v38), 1, v39);
      v41 = v68;
      if (v43 != 1)
      {
        v46 = v61;
        outlined init with take of PgQuery_OidList(v37 + v38, v61, type metadata accessor for PgQuery_Node);
        v47 = *(v39 + 20);
        v48 = *(v42 + v47);
        v49 = *(v46 + v47);
        if (v48 == v49 || (, , v50 = closure #1 in static PgQuery_Node.== infix(_:_:)(v48, v49), , , v50))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v51 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v51 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_20;
        }

        outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
        v44 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_16:
        _s10Foundation4UUIDVSgWOhTm_0(v37, v44, v45);
        goto LABEL_25;
      }

      outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
    }

    v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_16;
  }

LABEL_25:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_FieldStore(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldStore and conformance PgQuery_FieldStore, type metadata accessor for PgQuery_FieldStore, &protocol conformance descriptor for PgQuery_FieldStore);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_FieldStore(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldStore and conformance PgQuery_FieldStore, type metadata accessor for PgQuery_FieldStore, &protocol conformance descriptor for PgQuery_FieldStore);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_FieldStore(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldStore and conformance PgQuery_FieldStore, type metadata accessor for PgQuery_FieldStore, &protocol conformance descriptor for PgQuery_FieldStore);

  return Message.hash(into:)();
}

uint64_t PgQuery_FieldSelect._StorageClass.__deallocating_deinit(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  _s10Foundation4UUIDVSgWOhTm_0(v4 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v4 + *a2, a3, a4);
  v8 = *(*v4 + 48);
  v9 = *(*v4 + 52);

  return MEMORY[0x1EEE6BDC0](v4, v8, v9);
}

uint64_t closure #1 in PgQuery_RelabelType.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        if (result == 1 || result == 2)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 3)
        {
LABEL_10:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result != 4)
          {
            goto LABEL_10;
          }

LABEL_19:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 6)
        {
          lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 7)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RelabelType.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v28 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v16 = MEMORY[0x1EEE9AC00](Node, v15);
  v28 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v28 - v19;
  v29 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v14 + 48);
  if (v21(v12, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v20, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v22 = v34;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
    if (v22)
    {
      return result;
    }

    v34 = 0;
  }

  v24 = v29;
  outlined init with copy of PgQuery_Alias?(v29 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v21(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v25 = v34;
  }

  else
  {
    v26 = v28;
    outlined init with take of PgQuery_OidList(v9, v28, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v25 = v34;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
    if (v25)
    {
      return result;
    }

    v24 = v29;
  }

  if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v25))
  {
    if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v25))
    {
      if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v25))
      {
        if (!*(v29 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat) || (v27 = *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat + 8), v32 = *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat), v33 = v27, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v25))
        {
          result = *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
          if (result)
          {
            return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_RelabelType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v7 = MEMORY[0x1EEE9AC00](Node, v6);
  v57 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v60 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v59 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v63 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v57 - v24;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v62 = v23;
  v27 = *(v23 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v57 - v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v26, &v25[v27], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v28 = *(v5 + 48);
  if (v28(v25, 1, Node) == 1)
  {
    v58 = Node;
    v29 = v28(&v25[v27], 1, Node);

    if (v29 == 1)
    {
      v64 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_29;
  }

  v64 = a1;
  v61 = a2;
  outlined init with copy of PgQuery_Alias?(v25, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28(&v25[v27], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v30 = v60;
  outlined init with take of PgQuery_OidList(&v25[v27], v60, type metadata accessor for PgQuery_Node);
  v58 = Node;
  v31 = *(Node + 20);
  v32 = *&v17[v31];
  v33 = *(v30 + v31);

  if (v32 != v33)
  {

    v34 = closure #1 in static PgQuery_Node.== infix(_:_:)(v32, v33);

    if (!v34)
    {
      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_29;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v61;
  if ((v35 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v37 = v63;
  v38 = *(v62 + 48);
  outlined init with copy of PgQuery_Alias?(v64 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v36, v37 + v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v39 = v58;
  if (v28(v37, 1, v58) != 1)
  {
    v42 = v59;
    outlined init with copy of PgQuery_Alias?(v37, v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v43 = v28((v37 + v38), 1, v39);
    v41 = v64;
    if (v43 == 1)
    {
      outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
      goto LABEL_15;
    }

    v46 = v57;
    outlined init with take of PgQuery_OidList(v37 + v38, v57, type metadata accessor for PgQuery_Node);
    v47 = *(v39 + 20);
    v48 = *(v42 + v47);
    v49 = *(v46 + v47);
    if (v48 != v49)
    {

      v50 = closure #1 in static PgQuery_Node.== infix(_:_:)(v48, v49);

      if (!v50)
      {
        outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
        v44 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_16;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v51 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v51)
    {
      goto LABEL_20;
    }

LABEL_29:

    return 0;
  }

  v40 = v28((v37 + v38), 1, v39);
  v41 = v64;
  if (v40 != 1)
  {
LABEL_15:
    v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    _s10Foundation4UUIDVSgWOhTm_0(v37, v44, v45);
    goto LABEL_29;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
  if (*(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid))
  {
    goto LABEL_29;
  }

  v52 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat);
  v53 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat + 8) == 1)
  {
    if (v53 > 1)
    {
      if (v53 == 2)
      {
        if (v52 != 2)
        {
          goto LABEL_29;
        }
      }

      else if (v52 != 3)
      {
        goto LABEL_29;
      }
    }

    else if (v53)
    {
      if (v52 != 1)
      {
        goto LABEL_29;
      }
    }

    else if (v52)
    {
      goto LABEL_29;
    }
  }

  else if (v52 != v53)
  {
    goto LABEL_29;
  }

  v55 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v56 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v55 == v56;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RelabelType(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RelabelType and conformance PgQuery_RelabelType, type metadata accessor for PgQuery_RelabelType, &protocol conformance descriptor for PgQuery_RelabelType);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RelabelType(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RelabelType and conformance PgQuery_RelabelType, type metadata accessor for PgQuery_RelabelType, &protocol conformance descriptor for PgQuery_RelabelType);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RelabelType(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RelabelType and conformance PgQuery_RelabelType, type metadata accessor for PgQuery_RelabelType, &protocol conformance descriptor for PgQuery_RelabelType);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_FieldSelect._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v4 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_CoerceViaIO.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    v10 = v5;
    for (i = v5; ; i = v9)
    {
      if (v7)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          v9 = i;
LABEL_5:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_6;
        }

        if (result == 5)
        {
          lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          v9 = v10;
        }

        else
        {
          v9 = i;
          if (result == 6)
          {
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          }
        }
      }

      else if (result == 1 || result == 2)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        v9 = v10;
      }

      else
      {
        if (result == 3)
        {
          v9 = i;
          goto LABEL_5;
        }

        v9 = i;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CoerceViaIO.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[2] = a4;
  v27[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v27 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v16 = MEMORY[0x1EEE9AC00](Node, v15);
  v27[0] = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v27 - v19;
  v31 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v14 + 48);
  if (v21(v12, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v20, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v22 = v28;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
    if (v22)
    {
      return result;
    }

    v28 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v21(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v24 = v28;
  }

  else
  {
    v25 = v27[0];
    outlined init with take of PgQuery_OidList(v9, v27[0], type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v24 = v28;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    if (v24)
    {
      return result;
    }
  }

  if (!*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v24))
  {
    if (!*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v24))
    {
      if (!*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat) || (v26 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat + 8), v29 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat), v30 = v26, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v24))
      {
        result = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CoerceViaIO.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v7 = MEMORY[0x1EEE9AC00](Node, v6);
  v57 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v60 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v59 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v63 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v57 - v24;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v62 = v23;
  v27 = *(v23 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v57 - v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v26, &v25[v27], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v28 = *(v5 + 48);
  if (v28(v25, 1, Node) == 1)
  {
    v58 = Node;
    v29 = v28(&v25[v27], 1, Node);

    if (v29 == 1)
    {
      v64 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_28;
  }

  v64 = a1;
  v61 = a2;
  outlined init with copy of PgQuery_Alias?(v25, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28(&v25[v27], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v30 = v60;
  outlined init with take of PgQuery_OidList(&v25[v27], v60, type metadata accessor for PgQuery_Node);
  v58 = Node;
  v31 = *(Node + 20);
  v32 = *&v17[v31];
  v33 = *(v30 + v31);

  if (v32 != v33)
  {

    v34 = closure #1 in static PgQuery_Node.== infix(_:_:)(v32, v33);

    if (!v34)
    {
      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_28;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v61;
  if ((v35 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v37 = v63;
  v38 = *(v62 + 48);
  outlined init with copy of PgQuery_Alias?(v64 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v36, v37 + v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v39 = v58;
  if (v28(v37, 1, v58) != 1)
  {
    v42 = v59;
    outlined init with copy of PgQuery_Alias?(v37, v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v43 = v28((v37 + v38), 1, v39);
    v41 = v64;
    if (v43 == 1)
    {
      outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
      goto LABEL_15;
    }

    v46 = v57;
    outlined init with take of PgQuery_OidList(v37 + v38, v57, type metadata accessor for PgQuery_Node);
    v47 = *(v39 + 20);
    v48 = *(v42 + v47);
    v49 = *(v46 + v47);
    if (v48 != v49)
    {

      v50 = closure #1 in static PgQuery_Node.== infix(_:_:)(v48, v49);

      if (!v50)
      {
        outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
        v44 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_16;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v51 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v51)
    {
      goto LABEL_20;
    }

LABEL_28:

    return 0;
  }

  v40 = v28((v37 + v38), 1, v39);
  v41 = v64;
  if (v40 != 1)
  {
LABEL_15:
    v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    _s10Foundation4UUIDVSgWOhTm_0(v37, v44, v45);
    goto LABEL_28;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
  if (*(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid))
  {
    goto LABEL_28;
  }

  v52 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat);
  v53 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat + 8) == 1)
  {
    if (v53 > 1)
    {
      if (v53 == 2)
      {
        if (v52 != 2)
        {
          goto LABEL_28;
        }
      }

      else if (v52 != 3)
      {
        goto LABEL_28;
      }
    }

    else if (v53)
    {
      if (v52 != 1)
      {
        goto LABEL_28;
      }
    }

    else if (v52)
    {
      goto LABEL_28;
    }
  }

  else if (v52 != v53)
  {
    goto LABEL_28;
  }

  v55 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v56 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v55 == v56;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CoerceViaIO(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceViaIO and conformance PgQuery_CoerceViaIO, type metadata accessor for PgQuery_CoerceViaIO, &protocol conformance descriptor for PgQuery_CoerceViaIO);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CoerceViaIO(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceViaIO and conformance PgQuery_CoerceViaIO, type metadata accessor for PgQuery_CoerceViaIO, &protocol conformance descriptor for PgQuery_CoerceViaIO);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CoerceViaIO(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceViaIO and conformance PgQuery_CoerceViaIO, type metadata accessor for PgQuery_CoerceViaIO, &protocol conformance descriptor for PgQuery_CoerceViaIO);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_ArrayCoerceExpr._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_ArrayCoerceExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
          if (result != 5)
          {
            goto LABEL_16;
          }

LABEL_21:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 7)
        {
          lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 8)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
LABEL_16:
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            goto LABEL_5;
          }

LABEL_22:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 1 || result == 2)
        {
          goto LABEL_22;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_ArrayCoerceExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v44 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v36 - v14;
  Node = type metadata accessor for PgQuery_Node(0);
  v17 = *(Node - 8);
  v19 = MEMORY[0x1EEE9AC00](Node, v18);
  v36 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v36 - v23;
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v36 - v26;
  v41 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v28 = *(v17 + 48);
  if (v28(v15, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v29 = v38;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v27, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v30 = v38;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
    v29 = v30;
    if (v30)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v41 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28(v12, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v24, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
    if (v29)
    {
      return result;
    }
  }

  v32 = v41;
  v33 = v37;
  outlined init with copy of PgQuery_Alias?(v41 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elemexpr, v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28(v33, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v34 = v36;
    outlined init with take of PgQuery_OidList(v33, v36, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_Node);
    if (v29)
    {
      return result;
    }
  }

  if (!*(v32 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v29))
  {
    if (!*(v32 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v29))
    {
      if (!*(v32 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v29))
      {
        if (!*(v32 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat) || (v35 = *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat + 8), v42 = *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat), v43 = v35, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v29))
        {
          result = *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
          if (result)
          {
            return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_ArrayCoerceExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v7 = MEMORY[0x1EEE9AC00](Node, v6);
  v87 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v89 = &v85 - v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v91 = &v85 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v88 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v92 = &v85 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v85 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v90 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v94 = &v85 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v85 - v33;
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v93 = v32;
  v36 = *(v32 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v85 - v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v35, &v34[v36], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v39 = *(v5 + 48);
  v38 = v5 + 48;
  v37 = v39;
  if (v39(v34, 1, Node) == 1)
  {
    v40 = v37(&v34[v36], 1, Node);

    if (v40 != 1)
    {
LABEL_7:
      v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v43 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_8:
      v44 = v34;
LABEL_18:
      _s10Foundation4UUIDVSgWOhTm_0(v44, v42, v43);
      goto LABEL_19;
    }

    v85 = v38;
    v86 = Node;
    _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with copy of PgQuery_Alias?(v34, v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v37(&v34[v36], 1, Node) == 1)
    {

      v41 = v23;
LABEL_6:
      outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
      goto LABEL_7;
    }

    v85 = v38;
    v45 = v91;
    outlined init with take of PgQuery_OidList(&v34[v36], v91, type metadata accessor for PgQuery_Node);
    v86 = Node;
    v46 = *(Node + 20);
    v47 = *&v23[v46];
    v48 = *(v45 + v46);

    if (v47 != v48)
    {

      v49 = closure #1 in static PgQuery_Node.== infix(_:_:)(v47, v48);

      if (!v49)
      {
        outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
        v72 = v23;
LABEL_27:
        outlined destroy of PgQuery_OidList(v72, type metadata accessor for PgQuery_Node);
        v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v43 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_8;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v50 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((v50 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v51 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v53 = v93;
  v52 = v94;
  v54 = *(v93 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v94, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v51, v52 + v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v55 = v86;
  if (v37(v52, 1, v86) == 1)
  {
    if (v37((v52 + v54), 1, v55) == 1)
    {
      v56 = v52;
      v57 = v55;
      _s10Foundation4UUIDVSgWOhTm_0(v56, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_23;
    }

LABEL_17:
    v42 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v43 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v44 = v52;
    goto LABEL_18;
  }

  v58 = v92;
  outlined init with copy of PgQuery_Alias?(v52, v92, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v37((v52 + v54), 1, v55) == 1)
  {
    outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
    goto LABEL_17;
  }

  v60 = v89;
  outlined init with take of PgQuery_OidList(v52 + v54, v89, type metadata accessor for PgQuery_Node);
  v57 = v55;
  v61 = *(v55 + 20);
  v62 = *(v58 + v61);
  v63 = *(v60 + v61);
  if (v62 != v63)
  {

    v64 = closure #1 in static PgQuery_Node.== infix(_:_:)(v62, v63);

    if (!v64)
    {
      outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v92, type metadata accessor for PgQuery_Node);
      v42 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v43 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v44 = v94;
      goto LABEL_18;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v65 = v92;
  v66 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v65, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v94, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v66 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_23:
  v67 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elemexpr;
  v68 = *(v53 + 48);
  v69 = v90;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elemexpr, v90, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v70 = a2 + v67;
  v34 = v69;
  outlined init with copy of PgQuery_Alias?(v70, v69 + v68, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v71 = v57;
  if (v37(v69, 1, v57) == 1)
  {
    if (v37((v69 + v68), 1, v57) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v69, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_33;
    }

    goto LABEL_7;
  }

  v73 = v69;
  v74 = v88;
  outlined init with copy of PgQuery_Alias?(v73, v88, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v37(&v34[v68], 1, v57) == 1)
  {
    v41 = v74;
    goto LABEL_6;
  }

  v75 = v87;
  outlined init with take of PgQuery_OidList(&v34[v68], v87, type metadata accessor for PgQuery_Node);
  v76 = *(v71 + 20);
  v77 = *(v74 + v76);
  v78 = *(v75 + v76);
  if (v77 != v78)
  {

    v79 = closure #1 in static PgQuery_Node.== infix(_:_:)(v77, v78);

    if (!v79)
    {
      outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_Node);
      v72 = v74;
      goto LABEL_27;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v80 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v74, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v80 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_33:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid))
  {
    goto LABEL_19;
  }

  v81 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat);
  v82 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat + 8) == 1)
  {
    if (v82 > 1)
    {
      if (v82 == 2)
      {
        if (v81 == 2)
        {
          goto LABEL_44;
        }
      }

      else if (v81 == 3)
      {
        goto LABEL_44;
      }
    }

    else if (v82)
    {
      if (v81 == 1)
      {
        goto LABEL_44;
      }
    }

    else if (!v81)
    {
      goto LABEL_44;
    }

LABEL_19:

    return 0;
  }

  if (v81 != v82)
  {
    goto LABEL_19;
  }

LABEL_44:
  v83 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v84 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v83 == v84;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ArrayCoerceExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayCoerceExpr and conformance PgQuery_ArrayCoerceExpr, type metadata accessor for PgQuery_ArrayCoerceExpr, &protocol conformance descriptor for PgQuery_ArrayCoerceExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ArrayCoerceExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayCoerceExpr and conformance PgQuery_ArrayCoerceExpr, type metadata accessor for PgQuery_ArrayCoerceExpr, &protocol conformance descriptor for PgQuery_ArrayCoerceExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ArrayCoerceExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayCoerceExpr and conformance PgQuery_ArrayCoerceExpr, type metadata accessor for PgQuery_ArrayCoerceExpr, &protocol conformance descriptor for PgQuery_ArrayCoerceExpr);

  return Message.hash(into:)();
}

uint64_t closure #1 in PgQuery_ConvertRowtypeExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v6 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
          case 4:
            lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_ConvertRowtypeExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v33 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v27 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v15 = *(Node - 8);
  v17 = MEMORY[0x1EEE9AC00](Node, v16);
  v27 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v27 - v20;
  v28 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v15 + 48);
  if (v22(v13, 1, Node) == 1)
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

  v24 = v28;
  outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(v10, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v25 = v27;
    outlined init with take of PgQuery_OidList(v10, v27, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat) || (v26 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat + 8), v31 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat), v32 = v26, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      result = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_ConvertRowtypeExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v7 = MEMORY[0x1EEE9AC00](Node, v6);
  v57 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v60 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v59 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v63 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v57 - v24;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v62 = v23;
  v27 = *(v23 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v57 - v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v26, &v25[v27], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v28 = *(v5 + 48);
  if (v28(v25, 1, Node) == 1)
  {
    v58 = Node;
    v29 = v28(&v25[v27], 1, Node);

    if (v29 == 1)
    {
      v64 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v64 = a1;
  v61 = a2;
  outlined init with copy of PgQuery_Alias?(v25, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28(&v25[v27], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_27;
  }

  v30 = v60;
  outlined init with take of PgQuery_OidList(&v25[v27], v60, type metadata accessor for PgQuery_Node);
  v58 = Node;
  v31 = *(Node + 20);
  v32 = *&v17[v31];
  v33 = *(v30 + v31);

  if (v32 != v33)
  {

    v34 = closure #1 in static PgQuery_Node.== infix(_:_:)(v32, v33);

    if (!v34)
    {
      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_27;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v61;
  if ((v35 & 1) == 0)
  {
LABEL_27:

    return 0;
  }

LABEL_10:
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v37 = v63;
  v38 = *(v62 + 48);
  outlined init with copy of PgQuery_Alias?(v64 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v36, v37 + v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v39 = v58;
  if (v28(v37, 1, v58) == 1)
  {
    v40 = v28((v37 + v38), 1, v39);
    v41 = v64;
    if (v40 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v42 = v59;
  outlined init with copy of PgQuery_Alias?(v37, v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v43 = v28((v37 + v38), 1, v39);
  v41 = v64;
  if (v43 == 1)
  {
    outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
LABEL_15:
    v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    _s10Foundation4UUIDVSgWOhTm_0(v37, v44, v45);
    goto LABEL_27;
  }

  v46 = v57;
  outlined init with take of PgQuery_OidList(v37 + v38, v57, type metadata accessor for PgQuery_Node);
  v47 = *(v39 + 20);
  v48 = *(v42 + v47);
  v49 = *(v46 + v47);
  if (v48 != v49)
  {

    v50 = closure #1 in static PgQuery_Node.== infix(_:_:)(v48, v49);

    if (!v50)
    {
      outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
      v44 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v51 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (*(v41 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype))
  {
    goto LABEL_27;
  }

  v52 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat);
  v53 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat + 8) == 1)
  {
    if (v53 > 1)
    {
      if (v53 == 2)
      {
        if (v52 != 2)
        {
          goto LABEL_27;
        }
      }

      else if (v52 != 3)
      {
        goto LABEL_27;
      }
    }

    else if (v53)
    {
      if (v52 != 1)
      {
        goto LABEL_27;
      }
    }

    else if (v52)
    {
      goto LABEL_27;
    }
  }

  else if (v52 != v53)
  {
    goto LABEL_27;
  }

  v55 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v56 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v55 == v56;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ConvertRowtypeExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConvertRowtypeExpr and conformance PgQuery_ConvertRowtypeExpr, type metadata accessor for PgQuery_ConvertRowtypeExpr, &protocol conformance descriptor for PgQuery_ConvertRowtypeExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ConvertRowtypeExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConvertRowtypeExpr and conformance PgQuery_ConvertRowtypeExpr, type metadata accessor for PgQuery_ConvertRowtypeExpr, &protocol conformance descriptor for PgQuery_ConvertRowtypeExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ConvertRowtypeExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConvertRowtypeExpr and conformance PgQuery_ConvertRowtypeExpr, type metadata accessor for PgQuery_ConvertRowtypeExpr, &protocol conformance descriptor for PgQuery_ConvertRowtypeExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_CollateExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PgQuery_CollateExpr(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = a1;
    v10 = *(v3 + v7);
    type metadata accessor for PgQuery_CollateExpr._StorageClass(0);
    v11 = swift_allocObject();
    v23 = a2;
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
    Node = type metadata accessor for PgQuery_Node(0);
    v14 = *(*(Node - 8) + 56);
    v14(v11 + v12, 1, 1, Node);
    v24 = a3;
    v15 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
    v14(v11 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
    v16 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid;
    *(v11 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid) = 0;
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
    *(v11 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
    v18 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;

    v19 = v11 + v12;
    a2 = v23;
    outlined assign with copy of PgQuery_Node?(v10 + v18, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v20 = v11 + v15;
    a3 = v24;
    outlined assign with copy of PgQuery_Node?(v10 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v11 + v16) = *(v10 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid);
    LODWORD(v16) = *(v10 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    *(v11 + v17) = v16;
    a1 = v22;

    *(v3 + v7) = v11;
    v9 = v11;
  }

  return closure #1 in PgQuery_CollateExpr.decodeMessage<A>(decoder:)(v9, a1, a2, a3);
}

uint64_t closure #1 in PgQuery_CollateExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else if (result == 1 || result == 2)
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

uint64_t closure #1 in PgQuery_CollateExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v27 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v16 = MEMORY[0x1EEE9AC00](Node, v15);
  v27 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v27 - v19;
  v28 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v14 + 48);
  if (v21(v12, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v20, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v22 = v31;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
    if (v22)
    {
      return result;
    }

    v31 = 0;
  }

  v24 = v28;
  outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v21(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v25 = v31;
  }

  else
  {
    v26 = v27;
    outlined init with take of PgQuery_OidList(v9, v27, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v25 = v31;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
    if (v25)
    {
      return result;
    }

    v24 = v28;
  }

  if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v25))
  {
    result = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
    if (result)
    {
      return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CollateExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateExpr and conformance PgQuery_CollateExpr, type metadata accessor for PgQuery_CollateExpr, &protocol conformance descriptor for PgQuery_CollateExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CollateExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateExpr and conformance PgQuery_CollateExpr, type metadata accessor for PgQuery_CollateExpr, &protocol conformance descriptor for PgQuery_CollateExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CollateExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateExpr and conformance PgQuery_CollateExpr, type metadata accessor for PgQuery_CollateExpr, &protocol conformance descriptor for PgQuery_CollateExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_SubLink._StorageClass.__deallocating_deinit(void *a1, void *a2, uint64_t a3, void *a4)
{
  _s10Foundation4UUIDVSgWOhTm_0(v4 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v4 + *a2, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v4 + *a4, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*v4 + 48);
  v8 = *(*v4 + 52);

  return MEMORY[0x1EEE6BDC0](v4, v7, v8);
}

void type metadata completion function for PgQuery_SubLink._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v4 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_CaseExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        if (result == 1)
        {
          goto LABEL_4;
        }

        if (result == 2 || result == 3)
        {
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
LABEL_4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 7)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result == 4)
        {
          goto LABEL_4;
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

uint64_t closure #1 in PgQuery_CaseExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v41 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v38 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v16 = *(Node - 8);
  v18 = MEMORY[0x1EEE9AC00](Node, v17);
  v38 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v39 = &v38 - v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v38 - v24;
  v26 = a1;
  v28 = v27;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v29 = *(v16 + 48);
  v40 = v16 + 48;
  if (v29(v14, 1, v28) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v30 = v44;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v14, v25, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v30 = v44;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    if (v30)
    {
      return result;
    }
  }

  v33 = v41;
  v32 = v42;
  if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casetype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v30))
  {
    if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casecollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v30))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v29(v33, 1, v28) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v34 = v33;
        v35 = v39;
        outlined init with take of PgQuery_OidList(v34, v39, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_Node);
        if (v30)
        {
          return result;
        }
      }

      if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16))
      {
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

        if (v30)
        {
          return result;
        }

        v36 = 0;
      }

      else
      {
        v36 = v30;
      }

      outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defresult, v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v29(v32, 1, v28) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v37 = v38;
        outlined init with take of PgQuery_OidList(v32, v38, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_Node);
        if (v36)
        {
          return result;
        }
      }

      result = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CaseExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v7 = MEMORY[0x1EEE9AC00](Node, v6);
  v87 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v90 = &v85 - v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v94 = &v85 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v88 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v91 = &v85 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v85 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v89 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v93 = &v85 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v85 - v33;
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v92 = v32;
  v36 = *(v32 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v85 - v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v35, &v34[v36], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v37 = *(v5 + 48);
  if (v37(v34, 1, Node) == 1)
  {
    v86 = Node;
    v38 = v37(&v34[v36], 1, Node);

    if (v38 != 1)
    {
LABEL_7:
      v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_8:
      v42 = v34;
LABEL_9:
      _s10Foundation4UUIDVSgWOhTm_0(v42, v40, v41);
      goto LABEL_37;
    }

    _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with copy of PgQuery_Alias?(v34, v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v37(&v34[v36], 1, Node) == 1)
    {

      v39 = v23;
LABEL_6:
      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
      goto LABEL_7;
    }

    v43 = &v34[v36];
    v44 = v94;
    outlined init with take of PgQuery_OidList(v43, v94, type metadata accessor for PgQuery_Node);
    v86 = Node;
    v45 = *(Node + 20);
    v46 = *&v23[v45];
    v47 = *(v44 + v45);

    if (v46 != v47)
    {

      v48 = closure #1 in static PgQuery_Node.== infix(_:_:)(v46, v47);

      if (!v48)
      {
        outlined destroy of PgQuery_OidList(v94, type metadata accessor for PgQuery_Node);
        v57 = v23;
LABEL_19:
        outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
        v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_8;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v49 = v94;
    v50 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((v50 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casetype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casetype) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casecollid) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casecollid))
  {
    goto LABEL_37;
  }

  v51 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v52 = v93;
  v53 = *(v92 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v93, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v51, v52 + v53, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v54 = v86;
  if (v37(v52, 1, v86) == 1)
  {
    if (v37((v52 + v53), 1, v54) == 1)
    {
      v55 = v52;
      v56 = v54;
      _s10Foundation4UUIDVSgWOhTm_0(v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_26;
    }

LABEL_22:
    v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v42 = v52;
    goto LABEL_9;
  }

  v58 = v91;
  outlined init with copy of PgQuery_Alias?(v52, v91, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v37((v52 + v53), 1, v54) == 1)
  {
    outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
    goto LABEL_22;
  }

  v59 = v90;
  outlined init with take of PgQuery_OidList(v52 + v53, v90, type metadata accessor for PgQuery_Node);
  v56 = v54;
  v60 = *(v54 + 20);
  v61 = *(v58 + v60);
  v62 = *(v59 + v60);
  if (v61 != v62)
  {

    v63 = closure #1 in static PgQuery_Node.== infix(_:_:)(v61, v62);

    if (!v63)
    {
      outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v91, type metadata accessor for PgQuery_Node);
      v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v42 = v93;
      goto LABEL_9;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v64 = v91;
  v65 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v64, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v93, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v65 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_26:
  v66 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v67 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v66, v67);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_37;
  }

  v69 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defresult;
  v70 = *(v92 + 48);
  v71 = v89;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defresult, v89, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v72 = a2 + v69;
  v34 = v71;
  outlined init with copy of PgQuery_Alias?(v72, v71 + v70, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v73 = v56;
  if (v37(v71, 1, v56) == 1)
  {
    if (v37((v71 + v70), 1, v56) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v71, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_36:
      v82 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v83 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v82 == v83;
    }

    goto LABEL_7;
  }

  v74 = v71;
  v75 = v88;
  outlined init with copy of PgQuery_Alias?(v74, v88, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v37(&v34[v70], 1, v56) == 1)
  {
    v39 = v75;
    goto LABEL_6;
  }

  v76 = v87;
  outlined init with take of PgQuery_OidList(&v34[v70], v87, type metadata accessor for PgQuery_Node);
  v77 = *(v73 + 20);
  v78 = *(v75 + v77);
  v79 = *(v76 + v77);
  if (v78 != v79)
  {

    v80 = closure #1 in static PgQuery_Node.== infix(_:_:)(v78, v79);

    if (!v80)
    {
      outlined destroy of PgQuery_OidList(v76, type metadata accessor for PgQuery_Node);
      v57 = v75;
      goto LABEL_19;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v81 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v76, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v81)
  {
    goto LABEL_36;
  }

LABEL_37:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CaseExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseExpr and conformance PgQuery_CaseExpr, type metadata accessor for PgQuery_CaseExpr, &protocol conformance descriptor for PgQuery_CaseExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CaseExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseExpr and conformance PgQuery_CaseExpr, type metadata accessor for PgQuery_CaseExpr, &protocol conformance descriptor for PgQuery_CaseExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CaseExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseExpr and conformance PgQuery_CaseExpr, type metadata accessor for PgQuery_CaseExpr, &protocol conformance descriptor for PgQuery_CaseExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_ArrayCoerceExpr._StorageClass.__deallocating_deinit(void *a1, void *a2, void *a3)
{
  _s10Foundation4UUIDVSgWOhTm_0(v3 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v3 + *a2, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v3 + *a3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*v3 + 48);
  v7 = *(*v3 + 52);

  return MEMORY[0x1EEE6BDC0](v3, v6, v7);
}

void type metadata completion function for PgQuery_CaseWhen._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_CaseWhen.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PgQuery_CaseWhen(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = a1;
    v10 = *(v3 + v7);
    type metadata accessor for PgQuery_CaseWhen._StorageClass(0);
    v11 = swift_allocObject();
    v22 = v3;
    v12 = v7;
    v13 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
    Node = type metadata accessor for PgQuery_Node(0);
    v15 = *(*(Node - 8) + 56);
    v15(v11 + v13, 1, 1, Node);
    v25 = a3;
    v16 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
    v15(v11 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, 1, 1, Node);
    v24 = a2;
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result;
    v15(v11 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result, 1, 1, Node);
    v18 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
    *(v11 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
    v19 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;

    outlined assign with copy of PgQuery_Node?(v10 + v19, v11 + v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined assign with copy of PgQuery_Node?(v10 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v11 + v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v20 = v11 + v17;
    a2 = v24;
    outlined assign with copy of PgQuery_Node?(v10 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result, v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    LODWORD(v16) = *(v10 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    *(v11 + v18) = v16;
    a3 = v25;
    a1 = v23;

    *(v22 + v12) = v11;
    v9 = v11;
  }

  return closure #1 in PgQuery_CaseWhen.decodeMessage<A>(decoder:)(v9, a1, a2, a3);
}

uint64_t closure #1 in PgQuery_CaseWhen.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        if (result == 3)
        {
          goto LABEL_4;
        }

        if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CaseWhen.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v38 = a2;
  v39 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v34 - v15;
  Node = type metadata accessor for PgQuery_Node(0);
  v18 = *(Node - 8);
  v20 = MEMORY[0x1EEE9AC00](Node, v19);
  v35 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v34 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v34 - v27;
  v40 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v29 = *(v18 + 48);
  if (v29(v16, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v16, v28, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v40 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v29(v13, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v25, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  v31 = v36;
  outlined init with copy of PgQuery_Alias?(v40 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result, v36, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v29(v31, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v32 = v31;
    v33 = v35;
    outlined init with take of PgQuery_OidList(v32, v35, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v33, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  result = *(v40 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  if (result)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_CaseWhen.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v7 = MEMORY[0x1EEE9AC00](Node, v6);
  v80 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v82 = &v80 - v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v87 = &v80 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v81 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v84 = &v80 - v20;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v80 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v83 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v85 = &v80 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v80 - v33;
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v86 = v32;
  v36 = *(v32 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v80 - v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v35, &v34[v36], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v37 = *(v5 + 48);
  if (v37(v34, 1, Node) == 1)
  {
    v38 = v37(&v34[v36], 1, Node);

    if (v38 != 1)
    {
LABEL_7:
      v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_8:
      v42 = v34;
LABEL_18:
      _s10Foundation4UUIDVSgWOhTm_0(v42, v40, v41);
      goto LABEL_19;
    }

    _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with copy of PgQuery_Alias?(v34, v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v37(&v34[v36], 1, Node) == 1)
    {

      v39 = v23;
LABEL_6:
      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_Node);
      goto LABEL_7;
    }

    v43 = &v34[v36];
    v44 = v87;
    outlined init with take of PgQuery_OidList(v43, v87, type metadata accessor for PgQuery_Node);
    v45 = Node;
    v46 = *(Node + 20);
    v47 = *&v23[v46];
    v48 = *(v44 + v46);

    if (v47 != v48)
    {

      v49 = closure #1 in static PgQuery_Node.== infix(_:_:)(v47, v48);

      if (!v49)
      {
        outlined destroy of PgQuery_OidList(v87, type metadata accessor for PgQuery_Node);
        v68 = v23;
LABEL_28:
        outlined destroy of PgQuery_OidList(v68, type metadata accessor for PgQuery_Node);
        v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_8;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v50 = v87;
    v51 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    Node = v45;
    if ((v51 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v52 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  v53 = v85;
  v54 = *(v86 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v85, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v52, v53 + v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v37(v53, 1, Node) == 1)
  {
    if (v37((v53 + v54), 1, Node) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v53, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_24;
    }

LABEL_17:
    v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v42 = v53;
    goto LABEL_18;
  }

  v55 = v84;
  outlined init with copy of PgQuery_Alias?(v53, v84, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v37((v53 + v54), 1, Node) == 1)
  {
    outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
    goto LABEL_17;
  }

  v57 = v82;
  outlined init with take of PgQuery_OidList(v53 + v54, v82, type metadata accessor for PgQuery_Node);
  v58 = *(Node + 20);
  v59 = *(v55 + v58);
  v60 = *(v57 + v58);
  if (v59 != v60)
  {

    v61 = closure #1 in static PgQuery_Node.== infix(_:_:)(v59, v60);

    if (!v61)
    {
      outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
      v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v42 = v85;
      goto LABEL_18;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v62 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v85, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v62 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_24:
  v63 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result;
  v64 = *(v86 + 48);
  v65 = Node;
  v66 = v83;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result, v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v67 = a2 + v63;
  v34 = v66;
  outlined init with copy of PgQuery_Alias?(v67, v66 + v64, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v37(v66, 1, v65) == 1)
  {
    if (v37((v66 + v64), 1, v65) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v66, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_34:
      v78 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v79 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v78 == v79;
    }

    goto LABEL_7;
  }

  v69 = v66;
  v70 = v65;
  v71 = v81;
  outlined init with copy of PgQuery_Alias?(v69, v81, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v37(&v34[v64], 1, v65) == 1)
  {
    v39 = v71;
    goto LABEL_6;
  }

  v72 = v80;
  outlined init with take of PgQuery_OidList(&v34[v64], v80, type metadata accessor for PgQuery_Node);
  v73 = *(v70 + 20);
  v74 = *(v71 + v73);
  v75 = *(v72 + v73);
  if (v74 != v75)
  {

    v76 = closure #1 in static PgQuery_Node.== infix(_:_:)(v74, v75);

    if (!v76)
    {
      outlined destroy of PgQuery_OidList(v72, type metadata accessor for PgQuery_Node);
      v68 = v71;
      goto LABEL_28;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v77 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v72, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v71, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v77)
  {
    goto LABEL_34;
  }

LABEL_19:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CaseWhen(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseWhen and conformance PgQuery_CaseWhen, type metadata accessor for PgQuery_CaseWhen, &protocol conformance descriptor for PgQuery_CaseWhen);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CaseWhen(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseWhen and conformance PgQuery_CaseWhen, type metadata accessor for PgQuery_CaseWhen, &protocol conformance descriptor for PgQuery_CaseWhen);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CaseWhen(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseWhen and conformance PgQuery_CaseWhen, type metadata accessor for PgQuery_CaseWhen, &protocol conformance descriptor for PgQuery_CaseWhen);

  return Message.hash(into:)();
}

uint64_t PgQuery_CaseTestExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PgQuery_CaseTestExpr(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + v7);
    type metadata accessor for PgQuery_CaseTestExpr._StorageClass(0);
    v11 = swift_allocObject();
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v11 + v12, 1, 1, Node);
    v20 = a1;
    v21 = a3;
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID;
    *(v11 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) = 0;
    v15 = a2;
    v16 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod;
    *(v11 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) = 0;
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation;
    *(v11 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) = 0;
    v18 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;

    outlined assign with copy of PgQuery_Node?(v10 + v18, v11 + v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v11 + v14) = *(v10 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID);
    a1 = v20;
    *(v11 + v16) = *(v10 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod);
    a2 = v15;
    LODWORD(v15) = *(v10 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

    *(v11 + v17) = v15;
    a3 = v21;

    *(v3 + v7) = v11;
    v9 = v11;
  }

  return closure #1 in PgQuery_CaseTestExpr.decodeMessage<A>(decoder:)(v9, a1, a2, a3);
}

uint64_t closure #1 in PgQuery_CaseTestExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      else if (result == 4)
      {
        goto LABEL_11;
      }
    }

    else if (result == 1)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }

    else if (result == 2)
    {
LABEL_11:
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }
}

uint64_t closure #1 in PgQuery_CaseTestExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v17 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v14 = v18;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v14 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v14)
    {
      return result;
    }
  }

  v16 = v17[0];
  if (!*(v17[0] + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
  {
    if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v14))
    {
      result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CaseTestExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v34 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v35;
      outlined init with take of PgQuery_OidList(&v16[v18], v35, type metadata accessor for PgQuery_Node);
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
          goto LABEL_14;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_14;
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
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod))
  {
    v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

    v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

    return v31 == v32;
  }

LABEL_14:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CaseTestExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseTestExpr and conformance PgQuery_CaseTestExpr, type metadata accessor for PgQuery_CaseTestExpr, &protocol conformance descriptor for PgQuery_CaseTestExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CaseTestExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseTestExpr and conformance PgQuery_CaseTestExpr, type metadata accessor for PgQuery_CaseTestExpr, &protocol conformance descriptor for PgQuery_CaseTestExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CaseTestExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseTestExpr and conformance PgQuery_CaseTestExpr, type metadata accessor for PgQuery_CaseTestExpr, &protocol conformance descriptor for PgQuery_CaseTestExpr);

  return Message.hash(into:)();
}

uint64_t closure #1 in PgQuery_ArrayExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        if (result == 1)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2 || result == 3)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else if (result == 7)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result == 4)
        {
          goto LABEL_4;
        }

        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_ArrayExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v19 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v15 = v14;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, v15) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v16 = v21;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v16 = v21;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v16)
    {
      return result;
    }
  }

  v18 = v20;
  if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayTypeid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v16))
  {
    if (!*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayCollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v16))
    {
      if (!*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elementTypeid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v16))
      {
        if (!*(*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elements) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v16))
        {
          if (*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__multidims) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v16))
          {
            result = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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

BOOL closure #1 in static PgQuery_ArrayExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v37 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_16;
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
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayTypeid) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayTypeid) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayCollid) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayCollid) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elementTypeid) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elementTypeid))
  {
    v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elements);
    v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elements);

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v31, v32);

    if ((NodeV_Tt1g5 & 1) != 0 && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__multidims) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__multidims))
    {
      v35 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v36 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v35 == v36;
    }
  }

LABEL_16:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ArrayExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayExpr and conformance PgQuery_ArrayExpr, type metadata accessor for PgQuery_ArrayExpr, &protocol conformance descriptor for PgQuery_ArrayExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ArrayExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayExpr and conformance PgQuery_ArrayExpr, type metadata accessor for PgQuery_ArrayExpr, &protocol conformance descriptor for PgQuery_ArrayExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ArrayExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayExpr and conformance PgQuery_ArrayExpr, type metadata accessor for PgQuery_ArrayExpr, &protocol conformance descriptor for PgQuery_ArrayExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_RowExpr._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_GroupingFunc._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v6 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_RowExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
            lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 5:
LABEL_18:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 6:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 2:
            goto LABEL_18;
          case 3:
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RowExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v16 = v15;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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

  v18 = v21;
  if (!*(*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    if (!*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowTypeid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
    {
      if (!*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat) || (v19 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat + 8), v22 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat), v23 = v19, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
      {
        if (!*(*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
        {
          result = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
          if (result)
          {
            return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_RowExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v42 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v42 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v43;
      outlined init with take of PgQuery_OidList(&v16[v18], v43, type metadata accessor for PgQuery_Node);
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
          goto LABEL_28;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_28;
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
  v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v31, v32);

  if ((NodeV_Tt1g5 & 1) == 0 || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowTypeid) != *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowTypeid))
  {
    goto LABEL_28;
  }

  v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat);
  v35 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat);
  if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat + 8) == 1)
  {
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        if (v34 != 2)
        {
          goto LABEL_28;
        }
      }

      else if (v34 != 3)
      {
        goto LABEL_28;
      }
    }

    else if (v35)
    {
      if (v34 != 1)
      {
        goto LABEL_28;
      }
    }

    else if (v34)
    {
      goto LABEL_28;
    }
  }

  else if (v34 != v35)
  {
    goto LABEL_28;
  }

  v36 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames);
  v37 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames);

  v38 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v36, v37);

  if (v38)
  {
    v39 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v40 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v39 == v40;
  }

LABEL_28:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RowExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowExpr and conformance PgQuery_RowExpr, type metadata accessor for PgQuery_RowExpr, &protocol conformance descriptor for PgQuery_RowExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RowExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowExpr and conformance PgQuery_RowExpr, type metadata accessor for PgQuery_RowExpr, &protocol conformance descriptor for PgQuery_RowExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RowExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowExpr and conformance PgQuery_RowExpr, type metadata accessor for PgQuery_RowExpr, &protocol conformance descriptor for PgQuery_RowExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_RowCompareExpr._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos;
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos) = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies) = v7;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids) = v7;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs) = v7;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs) = v7;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype + 8);
  *v5 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype);
  *(v5 + 8) = v12;
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos);

  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies);

  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids);

  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs);

  v13 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs);

  *(v1 + v11) = v13;

  return v1;
}

uint64_t PgQuery_RowCompareExpr._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_RangeTblFunction._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v4 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_SubscriptingRef.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v7 + v14);
    a5(0);
    swift_allocObject();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t closure #1 in PgQuery_RowCompareExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        if (result == 1)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

LABEL_15:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        lazy protocol witness table accessor for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result <= 6 || result == 7)
      {
        goto LABEL_15;
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RowCompareExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v21 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v15 = v14;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, v15) == 1)
  {
    result = _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v17 = v25;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v18 = v25;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v17 = v18;
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v18)
    {
      return result;
    }
  }

  v19 = v22;
  if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype) || (v20 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype + 8), v23 = *(v22 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype), v24 = v20, lazy protocol witness table accessor for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v17))
  {
    if (!*(*(v19 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v17))
    {
      if (!*(*(v19 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v17))
      {
        if (!*(*(v19 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v17))
        {
          if (!*(*(v19 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v17))
          {
            if (*(*(v19 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs) + 16))
            {
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

              dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_RowCompareExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v50 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v50 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    v23 = a1;
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v28 = v51;
      outlined init with take of PgQuery_OidList(&v16[v18], v51, type metadata accessor for PgQuery_Node);
      v29 = *(Node + 20);
      v30 = *&v11[v29];
      v31 = *(v28 + v29);

      if (v30 == v31 || (, , v32 = closure #1 in static PgQuery_Node.== infix(_:_:)(v30, v31), , , v32))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v33 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v33 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

      outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v24, v25);
      goto LABEL_8;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v22 = v21(&v16[v18], 1, Node);

  v23 = a1;
  if (v22 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_13:
  v34 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype);
  v35 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype);
  if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype + 8) == 1)
  {
    if (v35 <= 2)
    {
      if (v35)
      {
        if (v35 == 1)
        {
          if (v34 != 1)
          {
            goto LABEL_8;
          }
        }

        else if (v34 != 2)
        {
          goto LABEL_8;
        }
      }

      else if (v34)
      {
        goto LABEL_8;
      }
    }

    else if (v35 > 4)
    {
      if (v35 == 5)
      {
        if (v34 != 5)
        {
          goto LABEL_8;
        }
      }

      else if (v34 != 6)
      {
        goto LABEL_8;
      }
    }

    else if (v35 == 3)
    {
      if (v34 != 3)
      {
        goto LABEL_8;
      }
    }

    else if (v34 != 4)
    {
      goto LABEL_8;
    }
  }

  else if (v34 != v35)
  {
    goto LABEL_8;
  }

  v36 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos);
  v37 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v36, v37);

  if (NodeV_Tt1g5)
  {
    v39 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies);
    v40 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies);

    v41 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v39, v40);

    if (v41)
    {
      v42 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids);
      v43 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids);

      v44 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v42, v43);

      if (v44)
      {
        v45 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs);
        v46 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs);

        v47 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v45, v46);

        if (v47)
        {
          v48 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs);
          v49 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs);

          v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v48, v49);

          return v26 & 1;
        }
      }
    }
  }

LABEL_8:

  v26 = 0;
  return v26 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RowCompareExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowCompareExpr and conformance PgQuery_RowCompareExpr, type metadata accessor for PgQuery_RowCompareExpr, &protocol conformance descriptor for PgQuery_RowCompareExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RowCompareExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowCompareExpr and conformance PgQuery_RowCompareExpr, type metadata accessor for PgQuery_RowCompareExpr, &protocol conformance descriptor for PgQuery_RowCompareExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RowCompareExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowCompareExpr and conformance PgQuery_RowCompareExpr, type metadata accessor for PgQuery_RowCompareExpr, &protocol conformance descriptor for PgQuery_RowCompareExpr);

  return Message.hash(into:)();
}

uint64_t closure #1 in PgQuery_CoalesceExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

LABEL_14:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
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
            goto LABEL_14;
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

uint64_t closure #1 in PgQuery_CoalesceExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v17 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v14 = v18;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v14 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v14)
    {
      return result;
    }
  }

  v16 = v17[0];
  if (!*(v17[0] + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescetype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
  {
    if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescecollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
    {
      if (!*(*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v14))
      {
        result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CoalesceExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v37 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
          goto LABEL_15;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_15;
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
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescetype) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescetype) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescecollid) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescecollid))
  {
    v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
    v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v31, v32);

    if (NodeV_Tt1g5)
    {
      v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v35 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v34 == v35;
    }
  }

LABEL_15:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CoalesceExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoalesceExpr and conformance PgQuery_CoalesceExpr, type metadata accessor for PgQuery_CoalesceExpr, &protocol conformance descriptor for PgQuery_CoalesceExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CoalesceExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoalesceExpr and conformance PgQuery_CoalesceExpr, type metadata accessor for PgQuery_CoalesceExpr, &protocol conformance descriptor for PgQuery_CoalesceExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CoalesceExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoalesceExpr and conformance PgQuery_CoalesceExpr, type metadata accessor for PgQuery_CoalesceExpr, &protocol conformance descriptor for PgQuery_CoalesceExpr);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_Param._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v7 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_MinMaxExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        if (result == 1)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2 || result == 3)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 7)
        {
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result == 4)
        {
          goto LABEL_4;
        }

        lazy protocol witness table accessor for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_MinMaxExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v21 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v15 = v14;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, v15) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v16 = v25;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v16 = v25;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v16)
    {
      return result;
    }
  }

  v18 = v22;
  if (!*(v22 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxtype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v16))
  {
    if (!*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v16))
    {
      if (!*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v16))
      {
        v19 = v16;
        if (*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op))
        {
          v20 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8);
          v23 = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
          v24 = v20;
          lazy protocol witness table accessor for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp();
          result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
          if (v16)
          {
            return result;
          }

          v19 = 0;
        }

        if (!*(*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v19))
        {
          result = *(v18 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
          if (result)
          {
            return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_MinMaxExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v39 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v39 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v40;
      outlined init with take of PgQuery_OidList(&v16[v18], v40, type metadata accessor for PgQuery_Node);
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
          goto LABEL_27;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_27;
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
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxtype) != *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxtype) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxcollid) != *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxcollid) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) != *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid))
  {
    goto LABEL_27;
  }

  v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8) == 1)
  {
    if (v32)
    {
      if (v32 == 1)
      {
        if (v31 != 1)
        {
          goto LABEL_27;
        }
      }

      else if (v31 != 2)
      {
        goto LABEL_27;
      }
    }

    else if (v31)
    {
      goto LABEL_27;
    }
  }

  else if (v31 != v32)
  {
    goto LABEL_27;
  }

  v33 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v34 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v33, v34);

  if (NodeV_Tt1g5)
  {
    v36 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v37 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v36 == v37;
  }

LABEL_27:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_MinMaxExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MinMaxExpr and conformance PgQuery_MinMaxExpr, type metadata accessor for PgQuery_MinMaxExpr, &protocol conformance descriptor for PgQuery_MinMaxExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_MinMaxExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MinMaxExpr and conformance PgQuery_MinMaxExpr, type metadata accessor for PgQuery_MinMaxExpr, &protocol conformance descriptor for PgQuery_MinMaxExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_MinMaxExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MinMaxExpr and conformance PgQuery_MinMaxExpr, type metadata accessor for PgQuery_MinMaxExpr, &protocol conformance descriptor for PgQuery_MinMaxExpr);

  return Message.hash(into:)();
}

uint64_t closure #1 in PgQuery_SQLValueFunction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v6 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
          lazy protocol witness table accessor for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 4 || result == 5)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_SQLValueFunction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v18 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v14 = v20;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v14 = v20;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v14)
    {
      return result;
    }
  }

  v16 = v18[0];
  if (!*(v18[0] + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op) || (v17 = *(v18[0] + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8), v18[2] = *(v18[0] + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op), v19 = v17, lazy protocol witness table accessor for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v14))
  {
    if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
    {
      if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v14))
      {
        result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_SQLValueFunction.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v34 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v35;
      outlined init with take of PgQuery_OidList(&v16[v18], v35, type metadata accessor for PgQuery_Node);
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
          goto LABEL_15;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_15;
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
  if (specialized == infix<A>(_:_:)(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op), *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8), *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op)) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod))
  {
    v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v31 == v32;
  }

LABEL_15:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SQLValueFunction(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SQLValueFunction and conformance PgQuery_SQLValueFunction, type metadata accessor for PgQuery_SQLValueFunction, &protocol conformance descriptor for PgQuery_SQLValueFunction);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SQLValueFunction(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SQLValueFunction and conformance PgQuery_SQLValueFunction, type metadata accessor for PgQuery_SQLValueFunction, &protocol conformance descriptor for PgQuery_SQLValueFunction);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SQLValueFunction(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SQLValueFunction and conformance PgQuery_SQLValueFunction, type metadata accessor for PgQuery_SQLValueFunction, &protocol conformance descriptor for PgQuery_SQLValueFunction);

  return Message.hash(into:)();
}

uint64_t PgQuery_XmlExpr._StorageClass.init()()
{
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v3 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namedArgs) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argNames) = v5;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = v5;
  v6 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  return v0;
}

uint64_t PgQuery_XmlExpr._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_XmlExpr._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_XmlExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    v13 = v5;
    v8 = v14;
    for (i = v5; ; i = v11)
    {
      if (v7)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
LABEL_4:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
LABEL_5:
            v10 = v14;
            v11 = v13;
            goto LABEL_6;
          }

          v10 = v8;
          v12 = v4;
          lazy protocol witness table accessor for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType();
LABEL_22:
          v4 = v12;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_23:
          v11 = v13;
          goto LABEL_6;
        }

        if (result == 8)
        {
          v10 = v8;
          v11 = i;
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_6;
        }

        v11 = i;
        if (result == 9)
        {
          v10 = v8;
          goto LABEL_28;
        }

        if (result == 10)
        {
          v10 = v8;
LABEL_28:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_6;
        }

        v10 = v8;
      }

      else
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            goto LABEL_5;
          }

          v10 = v8;
          if (result == 2)
          {
            v12 = v4;
            lazy protocol witness table accessor for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp();
            goto LABEL_22;
          }

          goto LABEL_23;
        }

        if (result != 3)
        {
          goto LABEL_4;
        }

        v11 = i;
        v10 = v8;
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
      v8 = v10;
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_XmlExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v24 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v15 = v14;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, v15) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v16 = v28;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v17 = v28;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v16 = v17;
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v17)
    {
      return result;
    }
  }

  v19 = v25;
  if (!*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op) || (v20 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8), v26 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op), v27 = v20, lazy protocol witness table accessor for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v16))
  {
    v21 = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name + 8);
    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name) & 0xFFFFFFFFFFFFLL;
    }

    if (!v22 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v16))
    {
      if (!*(*(v19 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namedArgs) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v16))
      {
        if (!*(*(v19 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argNames) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v16))
        {
          if (!*(*(v19 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v16))
          {
            if (!*(v19 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption) || (v23 = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption + 8), v26 = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption), v27 = v23, lazy protocol witness table accessor for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v16))
            {
              if (!*(v19 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v16))
              {
                if (!*(v19 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v16))
                {
                  result = *(v19 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  }

  return result;
}

BOOL closure #1 in static PgQuery_XmlExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v45 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v45 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v46;
      outlined init with take of PgQuery_OidList(&v16[v18], v46, type metadata accessor for PgQuery_Node);
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
          goto LABEL_32;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_32;
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
  if (!specialized == infix<A>(_:_:)(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op), *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8), *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op)) || (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name) != *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name + 8) != *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_32;
  }

  v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namedArgs);
  v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namedArgs);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v31, v32);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_32;
  }

  v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argNames);
  v35 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argNames);

  v36 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v34, v35);

  if ((v36 & 1) == 0)
  {
    goto LABEL_32;
  }

  v37 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v38 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v39 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v37, v38);

  if ((v39 & 1) == 0)
  {
    goto LABEL_32;
  }

  v40 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption);
  v41 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption);
  if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption + 8) == 1)
  {
    if (v41)
    {
      if (v41 == 1)
      {
        if (v40 != 1)
        {
          goto LABEL_32;
        }
      }

      else if (v40 != 2)
      {
        goto LABEL_32;
      }
    }

    else if (v40)
    {
      goto LABEL_32;
    }
  }

  else if (v40 != v41)
  {
    goto LABEL_32;
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod))
  {
    v42 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v43 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v42 == v43;
  }

LABEL_32:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_XmlExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlExpr and conformance PgQuery_XmlExpr, type metadata accessor for PgQuery_XmlExpr, &protocol conformance descriptor for PgQuery_XmlExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_XmlExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlExpr and conformance PgQuery_XmlExpr, type metadata accessor for PgQuery_XmlExpr, &protocol conformance descriptor for PgQuery_XmlExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_XmlExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlExpr and conformance PgQuery_XmlExpr, type metadata accessor for PgQuery_XmlExpr, &protocol conformance descriptor for PgQuery_XmlExpr);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_NamedArgExpr._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v5 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_NullTest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v6 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            lazy protocol witness table accessor for type PgQuery_NullTestType and conformance PgQuery_NullTestType();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 4:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_NullTest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v33 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v27 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v15 = *(Node - 8);
  v17 = MEMORY[0x1EEE9AC00](Node, v16);
  v27 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v27 - v20;
  v28 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v15 + 48);
  if (v22(v13, 1, Node) == 1)
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

  v24 = v28;
  outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(v10, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v25 = v27;
    outlined init with take of PgQuery_OidList(v10, v27, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype) || (v26 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype + 8), v31 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype), v32 = v26, lazy protocol witness table accessor for type PgQuery_NullTestType and conformance PgQuery_NullTestType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argisrow) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      result = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_NullTest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v7 = MEMORY[0x1EEE9AC00](Node, v6);
  v57 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v60 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v59 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v63 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v57 - v24;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v62 = v23;
  v27 = *(v23 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v57 - v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v26, &v25[v27], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v28 = *(v5 + 48);
  if (v28(v25, 1, Node) == 1)
  {
    v58 = Node;
    v29 = v28(&v25[v27], 1, Node);

    if (v29 == 1)
    {
      v64 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_27;
  }

  v64 = a1;
  v61 = a2;
  outlined init with copy of PgQuery_Alias?(v25, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28(&v25[v27], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v30 = v60;
  outlined init with take of PgQuery_OidList(&v25[v27], v60, type metadata accessor for PgQuery_Node);
  v58 = Node;
  v31 = *(Node + 20);
  v32 = *&v17[v31];
  v33 = *(v30 + v31);

  if (v32 != v33)
  {

    v34 = closure #1 in static PgQuery_Node.== infix(_:_:)(v32, v33);

    if (!v34)
    {
      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_27;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v61;
  if ((v35 & 1) == 0)
  {
LABEL_27:

    return 0;
  }

LABEL_10:
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v37 = v63;
  v38 = *(v62 + 48);
  outlined init with copy of PgQuery_Alias?(v64 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v36, v37 + v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v39 = v58;
  if (v28(v37, 1, v58) == 1)
  {
    v40 = v28((v37 + v38), 1, v39);
    v41 = v64;
    if (v40 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v42 = v59;
  outlined init with copy of PgQuery_Alias?(v37, v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v43 = v28((v37 + v38), 1, v39);
  v41 = v64;
  if (v43 == 1)
  {
    outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
LABEL_15:
    v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    _s10Foundation4UUIDVSgWOhTm_0(v37, v44, v45);
    goto LABEL_27;
  }

  v46 = v57;
  outlined init with take of PgQuery_OidList(v37 + v38, v57, type metadata accessor for PgQuery_Node);
  v47 = *(v39 + 20);
  v48 = *(v42 + v47);
  v49 = *(v46 + v47);
  if (v48 != v49)
  {

    v50 = closure #1 in static PgQuery_Node.== infix(_:_:)(v48, v49);

    if (!v50)
    {
      outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
      v44 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v51 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  v52 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype);
  v53 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype + 8) == 1)
  {
    if (v53)
    {
      if (v53 == 1)
      {
        if (v52 == 1)
        {
          goto LABEL_34;
        }
      }

      else if (v52 == 2)
      {
        goto LABEL_34;
      }

      goto LABEL_27;
    }

    if (v52)
    {
      goto LABEL_27;
    }
  }

  else if (v52 != v53)
  {
    goto LABEL_27;
  }

LABEL_34:
  if (*(v41 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argisrow) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argisrow))
  {
    goto LABEL_27;
  }

  v55 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v56 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v55 == v56;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_NullTest(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullTest and conformance PgQuery_NullTest, type metadata accessor for PgQuery_NullTest, &protocol conformance descriptor for PgQuery_NullTest);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_NullTest(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullTest and conformance PgQuery_NullTest, type metadata accessor for PgQuery_NullTest, &protocol conformance descriptor for PgQuery_NullTest);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_NullTest(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullTest and conformance PgQuery_NullTest, type metadata accessor for PgQuery_NullTest, &protocol conformance descriptor for PgQuery_NullTest);

  return Message.hash(into:)();
}

uint64_t PgQuery_BooleanTest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PgQuery_BooleanTest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = a1;
    v10 = *(v3 + v7);
    type metadata accessor for PgQuery_BooleanTest._StorageClass(0);
    v11 = swift_allocObject();
    v24 = a2;
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
    Node = type metadata accessor for PgQuery_Node(0);
    v14 = *(*(Node - 8) + 56);
    v14(v11 + v12, 1, 1, Node);
    v25 = a3;
    v15 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
    v14(v11 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
    v16 = v11 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype;
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
    *(v11 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
    v18 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;

    v19 = v11 + v12;
    a2 = v24;
    outlined assign with copy of PgQuery_Node?(v10 + v18, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v20 = v11 + v15;
    a3 = v25;
    outlined assign with copy of PgQuery_Node?(v10 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v21 = *(v10 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype + 8);
    *v16 = *(v10 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype);
    *(v16 + 8) = v21;
    LODWORD(v16) = *(v10 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    *(v11 + v17) = v16;
    a1 = v23;

    *(v3 + v7) = v11;
    v9 = v11;
  }

  return closure #1 in PgQuery_BooleanTest.decodeMessage<A>(decoder:)(v9, a1, a2, a3);
}

uint64_t closure #1 in PgQuery_BooleanTest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      if (result == 3)
      {
        lazy protocol witness table accessor for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 1 || result == 2)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_BooleanTest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v33 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v27 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v15 = *(Node - 8);
  v17 = MEMORY[0x1EEE9AC00](Node, v16);
  v27 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v27 - v20;
  v28 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v15 + 48);
  if (v22(v13, 1, Node) == 1)
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

  v24 = v28;
  outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(v10, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v25 = v27;
    outlined init with take of PgQuery_OidList(v10, v27, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype) || (v26 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype + 8), v31 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype), v32 = v26, lazy protocol witness table accessor for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
    if (result)
    {
      return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_BooleanTest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v7 = MEMORY[0x1EEE9AC00](Node, v6);
  v57 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v60 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v59 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v63 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v57 - v24;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v62 = v23;
  v27 = *(v23 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v57 - v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v26, &v25[v27], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v28 = *(v5 + 48);
  if (v28(v25, 1, Node) == 1)
  {
    v58 = Node;
    v29 = v28(&v25[v27], 1, Node);

    if (v29 == 1)
    {
      v64 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_28;
  }

  v64 = a1;
  v61 = a2;
  outlined init with copy of PgQuery_Alias?(v25, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28(&v25[v27], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v30 = v60;
  outlined init with take of PgQuery_OidList(&v25[v27], v60, type metadata accessor for PgQuery_Node);
  v58 = Node;
  v31 = *(Node + 20);
  v32 = *&v17[v31];
  v33 = *(v30 + v31);

  if (v32 != v33)
  {

    v34 = closure #1 in static PgQuery_Node.== infix(_:_:)(v32, v33);

    if (!v34)
    {
      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_28;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v61;
  if ((v35 & 1) == 0)
  {
LABEL_28:

    return 0;
  }

LABEL_10:
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v37 = v63;
  v38 = *(v62 + 48);
  outlined init with copy of PgQuery_Alias?(v64 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v36, v37 + v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v39 = v58;
  if (v28(v37, 1, v58) == 1)
  {
    v40 = v28((v37 + v38), 1, v39);
    v41 = v64;
    if (v40 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v42 = v59;
  outlined init with copy of PgQuery_Alias?(v37, v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v43 = v28((v37 + v38), 1, v39);
  v41 = v64;
  if (v43 == 1)
  {
    outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
LABEL_15:
    v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    _s10Foundation4UUIDVSgWOhTm_0(v37, v44, v45);
    goto LABEL_28;
  }

  v46 = v57;
  outlined init with take of PgQuery_OidList(v37 + v38, v57, type metadata accessor for PgQuery_Node);
  v47 = *(v39 + 20);
  v48 = *(v42 + v47);
  v49 = *(v46 + v47);
  if (v48 != v49)
  {

    v50 = closure #1 in static PgQuery_Node.== infix(_:_:)(v48, v49);

    if (!v50)
    {
      outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
      v44 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v51 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  v52 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype);
  v53 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype + 8) == 1)
  {
    if (v53 <= 2)
    {
      if (v53)
      {
        if (v53 == 1)
        {
          if (v52 == 1)
          {
            goto LABEL_30;
          }
        }

        else if (v52 == 2)
        {
          goto LABEL_30;
        }
      }

      else if (!v52)
      {
        goto LABEL_30;
      }
    }

    else if (v53 > 4)
    {
      if (v53 == 5)
      {
        if (v52 == 5)
        {
          goto LABEL_30;
        }
      }

      else if (v52 == 6)
      {
        goto LABEL_30;
      }
    }

    else if (v53 == 3)
    {
      if (v52 == 3)
      {
        goto LABEL_30;
      }
    }

    else if (v52 == 4)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v52 != v53)
  {
    goto LABEL_28;
  }

LABEL_30:
  v55 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v56 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v55 == v56;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_BooleanTest(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BooleanTest and conformance PgQuery_BooleanTest, type metadata accessor for PgQuery_BooleanTest, &protocol conformance descriptor for PgQuery_BooleanTest);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_BooleanTest(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BooleanTest and conformance PgQuery_BooleanTest, type metadata accessor for PgQuery_BooleanTest, &protocol conformance descriptor for PgQuery_BooleanTest);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_BooleanTest(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BooleanTest and conformance PgQuery_BooleanTest, type metadata accessor for PgQuery_BooleanTest, &protocol conformance descriptor for PgQuery_BooleanTest);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_RelabelType._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_CoerceToDomain.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        if (result == 1 || result == 2)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 3)
        {
LABEL_10:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result != 4)
          {
            goto LABEL_10;
          }

LABEL_19:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 6)
        {
          lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 7)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CoerceToDomain.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v28 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v16 = MEMORY[0x1EEE9AC00](Node, v15);
  v28 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v28 - v19;
  v29 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v14 + 48);
  if (v21(v12, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v20, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v22 = v34;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
    if (v22)
    {
      return result;
    }

    v34 = 0;
  }

  v24 = v29;
  outlined init with copy of PgQuery_Alias?(v29 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v21(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v25 = v34;
  }

  else
  {
    v26 = v28;
    outlined init with take of PgQuery_OidList(v9, v28, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v25 = v34;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
    if (v25)
    {
      return result;
    }

    v24 = v29;
  }

  if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v25))
  {
    if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v25))
    {
      if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v25))
      {
        if (!*(v29 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat) || (v27 = *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat + 8), v32 = *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat), v33 = v27, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v25))
        {
          result = *(v29 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
          if (result)
          {
            return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CoerceToDomain.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v7 = MEMORY[0x1EEE9AC00](Node, v6);
  v57 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v60 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v59 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v63 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v57 - v24;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v62 = v23;
  v27 = *(v23 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v57 - v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v26, &v25[v27], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v28 = *(v5 + 48);
  if (v28(v25, 1, Node) == 1)
  {
    v58 = Node;
    v29 = v28(&v25[v27], 1, Node);

    if (v29 == 1)
    {
      v64 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_29;
  }

  v64 = a1;
  v61 = a2;
  outlined init with copy of PgQuery_Alias?(v25, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28(&v25[v27], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v30 = v60;
  outlined init with take of PgQuery_OidList(&v25[v27], v60, type metadata accessor for PgQuery_Node);
  v58 = Node;
  v31 = *(Node + 20);
  v32 = *&v17[v31];
  v33 = *(v30 + v31);

  if (v32 != v33)
  {

    v34 = closure #1 in static PgQuery_Node.== infix(_:_:)(v32, v33);

    if (!v34)
    {
      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_29;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v61;
  if ((v35 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v37 = v63;
  v38 = *(v62 + 48);
  outlined init with copy of PgQuery_Alias?(v64 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v36, v37 + v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v39 = v58;
  if (v28(v37, 1, v58) != 1)
  {
    v42 = v59;
    outlined init with copy of PgQuery_Alias?(v37, v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v43 = v28((v37 + v38), 1, v39);
    v41 = v64;
    if (v43 == 1)
    {
      outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
      goto LABEL_15;
    }

    v46 = v57;
    outlined init with take of PgQuery_OidList(v37 + v38, v57, type metadata accessor for PgQuery_Node);
    v47 = *(v39 + 20);
    v48 = *(v42 + v47);
    v49 = *(v46 + v47);
    if (v48 != v49)
    {

      v50 = closure #1 in static PgQuery_Node.== infix(_:_:)(v48, v49);

      if (!v50)
      {
        outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
        v44 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_16;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v51 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v51)
    {
      goto LABEL_20;
    }

LABEL_29:

    return 0;
  }

  v40 = v28((v37 + v38), 1, v39);
  v41 = v64;
  if (v40 != 1)
  {
LABEL_15:
    v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    _s10Foundation4UUIDVSgWOhTm_0(v37, v44, v45);
    goto LABEL_29;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
  if (*(v41 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid))
  {
    goto LABEL_29;
  }

  v52 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat);
  v53 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat + 8) == 1)
  {
    if (v53 > 1)
    {
      if (v53 == 2)
      {
        if (v52 != 2)
        {
          goto LABEL_29;
        }
      }

      else if (v52 != 3)
      {
        goto LABEL_29;
      }
    }

    else if (v53)
    {
      if (v52 != 1)
      {
        goto LABEL_29;
      }
    }

    else if (v52)
    {
      goto LABEL_29;
    }
  }

  else if (v52 != v53)
  {
    goto LABEL_29;
  }

  v55 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v56 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v55 == v56;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CoerceToDomain(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomain and conformance PgQuery_CoerceToDomain, type metadata accessor for PgQuery_CoerceToDomain, &protocol conformance descriptor for PgQuery_CoerceToDomain);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CoerceToDomain(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomain and conformance PgQuery_CoerceToDomain, type metadata accessor for PgQuery_CoerceToDomain, &protocol conformance descriptor for PgQuery_CoerceToDomain);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CoerceToDomain(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomain and conformance PgQuery_CoerceToDomain, type metadata accessor for PgQuery_CoerceToDomain, &protocol conformance descriptor for PgQuery_CoerceToDomain);

  return Message.hash(into:)();
}

uint64_t closure #1 in PgQuery_CoerceToDomainValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_15;
          case 4:
            goto LABEL_4;
          case 5:
LABEL_15:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CoerceToDomainValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v17 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v14 = v18;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v14 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v14)
    {
      return result;
    }
  }

  v16 = v17[0];
  if (!*(v17[0] + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
  {
    if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v14))
    {
      if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
      {
        result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CoerceToDomainValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v34 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v35;
      outlined init with take of PgQuery_OidList(&v16[v18], v35, type metadata accessor for PgQuery_Node);
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
          goto LABEL_15;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_15;
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
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation))
  {
    v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v31 == v32;
  }

LABEL_15:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CoerceToDomainValue(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomainValue and conformance PgQuery_CoerceToDomainValue, type metadata accessor for PgQuery_CoerceToDomainValue, &protocol conformance descriptor for PgQuery_CoerceToDomainValue);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CoerceToDomainValue(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomainValue and conformance PgQuery_CoerceToDomainValue, type metadata accessor for PgQuery_CoerceToDomainValue, &protocol conformance descriptor for PgQuery_CoerceToDomainValue);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CoerceToDomainValue(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomainValue and conformance PgQuery_CoerceToDomainValue, type metadata accessor for PgQuery_CoerceToDomainValue, &protocol conformance descriptor for PgQuery_CoerceToDomainValue);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_184D2AA30;
  v7 = v19 + v6;
  v8 = v19 + v6 + v4[14];
  *(v19 + v6) = 1;
  *v8 = "xpr";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = type metadata accessor for _NameMap.NameDescription();
  v11 = *(*(v10 - 8) + 104);
  (v11)(v8, v9, v10);
  v12 = v7 + v5 + v4[14];
  *(v7 + v5) = 2;
  *v12 = "type_id";
  *(v12 + 8) = 7;
  *(v12 + 16) = 2;
  v11();
  v13 = (v7 + 2 * v5);
  v14 = v13 + v4[14];
  *v13 = 3;
  *v14 = "type_mod";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v11();
  v15 = (v7 + 3 * v5);
  v16 = v15 + v4[14];
  *v15 = 4;
  *v16 = "collation";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v11();
  v17 = v7 + 4 * v5 + v4[14];
  *(v7 + 4 * v5) = 5;
  *v17 = "location";
  *(v17 + 8) = 8;
  *(v17 + 16) = 2;
  v11();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v3 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return _NameMap.init()();
}

uint64_t closure #1 in PgQuery_SetToDefault.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_15;
          case 4:
            goto LABEL_4;
          case 5:
LABEL_15:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_SetToDefault.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v17 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v14 = v18;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v14 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v14)
    {
      return result;
    }
  }

  v16 = v17[0];
  if (!*(v17[0] + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
  {
    if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v14))
    {
      if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
      {
        result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_SetToDefault.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v34 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v35;
      outlined init with take of PgQuery_OidList(&v16[v18], v35, type metadata accessor for PgQuery_Node);
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
          goto LABEL_15;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_15;
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
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation))
  {
    v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v31 == v32;
  }

LABEL_15:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SetToDefault(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetToDefault and conformance PgQuery_SetToDefault, type metadata accessor for PgQuery_SetToDefault, &protocol conformance descriptor for PgQuery_SetToDefault);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SetToDefault(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetToDefault and conformance PgQuery_SetToDefault, type metadata accessor for PgQuery_SetToDefault, &protocol conformance descriptor for PgQuery_SetToDefault);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SetToDefault(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetToDefault and conformance PgQuery_SetToDefault, type metadata accessor for PgQuery_SetToDefault, &protocol conformance descriptor for PgQuery_SetToDefault);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_BoolExpr._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v5 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_CurrentOfExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 1)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CurrentOfExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v19 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v14 = v20;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v14 = v20;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v14)
    {
      return result;
    }
  }

  v16 = v19[0];
  if (!*(v19[0] + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cvarno) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
  {
    v17 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName + 8);
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName) & 0xFFFFFFFFFFFFLL;
    }

    if (!v18 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v14))
    {
      result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorParam);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CurrentOfExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v34 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v25 = v35;
      outlined init with take of PgQuery_OidList(&v16[v18], v35, type metadata accessor for PgQuery_Node);
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
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      goto LABEL_16;
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
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cvarno) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cvarno) && (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName + 8) == *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorParam);

    v32 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorParam);

    return v31 == v32;
  }

LABEL_16:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CurrentOfExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CurrentOfExpr and conformance PgQuery_CurrentOfExpr, type metadata accessor for PgQuery_CurrentOfExpr, &protocol conformance descriptor for PgQuery_CurrentOfExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CurrentOfExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CurrentOfExpr and conformance PgQuery_CurrentOfExpr, type metadata accessor for PgQuery_CurrentOfExpr, &protocol conformance descriptor for PgQuery_CurrentOfExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CurrentOfExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CurrentOfExpr and conformance PgQuery_CurrentOfExpr, type metadata accessor for PgQuery_CurrentOfExpr, &protocol conformance descriptor for PgQuery_CurrentOfExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_NextValueExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = *(type metadata accessor for PgQuery_NextValueExpr(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_NextValueExpr._StorageClass(0);
    v9 = swift_allocObject();
    v10 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v9 + v10, 1, 1, Node);
    v18 = v4;
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__seqid;
    *(v9 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__seqid) = 0;
    v13 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID;
    *(v9 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) = 0;
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;

    outlined assign with copy of PgQuery_Node?(v8 + v14, v9 + v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v9 + v12) = *(v8 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__seqid);
    LODWORD(v12) = *(v8 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID);

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
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_NextValueExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  NextValueExpr = type metadata accessor for PgQuery_NextValueExpr(0);
  result = closure #1 in PgQuery_NextValueExpr.traverse<A>(visitor:)(*(v3 + *(NextValueExpr + 20)), a1, a2, a3, &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__seqid, MEMORY[0x1E69AADA8], &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_NextValueExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NextValueExpr and conformance PgQuery_NextValueExpr, type metadata accessor for PgQuery_NextValueExpr, &protocol conformance descriptor for PgQuery_NextValueExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_NextValueExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NextValueExpr and conformance PgQuery_NextValueExpr, type metadata accessor for PgQuery_NextValueExpr, &protocol conformance descriptor for PgQuery_NextValueExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_NextValueExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NextValueExpr and conformance PgQuery_NextValueExpr, type metadata accessor for PgQuery_NextValueExpr, &protocol conformance descriptor for PgQuery_NextValueExpr);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_CollateExpr._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v4 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_InferenceElem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PgQuery_InferenceElem(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = a1;
    v10 = *(v3 + v7);
    type metadata accessor for PgQuery_InferenceElem._StorageClass(0);
    v11 = swift_allocObject();
    v23 = a2;
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
    Node = type metadata accessor for PgQuery_Node(0);
    v14 = *(*(Node - 8) + 56);
    v14(v11 + v12, 1, 1, Node);
    v24 = a3;
    v15 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
    v14(v11 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, 1, 1, Node);
    v16 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infercollid;
    *(v11 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infercollid) = 0;
    v17 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inferopclass;
    *(v11 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inferopclass) = 0;
    v18 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;

    v19 = v11 + v12;
    a2 = v23;
    outlined assign with copy of PgQuery_Node?(v10 + v18, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v20 = v11 + v15;
    a3 = v24;
    outlined assign with copy of PgQuery_Node?(v10 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    *(v11 + v16) = *(v10 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infercollid);
    LODWORD(v16) = *(v10 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inferopclass);

    *(v11 + v17) = v16;
    a1 = v22;

    *(v3 + v7) = v11;
    v9 = v11;
  }

  return closure #1 in PgQuery_InferenceElem.decodeMessage<A>(decoder:)(v9, a1, a2, a3);
}

uint64_t closure #1 in PgQuery_InferenceElem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v6 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result == 1 || result == 2)
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

uint64_t closure #1 in PgQuery_InferenceElem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v27 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v16 = MEMORY[0x1EEE9AC00](Node, v15);
  v27 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v27 - v19;
  v28 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v14 + 48);
  if (v21(v12, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v20, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v22 = v31;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
    if (v22)
    {
      return result;
    }

    v31 = 0;
  }

  v24 = v28;
  outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v21(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v25 = v31;
  }

  else
  {
    v26 = v27;
    outlined init with take of PgQuery_OidList(v9, v27, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v25 = v31;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
    if (v25)
    {
      return result;
    }

    v24 = v28;
  }

  if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infercollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v25))
  {
    result = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inferopclass);
    if (result)
    {
      return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CollateExpr.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6)
{
  v62 = a6;
  v65 = a5;
  v69 = a4;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  v12 = MEMORY[0x1EEE9AC00](Node, v11);
  v63 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v67 = &v61 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v66 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v61 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v70 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v61 - v29;
  v31 = *a3;
  v68 = v28;
  v32 = *(v28 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v31, &v61 - v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = a2 + v31;
  v34 = a2;
  outlined init with copy of PgQuery_Alias?(v33, &v30[v32], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v35 = *(v10 + 48);
  if (v35(v30, 1, Node) == 1)
  {
    v64 = Node;
    v36 = v35(&v30[v32], 1, Node);

    v37 = a1;
    if (v36 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v37 = a1;
  outlined init with copy of PgQuery_Alias?(v30, v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v35(&v30[v32], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
LABEL_6:
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_7:
    v40 = v30;
LABEL_18:
    _s10Foundation4UUIDVSgWOhTm_0(v40, v38, v39);
    goto LABEL_19;
  }

  v41 = v67;
  outlined init with take of PgQuery_OidList(&v30[v32], v67, type metadata accessor for PgQuery_Node);
  v64 = Node;
  v42 = *(Node + 20);
  v43 = *&v22[v42];
  v44 = *(v41 + v42);

  if (v43 != v44)
  {

    v45 = closure #1 in static PgQuery_Node.== infix(_:_:)(v43, v44);

    if (!v45)
    {
      outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v46 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v47 = *v69;
  v48 = *(v68 + 48);
  v49 = v70;
  outlined init with copy of PgQuery_Alias?(v37 + *v69, v70, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v34 + v47, v49 + v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v50 = v64;
  if (v35(v49, 1, v64) != 1)
  {
    v51 = v66;
    outlined init with copy of PgQuery_Alias?(v49, v66, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v35((v49 + v48), 1, v50) != 1)
    {
      v53 = v63;
      outlined init with take of PgQuery_OidList(v49 + v48, v63, type metadata accessor for PgQuery_Node);
      v54 = *(v50 + 20);
      v55 = *(v51 + v54);
      v56 = *(v53 + v54);
      if (v55 == v56 || (, , v57 = closure #1 in static PgQuery_Node.== infix(_:_:)(v55, v56), , , v57))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v58 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_24;
      }

      outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_17;
    }

    outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
LABEL_16:
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_17:
    v40 = v49;
    goto LABEL_18;
  }

  if (v35((v49 + v48), 1, v50) != 1)
  {
    goto LABEL_16;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_24:
  if (*(v37 + *v65) == *(v34 + *v65))
  {
    v59 = v62;
    v60 = *(v37 + *v62);

    LODWORD(v59) = *(v34 + *v59);

    return v60 == v59;
  }

LABEL_19:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_InferenceElem(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferenceElem and conformance PgQuery_InferenceElem, type metadata accessor for PgQuery_InferenceElem, &protocol conformance descriptor for PgQuery_InferenceElem);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_InferenceElem(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferenceElem and conformance PgQuery_InferenceElem, type metadata accessor for PgQuery_InferenceElem, &protocol conformance descriptor for PgQuery_InferenceElem);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_InferenceElem(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferenceElem and conformance PgQuery_InferenceElem, type metadata accessor for PgQuery_InferenceElem, &protocol conformance descriptor for PgQuery_InferenceElem);

  return Message.hash(into:)();
}

uint64_t PgQuery_NamedArgExpr._StorageClass.__deallocating_deinit(void *a1, void *a2)
{
  _s10Foundation4UUIDVSgWOhTm_0(v2 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v2 + *a2, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v4 = *(*v2 + 48);
  v5 = *(*v2 + 52);

  return MEMORY[0x1EEE6BDC0](v2, v4, v5);
}

void type metadata completion function for PgQuery_TargetEntry._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_TargetEntry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_4;
        }

        if (result == 7)
        {
          goto LABEL_20;
        }

        if (result == 8)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          if (result != 3)
          {
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            goto LABEL_4;
          }

LABEL_20:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_4;
        }

        if (result == 1 || result == 2)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

LABEL_4:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_TargetEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v31 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v16 = MEMORY[0x1EEE9AC00](Node, v15);
  v31 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v31 - v19;
  v32 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v14 + 48);
  if (v21(v12, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v20, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v22 = v35;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
    if (v22)
    {
      return result;
    }

    v35 = 0;
  }

  v24 = v32;
  outlined init with copy of PgQuery_Alias?(v32 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v21(v9, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v25 = v35;
  }

  else
  {
    v26 = v31;
    outlined init with take of PgQuery_OidList(v9, v31, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v25 = v35;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
    if (v25)
    {
      return result;
    }

    v24 = v32;
  }

  if (!*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resno) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v25))
  {
    v28 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname);
    v27 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname + 8);
    v29 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v29 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (!v29 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v25))
    {
      v30 = v32;
      if (!*(v32 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ressortgroupref) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v25))
      {
        if (!*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigtbl) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v25))
        {
          result = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigcol);
          if (!result || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v25))
          {
            if (*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resjunk) == 1)
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

uint64_t closure #1 in static PgQuery_TargetEntry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  v7 = MEMORY[0x1EEE9AC00](Node, v6);
  v56 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v59 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v58 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v56 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v62 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v56 - v24;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v61 = v23;
  v27 = *(v23 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v56 - v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v26, &v25[v27], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v28 = *(v5 + 48);
  if (v28(v25, 1, Node) == 1)
  {
    v57 = Node;
    v29 = v28(&v25[v27], 1, Node);

    if (v29 == 1)
    {
      v63 = a1;
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v63 = a1;
  v60 = a2;
  outlined init with copy of PgQuery_Alias?(v25, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28(&v25[v27], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_30;
  }

  v30 = v59;
  outlined init with take of PgQuery_OidList(&v25[v27], v59, type metadata accessor for PgQuery_Node);
  v57 = Node;
  v31 = *(Node + 20);
  v32 = *&v17[v31];
  v33 = *(v30 + v31);

  if (v32 != v33)
  {

    v34 = closure #1 in static PgQuery_Node.== infix(_:_:)(v32, v33);

    if (!v34)
    {
      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
      _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_30;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v60;
  if ((v35 & 1) == 0)
  {
LABEL_30:

    v54 = 0;
    return v54 & 1;
  }

LABEL_10:
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  v37 = v62;
  v38 = *(v61 + 48);
  outlined init with copy of PgQuery_Alias?(v63 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v62, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v36, v37 + v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v39 = v57;
  if (v28(v37, 1, v57) == 1)
  {
    v40 = v28((v37 + v38), 1, v39);
    v41 = v63;
    if (v40 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v42 = v58;
  outlined init with copy of PgQuery_Alias?(v37, v58, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v43 = v28((v37 + v38), 1, v39);
  v41 = v63;
  if (v43 == 1)
  {
    outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
LABEL_15:
    v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    _s10Foundation4UUIDVSgWOhTm_0(v37, v44, v45);
    goto LABEL_30;
  }

  v46 = v56;
  outlined init with take of PgQuery_OidList(v37 + v38, v56, type metadata accessor for PgQuery_Node);
  v47 = *(v39 + 20);
  v48 = *(v42 + v47);
  v49 = *(v46 + v47);
  if (v48 != v49)
  {

    v50 = closure #1 in static PgQuery_Node.== infix(_:_:)(v48, v49);

    if (!v50)
    {
      outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
      v44 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v42, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v37, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v51 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (*(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resno) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resno) || (*(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname) || *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname + 8) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ressortgroupref) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ressortgroupref) || *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigtbl) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigtbl) || *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigcol) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigcol))
  {
    goto LABEL_30;
  }

  v52 = *(v41 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resjunk);

  v53 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resjunk);

  v54 = v52 ^ v53 ^ 1;
  return v54 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TargetEntry(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TargetEntry and conformance PgQuery_TargetEntry, type metadata accessor for PgQuery_TargetEntry, &protocol conformance descriptor for PgQuery_TargetEntry);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TargetEntry(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TargetEntry and conformance PgQuery_TargetEntry, type metadata accessor for PgQuery_TargetEntry, &protocol conformance descriptor for PgQuery_TargetEntry);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TargetEntry(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TargetEntry and conformance PgQuery_TargetEntry, type metadata accessor for PgQuery_TargetEntry, &protocol conformance descriptor for PgQuery_TargetEntry);

  return Message.hash(into:)();
}

uint64_t PgQuery_Integer.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*v4 || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v5))
  {
    (a4)(0, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeTblRef(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblRef and conformance PgQuery_RangeTblRef, type metadata accessor for PgQuery_RangeTblRef, &protocol conformance descriptor for PgQuery_RangeTblRef);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeTblRef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblRef and conformance PgQuery_RangeTblRef, type metadata accessor for PgQuery_RangeTblRef, &protocol conformance descriptor for PgQuery_RangeTblRef);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeTblRef(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblRef and conformance PgQuery_RangeTblRef, type metadata accessor for PgQuery_RangeTblRef, &protocol conformance descriptor for PgQuery_RangeTblRef);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_Integer(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_JoinExpr._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_JoinExpr._StorageClass(uint64_t a1)
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

uint64_t closure #1 in PgQuery_JoinExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
            v7 = v4;
            type metadata accessor for PgQuery_Alias(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
            goto LABEL_21;
          }

          if (result == 8)
          {
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          }
        }

        else if (result == 5)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          v7 = v4;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_21:
          v4 = v7;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 1)
        {
          lazy protocol witness table accessor for type PgQuery_JoinType and conformance PgQuery_JoinType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 2)
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

uint64_t closure #1 in PgQuery_JoinExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v66 = &v59 - v8;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v62 = *(Alias - 8);
  MEMORY[0x1EEE9AC00](Alias, v9);
  v60 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v67 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v59 - v20;
  Node = type metadata accessor for PgQuery_Node(0);
  v22 = *(Node - 8);
  v24 = MEMORY[0x1EEE9AC00](Node, v23);
  v61 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v65 = &v59 - v28;
  MEMORY[0x1EEE9AC00](v27, v29);
  v32 = &v59 - v31;
  v33 = *(a1 + 16);
  if (v33)
  {
    v34 = v15;
    v35 = *(v30 + 24);
    v69 = v33;
    v70 = v35;
    v36 = v30;
    lazy protocol witness table accessor for type PgQuery_JoinType and conformance PgQuery_JoinType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v71 = 0;
    v30 = v36;
    v15 = v34;
  }

  else
  {
    v71 = v4;
  }

  if (*(v30 + 25) == 1)
  {
    v38 = v15;
    v39 = v30;
    v40 = v71;
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v40)
    {
      return result;
    }

    v71 = 0;
    v30 = v39;
    v15 = v38;
  }

  v63 = v30;
  outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v41 = *(v22 + 48);
  v59 = v22 + 48;
  if (v41(v21, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v21, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v21, v32, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v42 = v71;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_Node);
    if (v42)
    {
      return result;
    }

    v71 = 0;
  }

  v43 = v67;
  outlined init with copy of PgQuery_Alias?(v63 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v67, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v44 = Node;
  if (v41(v43, 1, Node) == 1)
  {
    v45 = v41;
    _s10Foundation4UUIDVSgWOhTm_0(v43, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v46 = v65;
    outlined init with take of PgQuery_OidList(v43, v65, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v47 = v71;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
    if (v47)
    {
      return result;
    }

    v45 = v41;
    v71 = 0;
  }

  v48 = v63;
  v49 = v66;
  if (*(*(v63 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v50 = v71;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v50)
    {
      return result;
    }

    v71 = 0;
    v48 = v63;
  }

  outlined init with copy of PgQuery_Alias?(v48 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v51 = v45(v15, 1, v44);
  v52 = Alias;
  if (v51 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v53 = v15;
    v54 = v61;
    outlined init with take of PgQuery_OidList(v53, v61, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v55 = v71;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
    if (v55)
    {
      return result;
    }

    v71 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v63 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v49, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  if ((*(v62 + 48))(v49, 1, v52) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  }

  else
  {
    v56 = v49;
    v57 = v60;
    outlined init with take of PgQuery_OidList(v56, v60, type metadata accessor for PgQuery_Alias);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
    v58 = v71;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Alias);
    if (v58)
    {
      return result;
    }

    v71 = 0;
  }

  result = *(v63 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtindex);
  if (result)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_JoinExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Alias = type metadata accessor for PgQuery_Alias(0);
  v115 = *(Alias - 8);
  v116 = Alias;
  MEMORY[0x1EEE9AC00](Alias, v5);
  v7 = v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v107 - v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd, &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v114, v12);
  v14 = v107 - v13;
  Node = type metadata accessor for PgQuery_Node(0);
  v15 = *(Node - 8);
  v17 = MEMORY[0x1EEE9AC00](Node, v16);
  v113 = v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v118 = v107 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = v107 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v117 = v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v120 = v107 - v31;
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = v107 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v39 = MEMORY[0x1EEE9AC00](v37, v38);
  v41 = v107 - v40;
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v46 = v107 - v44;
  v47 = *(a1 + 16);
  v48 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v48 <= 3)
    {
      if (v48 > 1)
      {
        if (v48 == 2)
        {
          if (v47 != 2)
          {
            return 0;
          }
        }

        else if (v47 != 3)
        {
          return 0;
        }
      }

      else if (v48)
      {
        if (v47 != 1)
        {
          return 0;
        }
      }

      else if (v47)
      {
        return 0;
      }
    }

    else if (v48 <= 5)
    {
      if (v48 == 4)
      {
        if (v47 != 4)
        {
          return 0;
        }
      }

      else if (v47 != 5)
      {
        return 0;
      }
    }

    else if (v48 == 6)
    {
      if (v47 != 6)
      {
        return 0;
      }
    }

    else if (v48 == 7)
    {
      if (v47 != 7)
      {
        return 0;
      }
    }

    else if (v47 != 8)
    {
      return 0;
    }
  }

  else if (v47 != v48)
  {
    return 0;
  }

  if (*(a1 + 25) != *(a2 + 25))
  {
    return 0;
  }

  v110 = v14;
  v111 = v45;
  v108 = v7;
  v109 = v11;
  v119 = a2;
  v49 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  v112 = v43;
  v50 = *(v43 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v107 - v44, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v119 + v49, &v46[v50], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v51 = v15 + 48;
  v52 = *(v15 + 48);
  v53 = Node;
  if (v52(v46, 1, Node) == 1)
  {
    v54 = v52(&v46[v50], 1, v53);

    v55 = a1;
    if (v54 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  v56 = a1;
  outlined init with copy of PgQuery_Alias?(v46, v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v107[0] = v52;
  v107[1] = v51;
  if (v52(&v46[v50], 1, v53) == 1)
  {

    outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_Node);
LABEL_19:
    v57 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v58 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_20:
    v59 = v46;
LABEL_47:
    _s10Foundation4UUIDVSgWOhTm_0(v59, v57, v58);
    goto LABEL_48;
  }

  outlined init with take of PgQuery_OidList(&v46[v50], v24, type metadata accessor for PgQuery_Node);
  v60 = *(v53 + 20);
  v61 = *&v34[v60];
  v62 = *&v24[v60];
  v55 = v56;

  if (v61 != v62)
  {

    v63 = closure #1 in static PgQuery_Node.== infix(_:_:)(v61, v62);

    if (!v63)
    {
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_Node);
      v57 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v58 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_20;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v64 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v52 = v107[0];
  if ((v64 & 1) == 0)
  {
LABEL_48:

    return 0;
  }

LABEL_30:
  v65 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg;
  v66 = *(v112 + 48);
  outlined init with copy of PgQuery_Alias?(v55 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v67 = v119 + v65;
  v68 = v119;
  outlined init with copy of PgQuery_Alias?(v67, &v41[v66], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v69 = Node;
  if (v52(v41, 1, Node) == 1)
  {
    if (v52(&v41[v66], 1, v69) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_53;
    }

    goto LABEL_45;
  }

  v70 = v120;
  outlined init with copy of PgQuery_Alias?(v41, v120, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v52(&v41[v66], 1, v69) == 1)
  {
    outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Node);
LABEL_45:
    v57 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v58 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_46:
    v59 = v41;
    goto LABEL_47;
  }

  v72 = v52;
  v73 = v118;
  outlined init with take of PgQuery_OidList(&v41[v66], v118, type metadata accessor for PgQuery_Node);
  v74 = *(v69 + 20);
  v75 = *(v70 + v74);
  v76 = *(v73 + v74);
  if (v75 != v76)
  {

    v77 = closure #1 in static PgQuery_Node.== infix(_:_:)(v75, v76);

    if (!v77)
    {
      outlined destroy of PgQuery_OidList(v73, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Node);
      v57 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v58 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_46;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v78 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v73, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v52 = v72;
  if ((v78 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_53:
  v79 = *(v55 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);
  v80 = *(v68 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v79, v80);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_48;
  }

  v82 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals;
  v83 = *(v112 + 48);
  v84 = v52;
  v85 = v111;
  outlined init with copy of PgQuery_Alias?(v55 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, v111, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v68 + v82, v85 + v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v86 = Node;
  if (v84(v85, 1, Node) == 1)
  {
    if (v84(v85 + v83, 1, v86) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v85, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_65;
    }

    goto LABEL_60;
  }

  v87 = v117;
  outlined init with copy of PgQuery_Alias?(v85, v117, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v84(v85 + v83, 1, v86) == 1)
  {
    outlined destroy of PgQuery_OidList(v87, type metadata accessor for PgQuery_Node);
LABEL_60:
    v57 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v58 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v59 = v85;
    goto LABEL_47;
  }

  v88 = v113;
  outlined init with take of PgQuery_OidList(v85 + v83, v113, type metadata accessor for PgQuery_Node);
  v89 = *(v86 + 20);
  v90 = *(v87 + v89);
  v91 = *(v88 + v89);
  if (v90 != v91)
  {

    v92 = closure #1 in static PgQuery_Node.== infix(_:_:)(v90, v91);

    if (!v92)
    {
      outlined destroy of PgQuery_OidList(v88, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v87, type metadata accessor for PgQuery_Node);
      v57 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v58 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v59 = v111;
      goto LABEL_47;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v93 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v88, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v87, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v111, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v93 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_65:
  v94 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  v95 = *(v114 + 48);
  v96 = v110;
  outlined init with copy of PgQuery_Alias?(v55 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v110, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  outlined init with copy of PgQuery_Alias?(v68 + v94, v96 + v95, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v97 = v116;
  v98 = *(v115 + 48);
  if (v98(v96, 1, v116) != 1)
  {
    v101 = v109;
    outlined init with copy of PgQuery_Alias?(v96, v109, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    if (v98(v96 + v95, 1, v97) != 1)
    {
      v102 = v108;
      outlined init with take of PgQuery_OidList(v96 + v95, v108, type metadata accessor for PgQuery_Alias);
      v103 = v96;
      if (*v101 == *v102 && v101[1] == v102[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v109[2], v108[2]))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v104 = v108;
        v105 = v109;
        v106 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v104, type metadata accessor for PgQuery_Alias);
        outlined destroy of PgQuery_OidList(v105, type metadata accessor for PgQuery_Alias);
        _s10Foundation4UUIDVSgWOhTm_0(v103, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
        if (v106)
        {
          goto LABEL_68;
        }

        goto LABEL_48;
      }

      outlined destroy of PgQuery_OidList(v108, type metadata accessor for PgQuery_Alias);
      outlined destroy of PgQuery_OidList(v109, type metadata accessor for PgQuery_Alias);
      v57 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
      v58 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
      v59 = v96;
      goto LABEL_47;
    }

    outlined destroy of PgQuery_OidList(v101, type metadata accessor for PgQuery_Alias);
    goto LABEL_71;
  }

  if (v98(v96 + v95, 1, v97) != 1)
  {
LABEL_71:
    v57 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
    v58 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
    v59 = v96;
    goto LABEL_47;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v96, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
LABEL_68:
  v99 = *(v55 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtindex);

  v100 = *(v68 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtindex);

  return v99 == v100;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_JoinExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_JoinExpr and conformance PgQuery_JoinExpr, type metadata accessor for PgQuery_JoinExpr, &protocol conformance descriptor for PgQuery_JoinExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_JoinExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_JoinExpr and conformance PgQuery_JoinExpr, type metadata accessor for PgQuery_JoinExpr, &protocol conformance descriptor for PgQuery_JoinExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_JoinExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_JoinExpr and conformance PgQuery_JoinExpr, type metadata accessor for PgQuery_JoinExpr, &protocol conformance descriptor for PgQuery_JoinExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_FromExpr._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_FromExpr._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_FromExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = *(type metadata accessor for PgQuery_FromExpr(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_FromExpr._StorageClass(0);
    v9 = swift_allocObject();
    *(v9 + 16) = MEMORY[0x1E69E7CC0];
    v10 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v9 + v10, 1, 1, Node);
    *(v9 + 16) = *(v8 + 16);
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals;

    _s10Foundation4UUIDVSgWOhTm_0(v9 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(v8 + v12, v9 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

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
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
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

uint64_t closure #1 in PgQuery_FromExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v16 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v12);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*(a1 + 16) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v11 + 48))(v9, 1, Node) == 1)
    {
      return _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v9, v14, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_FromExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  v16 = *(a1 + 16);
  v17 = *(a2 + 16);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v16, v17);

  if (NodeV_Tt1g5)
  {
    v19 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals;
    v20 = *(v12 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v19, &v15[v20], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v21 = *(v5 + 48);
    if (v21(v15, 1, Node) == 1)
    {

      if (v21(&v15[v20], 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        return 1;
      }

      goto LABEL_8;
    }

    outlined init with copy of PgQuery_Alias?(v15, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v15[v20], 1, Node) == 1)
    {

      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_8:
      v22 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_9:
      _s10Foundation4UUIDVSgWOhTm_0(v15, v22, v23);
      return 0;
    }

    v25 = v32;
    outlined init with take of PgQuery_OidList(&v15[v20], v32, type metadata accessor for PgQuery_Node);
    v26 = *(Node + 20);
    v27 = *&v11[v26];
    v28 = *(v25 + v26);
    if (v27 != v28)
    {

      v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28);

      if (!v29)
      {

        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        v22 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_9;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v30 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v30)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_FromExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FromExpr and conformance PgQuery_FromExpr, type metadata accessor for PgQuery_FromExpr, &protocol conformance descriptor for PgQuery_FromExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_FromExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FromExpr and conformance PgQuery_FromExpr, type metadata accessor for PgQuery_FromExpr, &protocol conformance descriptor for PgQuery_FromExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_FromExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FromExpr and conformance PgQuery_FromExpr, type metadata accessor for PgQuery_FromExpr, &protocol conformance descriptor for PgQuery_FromExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_OnConflictExpr._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v1 + v4, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet) = v3;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere;
  v6(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere, 1, 1, Node);
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelIndex;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelIndex) = 0;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist) = v3;
  v12 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v12;
  *(v1 + 32) = *(a1 + 32);
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere;

  outlined assign with copy of PgQuery_Node?(a1 + v13, v1 + v4, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet);

  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere, v1 + v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelIndex);
  v14 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist);

  *(v1 + v11) = v14;

  return v1;
}

uint64_t PgQuery_OnConflictExpr._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_OnConflictExpr._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_OnConflictExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
          if (result != 5)
          {
            goto LABEL_4;
          }

LABEL_21:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result != 7)
        {
          if (result != 8)
          {
            goto LABEL_5;
          }

          goto LABEL_21;
        }

        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      else
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            lazy protocol witness table accessor for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            goto LABEL_5;
          }

          if (result != 2)
          {
            goto LABEL_5;
          }

          goto LABEL_21;
        }

        if (result == 3)
        {
LABEL_4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_OnConflictExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v28 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v26 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v15 = MEMORY[0x1EEE9AC00](Node, v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v26 - v19;
  if (!*(a1 + 16) || (v21 = *(a1 + 24), v29 = *(a1 + 16), v30 = v21, lazy protocol witness table accessor for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v27 = v17;
    if (!*(*(a1 + 32) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v23 = Node;
      v26[0] = *(v13 + 48);
      v26[1] = v13 + 48;
      if ((v26[0])(v12, 1, Node) == 1)
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

      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint))
      {
        result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        v23 = Node;
      }

      if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
      {
        v24 = v28;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere, v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v26[0])(v24, 1, v23) == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          v25 = v27;
          outlined init with take of PgQuery_OidList(v24, v27, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
          if (v4)
          {
            return result;
          }
        }

        result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelIndex);
        if (!result || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
        {
          if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist) + 16))
          {
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

            dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_OnConflictExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v4 = *(Node - 8);
  v6 = MEMORY[0x1EEE9AC00](Node, v5);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v73 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v73 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v26 = &v73 - v25;
  v27 = *(a1 + 16);
  v28 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v27 == v28)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

  if (v28 > 1)
  {
    if (v28 == 2)
    {
      if (v27 != 2)
      {
        goto LABEL_41;
      }
    }

    else if (v27 != 3)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if (!v28)
    {
      if (!v27)
      {
        goto LABEL_7;
      }

LABEL_41:
      v71 = 0;
      return v71 & 1;
    }

    if (v27 != 1)
    {
      goto LABEL_41;
    }
  }

LABEL_7:
  v74 = v8;
  v75 = v16;
  v77 = v24;
  v29 = *(a1 + 32);
  v30 = *(a2 + 32);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v29, v30);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
LABEL_40:

    goto LABEL_41;
  }

  v32 = a1;
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere;
  v34 = *(v20 + 48);
  v76 = v32;
  outlined init with copy of PgQuery_Alias?(v32 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere, v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v33, &v26[v34], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v35 = *(v4 + 48);
  v36 = Node;
  if (v35(v26, 1, Node) == 1)
  {
    v37 = v35(&v26[v34], 1, v36);
    v38 = v76;
    if (v37 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  outlined init with copy of PgQuery_Alias?(v26, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v39 = v35(&v26[v34], 1, v36);
  v38 = v76;
  if (v39 == 1)
  {
    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
LABEL_20:
    v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_21:
    v42 = v26;
LABEL_22:
    _s10Foundation4UUIDVSgWOhTm_0(v42, v40, v41);
    goto LABEL_40;
  }

  v73 = v35;
  outlined init with take of PgQuery_OidList(&v26[v34], v11, type metadata accessor for PgQuery_Node);
  v43 = *(v36 + 20);
  v44 = *&v19[v43];
  v45 = *&v11[v43];
  if (v44 != v45)
  {

    v46 = closure #1 in static PgQuery_Node.== infix(_:_:)(v44, v45);

    if (!v46)
    {
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
      v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_21;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v35 = v73;
  if ((v47 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_26:
  if (*(v38 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint))
  {
    goto LABEL_40;
  }

  v48 = v35;
  v49 = *(v38 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet);
  v50 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet);

  v51 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v49, v50);

  if ((v51 & 1) == 0)
  {
    goto LABEL_40;
  }

  v52 = v38;
  v53 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere;
  v54 = *(v20 + 48);
  v55 = v77;
  outlined init with copy of PgQuery_Alias?(v52 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere, v77, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v53, v55 + v54, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v56 = Node;
  if (v48(v55, 1, Node) == 1)
  {
    v57 = v48(v55 + v54, 1, v56);
    v58 = v76;
    if (v57 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  v59 = v75;
  outlined init with copy of PgQuery_Alias?(v55, v75, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v60 = v48(v55 + v54, 1, v56);
  v58 = v76;
  if (v60 == 1)
  {
    outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
LABEL_34:
    v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v42 = v55;
    goto LABEL_22;
  }

  v61 = v55 + v54;
  v62 = v74;
  outlined init with take of PgQuery_OidList(v61, v74, type metadata accessor for PgQuery_Node);
  v63 = *(v56 + 20);
  v64 = *(v59 + v63);
  v65 = *(v62 + v63);
  if (v64 != v65)
  {

    v66 = closure #1 in static PgQuery_Node.== infix(_:_:)(v64, v65);

    if (!v66)
    {
      outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_Node);
      v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v42 = v77;
      goto LABEL_22;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v67 = v75;
  v68 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v77, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v68 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_38:
  if (*(v58 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelIndex) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelIndex))
  {
    goto LABEL_40;
  }

  v69 = *(v58 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist);
  v70 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist);

  v71 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v69, v70);

  return v71 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_OnConflictExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr, &protocol conformance descriptor for PgQuery_OnConflictExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_OnConflictExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr, &protocol conformance descriptor for PgQuery_OnConflictExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_OnConflictExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr, &protocol conformance descriptor for PgQuery_OnConflictExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_IntoClause._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__viewQuery, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_IntoClause._StorageClass(uint64_t a1)
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

uint64_t closure #1 in PgQuery_IntoClause.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

      if (result <= 4)
      {
        break;
      }

      if (result <= 6)
      {
        if (result == 5)
        {
          lazy protocol witness table accessor for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_4;
        }

        goto LABEL_21;
      }

      if (result == 7)
      {
        v7 = v4;
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_23:
        v4 = v7;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_4;
      }

      if (result == 8)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

LABEL_4:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 2)
    {
      if (result != 3)
      {
        goto LABEL_10;
      }

LABEL_21:
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
      goto LABEL_4;
    }

    if (result != 1)
    {
      if (result != 2)
      {
        goto LABEL_4;
      }

LABEL_10:
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      goto LABEL_4;
    }

    v7 = v4;
    type metadata accessor for PgQuery_RangeVar(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    goto LABEL_23;
  }

  return result;
}

uint64_t closure #1 in PgQuery_IntoClause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v39 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v33 = &v31 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v32 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v8);
  v31 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v31 - v12;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v15 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel, v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v15 + 48))(v13, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v19 = v35;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v18, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v20 = v35;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v19 = v20;
    result = outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    if (v20)
    {
      return result;
    }
  }

  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colNames) + 16))
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

  v23 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) & 0xFFFFFFFFFFFFLL;
  }

  if (!v24 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v19))
  {
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v19))
    {
      if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit) || (v25 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit + 8), v37 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit), v38 = v25, lazy protocol witness table accessor for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v19))
      {
        v26 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName + 8);
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName) & 0xFFFFFFFFFFFFLL;
        }

        if (!v27 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v19))
        {
          v28 = v33;
          outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__viewQuery, v33, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((*(v32 + 48))(v28, 1, v22) == 1)
          {
            result = _s10Foundation4UUIDVSgWOhTm_0(v28, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          }

          else
          {
            v29 = v28;
            v30 = v31;
            outlined init with take of PgQuery_OidList(v29, v31, type metadata accessor for PgQuery_Node);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
            result = outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
            if (v19)
            {
              return result;
            }
          }

          if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipData) == 1)
          {
            return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_IntoClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  Node = type metadata accessor for PgQuery_Node(0);
  v71 = *(Node - 8);
  v72 = Node;
  MEMORY[0x1EEE9AC00](Node, v4);
  v68 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v69 = &v68 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v70, v9);
  v73 = &v68 - v10;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v12 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v13);
  v74 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v68 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v23 = &v68 - v22;
  v24 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel;
  v25 = *(v21 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel, &v68 - v22, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v26 = v75 + v24;
  v27 = v75;
  outlined init with copy of PgQuery_Alias?(v26, &v23[v25], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v28 = *(v12 + 48);
  if (v28(v23, 1, RangeVar) == 1)
  {
    v29 = v28(&v23[v25], 1, RangeVar);

    v30 = a1;
    if (v29 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v31 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v32 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v33 = v23;
LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v33, v31, v32);
    goto LABEL_44;
  }

  outlined init with copy of PgQuery_Alias?(v23, v18, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v28(&v23[v25], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  v34 = v74;
  outlined init with take of PgQuery_OidList(&v23[v25], v74, type metadata accessor for PgQuery_RangeVar);
  v30 = a1;

  v35 = specialized static PgQuery_RangeVar.== infix(_:_:)(v18, v34);
  outlined destroy of PgQuery_OidList(v34, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v35 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_9:
  v36 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colNames);
  v37 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colNames);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v36, v37);

  if ((NodeV_Tt1g5 & 1) == 0 || (*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) != *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) || *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8) != *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  v39 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
  v40 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v41 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v39, v40);

  if ((v41 & 1) == 0)
  {
    goto LABEL_44;
  }

  v42 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit);
  v43 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit);
  if (*(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit + 8) == 1)
  {
    if (v43 <= 1)
    {
      if (v43)
      {
        if (v42 != 1)
        {
          goto LABEL_44;
        }
      }

      else if (v42)
      {
        goto LABEL_44;
      }
    }

    else if (v43 == 2)
    {
      if (v42 != 2)
      {
        goto LABEL_44;
      }
    }

    else if (v43 == 3)
    {
      if (v42 != 3)
      {
        goto LABEL_44;
      }
    }

    else if (v42 != 4)
    {
      goto LABEL_44;
    }
  }

  else if (v42 != v43)
  {
    goto LABEL_44;
  }

  if ((*(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName) != *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName) || *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName + 8) != *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  v44 = v27;
  v45 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__viewQuery;
  v46 = *(v70 + 48);
  v47 = v73;
  outlined init with copy of PgQuery_Alias?(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__viewQuery, v73, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v48 = v44 + v45;
  v49 = v44;
  v50 = v47;
  outlined init with copy of PgQuery_Alias?(v48, v47 + v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v51 = *(v71 + 48);
  v52 = v47;
  v53 = v72;
  if (v51(v52, 1, v72) != 1)
  {
    v54 = v69;
    outlined init with copy of PgQuery_Alias?(v50, v69, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v51(v50 + v46, 1, v53) != 1)
    {
      v55 = v50 + v46;
      v56 = v53;
      v57 = v68;
      outlined init with take of PgQuery_OidList(v55, v68, type metadata accessor for PgQuery_Node);
      v58 = *(v56 + 20);
      v59 = *(v54 + v58);
      v60 = *(v57 + v58);
      if (v59 == v60 || (, , v61 = closure #1 in static PgQuery_Node.== infix(_:_:)(v59, v60), , , v61))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v62 = v69;
        v63 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v63)
        {
          goto LABEL_43;
        }

LABEL_44:

        v66 = 0;
        return v66 & 1;
      }

      outlined destroy of PgQuery_OidList(v57, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_Node);
      v31 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_33;
    }

    outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
LABEL_32:
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_33:
    v33 = v50;
    goto LABEL_7;
  }

  if (v51(v50 + v46, 1, v53) != 1)
  {
    goto LABEL_32;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_43:
  v64 = *(v30 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipData);

  v65 = *(v49 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipData);

  v66 = v64 ^ v65 ^ 1;
  return v66 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_IntoClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause, &protocol conformance descriptor for PgQuery_IntoClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_IntoClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause, &protocol conformance descriptor for PgQuery_IntoClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_IntoClause(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause, &protocol conformance descriptor for PgQuery_IntoClause);

  return Message.hash(into:)();
}
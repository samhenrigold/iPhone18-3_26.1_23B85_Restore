uint64_t closure #1 in PgQuery_FieldStore.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(Node - 8);
  v13 = MEMORY[0x28223BE20](Node);
  v22 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  v26 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(v12 + 48);
  if (v17(v10, 1, Node) == 1)
  {
    outlined destroy of URL?(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v18 = v23;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v16, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v19 = v23;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v18 = v19;
    result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
    if (v19)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v17(v8, 1, Node) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v21 = v22;
    outlined init with take of PgQuery_OidList(v8, v22, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
    if (v18)
    {
      return result;
    }
  }

  if (!*(*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newvals) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v18))
  {
    if (!*(*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnums) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v18))
    {
      result = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype);
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
  v6 = MEMORY[0x28223BE20](Node);
  v55 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v57 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14);
  v61 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  v20 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v60 = v17;
  v21 = *(v17 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v55 - v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v20, &v19[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v5 + 48);
  if (v22(v19, 1, Node) == 1)
  {
    v56 = Node;
    v23 = v22(&v19[v21], 1, Node);

    if (v23 == 1)
    {
      v62 = a1;
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_25;
  }

  v62 = a1;
  v59 = a2;
  outlined init with copy of PgQuery_Alias?(v19, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(&v19[v21], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v24 = v58;
  outlined init with take of PgQuery_OidList(&v19[v21], v58, type metadata accessor for PgQuery_Node);
  v56 = Node;
  v25 = *(Node + 20);
  v26 = *&v13[v25];
  v27 = *(v24 + v25);

  if (v26 != v27)
  {

    v28 = closure #1 in static PgQuery_Node.== infix(_:_:)(v26, v27);

    if (!v28)
    {
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_25;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v59;
  if (v29)
  {
LABEL_10:
    v30 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
    v31 = v61;
    v32 = *(v60 + 48);
    outlined init with copy of PgQuery_Alias?(v62 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v30, v31 + v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v33 = v56;
    if (v22(v31, 1, v56) == 1)
    {
      v34 = v22((v31 + v32), 1, v33);
      v35 = v62;
      if (v34 == 1)
      {
        outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
        v46 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newvals);
        v47 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newvals);

        NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v46, v47);

        if (NodeV_Tt1g5)
        {
          v49 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnums);
          v50 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnums);

          v51 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v49, v50);

          if (v51)
          {
            v52 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype);

            v53 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype);

            return v52 == v53;
          }
        }

        goto LABEL_25;
      }
    }

    else
    {
      v36 = v57;
      outlined init with copy of PgQuery_Alias?(v31, v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v37 = v22((v31 + v32), 1, v33);
      v35 = v62;
      if (v37 != 1)
      {
        v40 = v55;
        outlined init with take of PgQuery_OidList(v31 + v32, v55, type metadata accessor for PgQuery_Node);
        v41 = *(v33 + 20);
        v42 = *(v36 + v41);
        v43 = *(v40 + v41);
        if (v42 == v43 || (, , v44 = closure #1 in static PgQuery_Node.== infix(_:_:)(v42, v43), , , v44))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v45 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
          outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v45 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_20;
        }

        outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
        v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_16:
        outlined destroy of URL?(v31, v38, v39);
        goto LABEL_25;
      }

      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
    }

    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_16;
  }

LABEL_25:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_FieldStore(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldStore and conformance PgQuery_FieldStore, type metadata accessor for PgQuery_FieldStore, &protocol conformance descriptor for PgQuery_FieldStore);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_FieldStore(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldStore and conformance PgQuery_FieldStore, type metadata accessor for PgQuery_FieldStore, &protocol conformance descriptor for PgQuery_FieldStore);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_FieldStore(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldStore and conformance PgQuery_FieldStore, type metadata accessor for PgQuery_FieldStore, &protocol conformance descriptor for PgQuery_FieldStore);

  return Message.hash(into:)();
}

uint64_t PgQuery_FieldSelect._StorageClass.__deallocating_deinit(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  outlined destroy of URL?(v4 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v4 + *a2, a3, a4);
  v8 = *(*v4 + 48);
  v9 = *(*v4 + 52);

  return MEMORY[0x2821FE8D8](v4, v8, v9);
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
  v26 = a3;
  v27 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(Node - 8);
  v13 = MEMORY[0x28223BE20](Node);
  v24 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  v25 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(v12 + 48);
  if (v17(v10, 1, Node) == 1)
  {
    outlined destroy of URL?(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v16, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v18 = v30;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
    if (v18)
    {
      return result;
    }

    v30 = 0;
  }

  v20 = v25;
  outlined init with copy of PgQuery_Alias?(v25 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v17(v8, 1, Node) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v21 = v30;
  }

  else
  {
    v22 = v24;
    outlined init with take of PgQuery_OidList(v8, v24, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v21 = v30;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
    if (v21)
    {
      return result;
    }

    v20 = v25;
  }

  if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v21))
  {
    if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v21))
    {
      if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v21))
      {
        if (!*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat) || (v23 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat + 8), v28 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat), v29 = v23, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v21))
        {
          result = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  v6 = MEMORY[0x28223BE20](Node);
  v51 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14);
  v57 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v56 = v17;
  v21 = *(v17 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v51 - v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v20, &v19[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v5 + 48);
  if (v22(v19, 1, Node) == 1)
  {
    v52 = Node;
    v23 = v22(&v19[v21], 1, Node);

    if (v23 == 1)
    {
      v58 = a1;
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_29;
  }

  v58 = a1;
  v55 = a2;
  outlined init with copy of PgQuery_Alias?(v19, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(&v19[v21], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v24 = v54;
  outlined init with take of PgQuery_OidList(&v19[v21], v54, type metadata accessor for PgQuery_Node);
  v52 = Node;
  v25 = *(Node + 20);
  v26 = *&v13[v25];
  v27 = *(v24 + v25);

  if (v26 != v27)
  {

    v28 = closure #1 in static PgQuery_Node.== infix(_:_:)(v26, v27);

    if (!v28)
    {
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_29;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v55;
  if ((v29 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v31 = v57;
  v32 = *(v56 + 48);
  outlined init with copy of PgQuery_Alias?(v58 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v30, v31 + v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = v52;
  if (v22(v31, 1, v52) != 1)
  {
    v36 = v53;
    outlined init with copy of PgQuery_Alias?(v31, v53, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v37 = v22((v31 + v32), 1, v33);
    v35 = v58;
    if (v37 == 1)
    {
      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
      goto LABEL_15;
    }

    v40 = v51;
    outlined init with take of PgQuery_OidList(v31 + v32, v51, type metadata accessor for PgQuery_Node);
    v41 = *(v33 + 20);
    v42 = *(v36 + v41);
    v43 = *(v40 + v41);
    if (v42 != v43)
    {

      v44 = closure #1 in static PgQuery_Node.== infix(_:_:)(v42, v43);

      if (!v44)
      {
        outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
        v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_16;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v45)
    {
      goto LABEL_20;
    }

LABEL_29:

    return 0;
  }

  v34 = v22((v31 + v32), 1, v33);
  v35 = v58;
  if (v34 != 1)
  {
LABEL_15:
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    outlined destroy of URL?(v31, v38, v39);
    goto LABEL_29;
  }

  outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
  if (*(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid))
  {
    goto LABEL_29;
  }

  v46 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat);
  v47 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat + 8) == 1)
  {
    if (v47 > 1)
    {
      if (v47 == 2)
      {
        if (v46 != 2)
        {
          goto LABEL_29;
        }
      }

      else if (v46 != 3)
      {
        goto LABEL_29;
      }
    }

    else if (v47)
    {
      if (v46 != 1)
      {
        goto LABEL_29;
      }
    }

    else if (v46)
    {
      goto LABEL_29;
    }
  }

  else if (v46 != v47)
  {
    goto LABEL_29;
  }

  v49 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v50 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v49 == v50;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RelabelType(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RelabelType and conformance PgQuery_RelabelType, type metadata accessor for PgQuery_RelabelType, &protocol conformance descriptor for PgQuery_RelabelType);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RelabelType(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RelabelType and conformance PgQuery_RelabelType, type metadata accessor for PgQuery_RelabelType, &protocol conformance descriptor for PgQuery_RelabelType);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RelabelType(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RelabelType and conformance PgQuery_RelabelType, type metadata accessor for PgQuery_RelabelType, &protocol conformance descriptor for PgQuery_RelabelType);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_FieldSelect._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  v23[2] = a4;
  v23[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(Node - 8);
  v13 = MEMORY[0x28223BE20](Node);
  v23[0] = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v23 - v15;
  v27 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(v12 + 48);
  if (v17(v10, 1, Node) == 1)
  {
    outlined destroy of URL?(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v16, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v18 = v24;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
    if (v18)
    {
      return result;
    }

    v24 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v27 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v17(v8, 1, Node) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v20 = v24;
  }

  else
  {
    v21 = v23[0];
    outlined init with take of PgQuery_OidList(v8, v23[0], type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v20 = v24;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
    if (v20)
    {
      return result;
    }
  }

  if (!*(v27 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v20))
  {
    if (!*(v27 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v20))
    {
      if (!*(v27 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat) || (v22 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat + 8), v25 = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat), v26 = v22, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v20))
      {
        result = *(v27 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  v6 = MEMORY[0x28223BE20](Node);
  v51 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14);
  v57 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v56 = v17;
  v21 = *(v17 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v51 - v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v20, &v19[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v5 + 48);
  if (v22(v19, 1, Node) == 1)
  {
    v52 = Node;
    v23 = v22(&v19[v21], 1, Node);

    if (v23 == 1)
    {
      v58 = a1;
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_28;
  }

  v58 = a1;
  v55 = a2;
  outlined init with copy of PgQuery_Alias?(v19, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(&v19[v21], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v24 = v54;
  outlined init with take of PgQuery_OidList(&v19[v21], v54, type metadata accessor for PgQuery_Node);
  v52 = Node;
  v25 = *(Node + 20);
  v26 = *&v13[v25];
  v27 = *(v24 + v25);

  if (v26 != v27)
  {

    v28 = closure #1 in static PgQuery_Node.== infix(_:_:)(v26, v27);

    if (!v28)
    {
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_28;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v55;
  if ((v29 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v31 = v57;
  v32 = *(v56 + 48);
  outlined init with copy of PgQuery_Alias?(v58 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v30, v31 + v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = v52;
  if (v22(v31, 1, v52) != 1)
  {
    v36 = v53;
    outlined init with copy of PgQuery_Alias?(v31, v53, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v37 = v22((v31 + v32), 1, v33);
    v35 = v58;
    if (v37 == 1)
    {
      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
      goto LABEL_15;
    }

    v40 = v51;
    outlined init with take of PgQuery_OidList(v31 + v32, v51, type metadata accessor for PgQuery_Node);
    v41 = *(v33 + 20);
    v42 = *(v36 + v41);
    v43 = *(v40 + v41);
    if (v42 != v43)
    {

      v44 = closure #1 in static PgQuery_Node.== infix(_:_:)(v42, v43);

      if (!v44)
      {
        outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
        v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_16;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v45)
    {
      goto LABEL_20;
    }

LABEL_28:

    return 0;
  }

  v34 = v22((v31 + v32), 1, v33);
  v35 = v58;
  if (v34 != 1)
  {
LABEL_15:
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    outlined destroy of URL?(v31, v38, v39);
    goto LABEL_28;
  }

  outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
  if (*(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid))
  {
    goto LABEL_28;
  }

  v46 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat);
  v47 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat + 8) == 1)
  {
    if (v47 > 1)
    {
      if (v47 == 2)
      {
        if (v46 != 2)
        {
          goto LABEL_28;
        }
      }

      else if (v46 != 3)
      {
        goto LABEL_28;
      }
    }

    else if (v47)
    {
      if (v46 != 1)
      {
        goto LABEL_28;
      }
    }

    else if (v46)
    {
      goto LABEL_28;
    }
  }

  else if (v46 != v47)
  {
    goto LABEL_28;
  }

  v49 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v50 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v49 == v50;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CoerceViaIO(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceViaIO and conformance PgQuery_CoerceViaIO, type metadata accessor for PgQuery_CoerceViaIO, &protocol conformance descriptor for PgQuery_CoerceViaIO);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CoerceViaIO(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceViaIO and conformance PgQuery_CoerceViaIO, type metadata accessor for PgQuery_CoerceViaIO, &protocol conformance descriptor for PgQuery_CoerceViaIO);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CoerceViaIO(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceViaIO and conformance PgQuery_CoerceViaIO, type metadata accessor for PgQuery_CoerceViaIO, &protocol conformance descriptor for PgQuery_CoerceViaIO);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_ArrayCoerceExpr._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  v33 = a3;
  v34 = a4;
  v38 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v14 = *(Node - 8);
  v15 = MEMORY[0x28223BE20](Node);
  v30 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  v35 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v14 + 48);
  if (v22(v12, 1, Node) == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v23 = v32;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v21, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v24 = v32;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
    v23 = v24;
    if (v24)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v35 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(v10, 1, Node) == 1)
  {
    outlined destroy of URL?(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v19, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
    if (v23)
    {
      return result;
    }
  }

  v26 = v35;
  v27 = v31;
  outlined init with copy of PgQuery_Alias?(v35 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elemexpr, v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(v27, 1, Node) == 1)
  {
    outlined destroy of URL?(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v28 = v30;
    outlined init with take of PgQuery_OidList(v27, v30, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
    if (v23)
    {
      return result;
    }
  }

  if (!*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v23))
  {
    if (!*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v23))
    {
      if (!*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v23))
      {
        if (!*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat) || (v29 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat + 8), v36 = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat), v37 = v29, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v23))
        {
          result = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  v6 = MEMORY[0x28223BE20](Node);
  v78 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v80 = &v76 - v9;
  MEMORY[0x28223BE20](v8);
  v82 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v79 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v83 = &v76 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v76 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v19 = MEMORY[0x28223BE20](v18);
  v81 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v85 = &v76 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v76 - v24;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v84 = v23;
  v27 = *(v23 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v76 - v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v26, &v25[v27], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v30 = *(v5 + 48);
  v29 = v5 + 48;
  v28 = v30;
  if (v30(v25, 1, Node) == 1)
  {
    v31 = v28(&v25[v27], 1, Node);

    if (v31 != 1)
    {
LABEL_7:
      v33 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_8:
      v35 = v25;
LABEL_18:
      outlined destroy of URL?(v35, v33, v34);
      goto LABEL_19;
    }

    v76 = v29;
    v77 = Node;
    outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with copy of PgQuery_Alias?(v25, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v28(&v25[v27], 1, Node) == 1)
    {

      v32 = v17;
LABEL_6:
      outlined destroy of PgQuery_OidList(v32, type metadata accessor for PgQuery_Node);
      goto LABEL_7;
    }

    v76 = v29;
    v36 = v82;
    outlined init with take of PgQuery_OidList(&v25[v27], v82, type metadata accessor for PgQuery_Node);
    v77 = Node;
    v37 = *(Node + 20);
    v38 = *&v17[v37];
    v39 = *(v36 + v37);

    if (v38 != v39)
    {

      v40 = closure #1 in static PgQuery_Node.== infix(_:_:)(v38, v39);

      if (!v40)
      {
        outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
        v63 = v17;
LABEL_27:
        outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_Node);
        v33 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v34 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_8;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((v41 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v42 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v44 = v84;
  v43 = v85;
  v45 = *(v84 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v85, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v42, v43 + v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v46 = v77;
  if (v28(v43, 1, v77) == 1)
  {
    if (v28((v43 + v45), 1, v46) == 1)
    {
      v47 = v43;
      v48 = v46;
      outlined destroy of URL?(v47, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_23;
    }

LABEL_17:
    v33 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v35 = v43;
    goto LABEL_18;
  }

  v49 = v83;
  outlined init with copy of PgQuery_Alias?(v43, v83, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28((v43 + v45), 1, v46) == 1)
  {
    outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
    goto LABEL_17;
  }

  v51 = v80;
  outlined init with take of PgQuery_OidList(v43 + v45, v80, type metadata accessor for PgQuery_Node);
  v48 = v46;
  v52 = *(v46 + 20);
  v53 = *(v49 + v52);
  v54 = *(v51 + v52);
  if (v53 != v54)
  {

    v55 = closure #1 in static PgQuery_Node.== infix(_:_:)(v53, v54);

    if (!v55)
    {
      outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_Node);
      v33 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v34 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v35 = v85;
      goto LABEL_18;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v56 = v83;
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v85, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v57 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_23:
  v58 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elemexpr;
  v59 = *(v44 + 48);
  v60 = v81;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elemexpr, v81, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v61 = a2 + v58;
  v25 = v60;
  outlined init with copy of PgQuery_Alias?(v61, v60 + v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v62 = v48;
  if (v28(v60, 1, v48) == 1)
  {
    if (v28((v60 + v59), 1, v48) == 1)
    {
      outlined destroy of URL?(v60, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_33;
    }

    goto LABEL_7;
  }

  v64 = v60;
  v65 = v79;
  outlined init with copy of PgQuery_Alias?(v64, v79, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28(&v25[v59], 1, v48) == 1)
  {
    v32 = v65;
    goto LABEL_6;
  }

  v66 = v78;
  outlined init with take of PgQuery_OidList(&v25[v59], v78, type metadata accessor for PgQuery_Node);
  v67 = *(v62 + 20);
  v68 = *(v65 + v67);
  v69 = *(v66 + v67);
  if (v68 != v69)
  {

    v70 = closure #1 in static PgQuery_Node.== infix(_:_:)(v68, v69);

    if (!v70)
    {
      outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_Node);
      v63 = v65;
      goto LABEL_27;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v71 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v65, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v71 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_33:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid))
  {
    goto LABEL_19;
  }

  v72 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat);
  v73 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat + 8) == 1)
  {
    if (v73 > 1)
    {
      if (v73 == 2)
      {
        if (v72 == 2)
        {
          goto LABEL_44;
        }
      }

      else if (v72 == 3)
      {
        goto LABEL_44;
      }
    }

    else if (v73)
    {
      if (v72 == 1)
      {
        goto LABEL_44;
      }
    }

    else if (!v72)
    {
      goto LABEL_44;
    }

LABEL_19:

    return 0;
  }

  if (v72 != v73)
  {
    goto LABEL_19;
  }

LABEL_44:
  v74 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v75 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v74 == v75;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ArrayCoerceExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayCoerceExpr and conformance PgQuery_ArrayCoerceExpr, type metadata accessor for PgQuery_ArrayCoerceExpr, &protocol conformance descriptor for PgQuery_ArrayCoerceExpr);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ArrayCoerceExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayCoerceExpr and conformance PgQuery_ArrayCoerceExpr, type metadata accessor for PgQuery_ArrayCoerceExpr, &protocol conformance descriptor for PgQuery_ArrayCoerceExpr);

  return MEMORY[0x28217E428](a1, Scan);
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
  v25 = a3;
  v26 = a4;
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = MEMORY[0x28223BE20](Node);
  v23 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  v24 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v13 + 48);
  if (v18(v11, 1, Node) == 1)
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

  v20 = v24;
  outlined init with copy of PgQuery_Alias?(v24 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v18(v9, 1, Node) == 1)
  {
    outlined destroy of URL?(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v21 = v23;
    outlined init with take of PgQuery_OidList(v9, v23, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat) || (v22 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat + 8), v27 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat), v28 = v22, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      result = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  v6 = MEMORY[0x28223BE20](Node);
  v51 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14);
  v57 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v56 = v17;
  v21 = *(v17 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v51 - v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v20, &v19[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v5 + 48);
  if (v22(v19, 1, Node) == 1)
  {
    v52 = Node;
    v23 = v22(&v19[v21], 1, Node);

    if (v23 == 1)
    {
      v58 = a1;
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v58 = a1;
  v55 = a2;
  outlined init with copy of PgQuery_Alias?(v19, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(&v19[v21], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
LABEL_6:
    outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_27;
  }

  v24 = v54;
  outlined init with take of PgQuery_OidList(&v19[v21], v54, type metadata accessor for PgQuery_Node);
  v52 = Node;
  v25 = *(Node + 20);
  v26 = *&v13[v25];
  v27 = *(v24 + v25);

  if (v26 != v27)
  {

    v28 = closure #1 in static PgQuery_Node.== infix(_:_:)(v26, v27);

    if (!v28)
    {
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_27;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v55;
  if ((v29 & 1) == 0)
  {
LABEL_27:

    return 0;
  }

LABEL_10:
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v31 = v57;
  v32 = *(v56 + 48);
  outlined init with copy of PgQuery_Alias?(v58 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v30, v31 + v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = v52;
  if (v22(v31, 1, v52) == 1)
  {
    v34 = v22((v31 + v32), 1, v33);
    v35 = v58;
    if (v34 == 1)
    {
      outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v36 = v53;
  outlined init with copy of PgQuery_Alias?(v31, v53, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v37 = v22((v31 + v32), 1, v33);
  v35 = v58;
  if (v37 == 1)
  {
    outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
LABEL_15:
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    outlined destroy of URL?(v31, v38, v39);
    goto LABEL_27;
  }

  v40 = v51;
  outlined init with take of PgQuery_OidList(v31 + v32, v51, type metadata accessor for PgQuery_Node);
  v41 = *(v33 + 20);
  v42 = *(v36 + v41);
  v43 = *(v40 + v41);
  if (v42 != v43)
  {

    v44 = closure #1 in static PgQuery_Node.== infix(_:_:)(v42, v43);

    if (!v44)
    {
      outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v45 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (*(v35 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype))
  {
    goto LABEL_27;
  }

  v46 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat);
  v47 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat + 8) == 1)
  {
    if (v47 > 1)
    {
      if (v47 == 2)
      {
        if (v46 != 2)
        {
          goto LABEL_27;
        }
      }

      else if (v46 != 3)
      {
        goto LABEL_27;
      }
    }

    else if (v47)
    {
      if (v46 != 1)
      {
        goto LABEL_27;
      }
    }

    else if (v46)
    {
      goto LABEL_27;
    }
  }

  else if (v46 != v47)
  {
    goto LABEL_27;
  }

  v49 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v50 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v49 == v50;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ConvertRowtypeExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConvertRowtypeExpr and conformance PgQuery_ConvertRowtypeExpr, type metadata accessor for PgQuery_ConvertRowtypeExpr, &protocol conformance descriptor for PgQuery_ConvertRowtypeExpr);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ConvertRowtypeExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConvertRowtypeExpr and conformance PgQuery_ConvertRowtypeExpr, type metadata accessor for PgQuery_ConvertRowtypeExpr, &protocol conformance descriptor for PgQuery_ConvertRowtypeExpr);

  return MEMORY[0x28217E428](a1, Scan);
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
  v25 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(Node - 8);
  v13 = MEMORY[0x28223BE20](Node);
  v23 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  v24 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(v12 + 48);
  if (v17(v10, 1, Node) == 1)
  {
    outlined destroy of URL?(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v16, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v18 = v27;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
    if (v18)
    {
      return result;
    }

    v27 = 0;
  }

  v20 = v24;
  outlined init with copy of PgQuery_Alias?(v24 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v17(v8, 1, Node) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v21 = v27;
  }

  else
  {
    v22 = v23;
    outlined init with take of PgQuery_OidList(v8, v23, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v21 = v27;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
    if (v21)
    {
      return result;
    }

    v20 = v24;
  }

  if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v21))
  {
    result = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CollateExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateExpr and conformance PgQuery_CollateExpr, type metadata accessor for PgQuery_CollateExpr, &protocol conformance descriptor for PgQuery_CollateExpr);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CollateExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateExpr and conformance PgQuery_CollateExpr, type metadata accessor for PgQuery_CollateExpr, &protocol conformance descriptor for PgQuery_CollateExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_SubLink._StorageClass.__deallocating_deinit(void *a1, void *a2, uint64_t a3, void *a4)
{
  outlined destroy of URL?(v4 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v4 + *a2, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v4 + *a4, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = *(*v4 + 48);
  v8 = *(*v4 + 52);

  return MEMORY[0x2821FE8D8](v4, v7, v8);
}

void type metadata completion function for PgQuery_SubLink._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  v37 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v35 = &v32 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = MEMORY[0x28223BE20](Node);
  v32 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v33 = &v32 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - v18;
  v20 = a1;
  v22 = v21;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v23 = *(v13 + 48);
  v34 = v13 + 48;
  if (v23(v11, 1, v22) == 1)
  {
    outlined destroy of URL?(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v24 = v38;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v11, v19, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v24 = v38;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
    if (v24)
    {
      return result;
    }
  }

  v27 = v35;
  v26 = v36;
  if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casetype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v24))
  {
    if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casecollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v24))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v23(v27, 1, v22) == 1)
      {
        outlined destroy of URL?(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v28 = v27;
        v29 = v33;
        outlined init with take of PgQuery_OidList(v28, v33, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v29, type metadata accessor for PgQuery_Node);
        if (v24)
        {
          return result;
        }
      }

      if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16))
      {
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

        if (v24)
        {
          return result;
        }

        v30 = 0;
      }

      else
      {
        v30 = v24;
      }

      outlined init with copy of PgQuery_Alias?(v20 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defresult, v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v23(v26, 1, v22) == 1)
      {
        outlined destroy of URL?(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v31 = v32;
        outlined init with take of PgQuery_OidList(v26, v32, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_Node);
        if (v30)
        {
          return result;
        }
      }

      result = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  v6 = MEMORY[0x28223BE20](Node);
  v78 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v81 = &v76 - v9;
  MEMORY[0x28223BE20](v8);
  v85 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v79 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v82 = &v76 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v76 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v19 = MEMORY[0x28223BE20](v18);
  v80 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v84 = &v76 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v76 - v24;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v83 = v23;
  v27 = *(v23 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v76 - v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v26, &v25[v27], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v28 = *(v5 + 48);
  if (v28(v25, 1, Node) == 1)
  {
    v77 = Node;
    v29 = v28(&v25[v27], 1, Node);

    if (v29 != 1)
    {
LABEL_7:
      v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_8:
      v33 = v25;
LABEL_9:
      outlined destroy of URL?(v33, v31, v32);
      goto LABEL_37;
    }

    outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with copy of PgQuery_Alias?(v25, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v28(&v25[v27], 1, Node) == 1)
    {

      v30 = v17;
LABEL_6:
      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      goto LABEL_7;
    }

    v34 = &v25[v27];
    v35 = v85;
    outlined init with take of PgQuery_OidList(v34, v85, type metadata accessor for PgQuery_Node);
    v77 = Node;
    v36 = *(Node + 20);
    v37 = *&v17[v36];
    v38 = *(v35 + v36);

    if (v37 != v38)
    {

      v39 = closure #1 in static PgQuery_Node.== infix(_:_:)(v37, v38);

      if (!v39)
      {
        outlined destroy of PgQuery_OidList(v85, type metadata accessor for PgQuery_Node);
        v48 = v17;
LABEL_19:
        outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
        v31 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_8;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v40 = v85;
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((v41 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casetype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casetype) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casecollid) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casecollid))
  {
    goto LABEL_37;
  }

  v42 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v43 = v84;
  v44 = *(v83 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v84, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v42, v43 + v44, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v45 = v77;
  if (v28(v43, 1, v77) == 1)
  {
    if (v28((v43 + v44), 1, v45) == 1)
    {
      v46 = v43;
      v47 = v45;
      outlined destroy of URL?(v46, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_26;
    }

LABEL_22:
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v33 = v43;
    goto LABEL_9;
  }

  v49 = v82;
  outlined init with copy of PgQuery_Alias?(v43, v82, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28((v43 + v44), 1, v45) == 1)
  {
    outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Node);
    goto LABEL_22;
  }

  v50 = v81;
  outlined init with take of PgQuery_OidList(v43 + v44, v81, type metadata accessor for PgQuery_Node);
  v47 = v45;
  v51 = *(v45 + 20);
  v52 = *(v49 + v51);
  v53 = *(v50 + v51);
  if (v52 != v53)
  {

    v54 = closure #1 in static PgQuery_Node.== infix(_:_:)(v52, v53);

    if (!v54)
    {
      outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v82, type metadata accessor for PgQuery_Node);
      v31 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v33 = v84;
      goto LABEL_9;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v55 = v82;
  v56 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v55, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v84, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v56 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_26:
  v57 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v58 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v57, v58);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_37;
  }

  v60 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defresult;
  v61 = *(v83 + 48);
  v62 = v80;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defresult, v80, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v63 = a2 + v60;
  v25 = v62;
  outlined init with copy of PgQuery_Alias?(v63, v62 + v61, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v64 = v47;
  if (v28(v62, 1, v47) == 1)
  {
    if (v28((v62 + v61), 1, v47) == 1)
    {
      outlined destroy of URL?(v62, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_36:
      v73 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v74 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v73 == v74;
    }

    goto LABEL_7;
  }

  v65 = v62;
  v66 = v79;
  outlined init with copy of PgQuery_Alias?(v65, v79, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28(&v25[v61], 1, v47) == 1)
  {
    v30 = v66;
    goto LABEL_6;
  }

  v67 = v78;
  outlined init with take of PgQuery_OidList(&v25[v61], v78, type metadata accessor for PgQuery_Node);
  v68 = *(v64 + 20);
  v69 = *(v66 + v68);
  v70 = *(v67 + v68);
  if (v69 != v70)
  {

    v71 = closure #1 in static PgQuery_Node.== infix(_:_:)(v69, v70);

    if (!v71)
    {
      outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
      v48 = v66;
      goto LABEL_19;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v72 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v72)
  {
    goto LABEL_36;
  }

LABEL_37:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CaseExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseExpr and conformance PgQuery_CaseExpr, type metadata accessor for PgQuery_CaseExpr, &protocol conformance descriptor for PgQuery_CaseExpr);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CaseExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseExpr and conformance PgQuery_CaseExpr, type metadata accessor for PgQuery_CaseExpr, &protocol conformance descriptor for PgQuery_CaseExpr);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CaseExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseExpr and conformance PgQuery_CaseExpr, type metadata accessor for PgQuery_CaseExpr, &protocol conformance descriptor for PgQuery_CaseExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_ArrayCoerceExpr._StorageClass.__deallocating_deinit(void *a1, void *a2, void *a3)
{
  outlined destroy of URL?(v3 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v3 + *a2, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v3 + *a3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = *(*v3 + 48);
  v7 = *(*v3 + 52);

  return MEMORY[0x2821FE8D8](v3, v6, v7);
}

void type metadata completion function for PgQuery_CaseWhen._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  v31 = a4;
  v32 = a2;
  v33 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v15 = *(Node - 8);
  v16 = MEMORY[0x28223BE20](Node);
  v29 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  v34 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v23 = *(v15 + 48);
  if (v23(v13, 1, Node) == 1)
  {
    outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v13, v22, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  outlined init with copy of PgQuery_Alias?(v34 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v23(v11, 1, Node) == 1)
  {
    outlined destroy of URL?(v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v11, v20, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  v25 = v30;
  outlined init with copy of PgQuery_Alias?(v34 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result, v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v23(v25, 1, Node) == 1)
  {
    outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v26 = v25;
    v27 = v29;
    outlined init with take of PgQuery_OidList(v26, v29, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  result = *(v34 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  v6 = MEMORY[0x28223BE20](Node);
  v71 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v73 = &v71 - v9;
  MEMORY[0x28223BE20](v8);
  v78 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v72 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v75 = &v71 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v71 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v19 = MEMORY[0x28223BE20](v18);
  v74 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v76 = &v71 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v71 - v24;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v77 = v23;
  v27 = *(v23 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v71 - v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v26, &v25[v27], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v28 = *(v5 + 48);
  if (v28(v25, 1, Node) == 1)
  {
    v29 = v28(&v25[v27], 1, Node);

    if (v29 != 1)
    {
LABEL_7:
      v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_8:
      v33 = v25;
LABEL_18:
      outlined destroy of URL?(v33, v31, v32);
      goto LABEL_19;
    }

    outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with copy of PgQuery_Alias?(v25, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v28(&v25[v27], 1, Node) == 1)
    {

      v30 = v17;
LABEL_6:
      outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      goto LABEL_7;
    }

    v34 = &v25[v27];
    v35 = v78;
    outlined init with take of PgQuery_OidList(v34, v78, type metadata accessor for PgQuery_Node);
    v36 = Node;
    v37 = *(Node + 20);
    v38 = *&v17[v37];
    v39 = *(v35 + v37);

    if (v38 != v39)
    {

      v40 = closure #1 in static PgQuery_Node.== infix(_:_:)(v38, v39);

      if (!v40)
      {
        outlined destroy of PgQuery_OidList(v78, type metadata accessor for PgQuery_Node);
        v59 = v17;
LABEL_28:
        outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
        v31 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_8;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v41 = v78;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    Node = v36;
    if ((v42 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v43 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  v44 = v76;
  v45 = *(v77 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v76, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v43, v44 + v45, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28(v44, 1, Node) == 1)
  {
    if (v28((v44 + v45), 1, Node) == 1)
    {
      outlined destroy of URL?(v44, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_24;
    }

LABEL_17:
    v31 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v33 = v44;
    goto LABEL_18;
  }

  v46 = v75;
  outlined init with copy of PgQuery_Alias?(v44, v75, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28((v44 + v45), 1, Node) == 1)
  {
    outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
    goto LABEL_17;
  }

  v48 = v73;
  outlined init with take of PgQuery_OidList(v44 + v45, v73, type metadata accessor for PgQuery_Node);
  v49 = *(Node + 20);
  v50 = *(v46 + v49);
  v51 = *(v48 + v49);
  if (v50 != v51)
  {

    v52 = closure #1 in static PgQuery_Node.== infix(_:_:)(v50, v51);

    if (!v52)
    {
      outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
      v31 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v33 = v76;
      goto LABEL_18;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v53 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v76, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v53 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_24:
  v54 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result;
  v55 = *(v77 + 48);
  v56 = Node;
  v57 = v74;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result, v74, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v58 = a2 + v54;
  v25 = v57;
  outlined init with copy of PgQuery_Alias?(v58, v57 + v55, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28(v57, 1, v56) == 1)
  {
    if (v28((v57 + v55), 1, v56) == 1)
    {
      outlined destroy of URL?(v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_34:
      v69 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v70 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v69 == v70;
    }

    goto LABEL_7;
  }

  v60 = v57;
  v61 = v56;
  v62 = v72;
  outlined init with copy of PgQuery_Alias?(v60, v72, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v28(&v25[v55], 1, v56) == 1)
  {
    v30 = v62;
    goto LABEL_6;
  }

  v63 = v71;
  outlined init with take of PgQuery_OidList(&v25[v55], v71, type metadata accessor for PgQuery_Node);
  v64 = *(v61 + 20);
  v65 = *(v62 + v64);
  v66 = *(v63 + v64);
  if (v65 != v66)
  {

    v67 = closure #1 in static PgQuery_Node.== infix(_:_:)(v65, v66);

    if (!v67)
    {
      outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_Node);
      v59 = v62;
      goto LABEL_28;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v68 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v68)
  {
    goto LABEL_34;
  }

LABEL_19:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CaseWhen(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseWhen and conformance PgQuery_CaseWhen, type metadata accessor for PgQuery_CaseWhen, &protocol conformance descriptor for PgQuery_CaseWhen);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CaseWhen(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseWhen and conformance PgQuery_CaseWhen, type metadata accessor for PgQuery_CaseWhen, &protocol conformance descriptor for PgQuery_CaseWhen);

  return MEMORY[0x28217E428](a1, Scan);
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
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v9 + 48))(v7, 1, Node) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v12 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v12 = v16;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
    if (v12)
    {
      return result;
    }
  }

  v14 = v15[0];
  if (!*(v15[0] + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v12))
  {
    if (!*(v14 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v12))
    {
      result = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);
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
  MEMORY[0x28223BE20](Node);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = *(v11 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v31 - v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = a2 + v14;
  v17 = a2;
  outlined init with copy of PgQuery_Alias?(v16, &v13[v15], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v13, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v18(&v13[v15], 1, Node) != 1)
    {
      v22 = v32;
      outlined init with take of PgQuery_OidList(&v13[v15], v32, type metadata accessor for PgQuery_Node);
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
          goto LABEL_14;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      outlined destroy of URL?(v13, v20, v21);
      goto LABEL_14;
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
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod))
  {
    v28 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

    v29 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

    return v28 == v29;
  }

LABEL_14:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CaseTestExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseTestExpr and conformance PgQuery_CaseTestExpr, type metadata accessor for PgQuery_CaseTestExpr, &protocol conformance descriptor for PgQuery_CaseTestExpr);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CaseTestExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseTestExpr and conformance PgQuery_CaseTestExpr, type metadata accessor for PgQuery_CaseTestExpr, &protocol conformance descriptor for PgQuery_CaseTestExpr);

  return MEMORY[0x28217E428](a1, Scan);
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
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v13 = v12;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v9 + 48))(v7, 1, v13) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v14 = v19;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v14 = v19;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
    if (v14)
    {
      return result;
    }
  }

  v16 = v18;
  if (!*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayTypeid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
  {
    if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayCollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
    {
      if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elementTypeid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
      {
        if (!*(*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elements) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v14))
        {
          if (*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__multidims) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v14))
          {
            result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  MEMORY[0x28223BE20](Node);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - v12;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = *(v11 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v34 - v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      outlined destroy of URL?(v13, v20, v21);
      goto LABEL_16;
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
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayTypeid) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayTypeid) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayCollid) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayCollid) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elementTypeid) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elementTypeid))
  {
    v28 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elements);
    v29 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elements);

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v28, v29);

    if ((NodeV_Tt1g5 & 1) != 0 && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__multidims) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__multidims))
    {
      v32 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v33 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v32 == v33;
    }
  }

LABEL_16:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ArrayExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayExpr and conformance PgQuery_ArrayExpr, type metadata accessor for PgQuery_ArrayExpr, &protocol conformance descriptor for PgQuery_ArrayExpr);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ArrayExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayExpr and conformance PgQuery_ArrayExpr, type metadata accessor for PgQuery_ArrayExpr, &protocol conformance descriptor for PgQuery_ArrayExpr);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ArrayExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayExpr and conformance PgQuery_ArrayExpr, type metadata accessor for PgQuery_ArrayExpr, &protocol conformance descriptor for PgQuery_ArrayExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_RowExpr._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_GroupingFunc._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  v22 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  v14 = v13;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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

  v16 = v19;
  if (!*(*(v19 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowTypeid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
    {
      if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat) || (v17 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat + 8), v20 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat), v21 = v17, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
      {
        if (!*(*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
        {
          result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  MEMORY[0x28223BE20](Node);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - v12;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = *(v11 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v39 - v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = a2 + v14;
  v17 = a2;
  outlined init with copy of PgQuery_Alias?(v16, &v13[v15], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v13, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v18(&v13[v15], 1, Node) != 1)
    {
      v22 = v40;
      outlined init with take of PgQuery_OidList(&v13[v15], v40, type metadata accessor for PgQuery_Node);
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
          goto LABEL_28;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      outlined destroy of URL?(v13, v20, v21);
      goto LABEL_28;
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
  v28 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v29 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v28, v29);

  if ((NodeV_Tt1g5 & 1) == 0 || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowTypeid) != *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowTypeid))
  {
    goto LABEL_28;
  }

  v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat);
  v32 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat);
  if (*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat + 8) == 1)
  {
    if (v32 > 1)
    {
      if (v32 == 2)
      {
        if (v31 != 2)
        {
          goto LABEL_28;
        }
      }

      else if (v31 != 3)
      {
        goto LABEL_28;
      }
    }

    else if (v32)
    {
      if (v31 != 1)
      {
        goto LABEL_28;
      }
    }

    else if (v31)
    {
      goto LABEL_28;
    }
  }

  else if (v31 != v32)
  {
    goto LABEL_28;
  }

  v33 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames);
  v34 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames);

  v35 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v33, v34);

  if (v35)
  {
    v36 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v37 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v36 == v37;
  }

LABEL_28:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RowExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowExpr and conformance PgQuery_RowExpr, type metadata accessor for PgQuery_RowExpr, &protocol conformance descriptor for PgQuery_RowExpr);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RowExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowExpr and conformance PgQuery_RowExpr, type metadata accessor for PgQuery_RowExpr, &protocol conformance descriptor for PgQuery_RowExpr);

  return MEMORY[0x28217E428](a1, Scan);
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
  v7 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos) = MEMORY[0x277D84F90];
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
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_RangeTblFunction._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v13 = v12;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v9 + 48))(v7, 1, v13) == 1)
  {
    result = outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v15 = v23;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v16 = v23;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v15 = v16;
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
    if (v16)
    {
      return result;
    }
  }

  v17 = v20;
  if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype) || (v18 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype + 8), v21 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype), v22 = v18, lazy protocol witness table accessor for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v15))
  {
    if (!*(*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v15))
    {
      if (!*(*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v15))
      {
        if (!*(*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v15))
        {
          if (!*(*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v15))
          {
            if (*(*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs) + 16))
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
  MEMORY[0x28223BE20](Node);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v47 - v12;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = *(v11 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v47 - v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = a2 + v14;
  v17 = a2;
  outlined init with copy of PgQuery_Alias?(v16, &v13[v15], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, Node) != 1)
  {
    v20 = a1;
    outlined init with copy of PgQuery_Alias?(v13, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v18(&v13[v15], 1, Node) != 1)
    {
      v25 = v48;
      outlined init with take of PgQuery_OidList(&v13[v15], v48, type metadata accessor for PgQuery_Node);
      v26 = *(Node + 20);
      v27 = *&v9[v26];
      v28 = *(v25 + v26);

      if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v29))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v30 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v22 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      outlined destroy of URL?(v13, v21, v22);
      goto LABEL_8;
    }

    outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
LABEL_6:
    v21 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v22 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v19 = v18(&v13[v15], 1, Node);

  v20 = a1;
  if (v19 != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of URL?(v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_13:
  v31 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype);
  v32 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype);
  if (*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype + 8) == 1)
  {
    if (v32 <= 2)
    {
      if (v32)
      {
        if (v32 == 1)
        {
          if (v31 != 1)
          {
            goto LABEL_8;
          }
        }

        else if (v31 != 2)
        {
          goto LABEL_8;
        }
      }

      else if (v31)
      {
        goto LABEL_8;
      }
    }

    else if (v32 > 4)
    {
      if (v32 == 5)
      {
        if (v31 != 5)
        {
          goto LABEL_8;
        }
      }

      else if (v31 != 6)
      {
        goto LABEL_8;
      }
    }

    else if (v32 == 3)
    {
      if (v31 != 3)
      {
        goto LABEL_8;
      }
    }

    else if (v31 != 4)
    {
      goto LABEL_8;
    }
  }

  else if (v31 != v32)
  {
    goto LABEL_8;
  }

  v33 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos);
  v34 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v33, v34);

  if (NodeV_Tt1g5)
  {
    v36 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies);
    v37 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies);

    v38 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v36, v37);

    if (v38)
    {
      v39 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids);
      v40 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids);

      v41 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v39, v40);

      if (v41)
      {
        v42 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs);
        v43 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs);

        v44 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v42, v43);

        if (v44)
        {
          v45 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs);
          v46 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs);

          v23 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v45, v46);

          return v23 & 1;
        }
      }
    }
  }

LABEL_8:

  v23 = 0;
  return v23 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RowCompareExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowCompareExpr and conformance PgQuery_RowCompareExpr, type metadata accessor for PgQuery_RowCompareExpr, &protocol conformance descriptor for PgQuery_RowCompareExpr);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RowCompareExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowCompareExpr and conformance PgQuery_RowCompareExpr, type metadata accessor for PgQuery_RowCompareExpr, &protocol conformance descriptor for PgQuery_RowCompareExpr);

  return MEMORY[0x28217E428](a1, Scan);
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
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v9 + 48))(v7, 1, Node) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v12 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v12 = v16;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
    if (v12)
    {
      return result;
    }
  }

  v14 = v15[0];
  if (!*(v15[0] + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescetype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v12))
  {
    if (!*(v14 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescecollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v12))
    {
      if (!*(*(v14 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v12))
      {
        result = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  MEMORY[0x28223BE20](Node);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v34 - v12;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = *(v11 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v34 - v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
          goto LABEL_15;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      outlined destroy of URL?(v13, v20, v21);
      goto LABEL_15;
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
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescetype) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescetype) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescecollid) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescecollid))
  {
    v28 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
    v29 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v28, v29);

    if (NodeV_Tt1g5)
    {
      v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      v32 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

      return v31 == v32;
    }
  }

LABEL_15:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CoalesceExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoalesceExpr and conformance PgQuery_CoalesceExpr, type metadata accessor for PgQuery_CoalesceExpr, &protocol conformance descriptor for PgQuery_CoalesceExpr);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CoalesceExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoalesceExpr and conformance PgQuery_CoalesceExpr, type metadata accessor for PgQuery_CoalesceExpr, &protocol conformance descriptor for PgQuery_CoalesceExpr);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CoalesceExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoalesceExpr and conformance PgQuery_CoalesceExpr, type metadata accessor for PgQuery_CoalesceExpr, &protocol conformance descriptor for PgQuery_CoalesceExpr);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_Param._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v13 = v12;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v9 + 48))(v7, 1, v13) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v14 = v23;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v14 = v23;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
    if (v14)
    {
      return result;
    }
  }

  v16 = v20;
  if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxtype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
  {
    if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
    {
      if (!*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
      {
        v17 = v14;
        if (*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op))
        {
          v18 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8);
          v21 = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
          v22 = v18;
          lazy protocol witness table accessor for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp();
          result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
          if (v14)
          {
            return result;
          }

          v17 = 0;
        }

        if (!*(*(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v17))
        {
          result = *(v16 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  MEMORY[0x28223BE20](Node);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - v12;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = *(v11 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v36 - v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = a2 + v14;
  v17 = a2;
  outlined init with copy of PgQuery_Alias?(v16, &v13[v15], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v13, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v18(&v13[v15], 1, Node) != 1)
    {
      v22 = v37;
      outlined init with take of PgQuery_OidList(&v13[v15], v37, type metadata accessor for PgQuery_Node);
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
          goto LABEL_27;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      outlined destroy of URL?(v13, v20, v21);
      goto LABEL_27;
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
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxtype) != *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxtype) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxcollid) != *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxcollid) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) != *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid))
  {
    goto LABEL_27;
  }

  v28 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  v29 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op);
  if (*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8) == 1)
  {
    if (v29)
    {
      if (v29 == 1)
      {
        if (v28 != 1)
        {
          goto LABEL_27;
        }
      }

      else if (v28 != 2)
      {
        goto LABEL_27;
      }
    }

    else if (v28)
    {
      goto LABEL_27;
    }
  }

  else if (v28 != v29)
  {
    goto LABEL_27;
  }

  v30 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v31 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v30, v31);

  if (NodeV_Tt1g5)
  {
    v33 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v34 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v33 == v34;
  }

LABEL_27:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_MinMaxExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MinMaxExpr and conformance PgQuery_MinMaxExpr, type metadata accessor for PgQuery_MinMaxExpr, &protocol conformance descriptor for PgQuery_MinMaxExpr);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_MinMaxExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MinMaxExpr and conformance PgQuery_MinMaxExpr, type metadata accessor for PgQuery_MinMaxExpr, &protocol conformance descriptor for PgQuery_MinMaxExpr);

  return MEMORY[0x28217E428](a1, Scan);
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
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v9 + 48))(v7, 1, Node) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v12 = v18;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v12 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
    if (v12)
    {
      return result;
    }
  }

  v14 = v16[0];
  if (!*(v16[0] + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op) || (v15 = *(v16[0] + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8), v16[2] = *(v16[0] + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op), v17 = v15, lazy protocol witness table accessor for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v12))
  {
    if (!*(v14 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v12))
    {
      if (!*(v14 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v12))
      {
        result = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  MEMORY[0x28223BE20](Node);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = *(v11 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v31 - v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = a2 + v14;
  v17 = a2;
  outlined init with copy of PgQuery_Alias?(v16, &v13[v15], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v13, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v18(&v13[v15], 1, Node) != 1)
    {
      v22 = v32;
      outlined init with take of PgQuery_OidList(&v13[v15], v32, type metadata accessor for PgQuery_Node);
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
          goto LABEL_15;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      outlined destroy of URL?(v13, v20, v21);
      goto LABEL_15;
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
  if (specialized == infix<A>(_:_:)(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op), *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8), *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op)) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod))
  {
    v28 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v29 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v28 == v29;
  }

LABEL_15:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SQLValueFunction(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SQLValueFunction and conformance PgQuery_SQLValueFunction, type metadata accessor for PgQuery_SQLValueFunction, &protocol conformance descriptor for PgQuery_SQLValueFunction);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SQLValueFunction(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SQLValueFunction and conformance PgQuery_SQLValueFunction, type metadata accessor for PgQuery_SQLValueFunction, &protocol conformance descriptor for PgQuery_SQLValueFunction);

  return MEMORY[0x28217E428](a1, Scan);
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
  v5 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namedArgs) = MEMORY[0x277D84F90];
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
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_XmlExpr._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v13 = v12;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v9 + 48))(v7, 1, v13) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v14 = v26;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v15 = v26;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v14 = v15;
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
    if (v15)
    {
      return result;
    }
  }

  v17 = v23;
  if (!*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op) || (v18 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8), v24 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op), v25 = v18, lazy protocol witness table accessor for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v14))
  {
    v19 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name + 8);
    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name) & 0xFFFFFFFFFFFFLL;
    }

    if (!v20 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v14))
    {
      if (!*(*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namedArgs) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v14))
      {
        if (!*(*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argNames) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v14))
        {
          if (!*(*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v14))
          {
            if (!*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption) || (v21 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption + 8), v24 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption), v25 = v21, lazy protocol witness table accessor for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v14))
            {
              if (!*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v14))
              {
                if (!*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v14))
                {
                  result = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  MEMORY[0x28223BE20](Node);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v42 - v12;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = *(v11 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v42 - v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = a2 + v14;
  v17 = a2;
  outlined init with copy of PgQuery_Alias?(v16, &v13[v15], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v13, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v18(&v13[v15], 1, Node) != 1)
    {
      v22 = v43;
      outlined init with take of PgQuery_OidList(&v13[v15], v43, type metadata accessor for PgQuery_Node);
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
          goto LABEL_32;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      outlined destroy of URL?(v13, v20, v21);
      goto LABEL_32;
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
  if (!specialized == infix<A>(_:_:)(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op), *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op + 8), *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op)) || (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name) != *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name + 8) != *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_32;
  }

  v28 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namedArgs);
  v29 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namedArgs);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v28, v29);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_32;
  }

  v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argNames);
  v32 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argNames);

  v33 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v31, v32);

  if ((v33 & 1) == 0)
  {
    goto LABEL_32;
  }

  v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);
  v35 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args);

  v36 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v34, v35);

  if ((v36 & 1) == 0)
  {
    goto LABEL_32;
  }

  v37 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption);
  v38 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption);
  if (*(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xmloption + 8) == 1)
  {
    if (v38)
    {
      if (v38 == 1)
      {
        if (v37 != 1)
        {
          goto LABEL_32;
        }
      }

      else if (v37 != 2)
      {
        goto LABEL_32;
      }
    }

    else if (v37)
    {
      goto LABEL_32;
    }
  }

  else if (v37 != v38)
  {
    goto LABEL_32;
  }

  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod))
  {
    v39 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v40 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_XmlExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v39 == v40;
  }

LABEL_32:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_XmlExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlExpr and conformance PgQuery_XmlExpr, type metadata accessor for PgQuery_XmlExpr, &protocol conformance descriptor for PgQuery_XmlExpr);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_XmlExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlExpr and conformance PgQuery_XmlExpr, type metadata accessor for PgQuery_XmlExpr, &protocol conformance descriptor for PgQuery_XmlExpr);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_XmlExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlExpr and conformance PgQuery_XmlExpr, type metadata accessor for PgQuery_XmlExpr, &protocol conformance descriptor for PgQuery_XmlExpr);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_NamedArgExpr._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  v25 = a3;
  v26 = a4;
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = MEMORY[0x28223BE20](Node);
  v23 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  v24 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v13 + 48);
  if (v18(v11, 1, Node) == 1)
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

  v20 = v24;
  outlined init with copy of PgQuery_Alias?(v24 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v18(v9, 1, Node) == 1)
  {
    outlined destroy of URL?(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v21 = v23;
    outlined init with take of PgQuery_OidList(v9, v23, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype) || (v22 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype + 8), v27 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype), v28 = v22, lazy protocol witness table accessor for type PgQuery_NullTestType and conformance PgQuery_NullTestType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argisrow) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      result = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  v6 = MEMORY[0x28223BE20](Node);
  v51 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14);
  v57 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v56 = v17;
  v21 = *(v17 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v51 - v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v20, &v19[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v5 + 48);
  if (v22(v19, 1, Node) == 1)
  {
    v52 = Node;
    v23 = v22(&v19[v21], 1, Node);

    if (v23 == 1)
    {
      v58 = a1;
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_27;
  }

  v58 = a1;
  v55 = a2;
  outlined init with copy of PgQuery_Alias?(v19, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(&v19[v21], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v24 = v54;
  outlined init with take of PgQuery_OidList(&v19[v21], v54, type metadata accessor for PgQuery_Node);
  v52 = Node;
  v25 = *(Node + 20);
  v26 = *&v13[v25];
  v27 = *(v24 + v25);

  if (v26 != v27)
  {

    v28 = closure #1 in static PgQuery_Node.== infix(_:_:)(v26, v27);

    if (!v28)
    {
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_27;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v55;
  if ((v29 & 1) == 0)
  {
LABEL_27:

    return 0;
  }

LABEL_10:
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v31 = v57;
  v32 = *(v56 + 48);
  outlined init with copy of PgQuery_Alias?(v58 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v30, v31 + v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = v52;
  if (v22(v31, 1, v52) == 1)
  {
    v34 = v22((v31 + v32), 1, v33);
    v35 = v58;
    if (v34 == 1)
    {
      outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v36 = v53;
  outlined init with copy of PgQuery_Alias?(v31, v53, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v37 = v22((v31 + v32), 1, v33);
  v35 = v58;
  if (v37 == 1)
  {
    outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
LABEL_15:
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    outlined destroy of URL?(v31, v38, v39);
    goto LABEL_27;
  }

  v40 = v51;
  outlined init with take of PgQuery_OidList(v31 + v32, v51, type metadata accessor for PgQuery_Node);
  v41 = *(v33 + 20);
  v42 = *(v36 + v41);
  v43 = *(v40 + v41);
  if (v42 != v43)
  {

    v44 = closure #1 in static PgQuery_Node.== infix(_:_:)(v42, v43);

    if (!v44)
    {
      outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v45 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  v46 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype);
  v47 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype + 8) == 1)
  {
    if (v47)
    {
      if (v47 == 1)
      {
        if (v46 == 1)
        {
          goto LABEL_34;
        }
      }

      else if (v46 == 2)
      {
        goto LABEL_34;
      }

      goto LABEL_27;
    }

    if (v46)
    {
      goto LABEL_27;
    }
  }

  else if (v46 != v47)
  {
    goto LABEL_27;
  }

LABEL_34:
  if (*(v35 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argisrow) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argisrow))
  {
    goto LABEL_27;
  }

  v49 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v50 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v49 == v50;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_NullTest(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullTest and conformance PgQuery_NullTest, type metadata accessor for PgQuery_NullTest, &protocol conformance descriptor for PgQuery_NullTest);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_NullTest(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullTest and conformance PgQuery_NullTest, type metadata accessor for PgQuery_NullTest, &protocol conformance descriptor for PgQuery_NullTest);

  return MEMORY[0x28217E428](a1, Scan);
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
  v25 = a3;
  v26 = a4;
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v14 = MEMORY[0x28223BE20](Node);
  v23 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  v24 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v13 + 48);
  if (v18(v11, 1, Node) == 1)
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

  v20 = v24;
  outlined init with copy of PgQuery_Alias?(v24 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v18(v9, 1, Node) == 1)
  {
    outlined destroy of URL?(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v21 = v23;
    outlined init with take of PgQuery_OidList(v9, v23, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
    if (v4)
    {
      return result;
    }
  }

  if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype) || (v22 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype + 8), v27 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype), v28 = v22, lazy protocol witness table accessor for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  v6 = MEMORY[0x28223BE20](Node);
  v51 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14);
  v57 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v56 = v17;
  v21 = *(v17 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v51 - v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v20, &v19[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v5 + 48);
  if (v22(v19, 1, Node) == 1)
  {
    v52 = Node;
    v23 = v22(&v19[v21], 1, Node);

    if (v23 == 1)
    {
      v58 = a1;
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_28;
  }

  v58 = a1;
  v55 = a2;
  outlined init with copy of PgQuery_Alias?(v19, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(&v19[v21], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v24 = v54;
  outlined init with take of PgQuery_OidList(&v19[v21], v54, type metadata accessor for PgQuery_Node);
  v52 = Node;
  v25 = *(Node + 20);
  v26 = *&v13[v25];
  v27 = *(v24 + v25);

  if (v26 != v27)
  {

    v28 = closure #1 in static PgQuery_Node.== infix(_:_:)(v26, v27);

    if (!v28)
    {
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_28;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v55;
  if ((v29 & 1) == 0)
  {
LABEL_28:

    return 0;
  }

LABEL_10:
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v31 = v57;
  v32 = *(v56 + 48);
  outlined init with copy of PgQuery_Alias?(v58 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v30, v31 + v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = v52;
  if (v22(v31, 1, v52) == 1)
  {
    v34 = v22((v31 + v32), 1, v33);
    v35 = v58;
    if (v34 == 1)
    {
      outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v36 = v53;
  outlined init with copy of PgQuery_Alias?(v31, v53, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v37 = v22((v31 + v32), 1, v33);
  v35 = v58;
  if (v37 == 1)
  {
    outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
LABEL_15:
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    outlined destroy of URL?(v31, v38, v39);
    goto LABEL_28;
  }

  v40 = v51;
  outlined init with take of PgQuery_OidList(v31 + v32, v51, type metadata accessor for PgQuery_Node);
  v41 = *(v33 + 20);
  v42 = *(v36 + v41);
  v43 = *(v40 + v41);
  if (v42 != v43)
  {

    v44 = closure #1 in static PgQuery_Node.== infix(_:_:)(v42, v43);

    if (!v44)
    {
      outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v45 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  v46 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype);
  v47 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype + 8) == 1)
  {
    if (v47 <= 2)
    {
      if (v47)
      {
        if (v47 == 1)
        {
          if (v46 == 1)
          {
            goto LABEL_30;
          }
        }

        else if (v46 == 2)
        {
          goto LABEL_30;
        }
      }

      else if (!v46)
      {
        goto LABEL_30;
      }
    }

    else if (v47 > 4)
    {
      if (v47 == 5)
      {
        if (v46 == 5)
        {
          goto LABEL_30;
        }
      }

      else if (v46 == 6)
      {
        goto LABEL_30;
      }
    }

    else if (v47 == 3)
    {
      if (v46 == 3)
      {
        goto LABEL_30;
      }
    }

    else if (v46 == 4)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v46 != v47)
  {
    goto LABEL_28;
  }

LABEL_30:
  v49 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v50 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v49 == v50;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_BooleanTest(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BooleanTest and conformance PgQuery_BooleanTest, type metadata accessor for PgQuery_BooleanTest, &protocol conformance descriptor for PgQuery_BooleanTest);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_BooleanTest(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BooleanTest and conformance PgQuery_BooleanTest, type metadata accessor for PgQuery_BooleanTest, &protocol conformance descriptor for PgQuery_BooleanTest);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_BooleanTest(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BooleanTest and conformance PgQuery_BooleanTest, type metadata accessor for PgQuery_BooleanTest, &protocol conformance descriptor for PgQuery_BooleanTest);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_RelabelType._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  v26 = a3;
  v27 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(Node - 8);
  v13 = MEMORY[0x28223BE20](Node);
  v24 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  v25 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(v12 + 48);
  if (v17(v10, 1, Node) == 1)
  {
    outlined destroy of URL?(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v16, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v18 = v30;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
    if (v18)
    {
      return result;
    }

    v30 = 0;
  }

  v20 = v25;
  outlined init with copy of PgQuery_Alias?(v25 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v17(v8, 1, Node) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v21 = v30;
  }

  else
  {
    v22 = v24;
    outlined init with take of PgQuery_OidList(v8, v24, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v21 = v30;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
    if (v21)
    {
      return result;
    }

    v20 = v25;
  }

  if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v21))
  {
    if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v21))
    {
      if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v21))
      {
        if (!*(v25 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat) || (v23 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat + 8), v28 = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat), v29 = v23, lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v21))
        {
          result = *(v25 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  v6 = MEMORY[0x28223BE20](Node);
  v51 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14);
  v57 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v56 = v17;
  v21 = *(v17 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v51 - v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v20, &v19[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v5 + 48);
  if (v22(v19, 1, Node) == 1)
  {
    v52 = Node;
    v23 = v22(&v19[v21], 1, Node);

    if (v23 == 1)
    {
      v58 = a1;
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

LABEL_6:
    outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_29;
  }

  v58 = a1;
  v55 = a2;
  outlined init with copy of PgQuery_Alias?(v19, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(&v19[v21], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    goto LABEL_6;
  }

  v24 = v54;
  outlined init with take of PgQuery_OidList(&v19[v21], v54, type metadata accessor for PgQuery_Node);
  v52 = Node;
  v25 = *(Node + 20);
  v26 = *&v13[v25];
  v27 = *(v24 + v25);

  if (v26 != v27)
  {

    v28 = closure #1 in static PgQuery_Node.== infix(_:_:)(v26, v27);

    if (!v28)
    {
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_29;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v55;
  if ((v29 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v31 = v57;
  v32 = *(v56 + 48);
  outlined init with copy of PgQuery_Alias?(v58 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v57, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v30, v31 + v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = v52;
  if (v22(v31, 1, v52) != 1)
  {
    v36 = v53;
    outlined init with copy of PgQuery_Alias?(v31, v53, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v37 = v22((v31 + v32), 1, v33);
    v35 = v58;
    if (v37 == 1)
    {
      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
      goto LABEL_15;
    }

    v40 = v51;
    outlined init with take of PgQuery_OidList(v31 + v32, v51, type metadata accessor for PgQuery_Node);
    v41 = *(v33 + 20);
    v42 = *(v36 + v41);
    v43 = *(v40 + v41);
    if (v42 != v43)
    {

      v44 = closure #1 in static PgQuery_Node.== infix(_:_:)(v42, v43);

      if (!v44)
      {
        outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
        v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_16;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v45)
    {
      goto LABEL_20;
    }

LABEL_29:

    return 0;
  }

  v34 = v22((v31 + v32), 1, v33);
  v35 = v58;
  if (v34 != 1)
  {
LABEL_15:
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    outlined destroy of URL?(v31, v38, v39);
    goto LABEL_29;
  }

  outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_20:
  if (*(v35 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) || *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) || *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid))
  {
    goto LABEL_29;
  }

  v46 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat);
  v47 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat + 8) == 1)
  {
    if (v47 > 1)
    {
      if (v47 == 2)
      {
        if (v46 != 2)
        {
          goto LABEL_29;
        }
      }

      else if (v46 != 3)
      {
        goto LABEL_29;
      }
    }

    else if (v47)
    {
      if (v46 != 1)
      {
        goto LABEL_29;
      }
    }

    else if (v46)
    {
      goto LABEL_29;
    }
  }

  else if (v46 != v47)
  {
    goto LABEL_29;
  }

  v49 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v50 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v49 == v50;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CoerceToDomain(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomain and conformance PgQuery_CoerceToDomain, type metadata accessor for PgQuery_CoerceToDomain, &protocol conformance descriptor for PgQuery_CoerceToDomain);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CoerceToDomain(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomain and conformance PgQuery_CoerceToDomain, type metadata accessor for PgQuery_CoerceToDomain, &protocol conformance descriptor for PgQuery_CoerceToDomain);

  return MEMORY[0x28217E428](a1, Scan);
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
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v9 + 48))(v7, 1, Node) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v12 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v12 = v16;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
    if (v12)
    {
      return result;
    }
  }

  v14 = v15[0];
  if (!*(v15[0] + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v12))
  {
    if (!*(v14 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v12))
    {
      if (!*(v14 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v12))
      {
        result = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  MEMORY[0x28223BE20](Node);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = *(v11 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v31 - v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = a2 + v14;
  v17 = a2;
  outlined init with copy of PgQuery_Alias?(v16, &v13[v15], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v13, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v18(&v13[v15], 1, Node) != 1)
    {
      v22 = v32;
      outlined init with take of PgQuery_OidList(&v13[v15], v32, type metadata accessor for PgQuery_Node);
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
          goto LABEL_15;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      outlined destroy of URL?(v13, v20, v21);
      goto LABEL_15;
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
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation))
  {
    v28 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v29 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v28 == v29;
  }

LABEL_15:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CoerceToDomainValue(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomainValue and conformance PgQuery_CoerceToDomainValue, type metadata accessor for PgQuery_CoerceToDomainValue, &protocol conformance descriptor for PgQuery_CoerceToDomainValue);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CoerceToDomainValue(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomainValue and conformance PgQuery_CoerceToDomainValue, type metadata accessor for PgQuery_CoerceToDomainValue, &protocol conformance descriptor for PgQuery_CoerceToDomainValue);

  return MEMORY[0x28217E428](a1, Scan);
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
  *(v19 + 16) = xmmword_2552FDCC0;
  v7 = v19 + v6;
  v8 = v19 + v6 + v4[14];
  *(v19 + v6) = 1;
  *v8 = "xpr";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21870];
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
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v9 + 48))(v7, 1, Node) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v12 = v16;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v12 = v16;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
    if (v12)
    {
      return result;
    }
  }

  v14 = v15[0];
  if (!*(v15[0] + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v12))
  {
    if (!*(v14 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v12))
    {
      if (!*(v14 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v12))
      {
        result = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
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
  MEMORY[0x28223BE20](Node);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = *(v11 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v31 - v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = a2 + v14;
  v17 = a2;
  outlined init with copy of PgQuery_Alias?(v16, &v13[v15], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v13, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v18(&v13[v15], 1, Node) != 1)
    {
      v22 = v32;
      outlined init with take of PgQuery_OidList(&v13[v15], v32, type metadata accessor for PgQuery_Node);
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
          goto LABEL_15;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      outlined destroy of URL?(v13, v20, v21);
      goto LABEL_15;
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
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation))
  {
    v28 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v29 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v28 == v29;
  }

LABEL_15:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SetToDefault(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetToDefault and conformance PgQuery_SetToDefault, type metadata accessor for PgQuery_SetToDefault, &protocol conformance descriptor for PgQuery_SetToDefault);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SetToDefault(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetToDefault and conformance PgQuery_SetToDefault, type metadata accessor for PgQuery_SetToDefault, &protocol conformance descriptor for PgQuery_SetToDefault);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SetToDefault(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetToDefault and conformance PgQuery_SetToDefault, type metadata accessor for PgQuery_SetToDefault, &protocol conformance descriptor for PgQuery_SetToDefault);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_BoolExpr._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  v17[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v9 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v9 + 48))(v7, 1, Node) == 1)
  {
    outlined destroy of URL?(v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v12 = v18;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v11, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v12 = v18;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
    if (v12)
    {
      return result;
    }
  }

  v14 = v17[0];
  if (!*(v17[0] + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cvarno) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v12))
  {
    v15 = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName + 8);
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName) & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v12))
    {
      result = *(v14 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorParam);
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
  MEMORY[0x28223BE20](Node);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = *(v11 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v31 - v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v16 = a2 + v14;
  v17 = a2;
  outlined init with copy of PgQuery_Alias?(v16, &v13[v15], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v18 = *(v5 + 48);
  if (v18(v13, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v13, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v18(&v13[v15], 1, Node) != 1)
    {
      v22 = v32;
      outlined init with take of PgQuery_OidList(&v13[v15], v32, type metadata accessor for PgQuery_Node);
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
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      outlined destroy of URL?(v13, v20, v21);
      goto LABEL_16;
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
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cvarno) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cvarno) && (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName + 8) == *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v28 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorParam);

    v29 = *(v17 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorParam);

    return v28 == v29;
  }

LABEL_16:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CurrentOfExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CurrentOfExpr and conformance PgQuery_CurrentOfExpr, type metadata accessor for PgQuery_CurrentOfExpr, &protocol conformance descriptor for PgQuery_CurrentOfExpr);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CurrentOfExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CurrentOfExpr and conformance PgQuery_CurrentOfExpr, type metadata accessor for PgQuery_CurrentOfExpr, &protocol conformance descriptor for PgQuery_CurrentOfExpr);

  return MEMORY[0x28217E428](a1, Scan);
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
  result = closure #1 in PgQuery_NextValueExpr.traverse<A>(visitor:)(*(v3 + *(NextValueExpr + 20)), a1, a2, a3, &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__seqid, MEMORY[0x277D21860], &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_NextValueExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NextValueExpr and conformance PgQuery_NextValueExpr, type metadata accessor for PgQuery_NextValueExpr, &protocol conformance descriptor for PgQuery_NextValueExpr);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_NextValueExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NextValueExpr and conformance PgQuery_NextValueExpr, type metadata accessor for PgQuery_NextValueExpr, &protocol conformance descriptor for PgQuery_NextValueExpr);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_NextValueExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NextValueExpr and conformance PgQuery_NextValueExpr, type metadata accessor for PgQuery_NextValueExpr, &protocol conformance descriptor for PgQuery_NextValueExpr);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_CollateExpr._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  v25 = a3;
  v26 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(Node - 8);
  v13 = MEMORY[0x28223BE20](Node);
  v23 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  v24 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(v12 + 48);
  if (v17(v10, 1, Node) == 1)
  {
    outlined destroy of URL?(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v16, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v18 = v27;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
    if (v18)
    {
      return result;
    }

    v27 = 0;
  }

  v20 = v24;
  outlined init with copy of PgQuery_Alias?(v24 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v17(v8, 1, Node) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v21 = v27;
  }

  else
  {
    v22 = v23;
    outlined init with take of PgQuery_OidList(v8, v23, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v21 = v27;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
    if (v21)
    {
      return result;
    }

    v20 = v24;
  }

  if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infercollid) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v21))
  {
    result = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inferopclass);
    if (result)
    {
      return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_CollateExpr.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, void *a6)
{
  v56 = a6;
  v59 = a5;
  v63 = a4;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  v11 = MEMORY[0x28223BE20](Node);
  v57 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v60 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v20 = MEMORY[0x28223BE20](v19);
  v64 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v55 - v23;
  v25 = *a3;
  v62 = v22;
  v26 = *(v22 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v25, &v55 - v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v27 = a2 + v25;
  v28 = a2;
  outlined init with copy of PgQuery_Alias?(v27, &v24[v26], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v29 = *(v10 + 48);
  if (v29(v24, 1, Node) == 1)
  {
    v58 = Node;
    v30 = v29(&v24[v26], 1, Node);

    v31 = a1;
    if (v30 == 1)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v31 = a1;
  outlined init with copy of PgQuery_Alias?(v24, v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v29(&v24[v26], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
LABEL_6:
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v33 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_7:
    v34 = v24;
LABEL_18:
    outlined destroy of URL?(v34, v32, v33);
    goto LABEL_19;
  }

  v35 = v61;
  outlined init with take of PgQuery_OidList(&v24[v26], v61, type metadata accessor for PgQuery_Node);
  v58 = Node;
  v36 = *(Node + 20);
  v37 = *&v18[v36];
  v38 = *(v35 + v36);

  if (v37 != v38)
  {

    v39 = closure #1 in static PgQuery_Node.== infix(_:_:)(v37, v38);

    if (!v39)
    {
      outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v33 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v40 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v41 = *v63;
  v42 = *(v62 + 48);
  v43 = v64;
  outlined init with copy of PgQuery_Alias?(v31 + *v63, v64, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v28 + v41, v43 + v42, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v44 = v58;
  if (v29(v43, 1, v58) != 1)
  {
    v45 = v60;
    outlined init with copy of PgQuery_Alias?(v43, v60, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v29((v43 + v42), 1, v44) != 1)
    {
      v47 = v57;
      outlined init with take of PgQuery_OidList(v43 + v42, v57, type metadata accessor for PgQuery_Node);
      v48 = *(v44 + 20);
      v49 = *(v45 + v48);
      v50 = *(v47 + v48);
      if (v49 == v50 || (, , v51 = closure #1 in static PgQuery_Node.== infix(_:_:)(v49, v50), , , v51))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v52 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v43, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v52 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_24;
      }

      outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
      v32 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v33 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_17;
    }

    outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_Node);
LABEL_16:
    v32 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v33 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_17:
    v34 = v43;
    goto LABEL_18;
  }

  if (v29((v43 + v42), 1, v44) != 1)
  {
    goto LABEL_16;
  }

  outlined destroy of URL?(v43, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_24:
  if (*(v31 + *v59) == *(v28 + *v59))
  {
    v53 = v56;
    v54 = *(v31 + *v56);

    LODWORD(v53) = *(v28 + *v53);

    return v54 == v53;
  }

LABEL_19:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_InferenceElem(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferenceElem and conformance PgQuery_InferenceElem, type metadata accessor for PgQuery_InferenceElem, &protocol conformance descriptor for PgQuery_InferenceElem);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_InferenceElem(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferenceElem and conformance PgQuery_InferenceElem, type metadata accessor for PgQuery_InferenceElem, &protocol conformance descriptor for PgQuery_InferenceElem);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_InferenceElem(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferenceElem and conformance PgQuery_InferenceElem, type metadata accessor for PgQuery_InferenceElem, &protocol conformance descriptor for PgQuery_InferenceElem);

  return Message.hash(into:)();
}

uint64_t PgQuery_NamedArgExpr._StorageClass.__deallocating_deinit(void *a1, void *a2)
{
  outlined destroy of URL?(v2 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v2 + *a2, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v4 = *(*v2 + 48);
  v5 = *(*v2 + 52);

  return MEMORY[0x2821FE8D8](v2, v4, v5);
}

void type metadata completion function for PgQuery_TargetEntry._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  v29 = a3;
  v30 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(Node - 8);
  v13 = MEMORY[0x28223BE20](Node);
  v27 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v28 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v17 = *(v12 + 48);
  if (v17(v10, 1, Node) == 1)
  {
    outlined destroy of URL?(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v16, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v18 = v31;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v16, type metadata accessor for PgQuery_Node);
    if (v18)
    {
      return result;
    }

    v31 = 0;
  }

  v20 = v28;
  outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v17(v8, 1, Node) == 1)
  {
    outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v21 = v31;
  }

  else
  {
    v22 = v27;
    outlined init with take of PgQuery_OidList(v8, v27, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v21 = v31;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
    if (v21)
    {
      return result;
    }

    v20 = v28;
  }

  if (!*(v20 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resno) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v21))
  {
    v24 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname);
    v23 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname + 8);
    v25 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v25 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (!v25 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v21))
    {
      v26 = v28;
      if (!*(v28 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ressortgroupref) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v21))
      {
        if (!*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigtbl) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v21))
        {
          result = *(v26 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigcol);
          if (!result || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v21))
          {
            if (*(v26 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resjunk) == 1)
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
  v6 = MEMORY[0x28223BE20](Node);
  v50 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14);
  v56 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  v20 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v55 = v17;
  v21 = *(v17 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &v50 - v18, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v20, &v19[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = *(v5 + 48);
  if (v22(v19, 1, Node) == 1)
  {
    v51 = Node;
    v23 = v22(&v19[v21], 1, Node);

    if (v23 == 1)
    {
      v57 = a1;
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v57 = a1;
  v54 = a2;
  outlined init with copy of PgQuery_Alias?(v19, v13, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v22(&v19[v21], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
LABEL_6:
    outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
    goto LABEL_30;
  }

  v24 = v53;
  outlined init with take of PgQuery_OidList(&v19[v21], v53, type metadata accessor for PgQuery_Node);
  v51 = Node;
  v25 = *(Node + 20);
  v26 = *&v13[v25];
  v27 = *(v24 + v25);

  if (v26 != v27)
  {

    v28 = closure #1 in static PgQuery_Node.== infix(_:_:)(v26, v27);

    if (!v28)
    {
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
      outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_30;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  a2 = v54;
  if ((v29 & 1) == 0)
  {
LABEL_30:

    v48 = 0;
    return v48 & 1;
  }

LABEL_10:
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  v31 = v56;
  v32 = *(v55 + 48);
  outlined init with copy of PgQuery_Alias?(v57 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v56, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v30, v31 + v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = v51;
  if (v22(v31, 1, v51) == 1)
  {
    v34 = v22((v31 + v32), 1, v33);
    v35 = v57;
    if (v34 == 1)
    {
      outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v36 = v52;
  outlined init with copy of PgQuery_Alias?(v31, v52, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v37 = v22((v31 + v32), 1, v33);
  v35 = v57;
  if (v37 == 1)
  {
    outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
LABEL_15:
    v38 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v39 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_16:
    outlined destroy of URL?(v31, v38, v39);
    goto LABEL_30;
  }

  v40 = v50;
  outlined init with take of PgQuery_OidList(v31 + v32, v50, type metadata accessor for PgQuery_Node);
  v41 = *(v33 + 20);
  v42 = *(v36 + v41);
  v43 = *(v40 + v41);
  if (v42 != v43)
  {

    v44 = closure #1 in static PgQuery_Node.== infix(_:_:)(v42, v43);

    if (!v44)
    {
      outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
      v38 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v39 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v40, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v36, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v31, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v45 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (*(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resno) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resno) || (*(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname) || *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname + 8) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ressortgroupref) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ressortgroupref) || *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigtbl) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigtbl) || *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigcol) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigcol))
  {
    goto LABEL_30;
  }

  v46 = *(v35 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resjunk);

  v47 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resjunk);

  v48 = v46 ^ v47 ^ 1;
  return v48 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TargetEntry(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TargetEntry and conformance PgQuery_TargetEntry, type metadata accessor for PgQuery_TargetEntry, &protocol conformance descriptor for PgQuery_TargetEntry);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TargetEntry(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TargetEntry and conformance PgQuery_TargetEntry, type metadata accessor for PgQuery_TargetEntry, &protocol conformance descriptor for PgQuery_TargetEntry);

  return MEMORY[0x28217E428](a1, Scan);
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeTblRef(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblRef and conformance PgQuery_RangeTblRef, type metadata accessor for PgQuery_RangeTblRef, &protocol conformance descriptor for PgQuery_RangeTblRef);

  return MEMORY[0x28217E428](a1, Scan);
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
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_JoinExpr._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_JoinExpr._StorageClass(uint64_t a1)
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
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v51 - v7;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v54 = *(Alias - 8);
  MEMORY[0x28223BE20](Alias);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v59 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  Node = type metadata accessor for PgQuery_Node(0);
  v17 = *(Node - 8);
  v18 = MEMORY[0x28223BE20](Node);
  v53 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v57 = &v51 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = v12;
    v27 = *(v22 + 24);
    v61 = v25;
    v62 = v27;
    v28 = v22;
    lazy protocol witness table accessor for type PgQuery_JoinType and conformance PgQuery_JoinType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v63 = 0;
    v22 = v28;
    v12 = v26;
  }

  else
  {
    v63 = v4;
  }

  if (*(v22 + 25) == 1)
  {
    v30 = v12;
    v31 = v22;
    v32 = v63;
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v32)
    {
      return result;
    }

    v63 = 0;
    v22 = v31;
    v12 = v30;
  }

  v55 = v22;
  outlined init with copy of PgQuery_Alias?(v22 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = *(v17 + 48);
  v51 = v17 + 48;
  if (v33(v16, 1, Node) == 1)
  {
    outlined destroy of URL?(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v16, v24, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v34 = v63;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
    if (v34)
    {
      return result;
    }

    v63 = 0;
  }

  v35 = v59;
  outlined init with copy of PgQuery_Alias?(v55 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v59, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v36 = Node;
  if (v33(v35, 1, Node) == 1)
  {
    v37 = v33;
    outlined destroy of URL?(v35, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v38 = v57;
    outlined init with take of PgQuery_OidList(v35, v57, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v39 = v63;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v38, type metadata accessor for PgQuery_Node);
    if (v39)
    {
      return result;
    }

    v37 = v33;
    v63 = 0;
  }

  v40 = v55;
  v41 = v58;
  if (*(*(v55 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause) + 16))
  {
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    v42 = v63;
    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

    if (v42)
    {
      return result;
    }

    v63 = 0;
    v40 = v55;
  }

  outlined init with copy of PgQuery_Alias?(v40 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v43 = v37(v12, 1, v36);
  v44 = Alias;
  if (v43 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    v45 = v12;
    v46 = v53;
    outlined init with take of PgQuery_OidList(v45, v53, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v47 = v63;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_Node);
    if (v47)
    {
      return result;
    }

    v63 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v55 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v41, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  if ((*(v54 + 48))(v41, 1, v44) == 1)
  {
    outlined destroy of URL?(v41, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  }

  else
  {
    v48 = v41;
    v49 = v52;
    outlined init with take of PgQuery_OidList(v48, v52, type metadata accessor for PgQuery_Alias);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
    v50 = v63;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v49, type metadata accessor for PgQuery_Alias);
    if (v50)
    {
      return result;
    }

    v63 = 0;
  }

  result = *(v55 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtindex);
  if (result)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_JoinExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Alias = type metadata accessor for PgQuery_Alias(0);
  v103 = *(Alias - 8);
  v104 = Alias;
  MEMORY[0x28223BE20](Alias);
  v6 = v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v95 - v8;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd, &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR);
  MEMORY[0x28223BE20](v102);
  v11 = v95 - v10;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(Node - 8);
  v13 = MEMORY[0x28223BE20](Node);
  v101 = v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v106 = v95 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v95 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v105 = v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v108 = v95 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = v95 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v27 = MEMORY[0x28223BE20](v26);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v95 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v34 = v95 - v32;
  v35 = *(a1 + 16);
  v36 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v36 <= 3)
    {
      if (v36 > 1)
      {
        if (v36 == 2)
        {
          if (v35 != 2)
          {
            return 0;
          }
        }

        else if (v35 != 3)
        {
          return 0;
        }
      }

      else if (v36)
      {
        if (v35 != 1)
        {
          return 0;
        }
      }

      else if (v35)
      {
        return 0;
      }
    }

    else if (v36 <= 5)
    {
      if (v36 == 4)
      {
        if (v35 != 4)
        {
          return 0;
        }
      }

      else if (v35 != 5)
      {
        return 0;
      }
    }

    else if (v36 == 6)
    {
      if (v35 != 6)
      {
        return 0;
      }
    }

    else if (v36 == 7)
    {
      if (v35 != 7)
      {
        return 0;
      }
    }

    else if (v35 != 8)
    {
      return 0;
    }
  }

  else if (v35 != v36)
  {
    return 0;
  }

  if (*(a1 + 25) != *(a2 + 25))
  {
    return 0;
  }

  v98 = v11;
  v99 = v33;
  v96 = v6;
  v97 = v9;
  v107 = a2;
  v37 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  v100 = v31;
  v38 = *(v31 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg, v95 - v32, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v107 + v37, &v34[v38], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v39 = v12 + 48;
  v40 = *(v12 + 48);
  v41 = Node;
  if (v40(v34, 1, Node) == 1)
  {
    v42 = v40(&v34[v38], 1, v41);

    v43 = a1;
    if (v42 == 1)
    {
      outlined destroy of URL?(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  v44 = a1;
  outlined init with copy of PgQuery_Alias?(v34, v25, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v95[0] = v40;
  v95[1] = v39;
  if (v40(&v34[v38], 1, v41) == 1)
  {

    outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
LABEL_19:
    v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v46 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_20:
    v47 = v34;
LABEL_47:
    outlined destroy of URL?(v47, v45, v46);
    goto LABEL_48;
  }

  outlined init with take of PgQuery_OidList(&v34[v38], v18, type metadata accessor for PgQuery_Node);
  v48 = *(v41 + 20);
  v49 = *&v25[v48];
  v50 = *&v18[v48];
  v43 = v44;

  if (v49 != v50)
  {

    v51 = closure #1 in static PgQuery_Node.== infix(_:_:)(v49, v50);

    if (!v51)
    {
      outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v46 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_20;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v40 = v95[0];
  if ((v52 & 1) == 0)
  {
LABEL_48:

    return 0;
  }

LABEL_30:
  v53 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg;
  v54 = *(v100 + 48);
  outlined init with copy of PgQuery_Alias?(v43 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v55 = v107 + v53;
  v56 = v107;
  outlined init with copy of PgQuery_Alias?(v55, &v30[v54], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v57 = Node;
  if (v40(v30, 1, Node) == 1)
  {
    if (v40(&v30[v54], 1, v57) == 1)
    {
      outlined destroy of URL?(v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_53;
    }

    goto LABEL_45;
  }

  v58 = v108;
  outlined init with copy of PgQuery_Alias?(v30, v108, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v40(&v30[v54], 1, v57) == 1)
  {
    outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
LABEL_45:
    v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v46 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_46:
    v47 = v30;
    goto LABEL_47;
  }

  v60 = v40;
  v61 = v106;
  outlined init with take of PgQuery_OidList(&v30[v54], v106, type metadata accessor for PgQuery_Node);
  v62 = *(v57 + 20);
  v63 = *(v58 + v62);
  v64 = *(v61 + v62);
  if (v63 != v64)
  {

    v65 = closure #1 in static PgQuery_Node.== infix(_:_:)(v63, v64);

    if (!v65)
    {
      outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
      v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v46 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_46;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v66 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v40 = v60;
  if ((v66 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_53:
  v67 = *(v43 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);
  v68 = *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v67, v68);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_48;
  }

  v70 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals;
  v71 = *(v100 + 48);
  v72 = v40;
  v73 = v99;
  outlined init with copy of PgQuery_Alias?(v43 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, v99, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v56 + v70, v73 + v71, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v74 = Node;
  if (v72(v73, 1, Node) == 1)
  {
    if (v72(v73 + v71, 1, v74) == 1)
    {
      outlined destroy of URL?(v73, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_65;
    }

    goto LABEL_60;
  }

  v75 = v105;
  outlined init with copy of PgQuery_Alias?(v73, v105, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v72(v73 + v71, 1, v74) == 1)
  {
    outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_Node);
LABEL_60:
    v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v46 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v47 = v73;
    goto LABEL_47;
  }

  v76 = v101;
  outlined init with take of PgQuery_OidList(v73 + v71, v101, type metadata accessor for PgQuery_Node);
  v77 = *(v74 + 20);
  v78 = *(v75 + v77);
  v79 = *(v76 + v77);
  if (v78 != v79)
  {

    v80 = closure #1 in static PgQuery_Node.== infix(_:_:)(v78, v79);

    if (!v80)
    {
      outlined destroy of PgQuery_OidList(v76, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_Node);
      v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v46 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v47 = v99;
      goto LABEL_47;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v81 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v76, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v75, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v99, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v81 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_65:
  v82 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  v83 = *(v102 + 48);
  v84 = v98;
  outlined init with copy of PgQuery_Alias?(v43 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v98, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  outlined init with copy of PgQuery_Alias?(v56 + v82, v84 + v83, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v85 = v104;
  v86 = *(v103 + 48);
  if (v86(v84, 1, v104) != 1)
  {
    v89 = v97;
    outlined init with copy of PgQuery_Alias?(v84, v97, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    if (v86(v84 + v83, 1, v85) != 1)
    {
      v90 = v96;
      outlined init with take of PgQuery_OidList(v84 + v83, v96, type metadata accessor for PgQuery_Alias);
      v91 = v84;
      if (*v89 == *v90 && v89[1] == v90[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v97[2], v96[2]))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v92 = v96;
        v93 = v97;
        v94 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v92, type metadata accessor for PgQuery_Alias);
        outlined destroy of PgQuery_OidList(v93, type metadata accessor for PgQuery_Alias);
        outlined destroy of URL?(v91, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
        if (v94)
        {
          goto LABEL_68;
        }

        goto LABEL_48;
      }

      outlined destroy of PgQuery_OidList(v96, type metadata accessor for PgQuery_Alias);
      outlined destroy of PgQuery_OidList(v97, type metadata accessor for PgQuery_Alias);
      v45 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
      v46 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
      v47 = v84;
      goto LABEL_47;
    }

    outlined destroy of PgQuery_OidList(v89, type metadata accessor for PgQuery_Alias);
    goto LABEL_71;
  }

  if (v86(v84 + v83, 1, v85) != 1)
  {
LABEL_71:
    v45 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
    v46 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
    v47 = v84;
    goto LABEL_47;
  }

  outlined destroy of URL?(v84, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
LABEL_68:
  v87 = *(v43 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtindex);

  v88 = *(v56 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtindex);

  return v87 == v88;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_JoinExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_JoinExpr and conformance PgQuery_JoinExpr, type metadata accessor for PgQuery_JoinExpr, &protocol conformance descriptor for PgQuery_JoinExpr);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_JoinExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_JoinExpr and conformance PgQuery_JoinExpr, type metadata accessor for PgQuery_JoinExpr, &protocol conformance descriptor for PgQuery_JoinExpr);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_JoinExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_JoinExpr and conformance PgQuery_JoinExpr, type metadata accessor for PgQuery_JoinExpr, &protocol conformance descriptor for PgQuery_JoinExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_FromExpr._StorageClass.__deallocating_deinit()
{

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_FromExpr._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
    *(v9 + 16) = MEMORY[0x277D84F90];
    v10 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v9 + v10, 1, 1, Node);
    *(v9 + 16) = *(v8 + 16);
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals;

    outlined destroy of URL?(v9 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
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
  v14[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v14 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*(a1 + 16) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v10 + 48))(v8, 1, Node) == 1)
    {
      return outlined destroy of URL?(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v8, v12, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      return outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_FromExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = *(a1 + 16);
  v14 = *(a2 + 16);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v13, v14);

  if (NodeV_Tt1g5)
  {
    v16 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals;
    v17 = *(v10 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v16, &v12[v17], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v18 = *(v5 + 48);
    if (v18(v12, 1, Node) == 1)
    {

      if (v18(&v12[v17], 1, Node) == 1)
      {
        outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        return 1;
      }

      goto LABEL_8;
    }

    outlined init with copy of PgQuery_Alias?(v12, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v18(&v12[v17], 1, Node) == 1)
    {

      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
LABEL_8:
      v19 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v20 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_9:
      outlined destroy of URL?(v12, v19, v20);
      return 0;
    }

    v22 = v29;
    outlined init with take of PgQuery_OidList(&v12[v17], v29, type metadata accessor for PgQuery_Node);
    v23 = *(Node + 20);
    v24 = *&v9[v23];
    v25 = *(v22 + v23);
    if (v24 != v25)
    {

      v26 = closure #1 in static PgQuery_Node.== infix(_:_:)(v24, v25);

      if (!v26)
      {

        outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
        v19 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v20 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_9;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v27)
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

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_FromExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FromExpr and conformance PgQuery_FromExpr, type metadata accessor for PgQuery_FromExpr, &protocol conformance descriptor for PgQuery_FromExpr);

  return MEMORY[0x28217E428](a1, Scan);
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
  v3 = MEMORY[0x277D84F90];
  *(v1 + 32) = MEMORY[0x277D84F90];
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

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_OnConflictExpr._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x277D83D88]);
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
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v24 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  v12 = MEMORY[0x28223BE20](Node);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  if (!*(a1 + 16) || (v17 = *(a1 + 24), v25 = *(a1 + 16), v26 = v17, lazy protocol witness table accessor for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v23 = v14;
    if (!*(*(a1 + 32) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v19 = Node;
      v22[0] = *(v11 + 48);
      v22[1] = v11 + 48;
      if ((v22[0])(v10, 1, Node) == 1)
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

      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint))
      {
        result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        v19 = Node;
      }

      if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
      {
        v20 = v24;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere, v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v22[0])(v20, 1, v19) == 1)
        {
          outlined destroy of URL?(v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          v21 = v23;
          outlined init with take of PgQuery_OidList(v20, v23, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_Node);
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
  v5 = MEMORY[0x28223BE20](Node);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v67 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v67 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v20 = &v67 - v19;
  v21 = *(a1 + 16);
  v22 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v21 == v22)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      if (v21 != 2)
      {
        goto LABEL_41;
      }
    }

    else if (v21 != 3)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if (!v22)
    {
      if (!v21)
      {
        goto LABEL_7;
      }

LABEL_41:
      v65 = 0;
      return v65 & 1;
    }

    if (v21 != 1)
    {
      goto LABEL_41;
    }
  }

LABEL_7:
  v68 = v7;
  v69 = v13;
  v71 = v18;
  v23 = *(a1 + 32);
  v24 = *(a2 + 32);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v23, v24);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
LABEL_40:

    goto LABEL_41;
  }

  v26 = a1;
  v27 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere;
  v28 = *(v16 + 48);
  v70 = v26;
  outlined init with copy of PgQuery_Alias?(v26 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere, v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v27, &v20[v28], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v29 = *(v4 + 48);
  v30 = Node;
  if (v29(v20, 1, Node) == 1)
  {
    v31 = v29(&v20[v28], 1, v30);
    v32 = v70;
    if (v31 == 1)
    {
      outlined destroy of URL?(v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  outlined init with copy of PgQuery_Alias?(v20, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = v29(&v20[v28], 1, v30);
  v32 = v70;
  if (v33 == 1)
  {
    outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
LABEL_20:
    v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_21:
    v36 = v20;
LABEL_22:
    outlined destroy of URL?(v36, v34, v35);
    goto LABEL_40;
  }

  v67 = v29;
  outlined init with take of PgQuery_OidList(&v20[v28], v9, type metadata accessor for PgQuery_Node);
  v37 = *(v30 + 20);
  v38 = *&v15[v37];
  v39 = *&v9[v37];
  if (v38 != v39)
  {

    v40 = closure #1 in static PgQuery_Node.== infix(_:_:)(v38, v39);

    if (!v40)
    {
      outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      v34 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_21;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v9, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v20, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v29 = v67;
  if ((v41 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_26:
  if (*(v32 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint))
  {
    goto LABEL_40;
  }

  v42 = v29;
  v43 = *(v32 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet);
  v44 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet);

  v45 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v43, v44);

  if ((v45 & 1) == 0)
  {
    goto LABEL_40;
  }

  v46 = v32;
  v47 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere;
  v48 = *(v16 + 48);
  v49 = v71;
  outlined init with copy of PgQuery_Alias?(v46 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere, v71, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v47, v49 + v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v50 = Node;
  if (v42(v49, 1, Node) == 1)
  {
    v51 = v42(v49 + v48, 1, v50);
    v52 = v70;
    if (v51 == 1)
    {
      outlined destroy of URL?(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  v53 = v69;
  outlined init with copy of PgQuery_Alias?(v49, v69, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v54 = v42(v49 + v48, 1, v50);
  v52 = v70;
  if (v54 == 1)
  {
    outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
LABEL_34:
    v34 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v36 = v49;
    goto LABEL_22;
  }

  v55 = v49 + v48;
  v56 = v68;
  outlined init with take of PgQuery_OidList(v55, v68, type metadata accessor for PgQuery_Node);
  v57 = *(v50 + 20);
  v58 = *(v53 + v57);
  v59 = *(v56 + v57);
  if (v58 != v59)
  {

    v60 = closure #1 in static PgQuery_Node.== infix(_:_:)(v58, v59);

    if (!v60)
    {
      outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v69, type metadata accessor for PgQuery_Node);
      v34 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v36 = v71;
      goto LABEL_22;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v61 = v69;
  v62 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_Node);
  outlined destroy of URL?(v71, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v62 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_38:
  if (*(v52 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelIndex) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelIndex))
  {
    goto LABEL_40;
  }

  v63 = *(v52 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist);
  v64 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist);

  v65 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v63, v64);

  return v65 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_OnConflictExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr, &protocol conformance descriptor for PgQuery_OnConflictExpr);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_OnConflictExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr, &protocol conformance descriptor for PgQuery_OnConflictExpr);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_OnConflictExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr, &protocol conformance descriptor for PgQuery_OnConflictExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_IntoClause._StorageClass.__deallocating_deinit()
{
  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__viewQuery, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void type metadata completion function for PgQuery_IntoClause._StorageClass(uint64_t a1)
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
  v32 = a3;
  v35 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v29 = &v27 - v6;
  Node = type metadata accessor for PgQuery_Node(0);
  v28 = *(Node - 8);
  MEMORY[0x28223BE20](Node);
  v27 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v12 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel, v10, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v12 + 48))(v10, 1, RangeVar) == 1)
  {
    outlined destroy of URL?(v10, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v15 = v31;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v14, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v16 = v31;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v15 = v16;
    result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_RangeVar);
    if (v16)
    {
      return result;
    }
  }

  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colNames) + 16))
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

  v19 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) & 0xFFFFFFFFFFFFLL;
  }

  if (!v20 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v15))
  {
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v15))
    {
      if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit) || (v21 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit + 8), v33 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit), v34 = v21, lazy protocol witness table accessor for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v15))
      {
        v22 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName + 8);
        v23 = HIBYTE(v22) & 0xF;
        if ((v22 & 0x2000000000000000) == 0)
        {
          v23 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName) & 0xFFFFFFFFFFFFLL;
        }

        if (!v23 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v15))
        {
          v24 = v29;
          outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__viewQuery, v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((*(v28 + 48))(v24, 1, v18) == 1)
          {
            result = outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          }

          else
          {
            v25 = v24;
            v26 = v27;
            outlined init with take of PgQuery_OidList(v25, v27, type metadata accessor for PgQuery_Node);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
            result = outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
            if (v15)
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
  v69 = a2;
  Node = type metadata accessor for PgQuery_Node(0);
  v65 = *(Node - 8);
  v66 = Node;
  MEMORY[0x28223BE20](Node);
  v62 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v62 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x28223BE20](v64);
  v67 = &v62 - v7;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v9 = *(RangeVar - 8);
  MEMORY[0x28223BE20](RangeVar);
  v68 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v62 - v16;
  v18 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel;
  v19 = *(v15 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel, &v62 - v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v20 = v69 + v18;
  v21 = v69;
  outlined init with copy of PgQuery_Alias?(v20, &v17[v19], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v22 = *(v9 + 48);
  if (v22(v17, 1, RangeVar) == 1)
  {
    v23 = v22(&v17[v19], 1, RangeVar);

    v24 = a1;
    if (v23 == 1)
    {
      outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_9;
    }

LABEL_6:
    v25 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v26 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v27 = v17;
LABEL_7:
    outlined destroy of URL?(v27, v25, v26);
    goto LABEL_44;
  }

  outlined init with copy of PgQuery_Alias?(v17, v13, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v22(&v17[v19], 1, RangeVar) == 1)
  {

    outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_RangeVar);
    goto LABEL_6;
  }

  v28 = v68;
  outlined init with take of PgQuery_OidList(&v17[v19], v68, type metadata accessor for PgQuery_RangeVar);
  v24 = a1;

  v29 = specialized static PgQuery_RangeVar.== infix(_:_:)(v13, v28);
  outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of URL?(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v29 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_9:
  v30 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colNames);
  v31 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colNames);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v30, v31);

  if ((NodeV_Tt1g5 & 1) == 0 || (*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) != *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) || *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8) != *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  v33 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
  v34 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

  v35 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v33, v34);

  if ((v35 & 1) == 0)
  {
    goto LABEL_44;
  }

  v36 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit);
  v37 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit);
  if (*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit + 8) == 1)
  {
    if (v37 <= 1)
    {
      if (v37)
      {
        if (v36 != 1)
        {
          goto LABEL_44;
        }
      }

      else if (v36)
      {
        goto LABEL_44;
      }
    }

    else if (v37 == 2)
    {
      if (v36 != 2)
      {
        goto LABEL_44;
      }
    }

    else if (v37 == 3)
    {
      if (v36 != 3)
      {
        goto LABEL_44;
      }
    }

    else if (v36 != 4)
    {
      goto LABEL_44;
    }
  }

  else if (v36 != v37)
  {
    goto LABEL_44;
  }

  if ((*(v24 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName) != *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName) || *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName + 8) != *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_44;
  }

  v38 = v21;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__viewQuery;
  v40 = *(v64 + 48);
  v41 = v67;
  outlined init with copy of PgQuery_Alias?(v24 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__viewQuery, v67, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v42 = v38 + v39;
  v43 = v38;
  v44 = v41;
  outlined init with copy of PgQuery_Alias?(v42, v41 + v40, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v45 = *(v65 + 48);
  v46 = v41;
  v47 = v66;
  if (v45(v46, 1, v66) != 1)
  {
    v48 = v63;
    outlined init with copy of PgQuery_Alias?(v44, v63, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v45(v44 + v40, 1, v47) != 1)
    {
      v49 = v44 + v40;
      v50 = v47;
      v51 = v62;
      outlined init with take of PgQuery_OidList(v49, v62, type metadata accessor for PgQuery_Node);
      v52 = *(v50 + 20);
      v53 = *(v48 + v52);
      v54 = *(v51 + v52);
      if (v53 == v54 || (, , v55 = closure #1 in static PgQuery_Node.== infix(_:_:)(v53, v54), , , v55))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v56 = v63;
        v57 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
        outlined destroy of URL?(v44, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v57)
        {
          goto LABEL_43;
        }

LABEL_44:

        v60 = 0;
        return v60 & 1;
      }

      outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_Node);
      v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v26 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_33;
    }

    outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_Node);
LABEL_32:
    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v26 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_33:
    v27 = v44;
    goto LABEL_7;
  }

  if (v45(v44 + v40, 1, v47) != 1)
  {
    goto LABEL_32;
  }

  outlined destroy of URL?(v44, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_43:
  v58 = *(v24 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipData);

  v59 = *(v43 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipData);

  v60 = v58 ^ v59 ^ 1;
  return v60 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_IntoClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause, &protocol conformance descriptor for PgQuery_IntoClause);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_IntoClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause, &protocol conformance descriptor for PgQuery_IntoClause);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_IntoClause(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause, &protocol conformance descriptor for PgQuery_IntoClause);

  return Message.hash(into:)();
}
uint64_t _s11ShaderGraph29ShallowDepthFirstNodeIteratorV7ContextVMi_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for Graph.NodeEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for Graph.Node(255, v4, v5, a4);
  result = type metadata accessor for Optional();
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for Graph.Adjacent(319, v4, v5, v7);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Graph.NodeEntry(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v10 + ((v9 + 8) & ~v9);
  if (v8 < a2)
  {
    v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
    v13 = a2 - v8;
    v14 = v12 & 0xFFFFFFF8;
    if ((v12 & 0xFFFFFFF8) != 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = v13 + 1;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *(a1 + v12);
        if (v18)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v18 = *(a1 + v12);
        if (v18)
        {
          goto LABEL_25;
        }
      }
    }

    else if (v17)
    {
      v18 = *(a1 + v12);
      if (v18)
      {
LABEL_25:
        v19 = v18 - 1;
        if (v14)
        {
          v19 = 0;
          LODWORD(v14) = *a1;
        }

        return v8 + (v14 | v19) + 1;
      }
    }
  }

  if (v7 >= 0x7FFFFFFF)
  {
    if (v6)
    {
      v21 = (*(v5 + 48))((a1 + v9 + 8) & ~v9);
      v22 = v21 != 0;
      result = (v21 - 1);
      if (result != 0 && v22)
      {
        return result;
      }
    }

    return 0;
  }

  v23 = *(((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v23 >= 0xFFFFFFFF)
  {
    LODWORD(v23) = -1;
  }

  return (v23 + 1);
}

void storeEnumTagSinglePayload for Graph.NodeEntry(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = ((v11 + 8) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  if (v8)
  {
    v13 = ((v11 + 8) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v10 < a3)
  {
    v15 = a3 - v10;
    if (((v13 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 > v10)
  {
    if (((v13 + 7) & 0xFFFFFFF8) == 0xFFFFFFD0)
    {
      v18 = a2 - v10;
    }

    else
    {
      v18 = 1;
    }

    if (((v13 + 7) & 0xFFFFFFF8) != 0xFFFFFFD0)
    {
      v19 = ~v10 + a2;
      bzero(a1, ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 48);
      *a1 = v19;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *&a1[v14] = v18;
      }

      else
      {
        *&a1[v14] = v18;
      }
    }

    else if (v6)
    {
      a1[v14] = v18;
    }

    return;
  }

  if (v6 <= 1)
  {
    if (v6)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v6 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_38;
  }

  *&a1[v14] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v9 < 0x7FFFFFFF)
  {
    v23 = &a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v23 + 40) = 0;
      *(v23 + 24) = 0u;
      *(v23 + 8) = 0u;
      *v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v23 + 8) = a2 - 1;
    }

    return;
  }

  if (v9 >= a2)
  {
    if (a2 >= v8)
    {
      if (v12 <= 3)
      {
        v27 = ~(-1 << (8 * v12));
      }

      else
      {
        v27 = -1;
      }

      if (v12)
      {
        v21 = v27 & (a2 - v8);
        if (v12 <= 3)
        {
          v22 = v12;
        }

        else
        {
          v22 = 4;
        }

        bzero(a1, v12);
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            goto LABEL_50;
          }

          goto LABEL_70;
        }

LABEL_71:
        if (v22 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      v24 = *(v7 + 56);
      v25 = &a1[v11 + 8] & ~v11;
      v26 = a2 + 1;

      v24(v25, v26);
    }
  }

  else
  {
    if (v13 <= 3)
    {
      v20 = ~(-1 << (8 * v13));
    }

    else
    {
      v20 = -1;
    }

    if (v13)
    {
      v21 = v20 & (~v9 + a2);
      if (v13 <= 3)
      {
        v22 = v13;
      }

      else
      {
        v22 = 4;
      }

      bzero(a1, v13);
      if (v22 <= 2)
      {
        if (v22 == 1)
        {
LABEL_50:
          *a1 = v21;
          return;
        }

LABEL_70:
        *a1 = v21;
        return;
      }

      goto LABEL_71;
    }
  }
}

uint64_t *partial apply for closure #1 in Graph.DepthFirstEdgeIterator.inputs(opposite:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  *a2 = **(v2 + 32);
  a2[1] = v3;
  return result;
}

uint64_t OrderedDictionary.values.getter(uint64_t a1)
{

  return a1;
}

uint64_t OrderedDictionary.isEmpty.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return Collection.isEmpty.getter() & 1;
}

void OrderedDictionary.subscript.setter(uint64_t a1, char *a2, uint64_t a3)
{
  v56 = a1;
  v6 = *(a3 + 16);
  v53 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v47 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v51 = *(v9 - 8);
  MEMORY[0x28223BE20](v10);
  v48 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v49 = &v47 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd, &_sSiSgMR);
  v14 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = TupleTypeMetadata2 - 8;
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = &v47 - v17;
  v19 = *v3;
  v20 = v3[1];
  v50 = v3;
  v21 = *(a3 + 32);
  v54 = a2;
  v55 = v6;
  v22 = v6;
  v23 = v51;
  v24 = OrderedSet._find(_:)(a2, v19, v20, v22, v21);
  v26 = v25;
  v28 = v27;
  v29 = *(v16 + 56);
  v30 = *(v14 - 8);
  v31 = *(v30 + 16);
  v52 = v14;
  v31(&v18[v29], v56, v14);
  v32 = (*(v23 + 48))(&v18[v29], 1, v9);
  if (v26)
  {
    if (v32 == 1)
    {
      (*(v53 + 8))(v54, v55);
      (*(v30 + 8))(v56, v52);
    }

    else
    {
      v39 = v49;
      (*(v23 + 32))(v49, &v18[v29], v9);
      v40 = v55;
      v42 = type metadata accessor for OrderedSet(0, v55, v21, v41);
      v43 = v54;
      OrderedSet._appendNew(_:in:)(v54, v28, v42);
      (*(v23 + 16))(v48, v39, v9);
      type metadata accessor for ContiguousArray();
      ContiguousArray.append(_:)();
      (*(v53 + 8))(v43, v40);
      (*(v30 + 8))(v56, v52);
      (*(v23 + 8))(v39, v9);
    }
  }

  else if (v32 == 1)
  {
    v34 = v55;
    v35 = type metadata accessor for OrderedSet(0, v55, v21, v33);
    v36 = v47;
    OrderedSet._removeExistingMember(at:in:)(v24, v28, v35);
    v37 = *(v53 + 8);
    v37(v36, v34);
    type metadata accessor for ContiguousArray();
    v38 = v49;
    ContiguousArray.remove(at:)();
    v37(v54, v34);
    (*(v30 + 8))(v56, v52);
    (*(v23 + 8))(v38, v9);
  }

  else
  {
    v44 = v49;
    (*(v23 + 32))(v49, &v18[v29], v9);
    type metadata accessor for ContiguousArray();
    v45 = v50;
    ContiguousArray._makeMutableAndUnique()();
    (*(v53 + 8))(v54, v55);
    (*(v30 + 8))(v56, v52);
    v46 = v45[2];
    ContiguousArray._checkSubscript_mutating(_:)(v24);
    (*(v23 + 40))(v46 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v24, v44, v9);
    destructiveProjectEnumData for NodePersonality.ShaderType();
  }
}

uint64_t OrderedDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  OrderedSet._find(_:)(a1, a2, a3, a5, a7);
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    ContiguousArray.subscript.getter();
    v11 = 0;
  }

  v12 = *(*(a6 - 8) + 56);

  return v12(a8, v11, 1, a6);
}

uint64_t OrderedDictionary.keys.getter(uint64_t a1)
{

  return a1;
}

void (*OrderedDictionary.subscript.modify(uint64_t **a1, uint64_t a2, void *a3))(uint64_t *a1)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x70uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[2] = a2;
  v8[3] = v3;
  v10 = a3[3];
  v8[4] = v10;
  v11 = type metadata accessor for Optional();
  v9[5] = v11;
  v12 = *(v11 - 8);
  v28 = v12;
  v29 = v11;
  v9[6] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v14 = swift_coroFrameAlloc();
    v9[7] = v14;
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v12 + 64));
    v9[7] = v14;
    v15 = malloc(v13);
  }

  v16 = v15;
  v9[8] = v15;
  v17 = *v3;
  v18 = v3[1];
  v19 = a3[2];
  v9[9] = v19;
  v20 = a3[4];
  v9[10] = v20;
  v21 = OrderedSet._find(_:)(a2, v17, v18, v19, v20);
  v23 = v22;
  v25 = v24;
  v9[11] = v21;
  *(v9 + 104) = v22;
  v26 = *(*(v10 - 8) + 56);
  v26(v16, 1, 1, v10);
  if (v23)
  {
    goto LABEL_10;
  }

  *v9 = v21;
  result = ContiguousArray.count.getter();
  if (!__OFSUB__(result, 1))
  {
    v9[1] = result - 1;
    type metadata accessor for ContiguousArray();
    swift_getWitnessTable();
    MutableCollection.swapAt(_:_:)();
    swift_getWitnessTable();
    swift_getWitnessTable();
    RangeReplaceableCollection<>.removeLast()();
    v26(v14, 0, 1, v10);
    (*(v28 + 40))(v16, v14, v29);
LABEL_10:
    v9[12] = v25;
    return OrderedDictionary.subscript.modify;
  }

  __break(1u);
  return result;
}

void OrderedDictionary.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 48);
  $defer #1 <A, B>() in OrderedDictionary.subscript.modify(*(*a1 + 88), *(v1 + 104) & 1, *(v1 + 64), *(v1 + 24), *(v1 + 96), *(v1 + 16), *(v1 + 72), *(v1 + 32), *(v1 + 80));
  (*(v5 + 8))(v2, v4);
  free(v2);
  free(v3);

  free(v1);
}

void OrderedDictionary.updateValue<A>(forKey:default:with:)(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(unint64_t), uint64_t a5, uint64_t a6)
{
  v8 = v7;
  v10 = *(*(a6 + 24) - 8);
  MEMORY[0x28223BE20](a1);
  v12 = *(v11 + 16);
  v13 = *(v11 + 32);
  v15 = OrderedSet._find(_:)(v14, *v8, v8[1], v12, v13);
  if (v18)
  {
    v19 = v16;
    v20 = type metadata accessor for OrderedSet(0, v12, v13, v17);
    OrderedSet._appendNew(_:in:)(a1, v19, v20);
    a2();
    type metadata accessor for ContiguousArray();
    ContiguousArray.append(_:)();
    v21 = *(v8[2] + 16) - 1;
    ContiguousArray._makeMutableAndUnique()();
    v22 = v8[2];
    ContiguousArray._checkSubscript_mutating(_:)(v21);
    v23 = v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v21;
  }

  else
  {
    v24 = v15;
    type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v25 = v8[2];
    ContiguousArray._checkSubscript_mutating(_:)(v24);
    v23 = v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24;
  }

  a4(v23);
  destructiveProjectEnumData for NodePersonality.ShaderType();
}

void (*OrderedDictionary.subscript.modify(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5))(uint64_t **a1)
{
  v6 = v5;
  v10 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x40uLL);
  }

  v12 = v11;
  *a1 = v11;
  *v11 = v6;
  v13 = a5[3];
  v11[1] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v11[2] = v14;
  v16 = *(v14 + 64);
  if (v10)
  {
    v11[3] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v11[3] = malloc(*(v14 + 64));
    v17 = malloc(v16);
  }

  v12[4] = v17;
  v19 = a5[2];
  v12[5] = v19;
  v20 = a5[4];
  v12[6] = v20;
  v21 = type metadata accessor for OrderedSet(0, v19, v20, v18);
  v22 = OrderedSet._append(_:)(a2, v21);
  v24 = v23;
  if (v22)
  {
    a3();
    type metadata accessor for ContiguousArray();
    ContiguousArray.append(_:)();
  }

  v12[7] = v24;
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v25 = *(v6 + 16);
  v26 = *(v25 + 16);
  v30[0] = v25 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v27 = v30[0];
  v30[1] = v26;
  closure #1 in OrderedDictionary.subscript.modify(v30, v24, v19, v13);
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v30, v27, v26, v6 + 16, v13);
  return OrderedDictionary.subscript.modify;
}

void OrderedDictionary.subscript.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[4];
  v4 = (*a1)[2];
  v3 = (*a1)[3];
  v5 = (*a1)[1];
  $defer #1 <A, B>() in OrderedDictionary.subscript.modify(**a1, (*a1)[7], v3, (*a1)[5], v5, (*a1)[6]);
  (*(v4 + 8))(v3, v5);
  free(v2);
  free(v3);

  free(v1);
}

uint64_t OrderedDictionary.subscript.getter(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = OrderedSet._find(_:)(a1, a4, a5, a7, a9);
  if (v11)
  {
    return a2(v10);
  }

  return ContiguousArray.subscript.getter();
}

uint64_t OrderedDictionary._keys.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t OrderedDictionary._values.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t key path setter for OrderedDictionary.values : <A, B>OrderedDictionary<A, B>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];

  swift_getTupleTypeMetadata2();
  v11 = static Array._allocateUninitialized(_:)();
  v12 = specialized OrderedDictionary.init(dictionaryLiteral:)(v11, v5, v6, v7);
  v14 = v13;
  v16 = v15;

  *a2 = v12;
  a2[1] = v14;
  a2[2] = v16;
  v18[0] = v8;
  v18[1] = v9;
  v18[2] = v10;
  $defer #1 <A, B>() in OrderedDictionary.elements.modify(a2, v18);
}

void (*OrderedDictionary.values.modify(uint64_t *a1, void *a2))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 24) = v2;
  v7 = *(v2 + 8);
  *v5 = *v2;
  *(v5 + 8) = v7;
  v8 = a2[2];
  *(v5 + 32) = v8;
  v9 = a2[3];
  *(v5 + 40) = v9;
  swift_getTupleTypeMetadata2();
  v10 = static Array._allocateUninitialized(_:)();
  v11 = a2[4];
  *(v6 + 48) = v11;
  v12 = specialized OrderedDictionary.init(dictionaryLiteral:)(v10, v8, v9, v11);
  v14 = v13;
  v16 = v15;

  *v2 = v12;
  *(v2 + 8) = v14;
  *(v2 + 16) = v16;
  return OrderedDictionary.values.modify;
}

void OrderedDictionary.values.modify(uint64_t **a1)
{
  v1 = *a1;
  $defer #1 <A, B>() in OrderedDictionary.elements.modify((*a1)[3], *a1);

  free(v1);
}

uint64_t OrderedDictionary.values.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v7 = a4[2];
  v8 = a4[3];
  swift_getTupleTypeMetadata2();
  v9 = static Array._allocateUninitialized(_:)();
  v10 = specialized OrderedDictionary.init(dictionaryLiteral:)(v9, v7, v8, a4[4]);
  v12 = v11;
  v14 = v13;

  *v5 = v10;
  v5[1] = v12;
  v5[2] = v14;
  v19[0] = a1;
  v19[1] = a2;
  v19[2] = a3;
  $defer #1 <A, B>() in OrderedDictionary.elements.modify(v5, v19);
}

uint64_t $defer #1 <A, B>() in OrderedDictionary.subscript.modify(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a5;
  v45 = a7;
  v46 = a1;
  v47 = a4;
  v12 = *(a7 - 8);
  v41 = a6;
  v42 = v12;
  v43 = a9;
  MEMORY[0x28223BE20](a1);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd, &_sSiSgMR);
  v23 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v27 = &v40 - v26;
  v29 = *(v28 + 56);
  (*(*(v23 - 8) + 16))(&v40 + v29 - v26, a3, v23, v25);
  result = (*(v16 + 48))(&v27[v29], 1, a8);
  if (a2)
  {
    if (result == 1)
    {
      return result;
    }

    (*(v16 + 32))(v22, &v27[v29], a8);
    v32 = type metadata accessor for OrderedSet(0, v45, v43, v31);
    OrderedSet._appendNew(_:in:)(v41, v44, v32);
    (*(v16 + 16))(v19, v22, a8);
    type metadata accessor for ContiguousArray();
    ContiguousArray.append(_:)();
    return (*(v16 + 8))(v22, a8);
  }

  if (result != 1)
  {
    (*(v16 + 32))(v22, &v27[v29], a8);
    (*(v16 + 16))(v19, v22, a8);
    type metadata accessor for ContiguousArray();
    ContiguousArray.append(_:)();
    v49 = v46;

    v39 = ContiguousArray.count.getter();

    if (__OFSUB__(v39, 1))
    {
      __break(1u);
      return result;
    }

    v48 = v39 - 1;
    swift_getWitnessTable();
    MutableCollection.swapAt(_:_:)();
    return (*(v16 + 8))(v22, a8);
  }

  v33 = ContiguousArray.count.getter();

  v35 = v33 <= v46;
  v36 = v46;
  if (!v35)
  {
    type metadata accessor for ContiguousArray();
    ContiguousArray.remove(at:)();
    (*(v16 + 16))(v19, v22, a8);
    ContiguousArray.append(_:)();
    (*(v16 + 8))(v22, a8);
  }

  v37 = v45;
  v38 = type metadata accessor for OrderedSet(0, v45, v43, v34);
  OrderedSet._removeExistingMember(at:in:)(v36, v44, v38);
  return (*(v42 + 8))(v14, v37);
}

void key path setter for OrderedDictionary.subscript(_:) : <A, B>OrderedDictionary<A, B>AB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a3, v6, v14);
  (*(v10 + 16))(v12, a1, v9);
  v18 = type metadata accessor for OrderedDictionary(0, v6, v7, v8);
  OrderedDictionary.subscript.setter(v12, v16, v18);
}

uint64_t closure #1 in OrderedDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (result)
  {
    return UnsafeMutablePointer.move()();
  }

  __break(1u);
  return result;
}

void $defer #1 <A, B>() in OrderedDictionary.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v11 = *(a1 + 16);
  v12 = *(v11 + 16);
  v14[0] = v11 + ((*(*(a5 - 8) + 80) + 32) & ~*(*(a5 - 8) + 80));
  v13 = v14[0];
  v14[1] = v12;
  closure #1 in $defer #1 <A, B>() in OrderedDictionary.subscript.modify(v14, a2, a3, a4, a5);
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v14, v13, v12, a1 + 16, a5);
}

uint64_t OrderedDictionary.subscript.setter(char *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v28 = a3;
  v30 = a1;
  v8 = *(a5 + 24);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = *(v13 + 16);
  v15 = *(v13 + 32);
  v17 = type metadata accessor for OrderedSet(0, v14, v15, v16);
  v29 = a2;
  v18 = OrderedSet._append(_:)(a2, v17);
  v20 = v19;
  if (v18)
  {
    v28(v18);
    type metadata accessor for ContiguousArray();
    ContiguousArray.append(_:)();
  }

  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v21 = *(v6 + 16);
  v22 = *(v21 + 16);
  v31[0] = v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v23 = v31[0];
  v31[1] = v22;
  v24 = v20;
  closure #1 in OrderedDictionary.subscript.modify(v31, v20, v14, v8);
  _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v31, v23, v22, v6 + 16, v8);
  v25 = *(v9 + 8);
  v25(v11, v8);
  v26 = v30;
  (*(v9 + 16))(v11, v30, v8);
  $defer #1 <A, B>() in OrderedDictionary.subscript.modify(v6, v24, v11, v14, v8, v15);
  (*(*(v14 - 8) + 8))(v29, v14);
  v25(v26, v8);
  return (v25)(v11, v8);
}

uint64_t OrderedDictionary.updateValue(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 24);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v11 + 32);
  v14 = OrderedSet._find(_:)(a2, *v4, v4[1], v12, v13);
  if (v17)
  {
    v18 = v15;
    v19 = type metadata accessor for OrderedSet(0, v12, v13, v16);
    OrderedSet._appendNew(_:in:)(a2, v18, v19);
    (*(v25 + 16))(v10, a1, v8);
    type metadata accessor for ContiguousArray();
    ContiguousArray.append(_:)();
    return (*(v25 + 56))(a4, 1, 1, v8);
  }

  else
  {
    v21 = v14;
    ContiguousArray.subscript.getter();
    type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v22 = v4[2];
    ContiguousArray._checkSubscript_mutating(_:)(v21);
    (*(v25 + 24))(v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, a1, v8);
    destructiveProjectEnumData for NodePersonality.ShaderType();
    v23 = *(v25 + 56);

    return v23(a4, 0, 1, v8);
  }
}

Swift::Int OrderedDictionary.updateValue(_:forKey:insertingAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 24);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OrderedSet(0, *(v14 + 16), *(v14 + 32), v15);
  v17 = OrderedSet.insert(_:at:)(a3, a4, v16);
  v19 = v18;
  if (v17)
  {
    (*(v11 + 16))(v13, a2, v10);
    type metadata accessor for ContiguousArray();
    ContiguousArray.insert(_:at:)();
    (*(v11 + 56))(a1, 1, 1, v10);
  }

  else
  {
    ContiguousArray.subscript.getter();
    type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v20 = *(v5 + 16);
    ContiguousArray._checkSubscript_mutating(_:)(v19);
    (*(v11 + 24))(v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19, a2, v10);
    destructiveProjectEnumData for NodePersonality.ShaderType();
    (*(v11 + 56))(a1, 0, 1, v10);
  }

  return v19;
}

void OrderedDictionary.updateValue<A>(forKey:insertingDefault:at:with:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, Swift::Int a4, void (*a5)(unint64_t), uint64_t a6, uint64_t a7)
{
  v9 = v8;
  v29 = *(*(a7 + 24) - 8);
  MEMORY[0x28223BE20](a1);
  v13 = *(v12 + 16);
  v14 = *(v12 + 32);
  v16 = OrderedSet._find(_:)(v15, *v9, v9[1], v13, v14);
  if (v19)
  {
    v20 = v17;
    v21 = type metadata accessor for OrderedSet(0, v13, v14, v18);
    OrderedSet._insertNew(_:at:in:)(a1, a4, v20, v21);
    a2(v22, v23);
    type metadata accessor for ContiguousArray();
    ContiguousArray.insert(_:at:)();
    ContiguousArray._makeMutableAndUnique()();
    v24 = v9[2];
    ContiguousArray._checkSubscript_mutating(_:)(a4);
    v25 = v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * a4;
  }

  else
  {
    v26 = v16;
    type metadata accessor for ContiguousArray();
    ContiguousArray._makeMutableAndUnique()();
    v27 = v9[2];
    ContiguousArray._checkSubscript_mutating(_:)(v26);
    v25 = v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26;
  }

  a5(v25);
  destructiveProjectEnumData for NodePersonality.ShaderType();
}

uint64_t OrderedDictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[4];
  v12 = OrderedSet._find(_:)(v11, *v3, v3[1], v6, v10);
  if (v15)
  {
    v16 = *(*(a2[3] - 8) + 56);

    return v16(a3, 1, 1);
  }

  else
  {
    v18 = v13;
    v19 = v12;
    v20 = type metadata accessor for OrderedSet(0, v6, v10, v14);
    OrderedSet._removeExistingMember(at:in:)(v19, v18, v20);
    (*(v7 + 8))(v9, v6);
    v21 = a2[3];
    type metadata accessor for ContiguousArray();
    ContiguousArray.remove(at:)();
    return (*(*(v21 - 8) + 56))(a3, 0, 1, v21);
  }
}

uint64_t OrderedDictionary.merge<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return OrderedDictionary.merge<A>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5, a6, specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:));
}

{
  return OrderedDictionary.merge<A>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5, a6, specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:));
}

uint64_t closure #1 in OrderedDictionary.merge<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v13(v10);
  if (!v6)
  {
    (*(v9 + 8))(a1, a6);
    return (*(v9 + 32))(a1, v12, a6);
  }

  return result;
}

uint64_t closure #1 in OrderedDictionary.merge<A>(_:uniquingKeysWith:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  v19 = *(swift_getTupleTypeMetadata2() + 48);
  v15 = *(v9 + 16);
  v15(v14, a1, TupleTypeMetadata2);
  v20 = *(TupleTypeMetadata2 + 48);
  v16 = *(a2 - 8);
  (*(v16 + 32))(a4, v14, a2);
  v15(v11, a1, TupleTypeMetadata2);
  v17 = *(a3 - 8);
  (*(v17 + 32))(a4 + v19, &v11[*(TupleTypeMetadata2 + 48)], a3);
  (*(v16 + 8))(v11, a2);
  return (*(v17 + 8))(&v14[v20], a3);
}

uint64_t OrderedDictionary.merging<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  return OrderedDictionary.merging<A>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:));
}

{
  return OrderedDictionary.merging<A>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:));
}

uint64_t OrderedDictionary.merging<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = type metadata accessor for OrderedDictionary(0, a7, a8, a10);

  a12(a1, a2, a3, v14, a9, a11);
  if (v18)
  {

    (*(*(a9 - 8) + 8))(a1, a9);
  }

  else
  {
    (*(*(a9 - 8) + 8))(a1, a9);

    return a4;
  }
}

uint64_t OrderedDictionary.filter(_:)(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v53 = a5;
  v64 = a1;
  v65 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v57 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v54 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v66 = v52 - v16;
  MEMORY[0x28223BE20](v17);
  v68 = v52 - v18;
  v19 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v52 - v20;
  swift_getTupleTypeMetadata2();
  v22 = static Array._allocateUninitialized(_:)();
  v23 = specialized OrderedDictionary.init(dictionaryLiteral:)(v22, a6, a7, a8);
  v67 = v24;
  v63 = v25;

  v73 = 0;
  v74 = v23;
  v26 = TupleTypeMetadata2;
  v75 = v67;
  v76 = v63;
  v70 = a3;
  v71 = a4;
  v72 = v53;
  v55 = a8;
  v27 = a8;
  v28 = v21;
  v29 = type metadata accessor for OrderedDictionary.Iterator(0, a6, a7, v27);
  v52[1] = a3;
  v30 = v57;

  v52[0] = a4;

  v63 = v29;
  OrderedDictionary.Iterator.next()(v29, v21);
  v61 = v30[6];
  v62 = v30 + 6;
  if ((v61)(v21, 1, TupleTypeMetadata2) == 1)
  {
LABEL_2:

    return v74;
  }

  else
  {
    v32 = *(a6 - 8);
    v33 = *(v32 + 32);
    v59 = v32 + 32;
    v60 = v33;
    v67 = (v30 + 2);
    v34 = (v32 + 8);
    v57 = v30 + 1;
    v58 = a7 - 8;
    v56 = v21;
    while (1)
    {
      v35 = *(v26 + 48);
      v36 = v68;
      v60(v68, v28, a6);
      v37 = a6;
      v38 = *(a7 - 8);
      (*(v38 + 32))(v36 + v35, v28 + v35, a7);
      v39 = v26;
      v40 = v66;
      v41 = *v67;
      (*v67)(v66, v36, v39);
      v42 = v39;
      v43 = *(v39 + 48);
      v44 = v69;
      v45 = v64(v40, &v40[v43]);
      v69 = v44;
      if (v44)
      {
        break;
      }

      v46 = v45;
      (*(v38 + 8))(&v40[v43], a7);
      v47 = *v34;
      (*v34)(v40, v37);
      a6 = v37;
      if (v46)
      {
        v49 = type metadata accessor for OrderedSet(0, v37, v55, v48);
        v50 = v68;
        OrderedSet._appendNew(_:)(v68, v49);
        v51 = v54;
        v41(v54, v50, v42);
        v26 = v42;
        type metadata accessor for ContiguousArray();
        ContiguousArray.append(_:)();
        (*v57)(v50, v42);
        v47(v51, a6);
      }

      else
      {
        v26 = v42;
        (*v57)(v68, v42);
      }

      v28 = v56;
      OrderedDictionary.Iterator.next()(v63, v56);
      if ((v61)(v28, 1, v26) == 1)
      {
        goto LABEL_2;
      }
    }

    (*v57)(v68, v42);

    (*(v38 + 8))(&v40[v43], a7);
    return (*v34)(v40, v37);
  }
}

uint64_t OrderedDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = a5;
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  v18[6] = a1;
  v18[7] = a2;
  v12 = type metadata accessor for ContiguousArray();

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  WitnessTable = swift_getWitnessTable();
  v15 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed B) -> (@out A1, @error @owned Error), v18, v12, a8, v13, WitnessTable, MEMORY[0x277D84950], &v19);
  if (v9)
  {
  }

  else
  {
    v16 = v15;

    v20 = v16;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Array.init<A>(_:)();
  }

  return a3;
}

uint64_t OrderedDictionary.compactMapValues<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v55 = a5;
  v53 = a4;
  v54 = a3;
  v66 = a9;
  v65 = type metadata accessor for Optional();
  v56 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v72 = &v50 - v16;
  v69 = *(a8 - 8);
  MEMORY[0x28223BE20](v17);
  v64 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v62 = &v50 - v20;
  v68 = *(a7 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a6 - 8);
  MEMORY[0x28223BE20](v24);
  v79 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v78 = type metadata accessor for Optional();
  v74 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v76 = &v50 - v28;
  swift_getTupleTypeMetadata2();
  v29 = static Array._allocateUninitialized(_:)();
  v30 = specialized OrderedDictionary.init(dictionaryLiteral:)(v29, a6, a8, a9);
  v80 = v31;
  v75 = v32;

  v85 = v30;
  v86 = v80;
  v87 = v75;
  v81 = v54;
  v82 = v53;
  v83 = v55;
  v84 = 0;
  v80 = a6;
  v33 = a6;
  v34 = TupleTypeMetadata2;
  v35 = type metadata accessor for OrderedDictionary.Iterator(0, v33, a7, v66);
  v74 += 4;
  v75 = v35;
  v73 = v34 - 8;
  v71 = (v52 + 32);
  v70 = (v68 + 4);
  v67 = (v69 + 6);
  v59 = (v69 + 4);
  v58 = (v69 + 2);
  v57 = (v69 + 1);
  ++v68;
  v69 = (v52 + 8);
  ++v56;

  v63 = a2;
  v61 = v23;
  v60 = a1;
  while (1)
  {
    v36 = v77;
    OrderedDictionary.Iterator.next()(v75, v77);
    v37 = v76;
    (*v74)(v76, v36, v78);
    if ((*(*(v34 - 8) + 48))(v37, 1, v34) == 1)
    {

      return v85;
    }

    v38 = v34;
    v39 = *(v34 + 48);
    (*v71)(v79, v37, v80);
    (*v70)(v23, &v37[v39], a7);
    v40 = v72;
    a1(v23);
    if (v10)
    {
      break;
    }

    if ((*v67)(v40, 1, a8) == 1)
    {
      (*v68)(v23, a7);
      (*v69)(v79, v80);
      (*v56)(v40, v65);
    }

    else
    {
      v41 = v62;
      (*v59)(v62, v40, a8);
      v42 = a7;
      v43 = v80;
      v45 = type metadata accessor for OrderedSet(0, v80, v66, v44);
      v46 = v79;
      OrderedSet._appendNew(_:)(v79, v45);
      (*v58)(v64, v41, a8);
      type metadata accessor for ContiguousArray();
      v10 = 0;
      ContiguousArray.append(_:)();
      v47 = v41;
      v23 = v61;
      (*v57)(v47, a8);
      (*v68)(v23, v42);
      v48 = v43;
      a7 = v42;
      a1 = v60;
      (*v69)(v46, v48);
    }

    v34 = v38;
  }

  (*v68)(v23, a7);
  (*v69)(v79, v80);
}

uint64_t closure #1 in $defer #1 <A, B>() in OrderedDictionary.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (result)
  {
    v12 = result + *(v8 + 72) * a2;
    (*(v8 + 16))(v10, a3, a5);
    return (*(v8 + 32))(v12, v10, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(__int128 *__return_ptr, __int128 *), uint64_t a3, uint64_t *a4)
{
  v5 = a4[2];
  v57 = a4 + 2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(a1 + 16);
  *v57 = v5;
  if (!v7)
  {
    return result;
  }

  v8 = 0;
  v55 = a1 + 32;
  v53 = v7;
  do
  {
    v54 = v5 + 32;
    v59 = v5;
    while (1)
    {
      if (v8 >= v7)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

      v13 = (v55 + (v8 << 6));
      v14 = v13[1];
      v68[0] = *v13;
      v68[1] = v14;
      v15 = v13[3];
      v68[2] = v13[2];
      v68[3] = v15;
      if (__OFADD__(v8++, 1))
      {
        goto LABEL_35;
      }

      v17 = v13[1];
      v64 = *v13;
      v65 = v17;
      v18 = v13[3];
      v66 = v13[2];
      v67 = v18;
      outlined init with copy of (String, BuiltInDefinition)(v68, &v69);
      a2(&v69, &v64);
      v19 = v69;
      v20 = v70;
      v62 = *(&v71 + 1);
      v63 = v71;
      v21 = v72;
      v69 = v64;
      v70 = v65;
      v71 = v66;
      v72 = v67;
      result = outlined destroy of (String, BuiltInDefinition)(&v69);
      if (!*(&v19 + 1))
      {
        return result;
      }

      v23 = *a4;
      v22 = a4[1];
      v24 = *(v22 + 16);
      if (*a4)
      {
        break;
      }

      if (!v24)
      {
        goto LABEL_28;
      }

      v25 = 0;
      v46 = (v22 + 40);
      while (1)
      {
        result = *(v46 - 1);
        if (result == v19 && *(&v19 + 1) == *v46)
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        ++v25;
        v46 += 2;
        if (v24 == v25)
        {
          v24 = 0;
          goto LABEL_28;
        }
      }

LABEL_14:
      if (v25 >= *(v5 + 16))
      {
        goto LABEL_37;
      }

      v61 = v8;
      v29 = (v54 + 48 * v25);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[2];
      v33 = v29[3];
      v35 = v29[4];
      v34 = v29[5];
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v73 = v30;
      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, logger);

      outlined copy of MaterialXAvailability(v35, v34);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      outlined consume of MaterialXAvailability(v35, v34);
      if (os_log_type_enabled(v37, v38))
      {
        v52 = v32;
        v39 = swift_slowAlloc();
        v51 = v35;
        v40 = v31;
        v41 = v37;
        v42 = swift_slowAlloc();
        *&v69 = v42;
        *v39 = 136315138;
        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v40, &v69);
        v43 = v38;
        v44 = v41;
        _os_log_impl(&dword_265D7D000, v41, v43, "Duplicate NodeDef: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        v31 = v40;
        v35 = v51;
        MEMORY[0x266773120](v42, -1, -1);
        v45 = v39;
        v32 = v52;
        MEMORY[0x266773120](v45, -1, -1);
      }

      else
      {
      }

      v60 = v34;

      outlined copy of MaterialXAvailability(v35, v34);

      v9 = v31;
      v10 = v29[4];
      v11 = v32;
      v12 = v29[5];

      outlined consume of MaterialXAvailability(v10, v12);

      result = outlined consume of MaterialXAvailability(v21, *(&v21 + 1));
      *v29 = v73;
      v29[1] = v9;
      v29[2] = v11;
      v29[3] = v33;
      v5 = v59;
      v29[4] = v35;
      v29[5] = v60;
      *v57 = v59;
      v7 = v53;
      v8 = v61;
      if (v61 == v53)
      {
        return result;
      }
    }

    v25 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v19, *(&v19 + 1), v22 + 32, v24, (v23 + 16), v23 + 32);
    v27 = v26;
    v24 = v28;

    if ((v27 & 1) == 0)
    {
      v5 = v59;
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      goto LABEL_14;
    }

    v5 = v59;
LABEL_28:
    specialized OrderedSet._appendNew(_:in:)(v19, *(&v19 + 1), v24);
    a4[2] = v5;
    v49 = *(v5 + 16);
    v48 = *(v5 + 24);
    if (v49 >= v48 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
    }

    v5 = *v57;
    *(v5 + 16) = v49 + 1;
    v50 = v5 + 48 * v49;
    *(v50 + 32) = v20;
    *(v50 + 48) = v63;
    *(v50 + 56) = v62;
    *(v50 + 64) = v21;
    *v57 = v5;
  }

  while (v8 != v7);
  return result;
}

uint64_t specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:)(uint64_t a1, void (*a2)(void *__return_ptr, void *), uint64_t a3, uint64_t *a4)
{
  v36 = a4;
  v6 = a4 + 2;
  v5 = a4[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v6 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
  }

  result = specialized ContiguousArray._endMutation()();
  v32 = *(a1 + 16);
  if (!v32)
  {
    return result;
  }

  v9 = 0;
  v31 = a1 + 32;
  while (1)
  {
    v11 = (v31 + 24 * v9);
    v12 = v11[1];
    v13 = v11[2];
    v35[0] = *v11;
    v35[1] = v12;
    v35[2] = v13;

    v14 = v13;
    a2(v34, v35);

    v15 = v34[0];
    v16 = v34[1];
    v17 = v34[2];
    v18 = *v36;
    v19 = v36[1];
    v20 = *(v19 + 16);
    if (*v36)
    {

      v21 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v15, v16, v19 + 32, v20, (v18 + 16), v18 + 32);
      v23 = v22;
      v20 = v24;

      if (v23)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (!v20)
      {
LABEL_5:
        specialized OrderedSet._appendNew(_:in:)(v15, v16, v20);
        v10 = v17;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();

        goto LABEL_6;
      }

      v21 = 0;
      v29 = (v19 + 40);
      while (1)
      {
        v30 = *(v29 - 1) == v15 && *v29 == v16;
        if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        ++v21;
        v29 += 2;
        if (v20 == v21)
        {
          v20 = 0;
          goto LABEL_5;
        }
      }
    }

    v25 = *v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v25;
    if ((result & 1) == 0)
    {
      result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v25);
      v25 = result;
      *v6 = result;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v21 >= *(v25 + 16))
    {
      goto LABEL_25;
    }

    v26 = v25 + 8 * v21;
    v27 = *(v26 + 32);

    v28 = *(v26 + 32);

    *(v26 + 32) = v27;
    result = specialized ContiguousArray._endMutation()();
LABEL_6:
    if (++v9 == v32)
    {
      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v55 = a2;
  v56 = a3;
  v75 = a1;
  v10 = *(a4 + 24);
  v59 = *(v10 - 8);
  MEMORY[0x28223BE20](a1);
  v54 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v50 - v13;
  v65 = v14;
  v63 = *(*(v14 + 16) - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = type metadata accessor for Optional();
  v67 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v69 = &v50 - v21;
  v22 = *(a5 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v27 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v29 = &v50 - v28;
  (*(v22 + 16))(v25, v75, a5, v27);
  v74 = v29;
  v30 = v10;
  v31 = v51;
  dispatch thunk of Sequence.makeIterator()();
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  destructiveProjectEnumData for NodePersonality.ShaderType();
  ContiguousArray._makeMutableAndUnique()();
  destructiveProjectEnumData for NodePersonality.ShaderType();
  v57 = a5;
  v58 = a6;
  v32 = TupleTypeMetadata2;
  v75 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v67 += 4;
  v68 = AssociatedConformanceWitness;
  v66 = v32 - 8;
  v60 = (v59 + 32);
  v61 = (v63 + 4);
  v62 = (v59 + 8);
  ++v63;
  v53 = (v59 + 16);
  while (1)
  {
    v36 = v70;
    dispatch thunk of IteratorProtocol.next()();
    v37 = v69;
    (*v67)(v69, v36, v71);
    if ((*(*(v32 - 8) + 48))(v37, 1, v32) == 1)
    {
      (*(v52 + 8))(v74, v75);
      return;
    }

    v38 = *(v32 + 48);
    v39 = v64;
    (*v61)(v17, v37, v64);
    (*v60)(v31, &v37[v38], v30);
    v40 = v31;
    v41 = *(v65 + 32);
    v42 = OrderedSet._find(_:)(v17, *v7, v7[1], v39, v41);
    v45 = v30;
    if (v46)
    {
      v34 = v43;
      v35 = type metadata accessor for OrderedSet(0, v39, v41, v44);
      OrderedSet._appendNew(_:in:)(v17, v34, v35);
      (*v53)(v54, v40, v30);
      ContiguousArray.append(_:)();
      (*v62)(v40, v30);
      (*v63)(v17, v39);
      goto LABEL_3;
    }

    v47 = v42;
    ContiguousArray._makeMutableAndUnique()();
    v48 = v7[2];
    ContiguousArray._checkSubscript_mutating(_:)(v47);
    v49 = v73;
    closure #1 in OrderedDictionary.merge<A>(_:uniquingKeysWith:)(v48 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v47, v55, v56, v40, v39, v45);
    v73 = v49;
    v30 = v45;
    if (v49)
    {
      break;
    }

    (*v62)(v40, v45);
    (*v63)(v17, v39);
    destructiveProjectEnumData for NodePersonality.ShaderType();
LABEL_3:
    v31 = v40;
    v32 = TupleTypeMetadata2;
  }

  (*v62)(v40, v45);
  (*v63)(v17, v39);
  (*(v52 + 8))(v74, v75);
  destructiveProjectEnumData for NodePersonality.ShaderType();
}

uint64_t specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v27 = a2;
  v9 = type metadata accessor for LazySequence();
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = *(a4 + 24);
  v22 = *(a4 + 16);
  v23 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = type metadata accessor for LazyMapSequence();
  v26 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  MEMORY[0x2667716D0](a5, a6, v14);
  v17 = swift_allocObject();
  v17[2] = v22;
  v17[3] = v12;
  v18 = v23;
  v19 = *(v23 + 32);
  v17[4] = a5;
  v17[5] = v19;
  v17[6] = a6;
  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();

  (*(v25 + 8))(v11, v9);
  WitnessTable = swift_getWitnessTable();
  specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:)(v16, v27, v28, v18, v13, WitnessTable);
  return (*(v26 + 8))(v16, v13);
}

uint64_t partial apply for thunk for @callee_guaranteed (@in_guaranteed B) -> (@out A1, @error @owned Error)(uint64_t a1, void *a2)
{
  result = (*(v2 + 48))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

__n128 sub_265EBFD8C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t type metadata instantiation function for OrderedDictionary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t outlined init with copy of (String, BuiltInDefinition)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11ShaderGraph17BuiltInDefinitionVtMd, &_sSS_11ShaderGraph17BuiltInDefinitionVtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (String, BuiltInDefinition)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11ShaderGraph17BuiltInDefinitionVtMd, &_sSS_11ShaderGraph17BuiltInDefinitionVtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL OrderedSet.isSubset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = ContiguousArray.count.getter();
  if (v13 < ContiguousArray.count.getter())
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a4 + 16);
  v17 = (v10 + 8);
  do
  {
    v14 = v16 == v15;
    if (v16 == v15)
    {
      break;
    }

    ContiguousArray.subscript.getter();
    ++v15;
    v18 = OrderedSet.contains(_:)(v12, a1, a2, a5, v21);
    (*v17)(v12, a5);
  }

  while (v18);
  return v14;
}

BOOL OrderedSet.isSubset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Set.count.getter();
  if (v12 < ContiguousArray.count.getter())
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a3 + 16);
  v16 = (v9 + 8);
  do
  {
    v13 = v15 == v14;
    if (v15 == v14)
    {
      break;
    }

    ContiguousArray.subscript.getter();
    ++v14;
    v17 = MEMORY[0x2667719A0](v11, a1, a4, a5);
    (*v16)(v11, a4);
  }

  while ((v17 & 1) != 0);
  return v13;
}

void *OrderedSet.isSubset<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    v4 = 1;
    return (v4 & 1);
  }

  v5 = ContiguousArray.count.getter();
  MEMORY[0x28223BE20](v5);
  LOBYTE(v8) = 2;
  result = _s11ShaderGraph13_UnsafeBitsetV014_withTemporaryD08capacity3runySi_yACzKXEtKFZ04_s11a8Graph13_cd8V013withf32D08capacity3runxSi_xACzKXEtKlFZyN12KXEfU_Sb_Tg5SbSgACxs5Error_pRi_zRi0_zlySbIsglrzo_Tf1ncn_nTf4ndnn_n(v6, &v8, partial apply for closure #1 in OrderedSet.isSubset<A>(of:));
  v4 = v8;
  if (v8 != 2)
  {
    return (v4 & 1);
  }

  __break(1u);
  return result;
}

BOOL OrderedSet.isSuperset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return OrderedSet.isSubset(of:)(a3, a4, a3, a2, a5, a6);
}

{
  return OrderedSet.isSubset(of:)(a3, a4, a3, a2, a5, a6);
}

BOOL OrderedSet.isSuperset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = ContiguousArray.count.getter();
  if (v10 >= Set.count.getter())
  {
    v15 = a1;
    v12 = type metadata accessor for Set();
    WitnessTable = swift_getWitnessTable();
    return OrderedSet._isSuperset<A>(of:)(&v15, a2, a3, a4, v12, a5, WitnessTable);
  }

  else
  {
    return 0;
  }
}

BOOL OrderedSet.isStrictSubset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = ContiguousArray.count.getter();
  if (v11 >= ContiguousArray.count.getter())
  {
    return 0;
  }

  return OrderedSet.isSubset(of:)(a1, a2, v12, a4, a5, a6);
}

BOOL OrderedSet.isStrictSubset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = ContiguousArray.count.getter();
  if (v9 >= Set.count.getter())
  {
    return 0;
  }

  return OrderedSet.isSubset(of:)(a1, v10, a3, a4, a5);
}

BOOL OrderedSet.isStrictSuperset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = ContiguousArray.count.getter();
  if (ContiguousArray.count.getter() >= v11)
  {
    return 0;
  }

  return OrderedSet.isSubset(of:)(a3, a4, v12, a2, a5, a6);
}

uint64_t OrderedSet.isStrictSuperset(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = ContiguousArray.count.getter();
  if (Set.count.getter() >= v7)
  {
    v9 = 0;
  }

  else
  {
    type metadata accessor for OrderedSet(0, a4, a5, v8);
    swift_getWitnessTable();
    v9 = Set.isSubset<A>(of:)();
  }

  return v9 & 1;
}

void *OrderedSet.isStrictSubset<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *(*a8)(char *__return_ptr, void **))
{
  v9 = ContiguousArray.count.getter();
  v11 = 2;
  result = _s11ShaderGraph13_UnsafeBitsetV014_withTemporaryD08capacity3runySi_yACzKXEtKFZ04_s11a8Graph13_cd8V013withf32D08capacity3runxSi_xACzKXEtKlFZyN12KXEfU_Sb_Tg5SbSgACxs5Error_pRi_zRi0_zlySbIsglrzo_Tf1ncn_nTf4ndnn_n(v9, &v11, a8);
  if (v11 != 2)
  {
    return (v11 & 1);
  }

  __break(1u);
  return result;
}

BOOL OrderedSet.isDisjoint(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a1;
  v29 = a3;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v30 = v16;
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    return 1;
  }

  v30 = a2;
  if (Collection.isEmpty.getter())
  {
    return 1;
  }

  v19 = ContiguousArray.count.getter();
  v20 = (v10 + 8);
  if (ContiguousArray.count.getter() >= v19)
  {
    v24 = 0;
    v25 = *(a4 + 16);
    do
    {
      v17 = v25 == v24;
      if (v25 == v24)
      {
        break;
      }

      ContiguousArray.subscript.getter();
      ++v24;
      v26 = OrderedSet.contains(_:)(v15, v28, a2, a5, a6);
      (*v20)(v15, a5);
    }

    while (!v26);
  }

  else
  {
    v21 = 0;
    v22 = *(a2 + 16);
    do
    {
      v17 = v22 == v21;
      if (v22 == v21)
      {
        break;
      }

      ContiguousArray.subscript.getter();
      ++v21;
      v23 = OrderedSet.contains(_:)(v12, v29, a4, a5, a6);
      (*v20)(v12, a5);
    }

    while (!v23);
  }

  return v17;
}

uint64_t OrderedSet.isDisjoint(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v38 - v11;
  v13 = *(a4 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a3;
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter() & 1) != 0 || (Set.isEmpty.getter())
  {
    return 1;
  }

  v19 = ContiguousArray.count.getter();
  if (Set.count.getter() >= v19)
  {
    v24 = 0;
    v25 = *(a3 + 16);
    v26 = (v13 + 8);
    do
    {
      v17 = v25 == v24;
      if (v25 == v24)
      {
        break;
      }

      ContiguousArray.subscript.getter();
      ++v24;
      v27 = MEMORY[0x2667719A0](v16, a1, a4, a5);
      (*v26)(v16, a4);
    }

    while ((v27 & 1) == 0);
    return v17;
  }

  v42 = a2;
  v43 = a5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    result = Set.Iterator.init(_cocoa:)();
    a1 = v45;
    v20 = v46;
    v21 = v47;
    v22 = v48;
    v23 = v49;
  }

  else
  {
    v28 = -1 << *(a1 + 32);
    v20 = a1 + 56;
    v21 = ~v28;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v23 = v30 & *(a1 + 56);

    v22 = 0;
  }

  v44 = (v13 + 56);
  v31 = v13;
  v32 = (v21 + 64) >> 6;
  v38[1] = v21;
  v38[2] = v31 + 16;
  v39 = v31;
  v41 = (v31 + 8);
  while (1)
  {
    v34 = v23;
    v35 = v22;
    if ((a1 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!__CocoaSet.Iterator.next()())
    {
LABEL_28:
      v17 = 1;
      (*v44)(v12, 1, 1, a4);
LABEL_29:
      outlined consume of [String : GeomPropDef].Iterator._Variant(a1);
      return v17;
    }

    _forceBridgeFromObjectiveC<A>(_:_:)();
    swift_unknownObjectRelease();
    v40 = v22;
    v23 = v34;
LABEL_18:
    (*v44)(v12, 0, 1, a4);
    v33 = OrderedSet.contains(_:)(v12, v42, a3, a4, v43);
    result = (*v41)(v12, a4);
    if (v33)
    {
      v17 = 0;
      goto LABEL_29;
    }
  }

  v36 = v34;
  if (v34)
  {
LABEL_17:
    v40 = v35;
    v23 = (v36 - 1) & v36;
    (*(v39 + 16))(v12, *(a1 + 48) + *(v39 + 72) * (__clz(__rbit64(v36)) | (v22 << 6)), a4);
    goto LABEL_18;
  }

  v37 = v22;
  while (1)
  {
    v22 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v22 >= v32)
    {
      goto LABEL_28;
    }

    v36 = *(v20 + 8 * v22);
    ++v37;
    if (v36)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

BOOL OrderedSet.isDisjoint<A>(with:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a1;
  v33 = a2;
  v31 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v15 = *(a5 - 8);
  MEMORY[0x28223BE20](v16);
  v30 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = &v30 - v19;
  v34 = a3;
  v37 = a3;
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    return 1;
  }

  (*(v15 + 16))(v30, v36, a5);
  v36 = v20;
  dispatch thunk of Sequence.makeIterator()();
  v22 = v31;
  v23 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v24 = (v22 + 48);
  v25 = (v22 + 32);
  v26 = (v22 + 8);
  do
  {
    dispatch thunk of IteratorProtocol.next()();
    v27 = (*v24)(v14, 1, a4);
    v21 = v27 == 1;
    if (v27 == 1)
    {
      break;
    }

    (*v25)(v11, v14, a4);
    v28 = OrderedSet.contains(_:)(v11, v33, v34, a4, v35);
    (*v26)(v11, a4);
  }

  while (!v28);
  (*(v32 + 8))(v36, v23);
  return v21;
}

unint64_t closure #1 in OrderedSet.isSubset<A>(of:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v41 = a9;
  v49 = a8;
  v43 = a7;
  v44 = a1;
  v50 = a4;
  v47 = a3;
  v42 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v39 - v15;
  v17 = *(a6 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v22 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v24 = &v39 - v23;
  (*(v17 + 16))(v20, a2, a6, v22);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = v24;
  v49 = AssociatedTypeWitness;
  v46 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v26 = v42;
  v45 = *(v42 + 48);
  if (v45(v16, 1, a5) != 1)
  {
    v29 = *(v26 + 32);
    v30 = (v26 + 8);
    v31 = v43;
    v29(v13, v16, a5);
    while (1)
    {
      result = OrderedSet._find(_:)(v13, v47, v50, a5, v31);
      if ((v32 & 1) != 0 || (v33 = (result >> 3) & 0x1FFFFFFFFFFFFFF8, v34 = *(*v44 + v33), *(*v44 + v33) = v34 | (1 << result), (v34 & (1 << result)) != 0))
      {
        (*v30)(v13, a5);
      }

      else
      {
        v35 = v44[2];
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
          return result;
        }

        v44[2] = v36;
        v37 = ContiguousArray.count.getter();
        (*v30)(v13, a5);
        v38 = v36 == v37;
        v31 = v43;
        if (v38)
        {
          v27 = 1;
          goto LABEL_3;
        }
      }

      dispatch thunk of IteratorProtocol.next()();
      if (v45(v16, 1, a5) == 1)
      {
        break;
      }

      v29(v13, v16, a5);
    }
  }

  v27 = 0;
LABEL_3:
  result = (*(v40 + 8))(v48, v49);
  *v41 = v27;
  return result;
}

BOOL OrderedSet._isSuperset<A>(of:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a3;
  v34 = a6;
  v32 = a2;
  v35 = a1;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v15 = *(a5 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v22 = &v30 - v21;
  (*(v15 + 16))(v18, v35, a5, v20);
  v35 = v22;
  dispatch thunk of Sequence.makeIterator()();
  v23 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v24 = (v9 + 48);
  v25 = (v9 + 32);
  v26 = (v9 + 8);
  do
  {
    dispatch thunk of IteratorProtocol.next()();
    v27 = (*v24)(v14, 1, a4);
    if (v27 == 1)
    {
      break;
    }

    (*v25)(v11, v14, a4);
    v28 = OrderedSet.contains(_:)(v11, v32, v33, a4, v34);
    (*v26)(v11, a4);
  }

  while (v28);
  (*(v31 + 8))(v35, v23);
  return v27 == 1;
}

unint64_t closure #1 in OrderedSet.isStrictSubset<A>(of:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a9@<X8>)
{
  v47 = a1;
  v51 = a3;
  v52 = a7;
  v56 = a4;
  v46 = a9;
  v11 = *(a5 - 8);
  v54 = a2;
  v55 = v11;
  MEMORY[0x28223BE20](a1);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v45 - v15;
  v17 = *(a6 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v22 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v24 = &v45 - v23;
  (*(v17 + 16))(v20, v54, a6, v22);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = v24;
  v54 = AssociatedTypeWitness;
  v50 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v26 = v55;
  v49 = *(v55 + 48);
  if (v49(v16, 1, a5) != 1)
  {
    v30 = 0;
    v31 = 0;
    v33 = *(v26 + 32);
    v32 = v26 + 32;
    v48 = v33;
    v34 = (v32 - 24);
    v55 = v32;
    v33(v13, v16, a5);
    while (1)
    {
      result = OrderedSet._find(_:)(v13, v51, v56, a5, v52);
      if (v35)
      {
        if (v30)
        {
          v31 = 1;
          v30 = 1;
LABEL_6:
          (*v34)(v13, a5);
          v27 = v31;
          goto LABEL_7;
        }

        v36 = v47[2];
        v37 = ContiguousArray.count.getter();
        (*v34)(v13, a5);
        v27 = 1;
        v30 = 1;
        if (v36 == v37)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v38 = v47;
        v39 = (result >> 3) & 0x1FFFFFFFFFFFFFF8;
        v40 = *(*v47 + v39);
        *(*v47 + v39) = v40 | (1 << result);
        if ((v40 & (1 << result)) != 0)
        {
          goto LABEL_6;
        }

        v41 = v38[2];
        v42 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          return result;
        }

        v38[2] = v42;
        v43 = ContiguousArray.count.getter();
        (*v34)(v13, a5);
        v44 = v42 == v43;
        v27 = (v42 != v43) & v31;
        if (v44 && ((v31 ^ 1) & 1) == 0)
        {
          LOBYTE(v27) = 1;
          goto LABEL_3;
        }
      }

LABEL_7:
      dispatch thunk of IteratorProtocol.next()();
      v31 = v27;
      if (v49(v16, 1, a5) == 1)
      {
        break;
      }

      v48(v13, v16, a5);
    }
  }

  LOBYTE(v27) = 0;
LABEL_3:
  v28 = v46;
  result = (*(v45 + 8))(v53, v54);
  *v28 = v27;
  return result;
}

uint64_t closure #1 in OrderedSet.isStrictSuperset<A>(of:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, BOOL *a9@<X8>)
{
  v47 = a9;
  v54 = a7;
  v57 = a4;
  v49 = a3;
  v56 = a2;
  v52 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v14 - 8);
  v50 = &v46 - v15;
  v16 = *(a6 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v23 = &v46 - v22;
  (*(v16 + 16))(v19, v56, a6, v21);
  v24 = v50;
  dispatch thunk of Sequence.makeIterator()();
  v25 = v49;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v55 = v23;
  v56 = AssociatedTypeWitness;
  v27 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v28 = v52;
  v29 = (v52 + 6);
  v53 = v52[6];
  if (v53(v24, 1, a5) != 1)
  {
    v33 = v28[4];
    v34 = v28 + 4;
    v51 = (v28 + 1);
    v52 = v33;
    (v33)(v13, v24, a5);
    while (1)
    {
      v35 = OrderedSet._find(_:)(v13, v25, v57, a5, v54);
      if (v36)
      {
        (*v51)(v13, a5);
LABEL_14:
        result = (*(v48 + 8))(v55, v56);
        v32 = 0;
        goto LABEL_15;
      }

      v37 = (v35 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v38 = *(*a1 + v37);
      *(*a1 + v37) = v38 | (1 << v35);
      if ((v38 & (1 << v35)) != 0)
      {
        (*v51)(v13, a5);
      }

      else
      {
        v39 = v29;
        v40 = v27;
        result = v57;
        v41 = a1[2];
        v42 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          return result;
        }

        a1[2] = v42;
        v43 = v34;
        v44 = ContiguousArray.count.getter();
        (*v51)(v13, a5);
        v45 = v42 == v44;
        v34 = v43;
        v24 = v50;
        v27 = v40;
        v29 = v39;
        if (v45)
        {
          goto LABEL_14;
        }
      }

      dispatch thunk of IteratorProtocol.next()();
      if (v53(v24, 1, a5) == 1)
      {
        break;
      }

      (v52)(v13, v24, a5);
    }
  }

  (*(v48 + 8))(v55, v56);
  v30 = a1[2];
  result = ContiguousArray.count.getter();
  v32 = v30 < result;
LABEL_15:
  *v47 = v32;
  return result;
}

uint64_t Surface.dataType.getter(char a1)
{
  if (a1 == 3)
  {
    return 54;
  }

  else
  {
    return 53;
  }
}

uint64_t ShaderType.dataType.getter(char a1)
{
  if (a1)
  {
    return 54;
  }

  else
  {
    return 53;
  }
}

uint64_t SGDataType.vectorElementType()(uint64_t a1)
{
  result = 0;
  switch(a1)
  {
    case 3:
    case 7:
    case 9:
      result = a1;
      break;
    case 14:
    case 15:
    case 17:
    case 18:
    case 21:
    case 25:
    case 29:
    case 32:
    case 35:
    case 38:
    case 41:
    case 44:
    case 49:
    case 52:
      result = 9;
      break;
    case 20:
    case 22:
    case 26:
    case 30:
    case 33:
    case 36:
    case 39:
    case 42:
    case 45:
    case 47:
    case 50:
    case 55:
    case 56:
      result = 7;
      break;
    case 24:
    case 28:
    case 31:
      result = 3;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SGDataTypeStorage.valueString.getter()
{
  v1 = *v0;
  switch(*(v0 + 64))
  {
    case 1:
      LOBYTE(v52) = *v0;
      return dispatch thunk of CustomStringConvertible.description.getter();
    case 2:
    case 3:
      LODWORD(v52) = vmovn_s16(vzip1q_s8(v1, v1)).u32[0];
      return dispatch thunk of CustomStringConvertible.description.getter();
    case 4:
      LOWORD(v52) = *v0;
      return dispatch thunk of CustomStringConvertible.description.getter();
    case 5:
      v52 = 0;
      v53 = 0xE000000000000000;
      Float.write<A>(to:)();
      return v52;
    case 6:
      v41 = *v0;

      return v41;
    case 7:
      v52 = 0;
      v53 = 0xE000000000000000;
      MEMORY[0x266771550](40, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      goto LABEL_33;
    case 8:
      v52 = 0;
      v53 = 0xE000000000000000;
      MEMORY[0x266771550](40, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      goto LABEL_33;
    case 9:
      v52 = 0;
      v53 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      MEMORY[0x266771550](40, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
LABEL_33:
      Float.write<A>(to:)();
      goto LABEL_34;
    case 0xA:
      LODWORD(v52) = vmovn_s16(vzip1q_s8(v1, v1)).u32[0];
      v6 = &_ss5SIMD2Vys6UInt16VGMd;
      v7 = &_ss5SIMD2Vys6UInt16VGMR;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2Vys6UInt16VGMd, &_ss5SIMD2Vys6UInt16VGMR);
      v8 = &lazy protocol witness table cache variable for type SIMD2<UInt16> and conformance SIMD2<A>;
      v9 = MEMORY[0x277D84AE0];
      goto LABEL_31;
    case 0xB:
      v52 = *v0;
      v6 = &_ss5SIMD3Vys6UInt16VGMd;
      v7 = &_ss5SIMD3Vys6UInt16VGMR;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3Vys6UInt16VGMd, &_ss5SIMD3Vys6UInt16VGMR);
      v8 = &lazy protocol witness table cache variable for type SIMD3<UInt16> and conformance SIMD3<A>;
      v9 = MEMORY[0x277D84B08];
      goto LABEL_31;
    case 0xC:
      v52 = *v0;
      v6 = &_ss5SIMD4Vys6UInt16VGMd;
      v7 = &_ss5SIMD4Vys6UInt16VGMR;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4Vys6UInt16VGMd, &_ss5SIMD4Vys6UInt16VGMR);
      v8 = &lazy protocol witness table cache variable for type SIMD4<UInt16> and conformance SIMD4<A>;
      v9 = MEMORY[0x277D84B28];
LABEL_31:
      lazy protocol witness table accessor for type [String] and conformance [A](v8, v6, v7, v9);
      return SIMD.description.getter();
    case 0xD:
      v52 = 40;
      v53 = 0xE100000000000000;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v39);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      goto LABEL_26;
    case 0xE:
      v52 = 40;
      v53 = 0xE100000000000000;
      v4 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v4);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v5);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      goto LABEL_26;
    case 0xF:
      v52 = 40;
      v53 = 0xE100000000000000;
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v10);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v11);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v12);

      MEMORY[0x266771550](8236, 0xE200000000000000);
LABEL_26:
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v40);

LABEL_34:
      v42 = 41;
      goto LABEL_38;
    case 0x10:
      v52 = 0;
      v53 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      MEMORY[0x266771550](91, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8202, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      goto LABEL_29;
    case 0x11:
      v52 = 0;
      v53 = 0xE000000000000000;
      _StringGuts.grow(_:)(36);
      MEMORY[0x266771550](91, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8202, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8202, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      goto LABEL_29;
    case 0x12:
      v52 = 0;
      v53 = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      MEMORY[0x266771550](91, 0xE100000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8202, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8202, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8202, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
      Float.write<A>(to:)();
      MEMORY[0x266771550](8236, 0xE200000000000000);
LABEL_29:
      Float.write<A>(to:)();
      goto LABEL_37;
    case 0x13:
      v52 = 91;
      v53 = 0xE100000000000000;
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v43);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v44);

      MEMORY[0x266771550](8202, 0xE200000000000000);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v45);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      goto LABEL_36;
    case 0x14:
      v52 = 91;
      v53 = 0xE100000000000000;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v16);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v17);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v18);

      MEMORY[0x266771550](8202, 0xE200000000000000);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v19);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v20);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v21);

      MEMORY[0x266771550](8202, 0xE200000000000000);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v22);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v23);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      goto LABEL_36;
    case 0x15:
      v52 = 0;
      v53 = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      MEMORY[0x266771550](91, 0xE100000000000000);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v24);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v25);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v26);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v27);

      MEMORY[0x266771550](8202, 0xE200000000000000);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v28);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v29);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v30);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v31);

      MEMORY[0x266771550](8202, 0xE200000000000000);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v32);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v33);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v34);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v35);

      MEMORY[0x266771550](8202, 0xE200000000000000);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v36);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v37);

      MEMORY[0x266771550](8236, 0xE200000000000000);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v38);

      MEMORY[0x266771550](8236, 0xE200000000000000);
LABEL_36:
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v46);

LABEL_37:
      v42 = 93;
LABEL_38:
      MEMORY[0x266771550](v42, 0xE100000000000000);
      return v52;
    case 0x16:
    case 0x17:
      v2 = *v0;
      outlined init with copy of SGDataTypeStorage(v0, &v52);
      v3 = specialized CGColorCodingContainer.init(_:)(v2);
      v48 = v47;
      v50 = v49;
      v52 = MEMORY[0x2667717B0](v3, MEMORY[0x277D85048]);
      v53 = v51;
      MEMORY[0x266771550](2112032, 0xE300000000000000);

      MEMORY[0x266771550](v48, v50);
      swift_bridgeObjectRelease_n();
      goto LABEL_41;
    default:
      v52 = 0;
      v53 = 0xE000000000000000;
      if (v1.i8[0])
      {
        v13 = 1702195828;
      }

      else
      {
        v13 = 0x65736C6166;
      }

      if (v1.i8[0])
      {
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0xE500000000000000;
      }

      MEMORY[0x266771550](v13, v14);
LABEL_41:

      return v52;
  }
}

__n128 SGDataTypeStorage.init(type:scalar:)@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  specialized SGDataTypeStorage.init(type:scalar:)(v8, a2, a1);

  if (!v3)
  {
    v7 = v8[3];
    *(a3 + 32) = v8[2];
    *(a3 + 48) = v7;
    *(a3 + 64) = v9;
    result = v8[1];
    *a3 = v8[0];
    *(a3 + 16) = result;
  }

  return result;
}

__n128 SGDataTypeStorage.init(type:value:)@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  specialized SGDataTypeStorage.init(type:value:)(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v8;
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t SGDataType.canonicalized()(uint64_t result)
{
  v1 = result - 32;
  if (result - 32) <= 0x18 && ((0x1F680DBu >> v1))
  {
    return qword_265F28400[v1];
  }

  return result;
}

unint64_t SGDataTypeStorage.bitPattern.getter()
{
  LODWORD(v1) = *v0;
  v2 = *(v0 + 64);
  v3 = *v0;
  if (v2 == 5)
  {
    v4 = *v0;
  }

  else
  {
    v4 = 0;
  }

  if (v2 == 4)
  {
    v5 = 0;
  }

  else
  {
    v3 = v4;
    v5 = v2 != 5;
  }

  if (v2 == 3)
  {
    v3 = *v0;
    v5 = 0;
  }

  if (v2 == 2)
  {
    v6 = 0;
  }

  else
  {
    LODWORD(v1) = 0;
    v6 = 1;
  }

  if (v2 == 1)
  {
    LODWORD(v1) = *v0;
    v6 = 0;
  }

  if (!*(v0 + 64))
  {
    LODWORD(v1) = *v0 & 1;
    v6 = 0;
  }

  if (*(v0 + 64) <= 2u)
  {
    v1 = v1;
  }

  else
  {
    v1 = v3;
  }

  if (*(v0 + 64) <= 2u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  return v1 | (v7 << 32);
}

uint64_t CGColorCodingContainer.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph013CGColorCodingC033_CD6631401A2AE747392C635D64A9AA27LLV0G4KeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph013CGColorCodingC033_CD6631401A2AE747392C635D64A9AA27LLV0G4KeysOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatVGMd, &_sSay12CoreGraphics7CGFloatVGMR);
  lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGFloat] and conformance <A> [A], lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x277D83948]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CGColorCodingContainer.CodingKeys()
{
  if (*v0)
  {
    return 0x617073726F6C6F63;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CGColorCodingContainer.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617073726F6C6F63 && a2 == 0xEE00656D614E6563)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CGColorCodingContainer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CGColorCodingContainer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance CGColorCodingContainer@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized CGColorCodingContainer.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

ShaderGraph::SGDataTypeStorage::CodingKeys_optional __swiftcall SGDataTypeStorage.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGDataTypeStorage.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = ShaderGraph_SGDataTypeStorage_CodingKeys_value;
  }

  else
  {
    v4.value = ShaderGraph_SGDataTypeStorage_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

ShaderGraph::SGDataTypeStorage::CodingKeys_optional __swiftcall SGDataTypeStorage.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGDataTypeStorage.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = ShaderGraph_SGDataTypeStorage_CodingKeys_value;
  }

  else
  {
    v4.value = ShaderGraph_SGDataTypeStorage_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t SGDataTypeStorage.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SGDataTypeStorage.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65756C6176;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x65756C6176;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGDataTypeStorage.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SGDataTypeStorage.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGDataTypeStorage.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SGDataTypeStorage.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGDataTypeStorage.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SGDataTypeStorage.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SGDataTypeStorage.CodingKeys()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SGDataTypeStorage.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGDataTypeStorage.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SGDataTypeStorage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SGDataTypeStorage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 SGDataTypeStorage.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized SGDataTypeStorage.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t SGDataTypeStorage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph17SGDataTypeStorageO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph17SGDataTypeStorageO10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v12 = *(v3 + 8);
  v13 = HIDWORD(*v3);
  v14 = *v3;
  switch(*(v3 + 64))
  {
    case 1:
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v39) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      break;
    case 2:
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v39) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      break;
    case 3:
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v39) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      break;
    case 4:
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v39) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      break;
    case 5:
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v39) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      break;
    case 6:
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v39) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      break;
    case 7:
      v38 = *v3;
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        *&v39 = v38;
        v41 = 1;
        v16 = &_ss5SIMD2VySfGMd;
        v17 = &_ss5SIMD2VySfGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
        v18 = &lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>;
        v19 = MEMORY[0x277D84AD0];
        goto LABEL_49;
      }

      break;
    case 8:
      v38 = *v3;
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        v39 = v38;
        v41 = 1;
        v16 = &_ss5SIMD3VySfGMd;
        v17 = &_ss5SIMD3VySfGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        v18 = &lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>;
        goto LABEL_48;
      }

      break;
    case 9:
      v38 = *v3;
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        v39 = v38;
        v41 = 1;
        v16 = &_ss5SIMD4VySfGMd;
        v17 = &_ss5SIMD4VySfGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
        v18 = &lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>;
        goto LABEL_20;
      }

      break;
    case 0xA:
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        LODWORD(v39) = v14;
        v41 = 1;
        v16 = &_ss5SIMD2Vys6UInt16VGMd;
        v17 = &_ss5SIMD2Vys6UInt16VGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2Vys6UInt16VGMd, &_ss5SIMD2Vys6UInt16VGMR);
        v18 = &lazy protocol witness table cache variable for type SIMD2<UInt16> and conformance SIMD2<A>;
        v19 = MEMORY[0x277D84AD0];
        goto LABEL_49;
      }

      break;
    case 0xB:
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        *&v39 = v14;
        v41 = 1;
        v16 = &_ss5SIMD3Vys6UInt16VGMd;
        v17 = &_ss5SIMD3Vys6UInt16VGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3Vys6UInt16VGMd, &_ss5SIMD3Vys6UInt16VGMR);
        v18 = &lazy protocol witness table cache variable for type SIMD3<UInt16> and conformance SIMD3<A>;
        goto LABEL_48;
      }

      break;
    case 0xC:
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        *&v39 = v14;
        v41 = 1;
        v16 = &_ss5SIMD4Vys6UInt16VGMd;
        v17 = &_ss5SIMD4Vys6UInt16VGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4Vys6UInt16VGMd, &_ss5SIMD4Vys6UInt16VGMR);
        v18 = &lazy protocol witness table cache variable for type SIMD4<UInt16> and conformance SIMD4<A>;
        goto LABEL_20;
      }

      break;
    case 0xD:
      v38 = *v3;
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        *&v39 = v38;
        v41 = 1;
        v16 = &_ss5SIMD2Vys5Int32VGMd;
        v17 = &_ss5SIMD2Vys5Int32VGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2Vys5Int32VGMd, &_ss5SIMD2Vys5Int32VGMR);
        v18 = &lazy protocol witness table cache variable for type SIMD2<Int32> and conformance SIMD2<A>;
        v19 = MEMORY[0x277D84AD0];
        goto LABEL_49;
      }

      break;
    case 0xE:
      v38 = *v3;
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        v39 = v38;
        v41 = 1;
        v16 = &_ss5SIMD3Vys5Int32VGMd;
        v17 = &_ss5SIMD3Vys5Int32VGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3Vys5Int32VGMd, &_ss5SIMD3Vys5Int32VGMR);
        v18 = &lazy protocol witness table cache variable for type SIMD3<Int32> and conformance SIMD3<A>;
LABEL_48:
        v19 = MEMORY[0x277D84AF0];
        goto LABEL_49;
      }

      break;
    case 0xF:
      v38 = *v3;
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        v39 = v38;
        v41 = 1;
        v16 = &_ss5SIMD4Vys5Int32VGMd;
        v17 = &_ss5SIMD4Vys5Int32VGMR;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4Vys5Int32VGMd, &_ss5SIMD4Vys5Int32VGMR);
        v18 = &lazy protocol witness table cache variable for type SIMD4<Int32> and conformance SIMD4<A>;
LABEL_20:
        v19 = MEMORY[0x277D84B18];
LABEL_49:
        lazy protocol witness table accessor for type [String] and conformance [A](v18, v16, v17, v19);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      break;
    case 0x10:
      v38 = *v3;
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySfGGMR);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_265F21D90;
        *(v15 + 32) = v38;
        *(v15 + 40) = v12;
        *&v39 = v15;
        v41 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2VySfGGMd, &_sSays5SIMD2VySfGGMR);
        lazy protocol witness table accessor for type [SIMD2<Float>] and conformance <A> [A]();
        goto LABEL_42;
      }

      break;
    case 0x11:
      v36 = *(v3 + 32);
      v37 = v10;
      v38 = v9;
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3VySfGGMR);
        v20 = swift_allocObject();
        v22 = v37;
        v21 = v38;
        v20[1] = xmmword_265F21D80;
        v20[2] = v21;
        v23 = v36;
        v20[3] = v22;
        v20[4] = v23;
        *&v39 = v20;
        v41 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3VySfGGMd, &_sSays5SIMD3VySfGGMR);
        lazy protocol witness table accessor for type [SIMD3<Float>] and conformance <A> [A]();
        goto LABEL_42;
      }

      break;
    case 0x12:
      v35 = *(v3 + 48);
      v36 = v11;
      v37 = v10;
      v38 = v9;
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMR);
        v26 = swift_allocObject();
        v28 = v37;
        v27 = v38;
        v26[1] = xmmword_265F21D70;
        v26[2] = v27;
        v29 = v35;
        v30 = v36;
        v26[3] = v28;
        v26[4] = v30;
        v26[5] = v29;
        *&v39 = v26;
        v41 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4VySfGGMd, &_sSays5SIMD4VySfGGMR);
        lazy protocol witness table accessor for type [SIMD4<Float>] and conformance <A> [A]();
LABEL_42:
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        goto LABEL_43;
      }

      break;
    case 0x13:
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2Vys6UInt16VGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2Vys6UInt16VGGMR);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_265F21D90;
        *(v32 + 32) = v14;
        *(v32 + 36) = v13;
        *&v39 = v32;
        v41 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2Vys6UInt16VGGMd, &_sSays5SIMD2Vys6UInt16VGGMR);
        lazy protocol witness table accessor for type [SIMD2<UInt16>] and conformance <A> [A]();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      break;
    case 0x14:
      v37 = *(v3 + 16);
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD3Vys6UInt16VGGMd, &_ss23_ContiguousArrayStorageCys5SIMD3Vys6UInt16VGGMR);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_265F21D80;
        *(v24 + 32) = v14;
        *(v24 + 40) = v12;
        *(v24 + 48) = v37;
        *&v39 = v24;
        v41 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3Vys6UInt16VGGMd, &_sSays5SIMD3Vys6UInt16VGGMR);
        lazy protocol witness table accessor for type [SIMD3<UInt16>] and conformance <A> [A]();
        goto LABEL_35;
      }

      break;
    case 0x15:
      v37 = *(v3 + 16);
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD4Vys6UInt16VGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4Vys6UInt16VGGMR);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_265F21D70;
        *(v25 + 32) = v14;
        *(v25 + 40) = v12;
        *(v25 + 48) = v37;
        *&v39 = v25;
        v41 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4Vys6UInt16VGGMd, &_sSays5SIMD4Vys6UInt16VGGMR);
        lazy protocol witness table accessor for type [SIMD4<UInt16>] and conformance <A> [A]();
LABEL_35:
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      break;
    case 0x16:
      LOBYTE(v39) = 0;
      goto LABEL_55;
    case 0x17:
      LOBYTE(v39) = 0;
LABEL_55:
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        outlined init with copy of SGDataTypeStorage(v3, &v39);
        *&v39 = specialized CGColorCodingContainer.init(_:)(v14);
        *(&v39 + 1) = v33;
        v40 = v34;
        v41 = 1;
        lazy protocol witness table accessor for type CGColorCodingContainer and conformance CGColorCodingContainer();
        KeyedEncodingContainer.encode<A>(_:forKey:)();

LABEL_43:
      }

      break;
    default:
      LOBYTE(v39) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        LOBYTE(v39) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      break;
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 protocol witness for Decodable.init(from:) in conformance SGDataTypeStorage@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized SGDataTypeStorage.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

void SGDataTypeStorage.hash(into:)(uint64_t a1)
{
  switch(v1[4].n128_u8[0])
  {
    case 1u:
      v14 = *v1;
      MEMORY[0x266772770](1);
      v2 = v14;
      goto LABEL_26;
    case 2u:
      v11 = *v1;
      v12 = 2;
      goto LABEL_18;
    case 3u:
      v11 = *v1;
      v12 = 3;
LABEL_18:
      MEMORY[0x266772770](v12);
      Hasher._combine(_:)(v11);
      return;
    case 4u:
      v8 = *v1;
      MEMORY[0x266772770](4);
      Hasher._combine(_:)(v8);
      return;
    case 5u:
      v35 = COERCE_FLOAT(*v1);
      MEMORY[0x266772770](5);
      v6 = 0.0;
      if (v35 != 0.0)
      {
        v6 = v35;
      }

      goto LABEL_32;
    case 6u:
      MEMORY[0x266772770](6);

      String.hash(into:)();
      return;
    case 7u:
      v32 = *v1;
      MEMORY[0x266772770](7);
      v13 = v32.n128_f32[0];
      if (v32.n128_f32[0] == 0.0)
      {
        v13 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v13));
      v6 = v32.n128_f32[1];
      goto LABEL_22;
    case 8u:
      v40 = *v1;
      MEMORY[0x266772770](8);
      v15 = v40;
      goto LABEL_44;
    case 9u:
      v30 = *v1;
      MEMORY[0x266772770](9);
      v10 = v30;
      goto LABEL_39;
    case 0xAu:
      v39 = *v1;
      MEMORY[0x266772770](10);
      Hasher._combine(_:)(v39);
      Hasher._combine(_:)(HIWORD(v39));
      return;
    case 0xBu:
      v29 = v1->n128_u64[0];
      MEMORY[0x266772770](11);
      Hasher._combine(_:)(v29);
      Hasher._combine(_:)(WORD1(v29));
      v7 = WORD2(v29);
      goto LABEL_29;
    case 0xCu:
      v9 = 12;
      goto LABEL_49;
    case 0xDu:
      v37 = v1->n128_u64[0];
      MEMORY[0x266772770](13);
      Hasher._combine(_:)(v37);
      Hasher._combine(_:)(HIDWORD(v37));
      return;
    case 0xEu:
      v28 = *v1;
      MEMORY[0x266772770](14);
      Hasher._combine(_:)(v28.n128_u32[0]);
      Hasher._combine(_:)(v28.n128_u32[1]);
      Hasher._combine(_:)(v28.n128_u32[2]);
      return;
    case 0xFu:
      v31 = *v1;
      MEMORY[0x266772770](15);
      Hasher._combine(_:)(v31.n128_u32[0]);
      Hasher._combine(_:)(v31.n128_u32[1]);
      Hasher._combine(_:)(v31.n128_u32[2]);
      Hasher._combine(_:)(v31.n128_u32[3]);
      return;
    case 0x10u:
      v27 = *v1;
      MEMORY[0x266772770](16);
      v3 = v27.n128_f32[0];
      if (v27.n128_f32[0] == 0.0)
      {
        v3 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v3));
      v4 = v27.n128_f32[1];
      if (v27.n128_f32[1] == 0.0)
      {
        v4 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v4));
      v5 = v27.n128_f32[2];
      if (v27.n128_f32[2] == 0.0)
      {
        v5 = 0.0;
      }

      Hasher._combine(_:)(LODWORD(v5));
      v6 = v27.n128_f32[3];
LABEL_22:
      if (v6 == 0.0)
      {
        v6 = 0.0;
      }

LABEL_32:
      Hasher._combine(_:)(LODWORD(v6));
      return;
    case 0x11u:
      v22 = v1[1];
      v33 = *v1;
      v19 = v1[2];
      MEMORY[0x266772770](17);
      specialized SIMD.hash(into:)(v33);
      specialized SIMD.hash(into:)(v22);
      v15 = v19;
LABEL_44:

      specialized SIMD.hash(into:)(v15);
      return;
    case 0x12u:
      v18 = v1[3];
      v21 = v1[2];
      v25 = v1[1];
      v38 = *v1;
      MEMORY[0x266772770](18);
      specialized SIMD.hash(into:)(v38);
      specialized SIMD.hash(into:)(v25);
      specialized SIMD.hash(into:)(v21);
      v10 = v18;
LABEL_39:

      specialized SIMD.hash(into:)(v10);
      return;
    case 0x13u:
      v9 = 19;
LABEL_49:
      v41 = v1->n128_u64[0];
      MEMORY[0x266772770](v9);
      Hasher._combine(_:)(v41);
      Hasher._combine(_:)(WORD1(v41));
      Hasher._combine(_:)(WORD2(v41));
      v16 = HIWORD(v41);
      goto LABEL_50;
    case 0x14u:
      v23 = v1[1].n128_i64[0];
      v34 = *v1;
      MEMORY[0x266772770](20);
      Hasher._combine(_:)(v34.n128_u16[0]);
      Hasher._combine(_:)(v34.n128_u16[1]);
      Hasher._combine(_:)(v34.n128_u16[2]);
      Hasher._combine(_:)(v34.n128_u16[4]);
      Hasher._combine(_:)(v34.n128_u16[5]);
      Hasher._combine(_:)(v34.n128_u16[6]);
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(WORD1(v23));
      v7 = WORD2(v23);
LABEL_29:
      Hasher._combine(_:)(v7);
      return;
    case 0x15u:
      v20 = vextq_s8(v1[1], v1[1], 8uLL).u64[0];
      v24 = v1[1].n128_i64[0];
      v36 = *v1;
      MEMORY[0x266772770](21);
      Hasher._combine(_:)(v36.n128_u16[0]);
      Hasher._combine(_:)(v36.n128_u16[1]);
      Hasher._combine(_:)(v36.n128_u16[2]);
      Hasher._combine(_:)(v36.n128_u16[3]);
      Hasher._combine(_:)(v36.n128_u16[4]);
      Hasher._combine(_:)(v36.n128_u16[5]);
      Hasher._combine(_:)(v36.n128_u16[6]);
      Hasher._combine(_:)(v36.n128_u16[7]);
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(WORD1(v24));
      Hasher._combine(_:)(WORD2(v24));
      Hasher._combine(_:)(HIWORD(v24));
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(WORD1(v20));
      Hasher._combine(_:)(WORD2(v20));
      v16 = HIWORD(v20);
LABEL_50:
      Hasher._combine(_:)(v16);
      return;
    case 0x16u:
      v17 = 22;
      goto LABEL_52;
    case 0x17u:
      v17 = 23;
LABEL_52:
      MEMORY[0x266772770](v17);
      type metadata accessor for CGColorRef(0);
      lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
      _CFObject.hash(into:)();
      break;
    default:
      v26 = *v1;
      MEMORY[0x266772770](0);
      v2 = v26 & 1;
LABEL_26:
      Hasher._combine(_:)(v2);
      break;
  }
}

Swift::Int SGDataTypeStorage.hashValue.getter()
{
  Hasher.init(_seed:)();
  SGDataTypeStorage.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGDataTypeStorage()
{
  Hasher.init(_seed:)();
  SGDataTypeStorage.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGDataTypeStorage(uint64_t a1)
{
  Hasher.init(_seed:)();
  SGDataTypeStorage.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SGDataTypeStorage(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8 = a1[4].i8[0];
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10 = a2[4].i8[0];
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static SGDataTypeStorage.== infix(_:_:)(v7, v9) & 1;
}

uint64_t SGDataType.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  SGDataType.stringValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

void *protocol witness for Decodable.init(from:) in conformance SGDataType@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized SGDataType.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SGDataType(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  SGDataType.stringValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

Swift::Int ShaderType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int Surface.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  return Hasher._finalize()();
}

void specialized SIMD.hash(into:)(__n128 a1)
{
  if (a1.n128_f32[0] == 0.0)
  {
    v1 = 0.0;
  }

  else
  {
    v1 = a1.n128_f32[0];
  }

  Hasher._combine(_:)(LODWORD(v1));
  v2 = a1.n128_f32[1];
  if (a1.n128_f32[1] == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v2));
  v3 = a1.n128_f32[2];
  if (a1.n128_f32[2] == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v3));
  v4 = a1.n128_f32[3];
  if (a1.n128_f32[3] == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v4));
}

{
  if (a1.n128_f32[0] == 0.0)
  {
    v1 = 0.0;
  }

  else
  {
    v1 = a1.n128_f32[0];
  }

  Hasher._combine(_:)(LODWORD(v1));
  v2 = a1.n128_f32[1];
  if (a1.n128_f32[1] == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v2));
  v3 = a1.n128_f32[2];
  if (a1.n128_f32[2] == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v3));
}

uint64_t specialized static SGDataTypeStorage.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  switch(a1[4].i8[0])
  {
    case 1:
      if (a2[4].i8[0] != 1)
      {
        goto LABEL_102;
      }

      v6 = a2->u8[0] == v2.u8[0];
      return v6 & 1;
    case 2:
      if (a2[4].i8[0] == 2)
      {
        goto LABEL_36;
      }

      goto LABEL_102;
    case 3:
      if (a2[4].i8[0] != 3)
      {
        goto LABEL_102;
      }

LABEL_36:
      v6 = v2.i32[0] == a2->i32[0];
      return v6 & 1;
    case 4:
      if (a2[4].i8[0] != 4)
      {
        goto LABEL_102;
      }

      v6 = a2->u16[0] == v2.u16[0];
      return v6 & 1;
    case 5:
      if (a2[4].i8[0] != 5)
      {
        goto LABEL_102;
      }

      v6 = v2.f32[0] == a2->f32[0];
      return v6 & 1;
    case 6:
      if (a2[4].i8[0] != 6)
      {
        goto LABEL_102;
      }

      if (v2.i64[0] == a2->i64[0] && v2.i64[1] == a2->i64[1])
      {
        v6 = 1;
        return v6 & 1;
      }

      else
      {

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

    case 7:
      if (a2[4].i8[0] == 7)
      {
        v8 = vceq_f32(*v2.f32, *a2->f32);
        if (v8.i8[0])
        {
          goto LABEL_88;
        }
      }

      goto LABEL_102;
    case 8:
      v6 = 0;
      if (a2[4].i8[0] == 8)
      {
        v40 = vmovn_s32(vceqq_f32(v2, *a2));
        if (v40.i8[0] & 1) != 0 && (v40.i8[2])
        {
          v6 = v40.i8[4];
        }
      }

      return v6 & 1;
    case 9:
      v6 = 0;
      if (a2[4].i8[0] != 9)
      {
        return v6 & 1;
      }

      v15 = vmovn_s32(vceqq_f32(v2, *a2));
      if ((v15.i8[0] & 1) == 0 || (v15.i8[2] & 1) == 0 || (v15.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      goto LABEL_34;
    case 0xA:
      if (a2[4].i8[0] != 10)
      {
        goto LABEL_102;
      }

      v3.i16[0] = a2->i16[0];
      v3.i16[2] = a2->i16[1];
      v2.i32[0] = v2.u16[0];
      v2.i32[1] = HIWORD(a1->u32[0]);
      *v3.f32 = vand_s8(*v3.f32, 0xFFFF0000FFFFLL);
      goto LABEL_87;
    case 0xB:
      if (a2[4].i8[0] != 11)
      {
        goto LABEL_102;
      }

      v11.i32[0] = v2.u16[0];
      v11.i32[1] = v2.u16[1];
      v12 = vceq_s32(v11, *&vmovl_u16(*a2->f32));
      if ((v12.i32[0] & v12.i32[1] & 1) == 0)
      {
        goto LABEL_102;
      }

      v6 = vceq_s16(*&v2, *a2).i8[4];
      return v6 & 1;
    case 0xC:
      if (a2[4].i8[0] != 12)
      {
        goto LABEL_102;
      }

      v6 = 0;
      v13.i32[0] = v2.u16[0];
      v13.i32[1] = v2.u16[1];
      v14 = vceq_s32(v13, *&vmovl_u16(*a2->f32));
      if ((v14.i8[0] & 1) == 0)
      {
        return v6 & 1;
      }

      if ((v14.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      v15 = vceq_s16(*v2.f32, *a2->f32);
      if ((v15.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      goto LABEL_34;
    case 0xD:
      if (a2[4].i8[0] != 13)
      {
        goto LABEL_102;
      }

      v3.i64[0] = a2->i64[0];
LABEL_87:
      v8 = vceq_s32(*v2.f32, *v3.f32);
      if (v8.i8[0])
      {
        goto LABEL_88;
      }

      goto LABEL_102;
    case 0xE:
      if (a2[4].i8[0] != 14)
      {
        goto LABEL_102;
      }

      v9 = vmovn_s32(vceqq_s32(*a2, v2)).u32[0];
      if ((v9 & HIWORD(v9) & 1) == 0)
      {
        goto LABEL_102;
      }

      v10 = vceqq_s32(*a2, v2);
      goto LABEL_49;
    case 0xF:
      if (a2[4].i8[0] != 15)
      {
        goto LABEL_102;
      }

      v6 = 0;
      v16 = vmovn_s32(vceqq_s32(*a2, v2));
      if ((v16.i8[0] & 1) == 0 || (v16.i8[2] & 1) == 0 || (v16.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      v15 = vmovn_s32(vceqq_s32(*a2, v2));
      goto LABEL_34;
    case 0x10:
      if (a2[4].i8[0] != 16)
      {
        goto LABEL_102;
      }

      v6 = 0;
      v7 = vceq_f32(*v2.f32, *a2->f32);
      if ((v7.i8[0] & 1) == 0)
      {
        return v6 & 1;
      }

      if ((v7.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      v8 = vceq_f32(*&vextq_s8(v2, v2, 8uLL), *&a2->u32[2]);
      if ((v8.i8[0] & 1) == 0)
      {
        return v6 & 1;
      }

LABEL_88:
      v6 = v8.i8[4];
      return v6 & 1;
    case 0x11:
      v6 = 0;
      if (a2[4].i8[0] != 17)
      {
        return v6 & 1;
      }

      v17 = vmovn_s32(vceqq_f32(v2, *a2));
      if ((v17.i8[0] & 1) == 0)
      {
        return v6 & 1;
      }

      v6 = 0;
      if ((v17.i8[2] & 1) == 0)
      {
        return v6 & 1;
      }

      if ((v17.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      v18 = a2[1];
      if ((vmovn_s32(vceqq_f32(v3, v18)).u8[0] & 1) == 0)
      {
        return v6 & 1;
      }

      v19 = a2[2];
      if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(vextq_s8(v3, v3, 0xCuLL), v4, 8uLL), vextq_s8(vextq_s8(v18, v18, 0xCuLL), v19, 8uLL)))) & 1) == 0)
      {
        goto LABEL_102;
      }

      v10 = vceqq_f32(v4, v19);
LABEL_49:
      v6 = vmovn_s32(v10).i8[4];
      return v6 & 1;
    case 0x12:
      v6 = 0;
      if (a2[4].i8[0] != 18)
      {
        return v6 & 1;
      }

      v36 = vmovn_s32(vceqq_f32(v2, *a2));
      if ((v36.i8[0] & 1) == 0 || (v36.i8[2] & 1) == 0)
      {
        return v6 & 1;
      }

      v37 = a2[1];
      if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(v2, v3, 8uLL), vextq_s8(*a2, v37, 8uLL)))) & 1) == 0)
      {
        goto LABEL_102;
      }

      v38 = a2[2];
      if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(v3, v4, 8uLL), vextq_s8(v37, v38, 8uLL)))) & 1) == 0)
      {
        goto LABEL_102;
      }

      v6 = 0;
      v39 = a2[3];
      if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(v4, v5, 8uLL), vextq_s8(v38, v39, 8uLL)))) & 1) == 0)
      {
        return v6 & 1;
      }

      v15 = vmovn_s32(vceqq_f32(v5, v39));
      if ((v15.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      goto LABEL_34;
    case 0x13:
      if (a2[4].i8[0] != 19)
      {
        goto LABEL_102;
      }

      v6 = 0;
      v3.i16[2] = HIWORD(a1->i64[0]);
      v3.i16[0] = WORD2(a1->i64[0]);
      v4.i16[0] = a2->i16[2];
      v4.i16[2] = a2->i16[3];
      v41.i32[0] = a2->u16[0];
      v41.i32[1] = a2->u16[1];
      v2.i32[0] = v2.u16[0];
      v2.i32[1] = HIWORD(a1->u32[0]);
      *v2.f32 = vceq_s32(*v2.f32, v41);
      if (v2.i8[0] & 1) != 0 && (v2.i8[4] & 1) != 0 && (vceq_s32(vand_s8(*v3.f32, 0xFFFF0000FFFFLL), vand_s8(*v4.f32, 0xFFFF0000FFFFLL)).u32[0])
      {
        v6 = vceq_s32(vand_s8(*&v3, 0xFFFF0000FFFFLL), vand_s8(*&v4, 0xFFFF0000FFFFLL)).i8[4];
      }

      return v6 & 1;
    case 0x14:
      v6 = 0;
      if (a2[4].i8[0] != 20)
      {
        return v6 & 1;
      }

      v20 = *a2->f32;
      if ((vceq_s16(*v2.f32, *a2->f32).u8[0] & 1) == 0)
      {
        return v6 & 1;
      }

      v6 = 0;
      v21.i32[0] = v2.u16[1];
      v21.i32[1] = v2.u16[2];
      v20.i32[0] = v20.u16[1];
      v20.i32[1] = v20.u16[2];
      v22 = vceq_s32(vand_s8(v21, 0xFFFF0000FFFFLL), vand_s8(v20, 0xFFFF0000FFFFLL));
      if ((v22.i8[0] & 1) == 0)
      {
        return v6 & 1;
      }

      if ((v22.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      v23 = vextq_s8(v2, v2, 8uLL).u64[0];
      v24 = *&a2->u32[2];
      if ((vceq_s16(v23, v24).u8[0] & 1) == 0)
      {
        return v6 & 1;
      }

      v25 = *a2[1].f32;
      if ((vminv_u16(vceq_s16(vext_s8(vext_s8(v23, v23, 6uLL), *v3.f32, 4uLL), vext_s8(vext_s8(v24, v24, 6uLL), v25, 4uLL))) & 1) == 0)
      {
        goto LABEL_102;
      }

      v6 = vceq_s16(*&v3, v25).i8[4];
      return v6 & 1;
    case 0x15:
      v6 = 0;
      v27 = *a2->f32;
      v26 = *&a2->u32[2];
      v29 = *a2[1].f32;
      v28 = *&a2[1].u32[2];
      if (a2[4].i8[0] != 21)
      {
        return v6 & 1;
      }

      v30.i32[0] = v2.u16[0];
      v30.i32[1] = v2.u16[1];
      v31 = vceq_s32(v30, *&vmovl_u16(v27));
      if ((v31.i8[0] & 1) == 0 || (v31.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

      v32 = vextq_s8(v2, v2, 8uLL).u64[0];
      if ((vminv_u16(vceq_s16(vext_s8(*v2.f32, v32, 4uLL), vext_s8(v27, v26, 4uLL))) & 1) == 0 || (vminv_u16(vceq_s16(vext_s8(v32, *v3.f32, 4uLL), vext_s8(v26, v29, 4uLL))) & 1) == 0)
      {
        goto LABEL_102;
      }

      v6 = 0;
      v33 = vextq_s8(v3, v3, 8uLL).u64[0];
      if ((vminv_u16(vceq_s16(vext_s8(*v3.f32, v33, 4uLL), vext_s8(v29, v28, 4uLL))) & 1) == 0)
      {
        return v6 & 1;
      }

      v15 = vceq_s16(v28, v33);
      if ((v15.i8[4] & 1) == 0)
      {
        return v6 & 1;
      }

LABEL_34:
      v6 = v15.i8[6];
      return v6 & 1;
    case 0x16:
      if (a2[4].i8[0] == 22)
      {
        goto LABEL_101;
      }

      goto LABEL_102;
    case 0x17:
      if (a2[4].i8[0] != 23)
      {
        goto LABEL_102;
      }

LABEL_101:
      type metadata accessor for CGColorRef(0);
      lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
      return static _CFObject.== infix(_:_:)() & 1;
    default:
      if (a2[4].i8[0])
      {
LABEL_102:
        v6 = 0;
      }

      else
      {
        v6 = v2.i8[0] & 1 ^ a2->i8[0] ^ 1;
      }

      return v6 & 1;
  }
}

uint64_t specialized CGColorCodingContainer.init(_:)(CGColor *a1)
{
  v3 = CGColorRef.components.getter();
  if (v3)
  {
    v1 = v3;
    v4 = CGColorGetColorSpace(a1);
    if (v4)
    {
      v5 = v4;
      v6 = CGColorSpaceCopyName(v4);

      if (v6)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

          goto LABEL_7;
        }

        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }
  }

LABEL_7:
  lazy protocol witness table accessor for type APIError and conformance APIError();
  swift_allocError();
  *v7 = a1;
  *(v7 + 8) = 0;
  *(v7 + 16) = 13;
  swift_willThrow();
  return v1;
}

uint64_t specialized Surface.init(nodeDefID:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000021 && 0x8000000265F2BC10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  if (a1 == 0xD00000000000001FLL && 0x8000000265F2BC40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_8;
  }

  if (a1 == 0xD000000000000022 && 0x8000000265F2BBE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  if (a1 == 0xD000000000000021 && 0x8000000265F2D740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  if (a1 == 0xD00000000000002BLL && 0x8000000265F2D770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000002FLL && 0x8000000265F2D7A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else
  {
    if (a1 == 0xD000000000000021 && 0x8000000265F332A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
LABEL_8:

      return 0;
    }

    if (a1 == 0xD000000000000010 && 0x8000000265F332D0 == a2)
    {

      return 4;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        return 5;
      }

      return 4;
    }
  }
}

uint64_t specialized SGDataTypeStorage.init(type:scalar:)@<X0>(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, uint64_t a3@<X0>)
{
  if (a3 <= 5)
  {
    switch(a3)
    {
      case 1:
        result = [a2 BOOLValue];
        v7 = 0;
        v5 = 0;
        LOBYTE(v6) = 0;
        goto LABEL_17;
      case 2:
        result = [a2 unsignedCharValue];
        v5 = 0;
        LOBYTE(v6) = 0;
        v7 = 1;
        goto LABEL_17;
      case 3:
        result = [a2 intValue];
        v6 = result >> 8;
        v5 = result & 0xFFFF0000;
        v7 = 2;
        goto LABEL_17;
    }

LABEL_14:
    v9 = SGDataType.stringValue.getter();
    v11 = v10;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v12 = v9;
    *(v12 + 8) = v11;
    *(v12 + 16) = 2;
    return swift_willThrow();
  }

  if (a3 > 8)
  {
    if (a3 == 9 || a3 == 10)
    {
      [a2 floatValue];
      result = v8;
      v6 = v8 >> 8;
      v5 = v8 & 0xFFFF0000;
      v7 = 5;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (a3 == 6)
  {
    result = [a2 unsignedIntValue];
    v6 = result >> 8;
    v5 = result & 0xFFFF0000;
    v7 = 3;
    goto LABEL_17;
  }

  if (a3 != 7)
  {
    goto LABEL_14;
  }

  result = [a2 unsignedShortValue];
  v5 = 0;
  v6 = result >> 8;
  v7 = 4;
LABEL_17:
  *a1 = v5 | (v6 << 8) | result;
  *(a1 + 64) = v7;
  return result;
}

void specialized SGDataTypeStorage.init(type:value:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  switch(a1)
  {
    case 14:
      toSIMDMat2fCols(_:)(a2);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      v57 = v32;
      v65 = v31;

      v9 = v57;
      *&v12 = v65;
      *(&v12 + 1) = v57;
      v13 = 16;
      goto LABEL_31;
    case 15:
      toSIMDMat3fCols(_:)(a2);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      v56 = v29;
      v64 = v28;
      v54 = v30;

      v10 = v54;
      v9 = v56;
      v12 = v64;
      v13 = 17;
      goto LABEL_31;
    case 17:
      toSIMDMat4fCols(_:)(a2);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      v58 = v36;
      v67 = v35;
      v53 = v38;
      v55 = v37;

      v11 = v53;
      v10 = v55;
      v9 = v58;
      v12 = v67;
      v13 = 18;
      goto LABEL_31;
    case 18:
    case 29:
    case 44:
      v18 = NSArray.attemptCastToFloatArray(withLength:)(4);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4Vys5Int32VG_SayAJGTt1g5Tf4g_n(v18);
      v62 = v19;

      v12 = v62;
      v13 = 9;
      goto LABEL_31;
    case 20:
    case 30:
    case 45:
      v16 = NSArray.attemptCastToFloat16Array(withLength:)(4);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4Vys6UInt16VG_SayAJGTt1g5Tf4g_n(v16);
      v61 = v17;

      v12 = v61;
      v13 = 12;
      goto LABEL_31;
    case 21:
    case 49:
      v20 = NSArray.attemptCastToFloatArray(withLength:)(2);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys5Int32VG_SayAJGTt1g5Tf4g_n(v20);
      v63 = v21;

      v12 = v63;
      v13 = 7;
      goto LABEL_31;
    case 22:
    case 47:
      v22 = NSArray.attemptCastToFloat16Array(withLength:)(2);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      v23 = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys6UInt16VG_SayAJGTt1g5Tf4g_n(v22);

      LODWORD(v12) = v23;
      v13 = 10;
      goto LABEL_31;
    case 24:
      v33 = NSArray.attemptCastToInt32Array(withLength:)(2);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys5Int32VG_SayAJGTt1g5Tf4g_n(v33);
      v66 = v34;

      v12 = v66;
      v13 = 13;
      goto LABEL_31;
    case 25:
    case 32:
    case 35:
    case 38:
    case 41:
    case 52:
      v6 = NSArray.attemptCastToFloatArray(withLength:)(3);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3Vys5Int32VG_SayAJGTt1g5Tf4g_n(v6);
      v59 = v8;

      v12 = v59;
      v13 = 8;
      goto LABEL_31;
    case 26:
    case 33:
    case 36:
    case 39:
    case 42:
    case 50:
      v14 = NSArray.attemptCastToFloat16Array(withLength:)(3);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3Vys6UInt16VG_SayAJGTt1g5Tf4g_n(v14);
      v60 = v15;

      v12 = v60;
      v13 = 11;
      goto LABEL_31;
    case 28:
      v41 = NSArray.attemptCastToInt32Array(withLength:)(3);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3Vys5Int32VG_SayAJGTt1g5Tf4g_n(v41);
      v69 = v52;

      v12 = v69;
      v13 = 14;
      goto LABEL_31;
    case 31:
      v39 = NSArray.attemptCastToInt32Array(withLength:)(4);
      v7 = v3;
      if (v3)
      {
        goto LABEL_26;
      }

      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4Vys5Int32VG_SayAJGTt1g5Tf4g_n(v39);
      v68 = v40;

      v12 = v68;
      v13 = 15;
LABEL_31:
      *a3 = v12;
      *(a3 + 16) = v9;
      *(a3 + 32) = v10;
      *(a3 + 48) = v11;
      *(a3 + 64) = v13;
      break;
    default:
      v24 = SGDataType.stringValue.getter();
      v26 = v25;
      lazy protocol witness table accessor for type APIError and conformance APIError();
      v7 = swift_allocError();
      *v27 = v24;
      *(v27 + 8) = v26;
      *(v27 + 16) = 3;
      swift_willThrow();
LABEL_26:
      v77 = v7;
      v42 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {

        v73 = v76[2];
        v74 = v76[3];
        v75 = v76[4];
        v71 = v76[0];
        v72 = v76[1];
        lazy protocol witness table accessor for type APIError and conformance APIError();
        v43 = swift_allocError();
        *v44 = xmmword_265F23200;
        *(v44 + 16) = 24;
        lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
        v45 = swift_allocError();
        *v46 = v71;
        v47 = v75;
        v49 = v72;
        v48 = v73;
        v46[3] = v74;
        v46[4] = v47;
        v46[1] = v49;
        v46[2] = v48;
        outlined init with copy of SGInternalError(&v71, v70);
        v50 = specialized NestedError.init(_:_:)(v43, v45);
        lazy protocol witness table accessor for type NestedError and conformance NestedError();
        swift_allocError();
        *v51 = v50;
        swift_willThrow();

        outlined destroy of SGInternalError(&v71);
      }

      else
      {
      }

      break;
  }
}

uint64_t specialized CGColorCodingContainer.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph013CGColorCodingC033_CD6631401A2AE747392C635D64A9AA27LLV0G4KeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph013CGColorCodingC033_CD6631401A2AE747392C635D64A9AA27LLV0G4KeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  lazy protocol witness table accessor for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatVGMd, &_sSay12CoreGraphics7CGFloatVGMR);
    v9[7] = 0;
    lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGFloat] and conformance <A> [A], lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x277D83978]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v10;
    v9[6] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t specialized SGDataTypeStorage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph17SGDataTypeStorageO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph17SGDataTypeStorageO10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v71 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v78 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v9;
  v12 = v10;
  v13 = v9 == 1819242338 && v10 == 0xE400000000000000;
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v20 = v11 == 0x7261686375 && v12 == 0xE500000000000000;
    if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v76.n128_u8[0] = 1;
      v21 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v6 + 8))(v8, v5);
      v22.n128_u32[0] = v21;
      v74 = v22;
      v16 = 1;
      goto LABEL_11;
    }

    v23 = v11 == 7630441 && v12 == 0xE300000000000000;
    if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v76.n128_u8[0] = 1;
      v24 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v6 + 8))(v8, v5);
      v25.n128_u32[0] = v24;
      v74 = v25;
      v16 = 2;
      goto LABEL_11;
    }

    v26 = v11 == 1953393013 && v12 == 0xE400000000000000;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v76.n128_u8[0] = 1;
      v27 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v6 + 8))(v8, v5);
      v28.n128_u32[0] = v27;
      v74 = v28;
      v16 = 3;
      goto LABEL_11;
    }

    if (v11 == 1718378856 && v12 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v76.n128_u8[0] = 1;
      v29 = KeyedDecodingContainer.decode(_:forKey:)();
      v30 = (*(v6 + 8))(v8, v5);
      v30.n128_u32[0] = v29;
      v74 = v30;
      v16 = 4;
      goto LABEL_11;
    }

    if (v11 == 0x74616F6C66 && v12 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v76.n128_u8[0] = 1;
      KeyedDecodingContainer.decode(_:forKey:)();
      v74 = v31;
      (*(v6 + 8))(v8, v5);
      v16 = 5;
      goto LABEL_11;
    }

    if (v11 == 0x676E69727473 && v12 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v76.n128_u8[0] = 1;
      v32 = KeyedDecodingContainer.decode(_:forKey:)();
      v34 = v33;
      (*(v6 + 8))(v8, v5);
      v35.n128_u64[0] = v32;
      v35.n128_u64[1] = v34;
      v74 = v35;
      v16 = 6;
      goto LABEL_11;
    }

    if (v11 == 0x6632726F74636576 && v12 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
      LOBYTE(v75) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, &_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR, MEMORY[0x277D84AD8]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v36 = (*(v6 + 8))(v8, v5);
      v36.n128_u64[0] = v76.n128_u64[0];
      v74 = v36;
      v16 = 7;
      goto LABEL_11;
    }

    if (v11 == 0x6633726F74636576 && v12 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      LOBYTE(v75) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x277D84AF8]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v6 + 8))(v8, v5);
      v74 = v76;
      v16 = 8;
      goto LABEL_11;
    }

    if (v11 == 0x6634726F74636576 && v12 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
      LOBYTE(v75) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR, MEMORY[0x277D84B20]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v6 + 8))(v8, v5);
      v74 = v76;
      v16 = 9;
      goto LABEL_11;
    }

    if (v11 == 0x6832726F74636576 && v12 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2Vys6UInt16VGMd, &_ss5SIMD2Vys6UInt16VGMR);
      LOBYTE(v75) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD2<UInt16> and conformance SIMD2<A>, &_ss5SIMD2Vys6UInt16VGMd, &_ss5SIMD2Vys6UInt16VGMR, MEMORY[0x277D84AD8]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v37 = (*(v6 + 8))(v8, v5);
      v37.n128_u32[0] = v76.n128_u32[0];
      v74 = v37;
      v16 = 10;
      goto LABEL_11;
    }

    if (v11 == 0x6833726F74636576 && v12 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3Vys6UInt16VGMd, &_ss5SIMD3Vys6UInt16VGMR);
      LOBYTE(v75) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD3<UInt16> and conformance SIMD3<A>, &_ss5SIMD3Vys6UInt16VGMd, &_ss5SIMD3Vys6UInt16VGMR, MEMORY[0x277D84AF8]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v38 = (*(v6 + 8))(v8, v5);
      v38.n128_u64[0] = v76.n128_u64[0];
      v74 = v38;
      v16 = 11;
      goto LABEL_11;
    }

    if (v11 == 0x6834726F74636576 && v12 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4Vys6UInt16VGMd, &_ss5SIMD4Vys6UInt16VGMR);
      LOBYTE(v75) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD4<UInt16> and conformance SIMD4<A>, &_ss5SIMD4Vys6UInt16VGMd, &_ss5SIMD4Vys6UInt16VGMR, MEMORY[0x277D84B20]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v39 = (*(v6 + 8))(v8, v5);
      v39.n128_u64[0] = v76.n128_u64[0];
      v74 = v39;
      v16 = 12;
      goto LABEL_11;
    }

    if (v11 == 0x6932726F74636576 && v12 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2Vys5Int32VGMd, &_ss5SIMD2Vys5Int32VGMR);
      LOBYTE(v75) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD2<Int32> and conformance SIMD2<A>, &_ss5SIMD2Vys5Int32VGMd, &_ss5SIMD2Vys5Int32VGMR, MEMORY[0x277D84AD8]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v40 = (*(v6 + 8))(v8, v5);
      v40.n128_u64[0] = v76.n128_u64[0];
      v74 = v40;
      v16 = 13;
      goto LABEL_11;
    }

    if (v11 == 0x6933726F74636576 && v12 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3Vys5Int32VGMd, &_ss5SIMD3Vys5Int32VGMR);
      LOBYTE(v75) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD3<Int32> and conformance SIMD3<A>, &_ss5SIMD3Vys5Int32VGMd, &_ss5SIMD3Vys5Int32VGMR, MEMORY[0x277D84AF8]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v6 + 8))(v8, v5);
      v74 = v76;
      v16 = 14;
      goto LABEL_11;
    }

    if (v11 == 0x6934726F74636576 && v12 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4Vys5Int32VGMd, &_ss5SIMD4Vys5Int32VGMR);
      LOBYTE(v75) = 1;
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD4<Int32> and conformance SIMD4<A>, &_ss5SIMD4Vys5Int32VGMd, &_ss5SIMD4Vys5Int32VGMR, MEMORY[0x277D84B20]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v6 + 8))(v8, v5);
      v74 = v76;
      v16 = 15;
      goto LABEL_11;
    }

    if (v11 == 0x663278697274616DLL && v12 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2VySfGGMd, &_sSays5SIMD2VySfGGMR);
      LOBYTE(v75) = 1;
      lazy protocol witness table accessor for type [SIMD2<Float>] and conformance <A> [A]();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v42 = *(v76.n128_u64[0] + 16);
      if (v42 == 2)
      {
        v41.n128_u64[0] = *(v76.n128_u64[0] + 32);
        v74 = v41;
        v41.n128_u64[0] = *(v76.n128_u64[0] + 40);
        v73 = v41;

        (*(v6 + 8))(v8, v5);
        v43.n128_u64[0] = v74.n128_u64[0];
        v43.n128_u64[1] = v73.n128_u64[0];
        v74 = v43;
        v16 = 16;
        goto LABEL_11;
      }

      v76.n128_u64[0] = 0;
      v76.n128_u64[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v45 = "Incorrect number of columns for matrix2f. Expected 2, got ";
      goto LABEL_102;
    }

    if (v11 == 0x663378697274616DLL && v12 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3VySfGGMd, &_sSays5SIMD3VySfGGMR);
      LOBYTE(v75) = 1;
      lazy protocol witness table accessor for type [SIMD3<Float>] and conformance <A> [A]();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v42 = *(v76.n128_u64[0] + 16);
      if (v42 == 3)
      {
        v44 = *(v76.n128_u64[0] + 32);
        v73 = *(v76.n128_u64[0] + 48);
        v74 = v44;
        v72 = *(v76.n128_u64[0] + 64);

        (*(v6 + 8))(v8, v5);
        v16 = 17;
        goto LABEL_11;
      }

      v76.n128_u64[0] = 0;
      v76.n128_u64[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v45 = "Incorrect number of columns for matrix3f. Expected 3, got ";
      goto LABEL_102;
    }

    if (v11 == 0x663478697274616DLL && v12 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4VySfGGMd, &_sSays5SIMD4VySfGGMR);
      LOBYTE(v75) = 1;
      lazy protocol witness table accessor for type [SIMD4<Float>] and conformance <A> [A]();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v42 = *(v76.n128_u64[0] + 16);
      if (v42 == 4)
      {
        v46 = *(v76.n128_u64[0] + 32);
        v73 = *(v76.n128_u64[0] + 48);
        v74 = v46;
        v47 = *(v76.n128_u64[0] + 64);
        v71 = *(v76.n128_u64[0] + 80);
        v72 = v47;

        (*(v6 + 8))(v8, v5);
        v16 = 18;
        goto LABEL_11;
      }

      v76.n128_u64[0] = 0;
      v76.n128_u64[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v45 = "Incorrect number of columns for matrix4f. Expected 4, got ";
LABEL_102:
      MEMORY[0x266771550](0xD00000000000003ALL, (v45 - 32) | 0x8000000000000000);
      v75 = v42;
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v54);

      MEMORY[0x266771550](46, 0xE100000000000000);
      v56 = v76.n128_u64[1];
      v55 = v76.n128_u64[0];
      lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
      swift_allocError();
      *v57 = 3;
      v57[1] = 0;
      v57[2] = 0;
      v57[3] = 0;
LABEL_103:
      v57[4] = 0x8000000000000000;
      v57[5] = 0;
      v57[6] = 0;
      v57[7] = 0;
      v57[8] = v55;
      v57[9] = v56;
LABEL_104:
      swift_willThrow();
LABEL_3:
      (*(v6 + 8))(v8, v5);
      return __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    if (v11 == 0x33726F6C6F636763 && v12 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      LOBYTE(v75) = 1;
      lazy protocol witness table accessor for type CGColorCodingContainer and conformance CGColorCodingContainer();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v74.n128_u64[0] = v76.n128_u64[0];
      v48 = v77;
      *&v72 = v76.n128_u64[1];
      v49 = MEMORY[0x266771450]();
      v50 = CGColorSpaceCreateWithName(v49);

      v73.n128_u64[0] = v50;
      if (v50)
      {

        v51 = CGColorCreate(v73.n128_u64[0], (v74.n128_u64[0] + 32));
        if (v51)
        {
          v52 = v51;
          (*(v6 + 8))(v8, v5);

          v53.n128_u64[0] = v52;
          v74 = v53;
          v16 = 22;
          goto LABEL_11;
        }

        goto LABEL_112;
      }
    }

    else
    {
      if ((v11 != 0x34726F6C6F636763 || v12 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v76.n128_u64[0] = 0;
        v76.n128_u64[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(28);

        v76.n128_u64[0] = 0xD00000000000001ALL;
        v76.n128_u64[1] = 0x8000000265F33350;
        MEMORY[0x266771550](v11, v12);

        v56 = v76.n128_u64[1];
        v55 = v76.n128_u64[0];
        lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
        swift_allocError();
        *v57 = 0u;
        *(v57 + 1) = 0u;
        goto LABEL_103;
      }

      LOBYTE(v75) = 1;
      lazy protocol witness table accessor for type CGColorCodingContainer and conformance CGColorCodingContainer();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v74.n128_u64[0] = v76.n128_u64[0];
      v48 = v77;
      *&v72 = v76.n128_u64[1];
      v58 = MEMORY[0x266771450]();
      v59 = CGColorSpaceCreateWithName(v58);

      v73.n128_u64[0] = v59;
      if (v59)
      {

        v60 = CGColorCreate(v73.n128_u64[0], (v74.n128_u64[0] + 32));
        if (v60)
        {
          v61 = v60;
          (*(v6 + 8))(v8, v5);

          v62.n128_u64[0] = v61;
          v74 = v62;
          v16 = 23;
          goto LABEL_11;
        }

LABEL_112:
        v76.n128_u64[0] = 0;
        v76.n128_u64[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(65);
        MEMORY[0x266771550](0xD00000000000002BLL, 0x8000000265F333A0);
        v65 = MEMORY[0x2667717B0](v74.n128_u64[0], MEMORY[0x277D85048]);
        v67 = v66;

        MEMORY[0x266771550](v65, v67);

        MEMORY[0x266771550](0xD000000000000011, 0x8000000265F333D0);
        v68 = v73.n128_u64[0];
        v75 = v73.n128_u64[0];
        type metadata accessor for CGColorSpaceRef(0);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x266771550](39, 0xE100000000000000);
        v69 = v76;
        lazy protocol witness table accessor for type APIError and conformance APIError();
        swift_allocError();
        *v70 = v69;
        v70[1].n128_u8[0] = 14;
        swift_willThrow();

        goto LABEL_3;
      }
    }

    v76.n128_u64[0] = 0;
    v76.n128_u64[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v76.n128_u64[0] = 0xD00000000000002ALL;
    v76.n128_u64[1] = 0x8000000265F33370;

    MEMORY[0x266771550](v72, v48);
    swift_bridgeObjectRelease_n();

    MEMORY[0x266771550](39, 0xE100000000000000);
    v63 = v76;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v64 = v63;
    v64[1].n128_u8[0] = 14;
    goto LABEL_104;
  }

  v76.n128_u8[0] = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v16 = 0;
  v17.n128_u32[0] = v14 & 1;
  v74 = v17;
LABEL_11:
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v18 = v73;
  *a2 = v74;
  *(a2 + 16) = v18;
  v19 = v71;
  *(a2 + 32) = v72;
  *(a2 + 48) = v19;
  *(a2 + 64) = v16;
  return result;
}

unint64_t lazy protocol witness table accessor for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeStorage.CodingKeys and conformance SGDataTypeStorage.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGColorCodingContainer and conformance CGColorCodingContainer()
{
  result = lazy protocol witness table cache variable for type CGColorCodingContainer and conformance CGColorCodingContainer;
  if (!lazy protocol witness table cache variable for type CGColorCodingContainer and conformance CGColorCodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorCodingContainer and conformance CGColorCodingContainer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGColorCodingContainer and conformance CGColorCodingContainer;
  if (!lazy protocol witness table cache variable for type CGColorCodingContainer and conformance CGColorCodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorCodingContainer and conformance CGColorCodingContainer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SIMD4<UInt16>] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SIMD4<UInt16>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD4<UInt16>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD4Vys6UInt16VGGMd, &_sSays5SIMD4Vys6UInt16VGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD4<UInt16> and conformance SIMD4<A>, &_ss5SIMD4Vys6UInt16VGMd, &_ss5SIMD4Vys6UInt16VGMR, MEMORY[0x277D84B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD4<UInt16>] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SIMD3<UInt16>] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SIMD3<UInt16>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD3<UInt16>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD3Vys6UInt16VGGMd, &_sSays5SIMD3Vys6UInt16VGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD3<UInt16> and conformance SIMD3<A>, &_ss5SIMD3Vys6UInt16VGMd, &_ss5SIMD3Vys6UInt16VGMR, MEMORY[0x277D84AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD3<UInt16>] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SIMD2<UInt16>] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SIMD2<UInt16>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD2<UInt16>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD2Vys6UInt16VGGMd, &_sSays5SIMD2Vys6UInt16VGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD2<UInt16> and conformance SIMD2<A>, &_ss5SIMD2Vys6UInt16VGMd, &_ss5SIMD2Vys6UInt16VGMR, MEMORY[0x277D84AD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD2<UInt16>] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SIMD4<Float>] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SIMD4<Float>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD4<Float>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD4VySfGGMd, &_sSays5SIMD4VySfGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR, MEMORY[0x277D84B18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD4<Float>] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SIMD4<Float>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD4<Float>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD4VySfGGMd, &_sSays5SIMD4VySfGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR, MEMORY[0x277D84B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD4<Float>] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SIMD3<Float>] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SIMD3<Float>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD3<Float>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD3VySfGGMd, &_sSays5SIMD3VySfGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x277D84AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD3<Float>] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SIMD3<Float>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD3<Float>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD3VySfGGMd, &_sSays5SIMD3VySfGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x277D84AF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD3<Float>] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SIMD2<Float>] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SIMD2<Float>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD2<Float>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD2VySfGGMd, &_sSays5SIMD2VySfGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, &_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR, MEMORY[0x277D84AD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD2<Float>] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [SIMD2<Float>] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SIMD2<Float>] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5SIMD2VySfGGMd, &_sSays5SIMD2VySfGGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type SIMD2<Float> and conformance SIMD2<A>, &_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR, MEMORY[0x277D84AD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SIMD2<Float>] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef()
{
  result = lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef;
  if (!lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef)
  {
    type metadata accessor for CGColorRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef);
  }

  return result;
}

uint64_t specialized SGDataType.init(_:)(uint64_t a1, unint64_t a2)
{
  v3 = a1 == 1819242338 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261686375 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7630441 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1953393013 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1718378856 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65646F63656D6974 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7465737361 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x663278697274616DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x663378697274616DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x663478697274616DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6674617571 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6874617571 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x3274616F6C66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x32666C6168 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 846491241 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x3374616F6C66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x33666C6168 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 863268457 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x3474616F6C66 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x34666C6168 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 880045673 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x6633746E696F70 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x6833746E696F70 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x66336C616D726F6ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x68336C616D726F6ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0x6633726F74636576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x6833726F74636576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x6633726F6C6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0x6833726F6C6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x6634726F6C6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x6834726F6C6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x64726F6F43786574 && a2 == 0xEA00000000006832 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0x64726F6F43786574 && a2 == 0xEA00000000006632 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0x64726F6F43786574 && a2 == 0xEA00000000006833 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0x64726F6F43786574 && a2 == 0xEA00000000006633 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0x5365636166727573 && a2 == 0xED00007265646168 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000265F2BA10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0x786574726576 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 54;
  }

  else if (a1 == 0x33726F6C6F436763 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 55;
  }

  else if (a1 == 0x34726F6C6F436763 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 56;
  }

  else if (a1 == 0x64696C61766E69 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v12);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_265D7D000, v7, v8, "Unable to construct SGDataType from: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x266773120](v10, -1, -1);
      MEMORY[0x266773120](v9, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

void *specialized SGDataType.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v4 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v6 = v5;

    v7 = specialized SGDataType.init(_:)(v4, v6);
    if ((v8 & 1) == 0)
    {
      v3 = v7;

      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      return v3;
    }

    _StringGuts.grow(_:)(34);

    MEMORY[0x266771550](v4, v6);

    MEMORY[0x266771550](0x61444753206F7420, 0xEE00657079546174);
    v3 = 0xD000000000000012;
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v9 = 0xD000000000000012;
    *(v9 + 8) = 0x8000000265F313E0;
    *(v9 + 16) = 11;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

unint64_t lazy protocol witness table accessor for type ShaderType and conformance ShaderType()
{
  result = lazy protocol witness table cache variable for type ShaderType and conformance ShaderType;
  if (!lazy protocol witness table cache variable for type ShaderType and conformance ShaderType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderType and conformance ShaderType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Surface and conformance Surface()
{
  result = lazy protocol witness table cache variable for type Surface and conformance Surface;
  if (!lazy protocol witness table cache variable for type Surface and conformance Surface)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Surface and conformance Surface);
  }

  return result;
}

__n128 __swift_memcpy65_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SGDataTypeStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE9 && *(a1 + 65))
  {
    return (*a1 + 233);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0x17)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SGDataTypeStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE8)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 233;
    if (a3 >= 0xE9)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE9)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys;
  if (!lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorCodingContainer.CodingKeys and conformance CGColorCodingContainer.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12CoreGraphics7CGFloatVGMd, &_sSay12CoreGraphics7CGFloatVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NestedError and conformance NestedError()
{
  result = lazy protocol witness table cache variable for type NestedError and conformance NestedError;
  if (!lazy protocol witness table cache variable for type NestedError and conformance NestedError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NestedError and conformance NestedError);
  }

  return result;
}

uint64_t OrderedDictionary.init<A>(grouping:by:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v17 = specialized OrderedDictionary.init<A>(_grouping:by:)(a1, a2, a3, a4, v15, a5, a6, WitnessTable, a7);
  if (v7)
  {
    return (*(*(a5 - 8) + 8))(a1, a5);
  }

  v19 = v17;
  (*(*(a5 - 8) + 8))(a1, a5);
  return v19;
}

uint64_t OrderedDictionary.init()(uint64_t a1, uint64_t a2)
{
  v3 = OrderedSet.init()(a1);
  v4 = static Array._allocateUninitialized(_:)();
  MEMORY[0x266772110](v4, a2);
  return v3;
}

uint64_t OrderedDictionary.init<A, B>(uniqueKeys:values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a8;
  v32 = a7;
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = *(v17 + 16);
  v33 = v22;
  v21(&v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v23 = Array.init<A>(_:)();
  v24 = *(v13 + 16);
  v34 = a2;
  v24(v15, a2, a6);
  Array.init<A>(_:)();
  v25 = ContiguousArray.count.getter();
  result = ContiguousArray.count.getter();
  if (v25 == result)
  {
    v35 = v23;
    v27 = type metadata accessor for ContiguousArray();
    WitnessTable = swift_getWitnessTable();
    v29 = OrderedSet.init<A>(_:)(&v35, a3, v27, v32, WitnessTable);
    v30 = ContiguousArray.count.getter();
    v31 = ContiguousArray.count.getter();
    (*(v13 + 8))(v34, a6);
    result = (*(v17 + 8))(v33, a5);
    if (v30 == v31)
    {
      return v29;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OrderedDictionary.init<A, B>(uncheckedUniqueKeys:values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a7;
  v40 = a4;
  v41 = a2;
  v43 = a6;
  v10 = *(a6 - 8);
  v39 = a9;
  MEMORY[0x28223BE20](a1);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v37 - v20;
  v22 = *(v14 + 16);
  v42 = v23;
  v22(&v37 - v20, v19);
  (v22)(v17, v21, a5);
  v24 = Array.init<A>(_:)();
  v44 = v24;
  v25 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  v26 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  v28 = static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(&v44, 0, 1, v25, v26, WitnessTable, v38);
  v29 = ContiguousArray.count.getter();
  v30 = 0;
  if (v29 >= 16)
  {

    v30 = v28;
  }

  v38 = OrderedSet.init(_uniqueElements:_:)(v24, v30);

  v31 = *(v14 + 8);
  v31(v21, a5);
  v32 = v41;
  v33 = v43;
  (*(v10 + 16))(v12, v41, v43);
  Array.init<A>(_:)();
  v34 = ContiguousArray.count.getter();
  v35 = ContiguousArray.count.getter();
  (*(v10 + 8))(v32, v33);
  result = (v31)(v42, a5);
  if (v34 == v35)
  {
    return v38;
  }

  __break(1u);
  return result;
}

uint64_t OrderedDictionary.init<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return OrderedDictionary.init<A>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5, a6, a7, a8, specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:));
}

{
  return OrderedDictionary.init<A>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5, a6, a7, a8, specialized OrderedDictionary.merge<A>(_:uniquingKeysWith:));
}

uint64_t OrderedDictionary.init(minimumCapacity:persistent:)(Swift::Int a1, Swift::Bool a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = OrderedSet.init(minimumCapacity:persistent:)(a1, a2, a3, a5);
  v8 = static Array._allocateUninitialized(_:)();
  MEMORY[0x266772110](v8, a4);
  type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(a1);
  return v7;
}

uint64_t OrderedDictionary.init<A>(uniqueKeysWithValues:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a1;
  v63 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v70 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v79 = &v59 - v13;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v78 = type metadata accessor for Optional();
  v72 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - v22;
  v64 = *(a4 - 8);
  MEMORY[0x28223BE20](v24);
  v73 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a6;
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v29 = &v59 - v28;
  v80 = a3;
  if (type metadata accessor for Dictionary() == a4)
  {
    v57 = v65;
    v58 = specialized OrderedDictionary.init<A>(_uncheckedUniqueKeysWithValues:)(v65, a2, v80, a4, v27, v26);
    (*(v64 + 8))(v57, a4);
    return v58;
  }

  else
  {
    v75 = v23;
    v30 = OrderedSet.init()(a2);
    v76 = v18;
    v32 = v31;
    v33 = v80;
    v34 = static Array._allocateUninitialized(_:)();
    v35 = MEMORY[0x266772110](v34, v33);
    v81 = v30;
    v82 = v32;
    v83 = v35;
    v60 = v15;
    v36 = v65;
    v37 = dispatch thunk of Sequence.underestimatedCount.getter();
    v68 = a2;
    v69 = v27;
    type metadata accessor for OrderedDictionary(0, a2, v33, v27);
    v38 = v37;
    v39 = v76;
    OrderedDictionary.reserveCapacity(_:)(v38);
    (*(v64 + 16))(v73, v36, a4);
    v74 = v29;
    dispatch thunk of Sequence.makeIterator()();
    v59 = a4;
    v40 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v72 += 4;
    v73 = AssociatedConformanceWitness;
    v71 = TupleTypeMetadata2 - 8;
    v66 = (v63 + 32);
    v67 = (v60 + 32);
    v42 = (v63 + 16);
    v43 = (v63 + 8);
    v44 = (v60 + 8);
    while (1)
    {
      v45 = v77;
      v46 = v74;
      dispatch thunk of IteratorProtocol.next()();
      v47 = v75;
      (*v72)(v75, v45, v78);
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v47, 1, TupleTypeMetadata2) == 1)
      {
        (*(v64 + 8))(v65, v59);
        (*(v61 + 8))(v46, v40);
        return v81;
      }

      v48 = TupleTypeMetadata2;
      v49 = *(TupleTypeMetadata2 + 48);
      v50 = v68;
      (*v67)(v39, v47, v68);
      (*v66)(v79, &v47[v49], v80);
      v52 = type metadata accessor for OrderedSet(0, v50, v69, v51);
      result = OrderedSet._append(_:)(v39, v52);
      if ((result & 1) == 0)
      {
        break;
      }

      v54 = v79;
      v55 = v80;
      (*v42)(v70, v79, v80);
      type metadata accessor for ContiguousArray();
      v56 = v54;
      v39 = v76;
      ContiguousArray.append(_:)();
      (*v43)(v56, v55);
      (*v44)(v39, v50);
      TupleTypeMetadata2 = v48;
    }

    __break(1u);
  }

  return result;
}

uint64_t OrderedDictionary.init<A>(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = OrderedSet.init()(a4);
  v17 = static Array._allocateUninitialized(_:)();
  MEMORY[0x266772110](v17, a5);
  v18 = type metadata accessor for OrderedDictionary(0, a4, a5, a7);
  a9(a1, a2, a3, v18, a6, a8);
  (*(*(a6 - 8) + 8))(a1, a6);
  result = v16;
  if (v21)
  {
  }

  return result;
}

uint64_t OrderedDictionary.init<A>(grouping:by:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = specialized OrderedDictionary.init<A>(_grouping:by:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (v9)
  {
    return (*(*(a6 - 8) + 8))(a1, a6);
  }

  v14 = v12;
  (*(*(a6 - 8) + 8))(a1, a6);
  return v14;
}

uint64_t OrderedDictionary.init<A>(_grouping:by:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = specialized OrderedDictionary.init<A>(_grouping:by:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (v9)
  {
    return (*(*(a6 - 8) + 8))(a1, a6);
  }

  v14 = v12;
  (*(*(a6 - 8) + 8))(a1, a6);
  return v14;
}

uint64_t closure #1 in OrderedDictionary.init<A>(_grouping:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v11 + 16))(&v13 - v10, a2, v9);
  return dispatch thunk of RangeReplaceableCollection.append(_:)();
}

uint64_t OrderedDictionary.init<A>(uncheckedUniqueKeysWithValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return OrderedDictionary.init<A>(uniqueKeysWithValues:)(a1, a2, a3, a4, a5, a6, specialized OrderedDictionary.init<A>(uncheckedUniqueKeysWithValues:));
}

{
  v27 = a1;
  v28 = a5;
  v25 = a2;
  v9 = type metadata accessor for LazySequence();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = a3;
  v24 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = type metadata accessor for LazyMapSequence();
  v30 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  MEMORY[0x2667716D0](a4, a6, v14);
  v17 = swift_allocObject();
  v18 = v25;
  v17[2] = v25;
  v17[3] = v12;
  v19 = v28;
  v17[4] = a4;
  v17[5] = v19;
  v17[6] = a6;
  swift_getWitnessTable();
  LazySequenceProtocol.map<A>(_:)();

  (*(v29 + 8))(v11, v9);
  WitnessTable = swift_getWitnessTable();
  v21 = specialized OrderedDictionary.init<A>(_uncheckedUniqueKeysWithValues:)(v16, v18, v24, v13, v19, WitnessTable);
  (*(*(a4 - 8) + 8))(v27, a4);
  (*(v30 + 8))(v16, v13);
  return v21;
}

uint64_t OrderedDictionary.init<A>(uniqueKeysWithValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a7(a1, a2, a3, a4, a5, a6);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v9;
}

uint64_t closure #1 in OrderedDictionary.init<A>(uncheckedUniqueKeysWithValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  v19 = *(swift_getTupleTypeMetadata2() + 48);
  v15 = *(v9 + 16);
  v15(v14, a1, TupleTypeMetadata2);
  v20 = *(TupleTypeMetadata2 + 48);
  v16 = *(a2 - 8);
  (*(v16 + 32))(a4, v14, a2);
  v15(v11, a1, TupleTypeMetadata2);
  v17 = *(a3 - 8);
  (*(v17 + 32))(a4 + v19, &v11[*(TupleTypeMetadata2 + 48)], a3);
  (*(v16 + 8))(v11, a2);
  return (*(v17 + 8))(&v14[v20], a3);
}

uint64_t _s11ShaderGraph17OrderedDictionaryV9_grouping2byACyxq_Gqd___x7ElementQy_KXEtKcSmR_STRd__AGQyd__AHRSlufCAA13TextureSourceO_SayAA05TypedH0VGANTt1g504_s11a12Graph23inferh23Assignments4fromSayAA05j24D0VGAA7SGGraphC_tKFAA0D6I9OAEXEfU4_Tf1nc_nTf4g_n(uint64_t a1)
{
  v29 = MEMORY[0x277D84F90];
  v26 = *(a1 + 16);
  if (!v26)
  {
    return 0;
  }

  v1 = 0;
  v25 = a1 + 32;
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = v25 + 32 * v1;
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    v8 = *(v29 + 16);
    v28 = *(v4 + 24);
    if (v8)
    {
      break;
    }

LABEL_24:
    outlined copy of TextureSource(v5, v6);
    outlined copy of TextureSource(v5, v6);

    specialized OrderedSet._appendNew(_:in:)(v5, v6, v7, 0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1);
    }

    v20 = v2[2];
    v19 = v2[3];
    if (v20 >= v19 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
    }

    v2[2] = v20 + 1;
    v27 = v2;
    v21 = v2 + 4;
    v22 = MEMORY[0x277D84F90];
    v2[v20 + 4] = MEMORY[0x277D84F90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2[v20 + 4] = v22;
    v14 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1, v22);
      v21[v20] = v14;
    }

    v17 = *(v14 + 2);
    v24 = *(v14 + 3);
    v18 = v17 + 1;
    if (v17 >= v24 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v17 + 1, 1, v14);
      v21[v20] = v14;
    }

LABEL_3:
    ++v1;
    *(v14 + 2) = v18;
    v3 = &v14[32 * v17];
    *(v3 + 4) = v5;
    *(v3 + 5) = v6;
    v3[48] = v7;
    *(v3 + 7) = v28;
    outlined consume of TextureSource(v5, v6);
    v2 = v27;
    if (v1 == v26)
    {
      return 0;
    }
  }

  v9 = 0;
  v10 = (v29 + 48);
  while ((*v10 & 1) != 0)
  {
    if (v7)
    {
      goto LABEL_11;
    }

LABEL_6:
    ++v9;
    v10 += 24;
    if (v8 == v9)
    {
      goto LABEL_24;
    }
  }

  if (v7)
  {
    goto LABEL_6;
  }

LABEL_11:
  v11 = *(v10 - 2) == v5 && *(v10 - 1) == v6;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_6;
  }

  outlined copy of TextureSource(v5, v6);
  outlined copy of TextureSource(v5, v6);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    v2 = result;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < v2[2])
  {
    v13 = v2 + 4;
    v14 = v2[v9 + 4];
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v2[v9 + 4] = v14;
    v27 = v2;
    if ((v15 & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
      v13[v9] = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
      v13[v9] = v14;
    }

    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t specialized OrderedDictionary.init<A>(_grouping:by:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v68 = a5;
  v69 = a7;
  v62 = a2;
  v63 = a3;
  v65 = a1;
  v53 = *(a4 - 8);
  v67 = a9;
  MEMORY[0x28223BE20](a1);
  v73 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v52 - v14;
  v16 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v52 - v17;
  v19 = *(a6 - 8);
  MEMORY[0x28223BE20](v20);
  v64 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v52 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  v59 = a4;
  v25 = OrderedSet.init()(a4);
  v60 = v26;
  v27 = v68;
  v28 = static Array._allocateUninitialized(_:)();
  v29 = MEMORY[0x266772110](v28, v27);
  v70 = v25;
  v71 = v60;
  v72 = v29;
  (*(v19 + 16))(v64, v65, a6);
  v30 = AssociatedTypeWitness;
  dispatch thunk of Sequence.makeIterator()();
  v31 = v55;
  v60 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = v24;
  v65 = v22;
  v58 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v56 = v31[6];
  v57 = v31 + 6;
  if ((v56)(v18, 1, v30) == 1)
  {
LABEL_5:
    (*(v52 + 8))(v64, v65);
    return v70;
  }

  else
  {
    v34 = v31[4];
    v33 = v31 + 4;
    ++v53;
    v54 = v34;
    v55 = v33 - 3;
    while (1)
    {
      (v54)(v15, v18, v30);
      v35 = v62(v15);
      if (v9)
      {
        break;
      }

      MEMORY[0x28223BE20](v35);
      v36 = v33;
      v38 = v59;
      v37 = v60;
      v39 = v68;
      v40 = v69;
      *(&v52 - 6) = v59;
      *(&v52 - 5) = v39;
      *(&v52 - 4) = v37;
      *(&v52 - 3) = v40;
      v41 = v67;
      *(&v52 - 2) = v61;
      *(&v52 - 1) = v41;
      MEMORY[0x28223BE20](v42);
      *(&v52 - 8) = v38;
      *(&v52 - 7) = v43;
      *(&v52 - 6) = v45;
      *(&v52 - 5) = v44;
      *(&v52 - 4) = v46;
      *(&v52 - 3) = v47;
      *(&v52 - 2) = v15;
      v48 = type metadata accessor for OrderedDictionary(0, v38, v43, v44);
      v49 = v73;
      OrderedDictionary.updateValue<A>(forKey:default:with:)(v73, partial apply for implicit closure #1 in OrderedDictionary.init<A>(_grouping:by:), (&v52 - 8), partial apply for closure #1 in OrderedDictionary.init<A>(_grouping:by:), (&v52 - 10), v48);
      v30 = AssociatedTypeWitness;
      v50 = v38;
      v33 = v36;
      (*v53)(v49, v50);
      (*v55)(v15, v30);
      dispatch thunk of IteratorProtocol.next()();
      if ((v56)(v18, 1, v30) == 1)
      {
        goto LABEL_5;
      }
    }

    (*(v52 + 8))(v64, v65);

    return (*v55)(v15, v30);
  }
}

uint64_t specialized OrderedDictionary.init<A>(uniqueKeysWithValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a5;
  AssociatedConformanceWitness = a1;
  v41 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v51 = *(v13 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v40 - v18;
  v48 = *(a4 - 8);
  MEMORY[0x28223BE20](v20);
  v47 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v53 = &v40 - v22;
  v23 = OrderedSet.init()(a2);
  v25 = v24;
  v26 = static Array._allocateUninitialized(_:)();
  v27 = MEMORY[0x266772110](v26, a3);
  v55 = v23;
  v56 = v25;
  v57 = v27;
  v28 = AssociatedConformanceWitness;
  v29 = dispatch thunk of Sequence.underestimatedCount.getter();
  type metadata accessor for OrderedDictionary(0, a2, a3, v52);
  OrderedDictionary.reserveCapacity(_:)(v29);
  v48[2](v47, v28, a4);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v30 = TupleTypeMetadata2;
  v31 = *(TupleTypeMetadata2 - 8);
  v32 = *(v31 + 48);
  v47 = (v31 + 48);
  v48 = v32;
  if ((v32)(v19, 1, TupleTypeMetadata2) == 1)
  {
LABEL_5:
    (*(v42 + 8))(v53, AssociatedTypeWitness);
    return v55;
  }

  else
  {
    v33 = *(v51 + 32);
    v45 = (v41 + 32);
    v46 = v33;
    v44 = (v41 + 16);
    v34 = (v41 + 8);
    v51 += 32;
    v35 = (v51 - 24);
    while (1)
    {
      v36 = *(v30 + 48);
      v46(v16, v19, a2);
      (*v45)(v12, &v19[v36], a3);
      v38 = type metadata accessor for OrderedSet(0, a2, v52, v37);
      result = OrderedSet._append(_:)(v16, v38);
      if ((result & 1) == 0)
      {
        break;
      }

      (*v44)(v50, v12, a3);
      type metadata accessor for ContiguousArray();
      ContiguousArray.append(_:)();
      (*v34)(v12, a3);
      (*v35)(v16, a2);
      dispatch thunk of IteratorProtocol.next()();
      if ((v48)(v19, 1, v30) == 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized OrderedDictionary.init<A>(_uncheckedUniqueKeysWithValues:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v70 = a1;
  v55 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v52 - v11;
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v13);
  v59 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v15;
  v69 = v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = type metadata accessor for Optional();
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  v66 = *(a4 - 8);
  MEMORY[0x28223BE20](v22);
  v64 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v26 = &v52 - v25;
  v27 = OrderedSet.init()(v16);
  v29 = v28;
  v30 = a3;
  v31 = static Array._allocateUninitialized(_:)();
  v32 = MEMORY[0x266772110](v31, a3);
  v72 = v27;
  v73 = v29;
  v74 = v32;
  v33 = v70;
  v34 = dispatch thunk of Sequence.underestimatedCount.getter();
  v61 = v30;
  v63 = a5;
  type metadata accessor for OrderedDictionary(0, v69, v30, a5);
  OrderedDictionary.reserveCapacity(_:)(v34);
  (*(v66 + 16))(v64, v33, v24);
  v70 = v26;
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v65 += 4;
  v66 = AssociatedConformanceWitness;
  v64 = (TupleTypeMetadata2 - 8);
  v57 = (v55 + 32);
  v58 = (v53 + 32);
  v56 = (v55 + 16);
  v36 = (v55 + 8);
  v37 = (v53 + 8);
  for (i = v59; ; (*v37)(i, v50))
  {
    v39 = v67;
    dispatch thunk of IteratorProtocol.next()();
    (*v65)(v21, v39, v68);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v21, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v40 = *(TupleTypeMetadata2 + 48);
    v41 = TupleTypeMetadata2;
    v42 = v69;
    (*v58)(i, v21, v69);
    v43 = &v21[v40];
    v44 = v60;
    v45 = v21;
    v46 = v61;
    (*v57)(v60, v43, v61);
    v48 = type metadata accessor for OrderedSet(0, v42, v63, v47);
    OrderedSet._appendNew(_:)(i, v48);
    (*v56)(v62, v44, v46);
    type metadata accessor for ContiguousArray();
    ContiguousArray.append(_:)();
    v49 = v46;
    v21 = v45;
    (*v36)(v44, v49);
    v50 = v42;
    TupleTypeMetadata2 = v41;
  }

  (*(v54 + 8))(v70, AssociatedTypeWitness);
  return v72;
}

uint64_t Input.spec.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void OutputSpec.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t OutputSpec.type.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t static InputSpec.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return (*(*a3 + 128))(a6) & 1;
  }

  else
  {
    return 0;
  }
}

Swift::Int InputSpec.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  (*(*a3 + 120))(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InputSpec()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  (*(*v1 + 120))(v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance InputSpec(uint64_t a1)
{
  v3 = *(v1 + 16);
  String.hash(into:)();
  return (*(*v3 + 120))(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InputSpec(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  (*(*v2 + 120))(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance InputSpec(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return (*(*v2 + 128))(v3) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type InputSpec and conformance InputSpec()
{
  result = lazy protocol witness table cache variable for type InputSpec and conformance InputSpec;
  if (!lazy protocol witness table cache variable for type InputSpec and conformance InputSpec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputSpec and conformance InputSpec);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OutputSpec and conformance OutputSpec()
{
  result = lazy protocol witness table cache variable for type OutputSpec and conformance OutputSpec;
  if (!lazy protocol witness table cache variable for type OutputSpec and conformance OutputSpec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OutputSpec and conformance OutputSpec);
  }

  return result;
}

void toSIMDMat2fCols(_:)(uint64_t a1)
{
  NSArray.validateExactCount(_:)(2);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
    swift_allocError();
    *v2 = xmmword_265F28600;
    *(v2 + 16) = xmmword_265F28610;
    *(v2 + 32) = 0x4000000000000000;
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    swift_willThrow();
  }
}

void toSIMDMat3fCols(_:)(uint64_t a1)
{
  NSArray.validateExactCount(_:)(3);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
    swift_allocError();
    *v2 = xmmword_265F28600;
    *(v2 + 16) = xmmword_265F28610;
    *(v2 + 32) = 0x4000000000000000;
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    swift_willThrow();
  }
}

void toSIMDMat4fCols(_:)(uint64_t a1)
{
  NSArray.validateExactCount(_:)(4);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
    swift_allocError();
    *v2 = xmmword_265F28600;
    *(v2 + 16) = xmmword_265F28610;
    *(v2 + 32) = 0x4000000000000000;
    *(v2 + 64) = 0;
    *(v2 + 72) = 0;
    swift_willThrow();
  }
}

void toSIMD2i(_:)()
{
  v1 = NSArray.attemptCastToFloatArray(withLength:)(2, MEMORY[0x277D849A8], xmmword_265F28620);
  if (!v0)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys5Int32VG_SayAJGTt1g5Tf4g_n(v1);
  }
}

__n128 toSIMD3i(_:)(uint64_t a1, uint64_t a2, double (*a3)(void))
{
  NSArray.attemptCastToFloatArray(withLength:)(a2, MEMORY[0x277D849A8], xmmword_265F28620);
  if (!v3)
  {
    *&v6 = a3();
    v7 = v6;

    return v7;
  }

  return result;
}

void toSIMD2f(_:)()
{
  v1 = NSArray.attemptCastToFloatArray(withLength:)(2, MEMORY[0x277D83A90], xmmword_265F28630);
  if (!v0)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys5Int32VG_SayAJGTt1g5Tf4g_n(v1);
  }
}

uint64_t toSIMD2h(_:)()
{
  result = NSArray.attemptCastToFloatArray(withLength:)(2, MEMORY[0x277D84C58], xmmword_265F28640);
  if (!v0)
  {
    v2 = _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys6UInt16VG_SayAJGTt1g5Tf4g_n(result);

    return v2;
  }

  return result;
}

__n128 toSIMD4f(_:)(uint64_t a1, uint64_t a2, double (*a3)(void))
{
  NSArray.attemptCastToFloatArray(withLength:)(a2, MEMORY[0x277D83A90], xmmword_265F28630);
  if (!v3)
  {
    *&v6 = a3();
    v7 = v6;

    return v7;
  }

  return result;
}

void toSIMD3h(_:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  NSArray.attemptCastToFloatArray(withLength:)(a2, MEMORY[0x277D84C58], xmmword_265F28640);
  if (!v3)
  {
    a3();
  }
}

uint64_t NSArray.validateExactCount(_:)(uint64_t a1)
{
  result = [v1 count];
  if (result != a1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      result = [v1 count];
      if ((result & 0x8000000000000000) == 0)
      {
        v4 = result;
        lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
        swift_allocError();
        *v5 = a1;
        v5[1] = v4;
        v5[4] = 0x6000000000000000;
        v5[8] = 0;
        v5[9] = 0;
        return swift_willThrow();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t NSArray.attemptCastToFloatArray(withLength:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  result = NSArray.validateExactCount(_:)(a1);
  if (!v3)
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    lazy protocol witness table accessor for type SGInternalError and conformance SGInternalError();
    swift_allocError();
    *v5 = xmmword_265F28600;
    *(v5 + 16) = a3;
    *(v5 + 32) = 0x4000000000000000;
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys5Int32VG_SayAJGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 == 1)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3Vys5Int32VG_SayAJGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4Vys5Int32VG_SayAJGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 4)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 1 == a2)
  {
    goto LABEL_10;
  }

  if ((a3 >> 1) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = (a3 >> 1) + ~a2;
  if (v3 > 2)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = 0uLL;
  do
  {
    v6 = *(result + 4 * a2 + 4 * v4);
    v7 = v5;
    *(&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4 & 3))) = v6;
    v5 = v7;
    ++v4;
  }

  while ((a3 >> 1) - a2 != v4);
  if (v3 != 2)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_s10ArraySliceVySfGTt1g5Tf4gX_n(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >> 1 == a2)
  {
    goto LABEL_10;
  }

  if ((a3 >> 1) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = (a3 >> 1) + ~a2;
  if (v3 > 3)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = 0uLL;
  do
  {
    v6 = *(result + 4 * a2 + 4 * v4);
    v7 = v5;
    *(&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4 & 3))) = v6;
    v5 = v7;
    ++v4;
  }

  while ((a3 >> 1) - a2 != v4);
  if (v3 != 3)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys6UInt16VG_SayAJGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if ((v1 - 1) > 1)
    {
      __break(1u);
    }

    else if (v1 != 1)
    {
      return *(result + 32);
    }
  }

  __break(1u);
  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3Vys6UInt16VG_SayAJGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4Vys6UInt16VG_SayAJGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 4)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t OrderedDictionary<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a8;
  v15 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v41 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v17 - 8);
  MEMORY[0x28223BE20](v18);
  v40 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = type metadata accessor for Optional();
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v36 - v23;
  v25 = ContiguousArray.count.getter();
  v42 = a1;
  MEMORY[0x266772770](v25);
  v52 = a2;
  v53 = a3;
  v54 = a4;
  v55 = 0;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v26 = type metadata accessor for OrderedDictionary.Iterator(0, a5, a6, a7);
  v48 += 4;
  v49 = v26;
  v47 = TupleTypeMetadata2 - 8;
  v38 = (v15 + 32);
  v39 = (v37 + 32);
  v27 = (v15 + 8);
  v28 = (v37 + 8);
  v37 = a2;

  v36[1] = a3;

  v36[0] = a4;

  v29 = v40;
  v30 = v41;
  v31 = v44;
  while (1)
  {
    v32 = v50;
    OrderedDictionary.Iterator.next()(v49, v50);
    (*v48)(v24, v32, v51);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v24, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v33 = *(TupleTypeMetadata2 + 48);
    v34 = v43;
    (*v39)(v29, v24, v43);
    (*v38)(v30, &v24[v33], v31);
    dispatch thunk of Hashable.hash(into:)();
    dispatch thunk of Hashable.hash(into:)();
    (*v27)(v30, v31);
    (*v28)(v29, v34);
  }
}

Swift::Int OrderedDictionary<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Hasher.init(_seed:)();
  OrderedDictionary<>.hash(into:)(v15, a1, a2, a3, a4, a5, a6, a7);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> OrderedDictionary<A, B>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  Hasher.init(_seed:)();
  OrderedDictionary<>.hash(into:)(v7, *v3, v3[1], v3[2], a2[2], a2[3], a2[4], v5);
  return Hasher._finalize()();
}

uint64_t FunctionNodeID.description.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v0);

  return 25705;
}

Swift::Int FunctionNodeID.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FunctionNodeID()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266771550](v0);

  return 25705;
}

uint64_t MetalFunctionNode.setInputs(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = a2;
    v7 = a3;
    v18 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v18;
    v8 = a1 + 32;
    do
    {
      outlined init with copy of MetalFunctionNode(v8, v15);
      v9 = v16;
      v10 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v11 = (*(v10 + 24))(v9, v10);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v18 = v4;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v4 = v18;
      }

      *(v4 + 16) = v13 + 1;
      *(v4 + 8 * v13 + 32) = v11;
      v8 += 40;
      --v3;
    }

    while (v3);
    a3 = v7;
    a2 = v6;
  }

  return (*(a3 + 56))(v4, a2);
}

ShaderGraph::NodeDefStore __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NodeDefStore.including(_:)(Swift::OpaquePointer a1)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  v14 = v2;
  swift_bridgeObjectRetain_n();

  specialized Sequence.forEach(_:)(a1._rawValue, v7, &v14);

  v10 = v14;
  if (v5)
  {
  }

  else
  {
  }

  v11 = v8;
  v12 = v10;
  v13 = v6;
  result.implementations._rawValue = v13;
  result.geomPropDefs._rawValue = v12;
  result.nodeDefs._rawValue = v11;
  return result;
}

uint64_t SGGeometryPropertyDefinition.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGGeometryPropertyDefinition_name);

  return v1;
}

uint64_t static SGGeometryPropertyDefinition.create(name:mappingTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v5 = *(v4 + 104);

      return v5(a1, a2, a3, a4);
    }

    v11 = 0x8000000265F334B0;
    v12 = 0xD000000000000016;
  }

  else
  {
    v11 = 0xE400000000000000;
    v12 = 1701667182;
  }

  lazy protocol witness table accessor for type APIError and conformance APIError();
  v13 = swift_allocError();
  *v14 = v12;
  *(v14 + 8) = v11;
  *(v14 + 16) = 1;
  swift_willThrow();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  v16 = static os_log_type_t.error.getter();
  v17 = v13;
  v18 = Logger.logObject.getter();

  if (os_log_type_enabled(v18, v16))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    v21 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v25);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_265D7D000, v18, v16, "%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266773120](v20, -1, -1);
    MEMORY[0x266773120](v19, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t SGGeometryPropertyDefinition.referencedGeomPropName.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName);

  return v1;
}

id SGGeometryPropertyDefinition.__allocating_init(name:referencedGeomPropName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName];
  *v10 = a3;
  *(v10 + 1) = a4;
  v11 = &v9[OBJC_IVAR___SGGeometryPropertyDefinition_name];
  *v11 = a1;
  *(v11 + 1) = a2;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id SGGeometryPropertyDefinition.init(name:referencedGeomPropName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName];
  *v5 = a3;
  *(v5 + 1) = a4;
  v6 = &v4[OBJC_IVAR___SGGeometryPropertyDefinition_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for SGGeometryPropertyDefinition();
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t SGGeometryPropertyDefinition.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(44);

  MEMORY[0x266771550](*(v1 + OBJC_IVAR___SGGeometryPropertyDefinition_name), *(v1 + OBJC_IVAR___SGGeometryPropertyDefinition_name + 8));
  MEMORY[0x266771550](0x22203E2D2D2022, 0xE700000000000000);
  MEMORY[0x266771550](*(v1 + OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName), *(v1 + OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName + 8));
  MEMORY[0x266771550](15906, 0xE200000000000000);
  return 0xD00000000000001FLL;
}

Swift::Int SGGeometryPropertyDefinition.CodingKey.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1 & 1);
  return Hasher._finalize()();
}

uint64_t SGGeometryPropertyDefinition.CodingKey.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SGGeometryPropertyDefinition.CodingKey()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SGGeometryPropertyDefinition.CodingKey@<X0>(uint64_t a1@<X0>, ShaderGraph::SGGeometryPropertyDefinition::CodingKey_optional *a2@<X8>, uint64_t a3@<X1>)
{
  result = specialized SGGeometryPropertyDefinition.CodingKey.init(stringValue:)(a1, a3);
  a2->value = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SGGeometryPropertyDefinition.CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SGGeometryPropertyDefinition.CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SGGeometryPropertyDefinition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph28SGGeometryPropertyDefinitionC9CodingKeyOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph28SGGeometryPropertyDefinitionC9CodingKeyOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void *SGGeometryPropertyDefinition.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph28SGGeometryPropertyDefinitionC9CodingKeyOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph28SGGeometryPropertyDefinitionC9CodingKeyOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for SGGeometryPropertyDefinition();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = (v1 + OBJC_IVAR___SGGeometryPropertyDefinition_name);
    *v11 = v9;
    v11[1] = v12;
    v19 = 1;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    v16 = (v1 + OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName);
    *v16 = v13;
    v16[1] = v15;
    v17 = type metadata accessor for SGGeometryPropertyDefinition();
    v18.receiver = v1;
    v18.super_class = v17;
    v3 = objc_msgSendSuper2(&v18, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

id SGGeometryPropertyDefinition.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SGGeometryPropertyDefinition();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SGGeometryPropertyDefinition@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, uint64_t isUniquelyReferenced_nonNull_native, void *a3)
{
  v5 = a1;
  if (a1 >> 62)
  {
LABEL_33:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v55 = v5 & 0xFFFFFFFFFFFFFF8;
      v56 = v5 & 0xC000000000000001;
      v53 = isUniquelyReferenced_nonNull_native;
      v54 = a3;
      v52 = v5;
      do
      {
        if (v56)
        {
          v14 = MEMORY[0x266772030](v7, v5);
        }

        else
        {
          if (v7 >= *(v55 + 16))
          {
            goto LABEL_30;
          }

          v14 = *(v5 + 8 * v7 + 32);
        }

        v15 = v14;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v17 = *&v14[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName];
        v16 = *&v14[OBJC_IVAR___SGGeometryPropertyDefinition_referencedGeomPropName + 8];
        v18 = *(isUniquelyReferenced_nonNull_native + 16);

        if (!v18 || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v16), (v20 & 1) == 0))
        {
          lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
          swift_allocError();
          *v50 = 30;
          *(v50 + 8) = v17;
          *(v50 + 16) = v16;
          swift_willThrow();

          return;
        }

        v21 = v19;

        v22 = (*(isUniquelyReferenced_nonNull_native + 56) + (v21 << 6));
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        *&v65[9] = *(v22 + 41);
        v64 = v24;
        *v65 = v25;
        v63 = v23;
        v60 = v15;
        v26 = &v15[OBJC_IVAR___SGGeometryPropertyDefinition_name];
        if (*(*a3 + 16))
        {
          v28 = *v26;
          v27 = v26[1];
          outlined init with copy of GeomPropDef(&v63, v61);

          specialized __RawDictionaryStorage.find<A>(_:)(v28, v27);
          LOBYTE(v27) = v29;

          if (v27)
          {
            outlined destroy of GeomPropDef(&v63);

            v13 = v7 + 1;
            goto LABEL_6;
          }
        }

        else
        {
          outlined init with copy of GeomPropDef(&v63, v61);
        }

        v31 = *v26;
        v30 = v26[1];
        v32 = v64;
        v33 = *v65;
        v34 = v65[8];
        v59 = *&v65[16];
        LOBYTE(v61[0]) = v65[8];
        v57 = v65[24];
        v58 = v65[9];
        LOBYTE(v66) = v65[24];
        swift_bridgeObjectRetain_n();

        v35 = v33;
        v36 = v34;
        outlined copy of GeomPropDef.GeomProp(*(&v32 + 1), v33, v34);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = *a3;
        v37 = v66;
        *a3 = 0x8000000000000000;
        v38 = v31;
        v5 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v30);
        v40 = v37[2];
        v41 = (v39 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_31;
        }

        a3 = v39;
        if (v37[3] >= v42)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, isUniquelyReferenced_nonNull_native);
          v43 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v30);
          if ((a3 & 1) != (v44 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v5 = v43;
        }

        if (a3)
        {
          v8 = v66;
          v9 = v66[7] + (v5 << 6);
          v11 = *(v9 + 16);
          v10 = *(v9 + 32);
          v12 = *v9;
          *&v62[9] = *(v9 + 41);
          v61[1] = v11;
          *v62 = v10;
          v61[0] = v12;
          *v9 = v38;
          *(v9 + 8) = v30;
          *(v9 + 16) = v32;
          *(v9 + 32) = v35;
          *(v9 + 40) = v36;
          *(v9 + 41) = v58;
          *(v9 + 48) = v59;
          *(v9 + 56) = v57;
          outlined destroy of GeomPropDef(v61);
        }

        else
        {
          v8 = v66;
          v66[(v5 >> 6) + 8] |= 1 << v5;
          v45 = (v8[6] + 16 * v5);
          *v45 = v38;
          v45[1] = v30;
          v46 = v8[7] + (v5 << 6);
          *v46 = v38;
          *(v46 + 8) = v30;
          *(v46 + 16) = v32;
          *(v46 + 32) = v35;
          *(v46 + 40) = v36;
          *(v46 + 41) = v58;
          *(v46 + 48) = v59;
          *(v46 + 56) = v57;
          v47 = v8[2];
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_32;
          }

          v8[2] = v49;
        }

        a3 = v54;
        *v54 = v8;
        outlined destroy of GeomPropDef(&v63);

        v5 = v52;
        isUniquelyReferenced_nonNull_native = v53;
        v6 = v51;
        v13 = v7 + 1;
LABEL_6:
        ++v7;
      }

      while (v13 != v6);
    }
  }
}

uint64_t specialized SGGeometryPropertyDefinition.CodingKey.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000265F334B0 == a2)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t lazy protocol witness table accessor for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey()
{
  result = lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey;
  if (!lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey;
  if (!lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey;
  if (!lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey;
  if (!lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGGeometryPropertyDefinition.CodingKey and conformance SGGeometryPropertyDefinition.CodingKey);
  }

  return result;
}

Swift::String __swiftcall OrderedSet._debugTypeName()()
{
  v1 = specialized OrderedSet._debugTypeName()(v0);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall OrderedSet._debugDescription(typeName:)(Swift::String typeName)
{
  v3 = v2;
  v4 = v1;
  v5 = *(v2 - 8);
  MEMORY[0x28223BE20](typeName._countAndFlagsBits);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v27 = v11;
  v28 = v12;

  MEMORY[0x266771550](23336, 0xE200000000000000);
  v13 = *(v4 + 16);
  if (v13)
  {
    v26 = v4;
    ContiguousArray.subscript.getter();
    v14 = v5[4];
    v14(v7, v10, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v15 = swift_allocObject();
    v25 = xmmword_265F1F670;
    *(v15 + 16) = xmmword_265F1F670;
    *(v15 + 56) = v3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v15 + 32));
    v24[0] = v5[2];
    v24[1] = v5 + 2;
    (v24[0])(boxed_opaque_existential_0, v7, v3);
    debugPrint<A>(_:separator:terminator:to:)();

    v17 = v5[1];
    v17(v7, v3);
    if (v13 != 1)
    {
      v18 = 1;
      do
      {
        ContiguousArray.subscript.getter();
        ++v18;
        v14(v7, v10, v3);
        MEMORY[0x266771550](8236, 0xE200000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v19 = swift_allocObject();
        *(v19 + 16) = v25;
        *(v19 + 56) = v3;
        v20 = __swift_allocate_boxed_opaque_existential_0((v19 + 32));
        (v24[0])(v20, v7, v3);
        debugPrint<A>(_:separator:terminator:to:)();

        v17(v7, v3);
      }

      while (v13 != v18);
    }
  }

  MEMORY[0x266771550](10589, 0xE200000000000000);
  v21 = v27;
  v22 = v28;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t OrderedSet.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3._countAndFlagsBits = specialized OrderedSet._debugTypeName()(a3);
  countAndFlagsBits = OrderedSet._debugDescription(typeName:)(v3)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t specialized OrderedSet._debugTypeName()(uint64_t a1)
{
  v1 = _typeName(_:qualified:)();
  MEMORY[0x266771550](v1);

  MEMORY[0x266771550](62, 0xE100000000000000);
  return 0x536465726564724FLL;
}

char *static SGNode.create(nodeDefName:name:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (one-time initialization token for shared != -1)
  {
    v5 = a1;
    v6 = a2;
    v7 = a4;
    v8 = a3;
    swift_once();
    a1 = v5;
    a2 = v6;
    a3 = v8;
    a4 = v7;
  }

  return specialized static SGNode.create(nodeDefName:name:store:)(a1, a2, a3, a4, static BuiltInDefinitionStore.shared);
}

uint64_t SGNode.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGNode_name);

  return v1;
}

Class @objc SGNode.inputs.getter(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  (a4)(0, a2);

  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

void SGNode.graph.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*SGNode.graph.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___SGNode_graph;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SGInput.edge.modify;
}

char *SGNode.init(name:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR___SGNode_name];
  *v8 = a1;
  *(v8 + 1) = a2;

  *&v3[OBJC_IVAR___SGNode_inputs] = recreateInputs(from:nodeName:)(a3, a1, a2);
  v9 = recreateOutputs(from:nodeName:)(a3, a1, a2);

  *&v3[OBJC_IVAR___SGNode_outputs] = v9;
  v10 = &v3[OBJC_IVAR___SGNode_data];
  v11 = *(a3 + 48);
  *(v10 + 2) = *(a3 + 32);
  *(v10 + 3) = v11;
  *(v10 + 4) = *(a3 + 64);
  v10[80] = *(a3 + 80);
  v12 = *(a3 + 16);
  *v10 = *a3;
  *(v10 + 1) = v12;
  outlined init with copy of NodeData(a3, v27);
  v26.receiver = v3;
  v26.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v26, sel_init);
  v14 = *&v13[OBJC_IVAR___SGNode_inputs];
  if (v14 >> 62)
  {
    goto LABEL_28;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v16 = v13;

    if (v15)
    {
      v17 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x266772030](v17, v14);
        }

        else
        {
          if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v13 = *(v14 + 8 * v17 + 32);
        }

        v18 = v13;
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        swift_beginAccess();
        swift_unknownObjectWeakAssign();

        ++v17;
        if (v19 == v15)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_12:

    v14 = *&v16[OBJC_IVAR___SGNode_outputs];
    v20 = v14 >> 62 ? __CocoaSet.count.getter() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v20)
    {
      break;
    }

    v21 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x266772030](v21, v14);
      }

      else
      {
        if (v21 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v13 = *(v14 + 8 * v21 + 32);
      }

      v22 = v13;
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      swift_beginAccess();
      swift_unknownObjectWeakAssign();

      ++v21;
      if (v23 == v20)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v25 = v13;
    v15 = __CocoaSet.count.getter();
    v13 = v25;
  }

LABEL_23:

  outlined destroy of NodeData(a3);

  return v16;
}

uint64_t recreateInputs(from:nodeName:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 80) >> 6;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *a1;
      v7 = OBJC_IVAR___SGGraph_inputs;
      swift_beginAccess();
      v8 = *(v6 + v7);
      if (v8 >> 62)
      {
        v9 = __CocoaSet.count.getter();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = MEMORY[0x277D84F90];
      if (v9)
      {
        v38 = MEMORY[0x277D84F90];

        result = specialized ContiguousArray.reserveCapacity(_:)();
        if (v9 < 0)
        {
          __break(1u);
        }

        else
        {
          v11 = 0;
          v32 = v8 & 0xC000000000000001;
          v33 = v9;
          v34 = v8;
          v35 = a2;
          do
          {
            if (v32)
            {
              v12 = MEMORY[0x266772030](v11, v8);
            }

            else
            {
              v12 = *(v8 + 8 * v11 + 32);
            }

            v13 = v12;
            ++v11;
            v14 = *&v12[OBJC_IVAR___SGInput_name];
            v15 = *&v12[OBJC_IVAR___SGInput_name + 8];
            v16 = OBJC_IVAR___SGInput_type;
            swift_beginAccess();
            v17 = *&v13[v16];
            v18 = type metadata accessor for SGInput();
            v19 = objc_allocWithZone(v18);
            swift_unknownObjectWeakInit();
            swift_unknownObjectWeakInit();
            v20 = &v19[OBJC_IVAR___SGInput_name];
            *v20 = v14;
            *(v20 + 1) = v15;
            *&v19[OBJC_IVAR___SGInput_type] = v17;
            v21 = &v19[OBJC_IVAR___SGInput_attachment];
            *v21 = v35;
            v21[1] = a3;
            v37.receiver = v19;
            v37.super_class = v18;

            objc_msgSendSuper2(&v37, sel_init);

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v8 = v34;
          }

          while (v33 != v11);

          return v38;
        }
      }
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v22 = a1[2];
    v23 = *(v22 + 16);
    result = MEMORY[0x277D84F90];
    if (v23)
    {
      v39[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v24 = type metadata accessor for SGInput();
      v25 = (v22 + 48);
      do
      {
        v27 = *(v25 - 2);
        v26 = *(v25 - 1);
        v28 = *v25;
        v25 += 4;
        v29 = objc_allocWithZone(v24);
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        v30 = &v29[OBJC_IVAR___SGInput_name];
        *v30 = v27;
        *(v30 + 1) = v26;
        *&v29[OBJC_IVAR___SGInput_type] = v28;
        v31 = &v29[OBJC_IVAR___SGInput_attachment];
        *v31 = a2;
        *(v31 + 1) = a3;
        v36.receiver = v29;
        v36.super_class = v24;

        objc_msgSendSuper2(&v36, sel_init);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v23;
      }

      while (v23);
      return v39[0];
    }
  }

  return result;
}

uint64_t recreateOutputs(from:nodeName:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 80) >> 6;
  if (v5)
  {
    v6 = *a1;
    if (v5 == 1)
    {
      v7 = OBJC_IVAR___SGGraph_outputs;
      swift_beginAccess();
      v8 = *(v6 + v7);
      if (v8 >> 62)
      {
        v9 = __CocoaSet.count.getter();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      result = MEMORY[0x277D84F90];
      if (v9)
      {
        v49 = MEMORY[0x277D84F90];

        result = specialized ContiguousArray.reserveCapacity(_:)();
        if (v9 < 0)
        {
          __break(1u);
        }

        else
        {
          v11 = 0;
          v42 = v8 & 0xC000000000000001;
          v44 = v8;
          v45 = a2;
          v43 = v9;
          do
          {
            if (v42)
            {
              v12 = MEMORY[0x266772030](v11, v8);
            }

            else
            {
              v12 = *(v8 + 8 * v11 + 32);
            }

            v13 = v12;
            ++v11;
            v14 = *&v12[OBJC_IVAR___SGOutput_name];
            v15 = *&v12[OBJC_IVAR___SGOutput_name + 8];
            v16 = OBJC_IVAR___SGOutput_type;
            swift_beginAccess();
            v17 = *&v13[v16];
            v18 = type metadata accessor for SGOutput();
            v19 = objc_allocWithZone(v18);
            v20 = &v19[OBJC_IVAR___SGOutput_attachment];
            *v20 = 0;
            v20[1] = 0;
            v21 = &v19[OBJC_IVAR___SGOutput__edges];
            *v21 = 0;
            *(v21 + 1) = MEMORY[0x277D84F90];
            swift_unknownObjectWeakInit();
            v22 = &v19[OBJC_IVAR___SGOutput_name];
            *v22 = v14;
            *(v22 + 1) = v15;
            *&v19[OBJC_IVAR___SGOutput_type] = v17;
            swift_beginAccess();
            *v20 = v45;
            v20[1] = a3;

            v47.receiver = v19;
            v47.super_class = v18;
            objc_msgSendSuper2(&v47, sel_init);

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v8 = v44;
          }

          while (v43 != v11);

          return v49;
        }
      }
    }

    else
    {
      v35 = type metadata accessor for SGOutput();
      v36 = objc_allocWithZone(v35);
      v37 = &v36[OBJC_IVAR___SGOutput_attachment];
      *v37 = 0;
      *(v37 + 1) = 0;
      v38 = MEMORY[0x277D84F90];
      v39 = &v36[OBJC_IVAR___SGOutput__edges];
      *v39 = 0;
      *(v39 + 1) = v38;
      swift_unknownObjectWeakInit();
      v40 = &v36[OBJC_IVAR___SGOutput_name];
      *v40 = 7632239;
      *(v40 + 1) = 0xE300000000000000;
      *&v36[OBJC_IVAR___SGOutput_type] = v6;
      swift_beginAccess();
      *v37 = a2;
      *(v37 + 1) = a3;

      v50.receiver = v36;
      v50.super_class = v35;
      v41 = objc_msgSendSuper2(&v50, sel_init);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      result = swift_allocObject();
      *(result + 16) = xmmword_265F20CD0;
      *(result + 32) = v41;
    }
  }

  else
  {
    v23 = a1[3];
    v24 = *(v23 + 16);
    result = MEMORY[0x277D84F90];
    if (v24)
    {
      v48[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v25 = a2;
      v26 = type metadata accessor for SGOutput();
      v27 = (v23 + 48);
      do
      {
        v29 = *(v27 - 2);
        v28 = *(v27 - 1);
        v30 = *v27;
        v27 += 3;
        v31 = objc_allocWithZone(v26);
        v32 = &v31[OBJC_IVAR___SGOutput_attachment];
        *v32 = 0;
        v32[1] = 0;
        v33 = &v31[OBJC_IVAR___SGOutput__edges];
        *v33 = 0;
        *(v33 + 1) = MEMORY[0x277D84F90];
        swift_unknownObjectWeakInit();
        v34 = &v31[OBJC_IVAR___SGOutput_name];
        *v34 = v29;
        *(v34 + 1) = v28;
        *&v31[OBJC_IVAR___SGOutput_type] = v30;
        swift_beginAccess();
        *v32 = v25;
        v32[1] = a3;

        v46.receiver = v31;
        v46.super_class = v26;
        objc_msgSendSuper2(&v46, sel_init);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v24;
      }

      while (v24);
      return v48[0];
    }
  }

  return result;
}

ShaderGraph::SGNode::CodingKeys_optional __swiftcall SGNode.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SGNode.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t SGNode.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 1701667182;
  v2 = 0x7374757074756FLL;
  if (a1 != 2)
  {
    v2 = 1635017060;
  }

  if (a1)
  {
    v1 = 0x737475706E69;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SGNode.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 1701667182;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = 0xE700000000000000;
  v6 = 0x7374757074756FLL;
  if (v3 != 2)
  {
    v6 = 1635017060;
    v5 = 0xE400000000000000;
  }

  v7 = 0x737475706E69;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v7 = 1701667182;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE400000000000000;
  v11 = 0xE700000000000000;
  v12 = 0x7374757074756FLL;
  if (*a2 != 2)
  {
    v12 = 1635017060;
    v11 = 0xE400000000000000;
  }

  if (*a2)
  {
    v2 = 0x737475706E69;
    v10 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGNode.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance SGNode.CodingKeys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGNode.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SGNode.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SGNode.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SGNode.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701667182;
  v4 = 0xE700000000000000;
  v5 = 0x7374757074756FLL;
  if (*v1 != 2)
  {
    v5 = 1635017060;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x737475706E69;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SGNode.CodingKeys()
{
  v1 = 1701667182;
  v2 = 0x7374757074756FLL;
  if (*v0 != 2)
  {
    v2 = 1635017060;
  }

  if (*v0)
  {
    v1 = 0x737475706E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SGNode.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized SGNode.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SGNode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGNode.CodingKeys and conformance SGNode.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SGNode.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SGNode.CodingKeys and conformance SGNode.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

char *SGNode.init(from:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph6SGNodeC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph6SGNodeC10CodingKeysOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - v8;
  v51 = OBJC_IVAR___SGNode_graph;
  swift_unknownObjectWeakInit();
  v10 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type SGNode.CodingKeys and conformance SGNode.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v12 = 0;
  }

  else
  {
    v50 = v7;
    LOBYTE(v55) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    v49 = v6;
    v17 = &v4[OBJC_IVAR___SGNode_name];
    *v17 = v11;
    v17[1] = v15;
    v18 = v11;

    v19._countAndFlagsBits = v18;
    v19._object = v16;
    v20._countAndFlagsBits = 1701667182;
    v20._object = 0xE400000000000000;
    validate(_:named:)(v19, v20);
    v3 = v21;
    if (!v21)
    {

      v53 = 3;
      lazy protocol witness table accessor for type NodeData and conformance NodeData();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v48 = v9;
      v22 = v57;
      v23 = v58;
      v63[2] = v57;
      v63[3] = v58;
      v24 = v59;
      v63[4] = v59;
      v64 = v60;
      v25 = v55;
      v26 = v56;
      v63[0] = v55;
      v63[1] = v56;
      v27 = &v4[OBJC_IVAR___SGNode_data];
      v27[80] = v60;
      *(v27 + 3) = v23;
      *(v27 + 4) = v24;
      *(v27 + 1) = v26;
      *(v27 + 2) = v22;
      *v27 = v25;
      v28 = *v17;
      v29 = v17[1];
      outlined init with copy of NodeData(v63, &v55);

      v30 = recreateInputs(from:nodeName:)(v63, v28, v29);

      outlined destroy of NodeData(v63);
      *&v4[OBJC_IVAR___SGNode_inputs] = v30;
      v31 = *(v27 + 3);
      v61[2] = *(v27 + 2);
      v61[3] = v31;
      v61[4] = *(v27 + 4);
      v62 = v27[80];
      v32 = *(v27 + 1);
      v61[0] = *v27;
      v61[1] = v32;
      v33 = *v17;
      v34 = v17[1];
      outlined init with copy of NodeData(v61, &v55);

      v35 = recreateOutputs(from:nodeName:)(v61, v33, v34);

      outlined destroy of NodeData(v61);
      *&v4[OBJC_IVAR___SGNode_outputs] = v35;
      v54.receiver = v4;
      v54.super_class = ObjectType;
      v36 = objc_msgSendSuper2(&v54, sel_init);
      v37 = *(v36 + OBJC_IVAR___SGNode_inputs);
      if (v37 >> 62)
      {
        goto LABEL_37;
      }

      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (1)
      {
        v4 = v36;

        if (v38)
        {
          v39 = 0;
          ObjectType = (v37 & 0xC000000000000001);
          v51 = v37 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (ObjectType)
            {
              v36 = MEMORY[0x266772030](v39, v37);
            }

            else
            {
              if (v39 >= *(v51 + 16))
              {
                goto LABEL_34;
              }

              v36 = *(v37 + 8 * v39 + 32);
            }

            v40 = v36;
            v41 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              break;
            }

            swift_beginAccess();
            swift_unknownObjectWeakAssign();

            ++v39;
            if (v41 == v38)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_34:
          __break(1u);
        }

        else
        {
LABEL_21:

          v42 = *&v4[OBJC_IVAR___SGNode_outputs];
          if (v42 >> 62)
          {
            v43 = __CocoaSet.count.getter();
          }

          else
          {
            v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v43)
          {
LABEL_32:

            (*(v50 + 8))(v48, v49);
            __swift_destroy_boxed_opaque_existential_1Tm(v52);

            return v4;
          }

          v44 = 0;
          ObjectType = (v42 & 0xC000000000000001);
          v51 = v42 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (ObjectType)
            {
              v36 = MEMORY[0x266772030](v44, v42);
            }

            else
            {
              if (v44 >= *(v51 + 16))
              {
                goto LABEL_36;
              }

              v36 = *(v42 + 8 * v44 + 32);
            }

            v45 = v36;
            v46 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              break;
            }

            v37 = OBJC_IVAR___SGOutput_node;
            swift_beginAccess();
            swift_unknownObjectWeakAssign();

            ++v44;
            if (v46 == v43)
            {
              goto LABEL_32;
            }
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        v47 = v36;
        v38 = __CocoaSet.count.getter();
        v36 = v47;
      }
    }

    (*(v50 + 8))(v9, v49);

    v12 = 1;
  }

  type metadata accessor for SGError();
  v13 = v3;
  SGError.__allocating_init(_:)(v3);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  if (v12)
  {
  }

  MEMORY[0x2667731C0](&v4[v51]);
  swift_deallocPartialClassInstance();
  return v4;
}
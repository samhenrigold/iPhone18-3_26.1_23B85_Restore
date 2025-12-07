uint64_t outlined destroy of NodeDef.Implementation.Kind(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CharacterSet();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of NodeDef.Implementation.Kind(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_265E4FEE8()
{

  outlined consume of NodePersonality(*(v0 + 96));

  outlined consume of NodePersonality(*(v0 + 144));

  return MEMORY[0x2821FE8E8](v0, 185, 7);
}

Swift::Void __swiftcall OrderedSet.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  type metadata accessor for ContiguousArray();
  ContiguousArray.removeAll(keepingCapacity:)(keepingCapacity);
  if (!keepingCapacity)
  {

    *v1 = 0;
    return;
  }

  if (!*v1)
  {
    return;
  }

  OrderedSet._ensureUnique()();
  v3 = *v1;
  if (!*v1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v4 = (*(v3 + 16) & 0x3FLL) << *(v3 + 16);
  v5 = __OFADD__(v4, 64);
  v6 = v4 + 64;
  if (v5)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6 - 1;
  if (v6 < 1)
  {
    v7 = v6 + 62;
  }

  if (v6 < -62)
  {
    goto LABEL_15;
  }

  if ((v6 + 62) >= 0x7F)
  {

    bzero((v3 + 32), 8 * (v7 >> 6));
  }
}

void OrderedSet.remove(at:)(uint64_t a1, uint64_t a2)
{
  v5 = OrderedSet._bucket(for:)(a1, *v2, v2[1], *(a2 + 16), *(a2 + 24));

  OrderedSet._removeExistingMember(at:in:)(a1, v5, a2);
}

void OrderedSet.removeSubrange(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  if (*v3)
  {
    v9 = a2 - a1;
    if (__OFSUB__(a2, a1))
    {
      __break(1u);
    }

    else
    {
      if (v9 < 1)
      {
        return;
      }

      v10 = *(a3 + 16);
      v11 = ContiguousArray.count.getter();
      v12 = v11 - v9;
      if (!__OFSUB__(v11, v9))
      {
        if (v12 <= ContiguousArray.count.getter() / 2 || (v13 = *(a3 + 24), OrderedSet._minimumCapacity.getter(v8), v12 < v14))
        {
          type metadata accessor for ContiguousArray();
          swift_getWitnessTable();
          RangeReplaceableCollection.removeSubrange(_:)();
          OrderedSet._regenerateHashTable()();
          return;
        }

        OrderedSet._ensureUnique()();
        v15 = *v3;
        if (*v4)
        {

          closure #1 in OrderedSet.removeSubrange(_:)((v15 + 16), v15 + 32, v4, a1, a2, v10, v13);

          type metadata accessor for ContiguousArray();
          swift_getWitnessTable();
          goto LABEL_11;
        }

LABEL_15:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
LABEL_11:
  RangeReplaceableCollection.removeSubrange(_:)();
}

Swift::Void __swiftcall OrderedSet.removeLast(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  if (ContiguousArray.count.getter() < a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = ContiguousArray.count.getter();
  v5 = __OFSUB__(v4, a1);
  v6 = v4 - a1;
  if (v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = ContiguousArray.count.getter();
  if (v7 < v6)
  {
LABEL_11:
    __break(1u);
    return;
  }

  OrderedSet.removeSubrange(_:)(v6, v7, v2);
}

Swift::Void __swiftcall OrderedSet.removeFirst(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  if (ContiguousArray.count.getter() < a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  OrderedSet.removeSubrange(_:)(0, a1, v2);
}

void closure #1 in OrderedSet.removeAll(keepingCapacity:)(void *a1, void *a2)
{
  v2 = (*a1 & 0x3FLL) << *a1;
  v3 = __OFADD__(v2, 64);
  v4 = v2 + 64;
  if (v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  v5 = v4 - 1;
  if (v4 < 1)
  {
    v5 = v4 + 62;
  }

  if (v4 < -62)
  {
    goto LABEL_8;
  }

  if ((v4 + 62) >= 0x7F)
  {
    bzero(a2, 8 * (v5 >> 6));
  }
}

void closure #1 in OrderedSet.removeSubrange(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a7;
  v58 = a2;
  v9 = a1;
  v10 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v12;
  v59 = v13;
  specialized ContiguousArray.subscript.getter(v12, v14);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  swift_unknownObjectRetain();
  v23 = ArraySlice.startIndex.getter();
  v46 = v18;
  v57 = v20;
  v49 = a6;
  if (v23 == ArraySlice.endIndex.getter())
  {
    swift_unknownObjectRelease();
    v24 = v60;
LABEL_9:
    v61[0] = v48;
    v61[1] = a5;
    v62 = *(v59 + 8);
    v42 = type metadata accessor for ContiguousArray();
    WitnessTable = swift_getWitnessTable();
    _HashTable.UnsafeHandle.adjustContents<A>(preparingForRemovalOf:in:)(v61, &v62, v9, v58, v42, WitnessTable, v24);
  }

  else
  {
    v45 = a5;
    v54 = v10 + 16;
    v55 = v22 >> 1;
    v50 = (v10 + 8);
    v51 = v22;
    v56 = v23;
    v25 = v23;
    v27 = v46;
    v26 = v47;
    v28 = v16;
    v29 = v49;
    v30 = v57;
    v52 = v28;
    v53 = v10;
    while (1)
    {
      ArraySlice._hoistableIsNativeTypeChecked()();
      if (v56 < v30 || v55 <= v25)
      {
        break;
      }

      (*(v10 + 16))(v26, v27 + *(v10 + 72) * v25, v29);
      v31 = v59;
      v61[0] = *(v59 + 8);
      v32 = type metadata accessor for ContiguousArray();
      v33 = swift_getWitnessTable();
      v34 = v9;
      v35 = v9;
      v36 = v58;
      v37 = v60;
      v38 = _HashTable.UnsafeHandle._find<A>(_:in:)(v26, v61, v34, v58, v32, v33, v60);
      if (v39)
      {
        goto LABEL_11;
      }

      ++v25;
      MEMORY[0x28223BE20](v38);
      *(&v44 - 4) = v29;
      *(&v44 - 3) = v37;
      *(&v44 - 2) = v31;
      _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(v40, partial apply for closure #1 in closure #1 in OrderedSet.removeSubrange(_:), (&v44 - 6), v35, v36);
      (*v50)(v26, v29);
      v30 = v57;
      v41 = ArraySlice.endIndex.getter();
      v9 = v35;
      v10 = v53;
      if (v25 == v41)
      {
        swift_unknownObjectRelease();
        v24 = v60;
        a5 = v45;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }
}

void OrderedSet.removeSubrange<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  OrderedSet.removeSubrange(_:)(v5, v6, a2);
}

void OrderedSet.removeLast()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2[1];
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v10 = *v2;
  if (!*v3)
  {
    swift_getWitnessTable();
    swift_getWitnessTable();
    RangeReplaceableCollection<>.removeLast()();
    return;
  }

  v17 = v7;
  v11 = ContiguousArray.count.getter();
  v12 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
    goto LABEL_11;
  }

  v18 = a2;
  v13 = *(a1 + 24);
  OrderedSet._minimumCapacity.getter(v10);
  v15 = v14;
  swift_getWitnessTable();
  swift_getWitnessTable();
  if (v12 < v15)
  {
    RangeReplaceableCollection<>.removeLast()();
    OrderedSet._regenerateHashTable()();
    return;
  }

  RangeReplaceableCollection<>.removeLast()();
  OrderedSet._ensureUnique()();
  v16 = *v3;
  if (!*v3)
  {
    goto LABEL_12;
  }

  closure #1 in OrderedSet.removeLast()((v16 + 16), v16 + 32, v9, v3, v6, v13);

  (*(v17 + 32))(v18, v9, v6);
}

unint64_t closure #1 in OrderedSet.removeLast()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = 1 << *a1;
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = v14 & result;
    v16 = _HashTable.UnsafeHandle._startIterator(bucket:)(v14 & result, a1, a2);
    v25 = a1;
    v26 = a2;
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v31 = 0;

    v19 = ContiguousArray.count.getter();

    if (v16)
    {
      do
      {
        v21 = -1 << *v25;
        v22 = (v21 ^ ~v16) + (v25[1] >> 6);
        if (v22 >= ~v21)
        {
          v23 = ~v21;
        }

        else
        {
          v23 = 0;
        }

        if (v22 - v23 == v19)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v16 = v28;
      }

      while (v28);
      v15 = v27;
    }

    MEMORY[0x28223BE20](v20);
    v24[2] = a5;
    v24[3] = a6;
    v24[4] = a4;
    return _HashTable.UnsafeHandle.delete(bucket:hashValueGenerator:)(v15, partial apply for closure #1 in closure #1 in OrderedSet.removeLast(), v24, a1, a2);
  }

  return result;
}

uint64_t closure #1 in closure #1 in OrderedSet.removeSubrange(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContiguousArray.subscript.getter();
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  (*(v6 + 8))(v8, a4);
  return v9;
}

void OrderedSet.removeFirst()(uint64_t a1)
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    __break(1u);
  }

  else
  {
    OrderedSet.remove(at:)(0, a1);
  }
}

void OrderedSet.removeAll(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  RangeReplaceableCollection<>.removeAll(where:)();
  type metadata accessor for OrderedSet(0, v4, *(a3 + 24), v5);
  OrderedSet._regenerateHashTable()();
}

void specialized ContiguousArray.subscript.getter(Swift::Int a1, Swift::Int a2)
{
  ContiguousArray._checkIndex(_:)(a1);
  ContiguousArray._checkIndex(_:)(a2);
  if (a2 < 0)
  {
    __break(1u);
  }
}

uint64_t MaterialXDataType.nodeDefinitionMaterialXDataType.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
}

uint64_t GeomPropDef.GeomProp.nodeDefinitionGeomProp.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    *a4 = result;
    *(a4 + 8) = a2;
    *(a4 + 16) = 1;
  }

  if (result > 2u)
  {
    if (result == 3)
    {
      v4 = xmmword_265F24220;
    }

    else if (result == 4)
    {
      v4 = xmmword_265F22B90;
    }

    else
    {
      v4 = xmmword_265F20CF0;
    }
  }

  else
  {
    if (!result)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      return result;
    }

    if (result == 1)
    {
      v4 = xmmword_265F23D80;
    }

    else
    {
      v4 = xmmword_265F24230;
    }
  }

  *a4 = v4;
  *(a4 + 16) = 0;
  return result;
}

uint64_t MaterialXAvailability.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = 0x61656C6572657270;
  v3 = 0x7461636572706564;
  if (a2 == 2)
  {
    v3 = 0x726F707075736E75;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    return 0x6574726F70707573;
  }

  else
  {
    return v2;
  }
}

uint64_t MaterialXAvailability.availabilityMessage.getter(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) < 3)
  {
    return 0;
  }

  return a1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MaterialXAvailability()
{
  v1 = *(v0 + 8);
  v2 = 0x61656C6572657270;
  v3 = 0x7461636572706564;
  if (v1 == 2)
  {
    v3 = 0x726F707075736E75;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  if (v1 == 1)
  {
    return 0x6574726F70707573;
  }

  else
  {
    return v2;
  }
}

uint64_t NodeDefinitionStore.TypeStorage.init(materialXValue:type:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized SGDataTypeStorage.init(materialXValue:type:)(a1, a2, a3, v12);
  if (!v4)
  {
    v7 = v12[0];
    v8 = v12[1];
    v9 = v12[2];
    v10 = v12[3];
    v11 = v13;
    switch(v13)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 17:
      case 18:
      case 19:
      case 22:
      case 23:
        break;
      case 6:
      case 16:
        *(&v7 + 1) = *(&v12[0] + 1);
        break;
      case 20:
      case 21:
        *(&v7 + 1) = *(&v12[0] + 1);
        break;
      default:
        v14 = v12[0];
        LODWORD(v7) = v12[0] & 1;
        break;
    }

    *a4 = v7;
    *(a4 + 16) = v8;
    *(a4 + 32) = v9;
    *(a4 + 48) = v10;
    *(a4 + 64) = v11;
  }

  return result;
}

uint64_t specialized static NodeDefinitionStore.MaterialXDataType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (!v2)
  {
    if (!v3)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v2, v3);
}

uint64_t OrderedSet.init(arrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return OrderedSet.init<A>(_:)(&v8, a2, v5, a3, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance OrderedSet<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = OrderedSet.init(arrayLiteral:)(a1, *(a2 + 16), *(a2 + 24));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t one-time initialization function for wellKnownConstantMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph13MetalDataTypeC4type_AC06SGDatahC0O5valueSS3keytGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph13MetalDataTypeC4type_AC06SGDatahC0O5valueSS3keytGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F242D0;
  if (one-time initialization token for BOOL != -1)
  {
    swift_once();
  }

  v1 = static MetalDataType.BOOL;
  *(v0 + 32) = static MetalDataType.BOOL;
  *(v0 + 48) = 1;
  *(v0 + 112) = 0;
  strcpy((v0 + 120), "constant_true");
  *(v0 + 134) = -4864;
  *(v0 + 144) = v1;
  *(v0 + 160) = 0;
  *(v0 + 224) = 0;
  strcpy((v0 + 232), "constant_false");
  *(v0 + 247) = -18;
  v2 = one-time initialization token for int32;
  swift_retain_n();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = static MetalDataType.int32;
  *(v0 + 256) = static MetalDataType.int32;
  *(v0 + 272) = 0;
  *(v0 + 336) = 2;
  strcpy((v0 + 344), "constant_int_0");
  *(v0 + 359) = -18;
  *(v0 + 368) = v3;
  *(v0 + 384) = 1;
  *(v0 + 448) = 2;
  strcpy((v0 + 456), "constant_int_1");
  *(v0 + 471) = -18;
  *(v0 + 480) = v3;
  *(v0 + 496) = 2;
  *(v0 + 560) = 2;
  strcpy((v0 + 568), "constant_int_2");
  *(v0 + 583) = -18;
  *(v0 + 592) = v3;
  *(v0 + 608) = 3;
  *(v0 + 672) = 2;
  strcpy((v0 + 680), "constant_int_3");
  *(v0 + 695) = -18;
  v4 = one-time initialization token for float;
  swift_retain_n();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static MetalDataType.float;
  *(v0 + 704) = static MetalDataType.float;
  *(v0 + 720) = -1082130432;
  *(v0 + 768) = *&v25[12];
  *(v0 + 724) = v23;
  *(v0 + 740) = v24;
  *(v0 + 756) = *v25;
  *(v0 + 784) = 5;
  *(v0 + 792) = 0xD000000000000023;
  *(v0 + 800) = 0x8000000265F31600;
  *(v0 + 816) = v5;
  *(v0 + 832) = 0;
  *(v0 + 880) = *&v28[12];
  *(v0 + 852) = v27;
  *(v0 + 868) = *v28;
  *(v0 + 836) = v26;
  *(v0 + 896) = 5;
  *(v0 + 904) = 0xD00000000000001ELL;
  *(v0 + 912) = 0x8000000265F31630;
  *(v0 + 928) = v5;
  *(v0 + 944) = 925353388;
  *(v0 + 948) = v29;
  *(v0 + 964) = v30;
  *(v0 + 980) = *v31;
  *(v0 + 992) = *&v31[12];
  *(v0 + 1008) = 5;
  *(v0 + 1016) = 0xD000000000000031;
  *(v0 + 1024) = 0x8000000265F31650;
  *(v0 + 1040) = v5;
  *(v0 + 1056) = 1008981770;
  *(v0 + 1104) = *&v34[12];
  *(v0 + 1076) = v33;
  *(v0 + 1092) = *v34;
  *(v0 + 1060) = v32;
  *(v0 + 1120) = 5;
  *(v0 + 1128) = 0xD000000000000022;
  *(v0 + 1136) = 0x8000000265F31690;
  *(v0 + 1152) = v5;
  *(v0 + 1168) = 1036831949;
  *(v0 + 1172) = v35;
  *(v0 + 1188) = v36;
  *(v0 + 1204) = *v37;
  *(v0 + 1216) = *&v37[12];
  *(v0 + 1232) = 5;
  *(v0 + 1240) = 0xD00000000000001DLL;
  *(v0 + 1248) = 0x8000000265F316C0;
  *(v0 + 1264) = v5;
  *(v0 + 1280) = 1048576000;
  *(v0 + 1328) = *&v40[12];
  *(v0 + 1300) = v39;
  *(v0 + 1316) = *v40;
  *(v0 + 1284) = v38;
  *(v0 + 1344) = 5;
  *(v0 + 1352) = 0xD000000000000022;
  *(v0 + 1360) = 0x8000000265F316E0;
  *(v0 + 1376) = v5;
  *(v0 + 1392) = 1051372203;
  *(v0 + 1440) = *&v43[12];
  *(v0 + 1412) = v42;
  *(v0 + 1428) = *v43;
  *(v0 + 1396) = v41;
  *(v0 + 1456) = 5;
  *(v0 + 1464) = 0xD00000000000001DLL;
  *(v0 + 1472) = 0x8000000265F31710;
  *(v0 + 1488) = v5;
  *(v0 + 1504) = 1056964608;
  *(v0 + 1552) = *&v46[12];
  *(v0 + 1524) = v45;
  *(v0 + 1540) = *v46;
  *(v0 + 1508) = v44;
  *(v0 + 1568) = 5;
  *(v0 + 1576) = 0xD00000000000001BLL;
  *(v0 + 1584) = 0x8000000265F31730;
  *(v0 + 1600) = v5;
  *(v0 + 1616) = 1059760811;
  *(v0 + 1664) = *&v49[12];
  *(v0 + 1636) = v48;
  *(v0 + 1652) = *v49;
  *(v0 + 1620) = v47;
  *(v0 + 1680) = 5;
  *(v0 + 1688) = 0xD00000000000001DLL;
  *(v0 + 1696) = 0x8000000265F31750;
  *(v0 + 1712) = v5;
  *(v0 + 1728) = 1061158912;
  *(v0 + 1776) = *&v52[12];
  *(v0 + 1748) = v51;
  *(v0 + 1764) = *v52;
  *(v0 + 1732) = v50;
  *(v0 + 1792) = 5;
  *(v0 + 1800) = 0xD00000000000001ELL;
  *(v0 + 1808) = 0x8000000265F31770;
  *(v0 + 1824) = v5;
  *(v0 + 1840) = 1065353216;
  *(v0 + 1888) = *&v55[12];
  *(v0 + 1860) = v54;
  *(v0 + 1876) = *v55;
  *(v0 + 1844) = v53;
  *(v0 + 1904) = 5;
  *(v0 + 1912) = 0xD00000000000001DLL;
  *(v0 + 1920) = 0x8000000265F31790;
  *(v0 + 1936) = v5;
  *(v0 + 1952) = 1069547520;
  *(v0 + 2000) = *&v58[12];
  *(v0 + 1972) = v57;
  *(v0 + 1988) = *v58;
  *(v0 + 1956) = v56;
  *(v0 + 2016) = 5;
  *(v0 + 2024) = 0xD00000000000001DLL;
  *(v0 + 2032) = 0x8000000265F317B0;
  v6 = one-time initialization token for float2;
  swift_retain_n();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static MetalDataType.float2;
  *(v0 + 2048) = static MetalDataType.float2;
  *(v0 + 2064) = 0;
  *(v0 + 2120) = v62;
  *(v0 + 2072) = v59;
  *(v0 + 2088) = v60;
  *(v0 + 2104) = v61;
  *(v0 + 2128) = 7;
  *(v0 + 2136) = 0xD000000000000019;
  *(v0 + 2144) = 0x8000000265F317D0;
  *(v0 + 2160) = v7;
  *(v0 + 2176) = 1065353216;
  *(v0 + 2232) = v66;
  *(v0 + 2200) = v64;
  *(v0 + 2216) = v65;
  *(v0 + 2184) = v63;
  *(v0 + 2240) = 7;
  *(v0 + 2248) = 0xD000000000000018;
  *(v0 + 2256) = 0x8000000265F317F0;
  *(v0 + 2272) = v7;
  *(v0 + 2288) = 0x3F80000000000000;
  *(v0 + 2296) = v67;
  *(v0 + 2312) = v68;
  *(v0 + 2328) = v69;
  *(v0 + 2344) = v70;
  *(v0 + 2352) = 7;
  *(v0 + 2360) = 0xD000000000000018;
  *(v0 + 2368) = 0x8000000265F31810;
  *(v0 + 2384) = v7;
  __asm { FMOV            V0.2S, #1.0 }

  *(v0 + 2400) = _D0;
  *(v0 + 2456) = v74;
  *(v0 + 2424) = v72;
  *(v0 + 2440) = v73;
  *(v0 + 2408) = v71;
  *(v0 + 2464) = 7;
  *(v0 + 2472) = 0xD000000000000017;
  *(v0 + 2480) = 0x8000000265F31830;
  *(v0 + 2496) = v7;
  *(v0 + 2512) = 0x3F0000003F000000;
  *(v0 + 2568) = v78;
  *(v0 + 2536) = v76;
  *(v0 + 2552) = v77;
  *(v0 + 2520) = v75;
  *(v0 + 2576) = 7;
  *(v0 + 2584) = 0xD00000000000002FLL;
  *(v0 + 2592) = 0x8000000265F31850;
  v13 = one-time initialization token for float3;
  swift_retain_n();
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = static MetalDataType.float3;
  *(v0 + 2608) = static MetalDataType.float3;
  *(v0 + 2624) = 0u;
  *(v0 + 2640) = v79;
  *(v0 + 2656) = v80;
  *(v0 + 2672) = v81;
  *(v0 + 2688) = 8;
  *(v0 + 2696) = 0xD00000000000001ELL;
  *(v0 + 2704) = 0x8000000265F31880;
  *(v0 + 2720) = v14;
  *(v0 + 2736) = xmmword_265F242E0;
  *(v0 + 2752) = v82;
  *(v0 + 2768) = v83;
  *(v0 + 2784) = v84;
  *(v0 + 2800) = 8;
  *(v0 + 2808) = 0xD00000000000001DLL;
  *(v0 + 2816) = 0x8000000265F318A0;
  *(v0 + 2832) = v14;
  *(v0 + 2848) = xmmword_265F242F0;
  *(v0 + 2864) = v85;
  *(v0 + 2880) = v86;
  *(v0 + 2896) = v87;
  *(v0 + 2912) = 8;
  *(v0 + 2920) = 0xD00000000000001DLL;
  *(v0 + 2928) = 0x8000000265F318C0;
  *(v0 + 2944) = v14;
  *(v0 + 2960) = xmmword_265F24300;
  *(v0 + 3008) = v90;
  *(v0 + 2992) = v89;
  *(v0 + 2976) = v88;
  *(v0 + 3024) = 8;
  *(v0 + 3032) = 0xD00000000000001DLL;
  *(v0 + 3040) = 0x8000000265F318E0;
  *(v0 + 3056) = v14;
  *(v0 + 3072) = xmmword_265F24310;
  *(v0 + 3120) = v93;
  *(v0 + 3104) = v92;
  *(v0 + 3088) = v91;
  *(v0 + 3136) = 8;
  *(v0 + 3144) = 0xD00000000000001CLL;
  *(v0 + 3152) = 0x8000000265F31900;
  *(v0 + 3168) = v14;
  *(v0 + 3184) = xmmword_265F24320;
  *(v0 + 3232) = v96;
  *(v0 + 3216) = v95;
  *(v0 + 3200) = v94;
  *(v0 + 3248) = 8;
  *(v0 + 3256) = 0xD00000000000001CLL;
  *(v0 + 3264) = 0x8000000265F31920;
  *(v0 + 3280) = v14;
  *(v0 + 3296) = xmmword_265F24330;
  *(v0 + 3344) = v99;
  *(v0 + 3328) = v98;
  *(v0 + 3312) = v97;
  *(v0 + 3360) = 8;
  *(v0 + 3368) = 0xD00000000000001CLL;
  *(v0 + 3376) = 0x8000000265F31940;
  *(v0 + 3392) = v14;
  *(v0 + 3408) = xmmword_265F24340;
  *(v0 + 3456) = v102;
  *(v0 + 3440) = v101;
  *(v0 + 3424) = v100;
  *(v0 + 3472) = 8;
  *(v0 + 3480) = 0xD00000000000001BLL;
  *(v0 + 3488) = 0x8000000265F31960;
  *(v0 + 3504) = v14;
  *(v0 + 3520) = xmmword_265F24350;
  *(v0 + 3568) = v105;
  *(v0 + 3552) = v104;
  *(v0 + 3536) = v103;
  *(v0 + 3584) = 8;
  *(v0 + 3592) = 0xD000000000000024;
  *(v0 + 3600) = 0x8000000265F31980;
  v15 = one-time initialization token for float4;
  swift_retain_n();
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = static MetalDataType.float4;
  *(v0 + 3616) = static MetalDataType.float4;
  *(v0 + 3632) = 0u;
  *(v0 + 3648) = v106;
  *(v0 + 3664) = v107;
  *(v0 + 3680) = v108;
  *(v0 + 3696) = 9;
  *(v0 + 3704) = 0xD000000000000023;
  *(v0 + 3712) = 0x8000000265F319B0;
  *(v0 + 3728) = v16;
  *(v0 + 3744) = xmmword_265F24360;
  *(v0 + 3760) = v109;
  *(v0 + 3776) = v110;
  *(v0 + 3792) = v111;
  *(v0 + 3808) = 9;
  *(v0 + 3816) = 0xD000000000000022;
  *(v0 + 3824) = 0x8000000265F319E0;
  *(v0 + 3840) = v16;
  *(v0 + 3856) = xmmword_265F24370;
  *(v0 + 3872) = v112;
  *(v0 + 3888) = v113;
  *(v0 + 3904) = v114;
  *(v0 + 3920) = 9;
  *(v0 + 3928) = 0xD000000000000021;
  *(v0 + 3936) = 0x8000000265F31A10;
  *(v0 + 3952) = v16;
  *(v0 + 3968) = xmmword_265F24380;
  *(v0 + 4016) = v117;
  *(v0 + 4000) = v116;
  *(v0 + 3984) = v115;
  *(v0 + 4032) = 9;
  *(v0 + 4040) = 0xD000000000000021;
  *(v0 + 4048) = 0x8000000265F31A40;
  *(v0 + 4064) = v16;
  *(v0 + 4080) = xmmword_265F24390;
  *(v0 + 4128) = v120;
  *(v0 + 4112) = v119;
  *(v0 + 4096) = v118;
  *(v0 + 4144) = 9;
  *(v0 + 4152) = 0xD000000000000021;
  *(v0 + 4160) = 0x8000000265F31A70;
  *(v0 + 4176) = v16;
  *(v0 + 4192) = xmmword_265F243A0;
  *(v0 + 4240) = v123;
  *(v0 + 4224) = v122;
  *(v0 + 4208) = v121;
  *(v0 + 4256) = 9;
  *(v0 + 4264) = 0xD000000000000020;
  *(v0 + 4272) = 0x8000000265F31AA0;
  *(v0 + 4288) = v16;
  *(v0 + 4304) = xmmword_265F243B0;
  *(v0 + 4352) = v126;
  *(v0 + 4336) = v125;
  *(v0 + 4320) = v124;
  *(v0 + 4368) = 9;
  *(v0 + 4376) = 0xD000000000000020;
  *(v0 + 4384) = 0x8000000265F31AD0;
  *(v0 + 4400) = v16;
  *(v0 + 4416) = xmmword_265F243C0;
  *(v0 + 4464) = v129;
  *(v0 + 4448) = v128;
  *(v0 + 4432) = v127;
  *(v0 + 4480) = 9;
  *(v0 + 4488) = 0xD000000000000020;
  *(v0 + 4496) = 0x8000000265F31B00;
  *(v0 + 4512) = v16;
  __asm { FMOV            V0.4S, #1.0 }

  *(v0 + 4528) = _Q0;
  *(v0 + 4576) = v132;
  *(v0 + 4560) = v131;
  *(v0 + 4544) = v130;
  *(v0 + 4592) = 9;
  *(v0 + 4600) = 0xD00000000000001FLL;
  *(v0 + 4608) = 0x8000000265F31B30;
  v18 = one-time initialization token for float3x3;
  swift_retain_n();
  if (v18 != -1)
  {
    swift_once();
  }

  *(v0 + 4624) = static MetalDataType.float3x3;
  *(v0 + 4640) = xmmword_265F242E0;
  *(v0 + 4656) = xmmword_265F242F0;
  *(v0 + 4672) = xmmword_265F24300;
  *(v0 + 4688) = v133;
  *(v0 + 4704) = 17;
  *(v0 + 4712) = 0xD00000000000001ALL;
  *(v0 + 4720) = 0x8000000265F31B50;
  v19 = one-time initialization token for float4x4;

  if (v19 != -1)
  {
    swift_once();
  }

  *(v0 + 4736) = static MetalDataType.float4x4;
  *(v0 + 4752) = xmmword_265F242E0;
  *(v0 + 4768) = xmmword_265F242F0;
  *(v0 + 4784) = xmmword_265F24300;
  *(v0 + 4800) = xmmword_265F24360;
  *(v0 + 4816) = 18;
  *(v0 + 4824) = 0xD00000000000001ALL;
  *(v0 + 4832) = 0x8000000265F31B70;
  v20 = one-time initialization token for space;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static MetalDataType.MaterialX.space;
  *(v0 + 4848) = static MetalDataType.MaterialX.space;
  *(v0 + 4864) = 0x6F4D65636170536BLL;
  *(v0 + 4872) = 0xEB000000006C6564;
  *(v0 + 4880) = v134;
  *(v0 + 4896) = v135;
  *(v0 + 4912) = v136;
  *(v0 + 4928) = 6;
  *(v0 + 4936) = 0xD000000000000014;
  *(v0 + 4944) = 0x8000000265F31B90;
  *(v0 + 4960) = v21;
  strcpy((v0 + 4976), "kSpaceObject");
  *(v0 + 4989) = 0;
  *(v0 + 4990) = -5120;
  *(v0 + 5024) = v139;
  *(v0 + 5008) = v138;
  *(v0 + 4992) = v137;
  *(v0 + 5040) = 6;
  *(v0 + 5048) = 0xD000000000000015;
  *(v0 + 5056) = 0x8000000265F31BB0;
  *(v0 + 5072) = v21;
  *(v0 + 5088) = 0x6F5765636170536BLL;
  *(v0 + 5096) = 0xEB00000000646C72;
  *(v0 + 5104) = v140;
  *(v0 + 5120) = v141;
  *(v0 + 5136) = v142;
  *(v0 + 5152) = 6;
  *(v0 + 5160) = 0xD000000000000014;
  *(v0 + 5168) = 0x8000000265F31BD0;
  *(v0 + 5184) = v21;
  strcpy((v0 + 5200), "kSpaceTangent");
  *(v0 + 5214) = -4864;
  *(v0 + 5248) = v145;
  *(v0 + 5232) = v144;
  *(v0 + 5216) = v143;
  *(v0 + 5264) = 6;
  *(v0 + 5272) = 0xD000000000000016;
  *(v0 + 5280) = 0x8000000265F31BF0;
  wellKnownConstantMap._rawValue = v0;
  return swift_retain_n();
}

Swift::OpaquePointer *wellKnownConstantMap.unsafeMutableAddressor()
{
  if (one-time initialization token for wellKnownConstantMap != -1)
  {
    swift_once();
  }

  return &wellKnownConstantMap;
}

Swift::Int UserGraphError.ErrorType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  return Hasher._finalize()();
}

uint64_t UserGraphError.description.getter(char a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(28);
  MEMORY[0x266771550](0xD000000000000015, 0x8000000265F31C10);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](2112041, 0xE300000000000000);
  if (a3)
  {

    v4 = String.init<A>(describing:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xE500000000000000;
    v4 = 0x3E6C696E3CLL;
  }

  MEMORY[0x266771550](v4, v6);

  return 0;
}

unint64_t lazy protocol witness table accessor for type UserGraphError.ErrorType and conformance UserGraphError.ErrorType()
{
  result = lazy protocol witness table cache variable for type UserGraphError.ErrorType and conformance UserGraphError.ErrorType;
  if (!lazy protocol witness table cache variable for type UserGraphError.ErrorType and conformance UserGraphError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserGraphError.ErrorType and conformance UserGraphError.ErrorType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserGraphError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UserGraphError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserGraphError.ErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD0)
  {
    goto LABEL_17;
  }

  if (a2 + 48 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 48) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 48;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 48;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 48;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x31;
  v8 = v6 - 49;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserGraphError.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 48 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 48) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD0)
  {
    v4 = 0;
  }

  if (a2 > 0xCF)
  {
    v5 = ((a2 - 208) >> 8) + 1;
    *result = a2 + 48;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 48;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t NodeDef.IOSpec.init(name:type:isUniform:defaultValue:defaultGeomProp:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a4;
  return result;
}

__n128 NodeDef.init(name:nodeName:inherit:nodegroup:version:isdefaultversion:targets:uiName:inputs:outputs:available:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17)
{
  result = a17;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 112) = a17;
  *(a9 + 128) = a15;
  *(a9 + 136) = a16;
  *(a9 + 144) = 0;
  return result;
}

__n128 NodeDef.init(name:nodeName:inherit:nodegroup:version:isdefaultversion:targets:uiName:inputs:outputs:availability:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, __n128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  [v21 operatingSystemVersion];
  v22 = v33;
  v26 = v32;

  v32 = v26;
  LOBYTE(v33) = 0;
  v34 = v22;
  v35 = 0;
  v23 = specialized static NodeDef.available(for:in:)(0, &v32, a17);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  result = a13;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 112) = v23;
  *(a9 + 120) = v25;
  *(a9 + 128) = a15;
  *(a9 + 136) = a16;
  *(a9 + 144) = a17;
  return result;
}

uint64_t NodeDef.Implementation.init(name:kind:targets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for NodeDef.Implementation(0);
  result = outlined init with take of NodeDef.Implementation.Kind(a3, a5 + *(v8 + 20));
  *(a5 + *(v8 + 24)) = a4;
  return result;
}

uint64_t NodeDef.subscript.getter@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 128);
  v6 = *(v5 + 16);
  v7 = 0uLL;
  if (v6)
  {
    v9 = result;
    v10 = (v5 + 32);
    while (1)
    {
      v11 = *(v10 + 41);
      v13 = v10[1];
      v12 = v10[2];
      *v22 = *v10;
      *&v22[16] = v13;
      *&v22[32] = v12;
      *&v22[41] = v11;
      v14 = *v22;
      v19 = *&v22[40];
      v20 = *&v22[24];
      v15 = HIBYTE(v11);
      v18 = *&v22[8];
      if (*v22 == __PAIR128__(a2, v9))
      {
        result = outlined init with copy of NodeDef.IOSpec(v22, v21);
        v14 = v9;
        goto LABEL_10;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v10 += 4;
      if (!--v6)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0uLL;
        v17 = 0uLL;
        v7 = 0uLL;
        goto LABEL_11;
      }
    }

    result = outlined init with copy of NodeDef.IOSpec(v22, v21);
LABEL_10:
    v7 = v18;
    v17 = v19;
    v16 = v20;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
  }

LABEL_11:
  *a3 = v14;
  *(a3 + 8) = v7;
  *(a3 + 24) = v16;
  *(a3 + 40) = v17;
  *(a3 + 56) = v15;
  return result;
}

{
  v5 = *(v3 + 136);
  v6 = *(v5 + 16);
  v7 = 0uLL;
  if (v6)
  {
    v9 = result;
    v10 = (v5 + 32);
    while (1)
    {
      v11 = *(v10 + 41);
      v13 = v10[1];
      v12 = v10[2];
      *v22 = *v10;
      *&v22[16] = v13;
      *&v22[32] = v12;
      *&v22[41] = v11;
      v14 = *v22;
      v19 = *&v22[40];
      v20 = *&v22[24];
      v15 = HIBYTE(v11);
      v18 = *&v22[8];
      if (*v22 == __PAIR128__(a2, v9))
      {
        result = outlined init with copy of NodeDef.IOSpec(v22, v21);
        v14 = v9;
        goto LABEL_10;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v10 += 4;
      if (!--v6)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0uLL;
        v17 = 0uLL;
        v7 = 0uLL;
        goto LABEL_11;
      }
    }

    result = outlined init with copy of NodeDef.IOSpec(v22, v21);
LABEL_10:
    v7 = v18;
    v17 = v19;
    v16 = v20;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
  }

LABEL_11:
  *a3 = v14;
  *(a3 + 8) = v7;
  *(a3 + 24) = v16;
  *(a3 + 40) = v17;
  *(a3 + 56) = v15;
  return result;
}

uint64_t *MaterialXTarget.realitykit_geometryModifier.unsafeMutableAddressor()
{
  if (one-time initialization token for realitykit_geometryModifier != -1)
  {
    swift_once();
  }

  return &static MaterialXTarget.realitykit_geometryModifier;
}

uint64_t *MaterialXTarget.realitykit_surfaceShader.unsafeMutableAddressor()
{
  if (one-time initialization token for realitykit_surfaceShader != -1)
  {
    swift_once();
  }

  return &static MaterialXTarget.realitykit_surfaceShader;
}

uint64_t MaterialXTarget.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MaterialXTarget.conformsTo(_:)(uint64_t a1)
{
  while (1)
  {
    v3 = v1[2] == *(a1 + 16) && v1[3] == *(a1 + 24);
    if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v1 = v1[4];
    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MaterialXTarget.deinit()
{

  v1 = *(v0 + 32);
  *(v0 + 32) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 32);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t MaterialXTarget.__deallocating_deinit()
{
  MaterialXTarget.deinit();

  return swift_deallocClassInstance();
}

void MaterialXTarget.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  v3 = *(v1 + 32);

  specialized Optional<A>.hash(into:)(a1, v3);
}

Swift::Int MaterialXTarget.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Optional<A>.hash(into:)(v2, *(v0 + 32));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MaterialXTarget()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Optional<A>.hash(into:)(v3, *(v1 + 32));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MaterialXTarget(uint64_t a1)
{
  v3 = *v1;
  String.hash(into:)();
  v4 = *(v3 + 32);

  specialized Optional<A>.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MaterialXTarget(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Optional<A>.hash(into:)(v4, *(v2 + 32));
  return Hasher._finalize()();
}

uint64_t one-time initialization function for realitykit(uint64_t a1)
{
  type metadata accessor for MaterialXTarget();
  result = swift_initStaticObject();
  static MaterialXTarget.realitykit = result;
  return result;
}

uint64_t *MaterialXTarget.realitykit.unsafeMutableAddressor()
{
  if (one-time initialization token for realitykit != -1)
  {
    swift_once();
  }

  return &static MaterialXTarget.realitykit;
}

void *one-time initialization function for realitykit_geometryModifier(uint64_t a1)
{
  type metadata accessor for MaterialXTarget();
  inited = swift_initStaticObject();
  result = swift_allocObject();
  result[2] = 0xD00000000000001CLL;
  result[3] = 0x8000000265F31C80;
  result[4] = inited;
  static MaterialXTarget.realitykit_geometryModifier = result;
  return result;
}

void *one-time initialization function for realitykit_surfaceShader(uint64_t a1)
{
  type metadata accessor for MaterialXTarget();
  inited = swift_initStaticObject();
  result = swift_allocObject();
  result[2] = 0xD000000000000019;
  result[3] = 0x8000000265F31CA0;
  result[4] = inited;
  static MaterialXTarget.realitykit_surfaceShader = result;
  return result;
}

uint64_t one-time initialization function for allTargets()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_265F24510;
  type metadata accessor for MaterialXTarget();
  *(v0 + 32) = swift_initStaticObject();
  if (one-time initialization token for realitykit_geometryModifier != -1)
  {
    swift_once();
  }

  *(v0 + 40) = static MaterialXTarget.realitykit_geometryModifier;
  v1 = one-time initialization token for realitykit_surfaceShader;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = static MaterialXTarget.realitykit_surfaceShader;
  static MaterialXTarget.allTargets = v0;
}

uint64_t *MaterialXTarget.allTargets.unsafeMutableAddressor()
{
  if (one-time initialization token for allTargets != -1)
  {
    swift_once();
  }

  return &static MaterialXTarget.allTargets;
}

uint64_t static MaterialXTarget.allTargets.getter()
{
  if (one-time initialization token for allTargets != -1)
  {
    swift_once();
  }
}

void MaterialXAvailability.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 3:
      v3 = 3;
      goto LABEL_7;
    case 2:
      v3 = 1;
      goto LABEL_7;
    case 1:
      v3 = 0;
LABEL_7:
      MEMORY[0x266772770](v3, a2);
      return;
  }

  MEMORY[0x266772770](2);
  if (a3)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int MaterialXAvailability.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  switch(a2)
  {
    case 3:
      v3 = 3;
      goto LABEL_7;
    case 2:
      v3 = 1;
      goto LABEL_7;
    case 1:
      v3 = 0;
LABEL_7:
      MEMORY[0x266772770](v3);
      return Hasher._finalize()();
  }

  MEMORY[0x266772770](2);
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MaterialXAvailability(uint64_t a1)
{
  v2 = *(v1 + 8);
  switch(v2)
  {
    case 3:
      v3 = 3;
      goto LABEL_7;
    case 2:
      v3 = 1;
      goto LABEL_7;
    case 1:
      v3 = 0;
LABEL_7:
      MEMORY[0x266772770](v3);
      return;
  }

  MEMORY[0x266772770](2);
  if (v2)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MaterialXAvailability(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  switch(v2)
  {
    case 3:
      v3 = 3;
      goto LABEL_7;
    case 2:
      v3 = 1;
      goto LABEL_7;
    case 1:
      v3 = 0;
LABEL_7:
      MEMORY[0x266772770](v3);
      return Hasher._finalize()();
  }

  MEMORY[0x266772770](2);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t NodeDef.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NodeDef.nodeName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NodeDef.inherit.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NodeDef.nodegroup.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t NodeDef.version.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t NodeDef.uiName.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t NodeDef.available.getter()
{
  v1 = *(v0 + 112);
  outlined copy of MaterialXAvailability(v1, *(v0 + 120));
  return v1;
}

uint64_t NodeDef.IOSpec.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NodeDef.IOSpec.defaultValue.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t NodeDef.IOSpec.defaultGeomProp.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void NodeDef.IOSpec.hash(into:)(uint64_t a1)
{
  v2 = v1;
  String.hash(into:)();
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v4 + 16);

  specialized Array<A>.hash(into:)(a1, v5);

  if (!*(v2 + 32))
  {
    Hasher._combine(_:)(0);
    if (*(v2 + 48))
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v2 + 48))
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_6:
  Hasher._combine(_:)(*(v2 + 56) & 1);
}

Swift::Int NodeDef.IOSpec.hashValue.getter()
{
  v1 = v0;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = *(v0 + 16);
  swift_beginAccess();
  v3 = *(v2 + 16);

  specialized Array<A>.hash(into:)(v5, v3);

  if (!*(v1 + 32))
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 48))
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    goto LABEL_6;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v1 + 48))
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_6:
  Hasher._combine(_:)(*(v1 + 56) & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeDef.IOSpec(uint64_t a1)
{
  Hasher.init(_seed:)();
  NodeDef.IOSpec.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NodeDef.IOSpec(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return specialized static NodeDef.IOSpec.== infix(_:_:)(v5, v7) & 1;
}

void NodeDef.hash(into:)(uint64_t a1)
{
  v2 = v1;
  String.hash(into:)();
  String.hash(into:)();
  if (*(v2 + 40))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v2 + 56))
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (*(v2 + 72))
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  Hasher._combine(_:)(0);
  if (!*(v2 + 56))
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (*(v2 + 72))
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_8;
  }

LABEL_7:
  Hasher._combine(_:)(0);
LABEL_8:
  v4 = *(v2 + 80);
  if (v4 == 2)
  {
    v5 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = v4 & 1;
  }

  Hasher._combine(_:)(v5);
  v6 = *(v2 + 88);
  v7 = *(v6 + 16);
  MEMORY[0x266772770](v7);
  if (v7)
  {
    v8 = v6 + 40;
    do
    {

      String.hash(into:)();

      v8 += 16;
      --v7;
    }

    while (v7);
  }

  if (*(v2 + 104))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = *(v2 + 120);
  switch(v9)
  {
    case 3:
      v10 = 3;
      goto LABEL_23;
    case 2:
      v10 = 1;
      goto LABEL_23;
    case 1:
      v10 = 0;
LABEL_23:
      MEMORY[0x266772770](v10);
      goto LABEL_24;
  }

  MEMORY[0x266772770](2);
  if (v9)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

LABEL_24:
  specialized Array<A>.hash(into:)(a1, *(v2 + 128));
  specialized Array<A>.hash(into:)(a1, *(v2 + 136));
  v11 = *(v2 + 144);
  if (v11)
  {
    Hasher._combine(_:)(1u);

    specialized Array<A>.hash(into:)(a1, v11);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int NodeDef.hashValue.getter()
{
  Hasher.init(_seed:)();
  NodeDef.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NodeDef()
{
  Hasher.init(_seed:)();
  NodeDef.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeDef(uint64_t a1)
{
  Hasher.init(_seed:)();
  NodeDef.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance NodeDef(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v13[8] = *(a2 + 128);
  v14 = *(a2 + 144);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return specialized static NodeDef.== infix(_:_:)(v11, v13);
}

uint64_t NodeDef.Implementation.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NodeDef.Implementation.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NodeDef.Implementation(0) + 20);

  return outlined init with copy of NodeDef.Implementation.Kind(v3, a1);
}

uint64_t NodeDef.Implementation.targets.getter()
{
  type metadata accessor for NodeDef.Implementation(0);
}

uint64_t NodeDef.Implementation.isAvailableFor(_:)()
{
  v1 = *(v0 + *(type metadata accessor for NodeDef.Implementation(0) + 24));
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for MaterialXTarget();
      lazy protocol witness table accessor for type MaterialXTarget and conformance MaterialXTarget(&lazy protocol witness table cache variable for type MaterialXTarget and conformance MaterialXTarget, v2, type metadata accessor for MaterialXTarget, &protocol conformance descriptor for MaterialXTarget);
      result = Set.Iterator.init(_cocoa:)();
      v1 = v18;
      v4 = v19;
      v5 = v20;
      v6 = v21;
      v7 = v22;
LABEL_9:
      v11 = (v5 + 64) >> 6;
      while (1)
      {
        if (v1 < 0)
        {
          if (!__CocoaSet.Iterator.next()() || (type metadata accessor for MaterialXTarget(), swift_dynamicCast(), (v12 = v17) == 0))
          {
LABEL_20:
            v16 = 0;
LABEL_21:
            outlined consume of [String : GeomPropDef].Iterator._Variant(v1);
            return v16;
          }
        }

        else
        {
          v14 = v6;
          v15 = v7;
          if (!v7)
          {
            while (1)
            {
              v6 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                break;
              }

              if (v6 >= v11)
              {
                goto LABEL_20;
              }

              v15 = *(v4 + 8 * v6);
              ++v14;
              if (v15)
              {
                goto LABEL_10;
              }
            }

            __break(1u);
            return result;
          }

LABEL_10:
          v7 = (v15 - 1) & v15;
          v12 = *(*(v1 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v15)))));

          if (!v12)
          {
            goto LABEL_20;
          }
        }

        v13 = MaterialXTarget.conformsTo(_:)(v12);

        if (v13)
        {
          v16 = 1;
          goto LABEL_21;
        }
      }
    }
  }

  else if (*(v1 + 16))
  {
    v8 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v1 + 56);

    v6 = 0;
    goto LABEL_9;
  }

  return 1;
}

void *NodeDef.Implementation.hash(into:)(__int128 *a1)
{
  String.hash(into:)();
  v3 = type metadata accessor for NodeDef.Implementation(0);
  NodeDef.Implementation.Kind.hash(into:)(a1);
  v4 = *(v1 + *(v3 + 24));

  return specialized Set.hash(into:)(a1, v4);
}

Swift::Int NodeDef.Implementation.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = type metadata accessor for NodeDef.Implementation(0);
  NodeDef.Implementation.Kind.hash(into:)(v3);
  specialized Set.hash(into:)(v3, *(v0 + *(v1 + 24)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NodeDef.Implementation(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  NodeDef.Implementation.Kind.hash(into:)(v4);
  specialized Set.hash(into:)(v4, *(v1 + *(a1 + 24)));
  return Hasher._finalize()();
}

void *protocol witness for Hashable.hash(into:) in conformance NodeDef.Implementation(__int128 *a1, uint64_t a2)
{
  String.hash(into:)();
  NodeDef.Implementation.Kind.hash(into:)(a1);
  v5 = *(v2 + *(a2 + 24));

  return specialized Set.hash(into:)(a1, v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeDef.Implementation(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  NodeDef.Implementation.Kind.hash(into:)(v5);
  specialized Set.hash(into:)(v5, *(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

uint64_t NodeDef.Implementation.Kind.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NodeDef.Implementation.Kind(0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NodeDef.Implementation.Kind(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = 3;
    }

    MEMORY[0x266772770](v18);
    String.hash(into:)();
  }

  else if (EnumCaseMultiPayload)
  {
    v19 = *(v10 + 1);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg12functionName_10Foundation3URLV4filetMd, &_sSSSg12functionName_10Foundation3URLV4filetMR);
    (*(v5 + 32))(v7, &v10[*(v20 + 48)], v4);
    MEMORY[0x266772770](1);
    if (v19)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    lazy protocol witness table accessor for type MaterialXTarget and conformance MaterialXTarget(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v12 = *(v10 + 9);
    v21[8] = *(v10 + 8);
    v22[0] = v12;
    *(v22 + 9) = *(v10 + 153);
    v13 = *(v10 + 5);
    v21[4] = *(v10 + 4);
    v21[5] = v13;
    v14 = *(v10 + 7);
    v21[6] = *(v10 + 6);
    v21[7] = v14;
    v15 = *(v10 + 1);
    v21[0] = *v10;
    v21[1] = v15;
    v16 = *(v10 + 3);
    v21[2] = *(v10 + 2);
    v21[3] = v16;
    MEMORY[0x266772770](0);
    UserGraph.hash(into:)(a1);
    return outlined destroy of UserGraph(v21);
  }
}

Swift::Int NodeDef.Implementation.Kind.hashValue.getter()
{
  Hasher.init(_seed:)();
  NodeDef.Implementation.Kind.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NodeDef.Implementation.Kind()
{
  Hasher.init(_seed:)();
  NodeDef.Implementation.Kind.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NodeDef.Implementation.Kind(uint64_t a1)
{
  Hasher.init(_seed:)();
  NodeDef.Implementation.Kind.hash(into:)(v2);
  return Hasher._finalize()();
}

void specialized Optional<A>.hash(into:)(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v2 = v2[4];
    }

    while (v2);
  }

  Hasher._combine(_:)(0);
}

void *specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v27 = a1[2];
  v28 = v3;
  v29 = *(a1 + 8);
  v4 = a1[1];
  v25 = *a1;
  v26 = v4;
  Hasher._finalize()();
  if ((a2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for MaterialXTarget();
    lazy protocol witness table accessor for type MaterialXTarget and conformance MaterialXTarget(&lazy protocol witness table cache variable for type MaterialXTarget and conformance MaterialXTarget, v5, type metadata accessor for MaterialXTarget, &protocol conformance descriptor for MaterialXTarget);
    result = Set.Iterator.init(_cocoa:)();
    a2 = v30;
    v7 = v31;
    v8 = v32;
    v9 = v33;
    v10 = v34;
  }

  else
  {
    v11 = -1 << *(a2 + 32);
    v7 = a2 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a2 + 56);

    v9 = 0;
  }

  v14 = 0;
  v15 = (v8 + 64) >> 6;
  while (a2 < 0)
  {
    v22 = __CocoaSet.Iterator.next()();
    if (!v22)
    {
LABEL_20:
      outlined consume of [String : GeomPropDef].Iterator._Variant(a2);
      return MEMORY[0x266772770](v14);
    }

    v23[0] = v22;
    type metadata accessor for MaterialXTarget();
    swift_dynamicCast();
    v18 = v24;
LABEL_10:
    Hasher.init(_seed:)();
    String.hash(into:)();
    v19 = *(v18 + 32);

    specialized Optional<A>.hash(into:)(v23, v19);

    v20 = Hasher._finalize()();

    v14 ^= v20;
  }

  if (v10)
  {
    v16 = v9;
LABEL_9:
    v17 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v18 = *(*(a2 + 48) + ((v16 << 9) | (8 * v17)));
    v24 = v18;

    goto LABEL_10;
  }

  v21 = v9;
  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= v15)
    {
      goto LABEL_20;
    }

    v10 = *(v7 + 8 * v16);
    ++v21;
    if (v10)
    {
      v9 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Int specialized Set.hash(into:)(__int128 *a1, uint64_t a2)
{
  result = Hasher._finalize()();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v13);
    MEMORY[0x266772770](v14);
    result = Hasher._finalize()();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x266772770](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL specialized static MaterialXTarget.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v5 & 1) != 0))
  {
    v7 = a1[4];
    v8 = a2[4];
    result = (v7 | v8) == 0;
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {

      v10 = specialized static MaterialXTarget.== infix(_:_:)(v7, v8);

      return v10;
    }
  }

  return result;
}

BOOL specialized static MaterialXAvailability.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a2)
  {
    case 3:
      return a4 == 3;
    case 2:
      return a4 == 2;
    case 1:
      return a4 == 1;
  }

  if ((a4 - 1) < 3)
  {
    return 0;
  }

  if (a2)
  {
    if (!a4)
    {
      return 0;
    }

    return a1 == a3 && a2 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  else
  {
    return !a4;
  }
}

uint64_t specialized static NodeDef.Implementation.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v61 = v4;
  v62 = v5;
  MEMORY[0x28223BE20](v4);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v57 - v8;
  v9 = type metadata accessor for NodeDef.Implementation.Kind(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v57 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = (&v57 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7NodeDefV14ImplementationV4KindO_AGtMd, &_s11ShaderGraph7NodeDefV14ImplementationV4KindO_AGtMR);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v57 - v22;
  v25 = &v57 + *(v24 + 56) - v22;
  outlined init with copy of NodeDef.Implementation.Kind(a1, &v57 - v22);
  outlined init with copy of NodeDef.Implementation.Kind(a2, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with copy of NodeDef.Implementation.Kind(v23, v20);
      v27 = v20[9];
      v63[8] = v20[8];
      v64[0] = v27;
      *(v64 + 9) = *(v20 + 153);
      v28 = v20[5];
      v63[4] = v20[4];
      v63[5] = v28;
      v29 = v20[7];
      v63[6] = v20[6];
      v63[7] = v29;
      v30 = v20[1];
      v63[0] = *v20;
      v63[1] = v30;
      v31 = v20[3];
      v63[2] = v20[2];
      v63[3] = v31;
      if (swift_getEnumCaseMultiPayload())
      {
        outlined destroy of UserGraph(v63);
LABEL_28:
        outlined destroy of (NodeDef.Implementation.Kind, NodeDef.Implementation.Kind)(v23);
LABEL_34:
        v47 = 0;
        return v47 & 1;
      }

      v48 = *(v25 + 9);
      v65[8] = *(v25 + 8);
      v66[0] = v48;
      *(v66 + 9) = *(v25 + 153);
      v49 = *(v25 + 5);
      v65[4] = *(v25 + 4);
      v65[5] = v49;
      v50 = *(v25 + 7);
      v65[6] = *(v25 + 6);
      v65[7] = v50;
      v51 = *(v25 + 1);
      v65[0] = *v25;
      v65[1] = v51;
      v52 = *(v25 + 3);
      v65[2] = *(v25 + 2);
      v65[3] = v52;
      v47 = specialized static UserGraph.== infix(_:_:)(v63, v65);
      outlined destroy of UserGraph(v65);
      outlined destroy of UserGraph(v63);
LABEL_38:
      outlined destroy of NodeDef.Implementation.Kind(v23);
      return v47 & 1;
    }

    outlined init with copy of NodeDef.Implementation.Kind(v23, v17);
    v36 = *v17;
    v37 = *(v17 + 1);
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg12functionName_10Foundation3URLV4filetMd, &_sSSSg12functionName_10Foundation3URLV4filetMR) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = *(v25 + 1);
      v58 = *v25;
      v40 = *(v62 + 32);
      v41 = &v17[v38];
      v42 = v61;
      v40(v60, v41, v61);
      v43 = &v25[v38];
      v44 = v59;
      v40(v59, v43, v42);
      if (v37)
      {
        if (v39)
        {
          if (v36 != v58 || v37 != v39)
          {
            v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v46)
            {
              goto LABEL_37;
            }

            goto LABEL_32;
          }

LABEL_37:
          v55 = v60;
          v47 = static URL.== infix(_:_:)();
          v56 = *(v62 + 8);
          v56(v44, v42);
          v56(v55, v42);
          goto LABEL_38;
        }
      }

      else if (!v39)
      {
        goto LABEL_37;
      }

LABEL_32:
      v53 = *(v62 + 8);
      v53(v44, v42);
      v53(v60, v42);
LABEL_33:
      outlined destroy of NodeDef.Implementation.Kind(v23);
      goto LABEL_34;
    }

    (*(v62 + 8))(&v17[v38], v61);
LABEL_27:

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of NodeDef.Implementation.Kind(v23, v14);
    v33 = *v14;
    v32 = v14[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    outlined init with copy of NodeDef.Implementation.Kind(v23, v11);
    v33 = *v11;
    v32 = v11[1];
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_27;
    }
  }

  if (v33 == *v25 && v32 == *(v25 + 1))
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  outlined destroy of NodeDef.Implementation.Kind(v23);
  v47 = 1;
  return v47 & 1;
}

uint64_t specialized static NodeDef.Implementation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for NodeDef.Implementation(0);
  if ((specialized static NodeDef.Implementation.Kind.== infix(_:_:)(a1 + *(v5 + 20), a2 + *(v5 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return _sSh2eeoiySbShyxG_ABtFZ11ShaderGraph15MaterialXTargetC_Tt1g5(v7, v8);
}

uint64_t specialized static NodeDef.IOSpec.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (MaterialXDataType.isEqual(to:)(*(a2 + 16)) & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  if (v5)
  {
    if (!v6 || (a1[3] != *(a2 + 24) || v5 != v6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v6)
  {
    goto LABEL_21;
  }

  v7 = a1[6];
  v8 = *(a2 + 48);
  if (v7)
  {
    if (v8 && (a1[5] == *(a2 + 40) && v7 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_19;
    }

LABEL_21:
    v9 = 0;
    return v9 & 1;
  }

  if (v8)
  {
    goto LABEL_21;
  }

LABEL_19:
  v9 = *(a1 + 56) ^ *(a2 + 56) ^ 1;
  return v9 & 1;
}

BOOL specialized static NodeDef.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || (a1[4] != *(a2 + 32) || v6 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[7];
  v9 = *(a2 + 56);
  if (v8)
  {
    if (!v9 || (a1[6] != *(a2 + 48) || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[9];
  v11 = *(a2 + 72);
  if (v10)
  {
    if (!v11 || (a1[8] != *(a2 + 64) || v10 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 80);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }

LABEL_37:
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1[11], *(a2 + 88)))
    {
      v15 = a1[13];
      v16 = *(a2 + 104);
      if (v15)
      {
        if (!v16 || (a1[12] != *(a2 + 96) || v15 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v16)
      {
        return 0;
      }

      v17 = a1[15];
      v18 = *(a2 + 120);
      switch(v17)
      {
        case 3:
          if (v18 != 3)
          {
            return 0;
          }

          break;
        case 2:
          if (v18 != 2)
          {
            return 0;
          }

          break;
        case 1:
          if (v18 != 1)
          {
            return 0;
          }

          break;
        default:
          if ((v18 - 1) < 3)
          {
            return 0;
          }

          if (v17)
          {
            if (!v18 || (a1[14] != *(a2 + 112) || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              return 0;
            }
          }

          else if (v18)
          {
            return 0;
          }

          break;
      }

      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph7NodeDefV6IOSpecV_Tt1g5(a1[16], *(a2 + 128)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph7NodeDefV6IOSpecV_Tt1g5(a1[17], *(a2 + 136)) & 1) == 0)
      {
        return 0;
      }

      v19 = a1[18];
      v20 = *(a2 + 144);
      if (v19)
      {
        if (!v20)
        {
          return 0;
        }

        v21 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph7NodeDefV12AvailabilityV_Tt1g5(v19, v20);

        return (v21 & 1) != 0;
      }

      if (!v20)
      {
        return 1;
      }
    }

    return 0;
  }

  result = 0;
  if (v13 != 2 && ((v13 ^ v12) & 1) == 0)
  {
    goto LABEL_37;
  }

  return result;
}

uint64_t specialized MaterialXAvailability.init(_:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  if ((a1 != 0x726F707075736E75 || a2 != 0xEB00000000646574) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (a1 == 0x7461636572706564 && a2 == 0xEA00000000006465)
    {

      return a3;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return a3;
    }

LABEL_10:

    return 0;
  }

  return 0;
}

uint64_t specialized static MaterialXTarget.target(named:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for allTargets != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v4 = static MaterialXTarget.allTargets;
    if (!(static MaterialXTarget.allTargets >> 62))
    {
      v5 = *((static MaterialXTarget.allTargets & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        return 0;
      }

      goto LABEL_4;
    }

    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      return 0;
    }

LABEL_4:
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x266772030](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_17;
      }

LABEL_8:
      v9 = *(v7 + 16) == a1 && *(v7 + 24) == a2;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v7;
      }

      ++v6;
      if (v8 == v5)
      {
        return 0;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_8;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }
}

uint64_t outlined init with take of NodeDef.Implementation.Kind(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeDef.Implementation.Kind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for NodeDef.Implementation(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of NodeDef.Implementation.Kind(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeDef.Implementation.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MaterialXTarget and conformance MaterialXTarget(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MaterialXAvailability and conformance MaterialXAvailability()
{
  result = lazy protocol witness table cache variable for type MaterialXAvailability and conformance MaterialXAvailability;
  if (!lazy protocol witness table cache variable for type MaterialXAvailability and conformance MaterialXAvailability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialXAvailability and conformance MaterialXAvailability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDef.IOSpec and conformance NodeDef.IOSpec()
{
  result = lazy protocol witness table cache variable for type NodeDef.IOSpec and conformance NodeDef.IOSpec;
  if (!lazy protocol witness table cache variable for type NodeDef.IOSpec and conformance NodeDef.IOSpec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDef.IOSpec and conformance NodeDef.IOSpec);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NodeDef and conformance NodeDef()
{
  result = lazy protocol witness table cache variable for type NodeDef and conformance NodeDef;
  if (!lazy protocol witness table cache variable for type NodeDef and conformance NodeDef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NodeDef and conformance NodeDef);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11ShaderGraph21MaterialXAvailabilityO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for MaterialXAvailability(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MaterialXAvailability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MaterialXAvailability(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NodeDef(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NodeDef(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265E55DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NodeDef.Implementation.Kind(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265E55EAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NodeDef.Implementation.Kind(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for NodeDef.Implementation(uint64_t a1)
{
  type metadata accessor for NodeDef.Implementation.Kind(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Set<MaterialXTarget>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Set<MaterialXTarget>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Set<MaterialXTarget>)
  {
    type metadata accessor for MaterialXTarget();
    lazy protocol witness table accessor for type MaterialXTarget and conformance MaterialXTarget(&lazy protocol witness table cache variable for type MaterialXTarget and conformance MaterialXTarget, v1, type metadata accessor for MaterialXTarget, &protocol conformance descriptor for MaterialXTarget);
    v2 = type metadata accessor for Set();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for Set<MaterialXTarget>);
    }
  }
}

void type metadata completion function for NodeDef.Implementation.Kind(uint64_t a1)
{
  type metadata accessor for (functionName: String?, file: URL)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (functionName: String)();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (functionName: String?, file: URL)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (functionName: String?, file: URL))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    type metadata accessor for URL();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (functionName: String?, file: URL));
    }
  }
}

uint64_t type metadata accessor for (functionName: String)()
{
  result = lazy cache variable for type metadata for (functionName: String);
  if (!lazy cache variable for type metadata for (functionName: String))
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (functionName: String));
  }

  return result;
}

uint64_t outlined destroy of (NodeDef.Implementation.Kind, NodeDef.Implementation.Kind)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph7NodeDefV14ImplementationV4KindO_AGtMd, &_s11ShaderGraph7NodeDefV14ImplementationV4KindO_AGtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of NodeDef.Implementation.Kind(uint64_t a1)
{
  v2 = type metadata accessor for NodeDef.Implementation.Kind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SGError.__allocating_init(_:)(void *a1)
{
  v25 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = SGError.__allocating_init(_:)(v23[0], v23[1], v24);

    v4 = v25;
    goto LABEL_14;
  }

  v23[0] = a1;
  v5 = a1;
  if (swift_dynamicCast())
  {
    v6 = SGError.__allocating_init(_:)(v25);
LABEL_7:
    v3 = v6;

    v4 = v23[0];
    goto LABEL_14;
  }

  v23[0] = a1;
  v7 = a1;
  if (swift_dynamicCast())
  {
    v6 = SGError.__allocating_init(_:)(v25);
    goto LABEL_7;
  }

  v23[0] = a1;
  v8 = a1;
  v9 = String.init<A>(describing:)();
  v11 = v10;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, logger);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23[0] = v16;
    *v15 = 136315138;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v23);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_265D7D000, v13, v14, "ShaderGraph threw an unwrapped error: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266773120](v16, -1, -1);
    MEMORY[0x266773120](v15, -1, -1);
  }

  else
  {
  }

  lazy protocol witness table accessor for type APIError and conformance APIError();
  v18 = swift_allocError();
  *v19 = xmmword_265F23200;
  *(v19 + 16) = 24;
  v20 = a1;
  v21 = specialized NestedError.init(_:_:)(v18, a1);
  v3 = SGError.__allocating_init(_:)(v21);
  v4 = a1;
LABEL_14:

  return v3;
}

{
  v2 = v1;
  v3 = a1;
  v4 = [v3 domain];
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x266771450](v5);
  }

  v6 = objc_allocWithZone(v2);
  v7 = [v3 code];
  v8 = [v3 userInfo];

  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [v6 initWithDomain:v4 code:v7 userInfo:isa];

  return v10;
}

id SGError.__allocating_init(_:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = objc_allocWithZone(v4);
  v9 = MEMORY[0x266771450](0xD000000000000015, 0x8000000265F2D900);
  v10 = APIError.nsErrorCode.getter(a1, a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F1F670;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v12;
  v13 = APIError.description.getter(a1, a2, v5);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Any)(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v8 initWithDomain:v9 code:v10 userInfo:isa];
  outlined consume of APIError(a1, a2, v5);

  return v16;
}

id SGError.__allocating_init(_:)(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v3 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v3 = a1;
  }

  v57 = v3;
  v4 = v3;
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = swift_dynamicCast();
  v7 = MEMORY[0x277D84F90];
  v50 = v1;
  v51 = v3;
  if (v6)
  {
    v52 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
    outlined copy of NestedError(a1);
    swift_beginAccess();
    v8 = a1;
    do
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        v9 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        v10 = *((v8 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        outlined copy of NestedError(v9);
        outlined consume of NestedError?(v8);
        v8 = v9;
      }

      else
      {
        v8 = 0xF000000000000007;
      }

      v11 = String.init<A>(describing:)();
      v13 = v12;
      v15 = *(v52 + 16);
      v14 = *(v52 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      }

      *(v52 + 16) = v15 + 1;
      v16 = v52 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while ((~v8 & 0xF000000000000007) != 0);
    v28 = APIError.nsErrorCode.getter(v53, v55, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v29 = BidirectionalCollection<>.joined(separator:)();
    v31 = v30;

    outlined consume of APIError(v53, v55, v56);
  }

  else
  {

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
    v17 = v7;
    outlined copy of NestedError(a1);
    swift_beginAccess();
    v18 = a1;
    do
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        v19 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        v20 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        outlined copy of NestedError(v19);
        outlined consume of NestedError?(v18);
        v18 = v19;
      }

      else
      {
        v18 = 0xF000000000000007;
      }

      v21 = String.init<A>(describing:)();
      v58 = v17;
      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = v21;
        v27 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v22 = v27;
        v21 = v26;
        v17 = v58;
      }

      *(v17 + 16) = v24 + 1;
      v25 = v17 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
    }

    while ((~v18 & 0xF000000000000007) != 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v32 = BidirectionalCollection<>.joined(separator:)();
    v34 = v33;

    MEMORY[0x266771550](v32, v34);

    MEMORY[0x266771550](41, 0xE100000000000000);
    MEMORY[0x266771550](10272, 0xE200000000000000);

    v29 = 0xD000000000000029;
    v31 = 0x8000000265F31CC0;
    v28 = -1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265F21D90;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v36;
  *(inited + 48) = v29;
  *(inited + 56) = v31;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v37;
  outlined copy of NestedError(a1);
  specialized _copySequenceToContiguousArray<A>(_:)(a1, 1);
  v39 = v38;
  outlined consume of NestedError(a1);
  v40 = *(v39 + 16);
  if (v40)
  {
    v54 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v41 = 32;
    do
    {
      v42 = *(v39 + v41);
      v43 = v42;
      _convertErrorToNSError(_:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v41 += 8;
      --v40;
    }

    while (v40);

    v44 = v54;
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7NSErrorCGMd, &_sSaySo7NSErrorCGMR);
  *(inited + 96) = v44;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v45 = objc_allocWithZone(v50);
  v46 = MEMORY[0x266771450](0xD000000000000015, 0x8000000265F2D900);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v48 = [v45 initWithDomain:v46 code:v28 userInfo:isa];

  outlined consume of NestedError(a1);
  return v48;
}

uint64_t APIError.nsErrorCode.getter(uint64_t a1, uint64_t a2, char a3)
{
  result = 1;
  switch(a3)
  {
    case 1:
      result = 2;
      break;
    case 2:
      result = 3;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      result = 5;
      break;
    case 5:
      result = 6;
      break;
    case 6:
      result = 7;
      break;
    case 7:
      result = 8;
      break;
    case 8:
      result = 9;
      break;
    case 9:
      result = 10;
      break;
    case 10:
      result = 13;
      break;
    case 11:
      result = 15;
      break;
    case 12:
      result = 18;
      break;
    case 13:
      result = 19;
      break;
    case 14:
      result = 20;
      break;
    case 15:
      result = 21;
      break;
    case 16:
      result = 22;
      break;
    case 17:
      result = 23;
      break;
    case 18:
      result = 25;
      break;
    case 19:
      result = 27;
      break;
    case 20:
      result = 28;
      break;
    case 21:
      result = 30;
      break;
    case 22:
      result = 31;
      break;
    case 23:
      result = 32;
      break;
    case 24:
      result = qword_265F24FA0[a1];
      break;
    default:
      return result;
  }

  return result;
}

unint64_t APIError.description.getter(unint64_t a1, unint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      _StringGuts.grow(_:)(30);

      v5 = 0xD00000000000001CLL;
      goto LABEL_31;
    case 2:
    case 3:
    case 4:
    case 22:
      _StringGuts.grow(_:)(38);

      v5 = 0xD000000000000024;
      goto LABEL_31;
    case 5:
      _StringGuts.grow(_:)(40);

      v5 = 0xD000000000000026;
      goto LABEL_31;
    case 6:
      _StringGuts.grow(_:)(33);

      v5 = 0xD00000000000001FLL;
      goto LABEL_31;
    case 7:
      _StringGuts.grow(_:)(32);

      v5 = 0xD00000000000001ELL;
      goto LABEL_31;
    case 8:
      _StringGuts.grow(_:)(24);

      v18 = 0xD000000000000016;
      v9 = MEMORY[0x2667717B0](a1, MEMORY[0x277D837D0]);
      goto LABEL_26;
    case 9:
    case 10:
      _StringGuts.grow(_:)(28);

      v5 = 0xD00000000000001ALL;
      goto LABEL_31;
    case 11:
      _StringGuts.grow(_:)(21);

      v5 = 0xD000000000000013;
      goto LABEL_31;
    case 12:
      v18 = 0;
      _StringGuts.grow(_:)(66);
      MEMORY[0x266771550](0xD000000000000032, 0x8000000265F31EB0);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v8);

      MEMORY[0x266771550](0x6365707865202C27, 0xEC00000020646574);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_26:
      MEMORY[0x266771550](v9);

      return v18;
    case 13:
      v18 = 0;
      _StringGuts.grow(_:)(23);
      MEMORY[0x266771550](0xD000000000000014, 0x8000000265F31E90);
      type metadata accessor for CGColorRef(0);
      _print_unlocked<A, B>(_:_:)();
      goto LABEL_21;
    case 14:
      _StringGuts.grow(_:)(21);

      v18 = 0xD000000000000012;
      MEMORY[0x266771550](a1, a2);
LABEL_21:
      v6 = 39;
      v7 = 0xE100000000000000;
      goto LABEL_33;
    case 15:
      _StringGuts.grow(_:)(26);

      v18 = 0xD000000000000010;
      MEMORY[0x266771550](a1, a2);
      v6 = 0x64696C61766E6920;
      v7 = 0xE800000000000000;
      goto LABEL_33;
    case 16:
      _StringGuts.grow(_:)(28);

      v18 = 0xD000000000000010;
      MEMORY[0x266771550](a1, a2);
      v6 = 0x706D652073617720;
      v7 = 0xEA00000000007974;
      goto LABEL_33;
    case 17:
      _StringGuts.grow(_:)(35);

      v18 = 0xD000000000000010;
      MEMORY[0x266771550](a1, a2);
      v6 = 0xD000000000000011;
      v7 = 0x8000000265F31E50;
      goto LABEL_33;
    case 18:
      _StringGuts.grow(_:)(49);

      v14 = 11;
      goto LABEL_30;
    case 19:
      _StringGuts.grow(_:)(50);

      v5 = 0xD000000000000030;
      goto LABEL_31;
    case 20:
      _StringGuts.grow(_:)(17);

      v13 = 0x2065727574786554;
      goto LABEL_19;
    case 21:
      _StringGuts.grow(_:)(17);

      v13 = 0x2064696C61766E49;
LABEL_19:
      v18 = v13;
      goto LABEL_32;
    case 23:
      _StringGuts.grow(_:)(47);

      v14 = 9;
LABEL_30:
      v5 = v14 | 0xD000000000000024;
      goto LABEL_31;
    case 24:
      if (a1 <= 3)
      {
        if (a1 ^ 2 | a2)
        {
          v16 = 0xD00000000000003BLL;
        }

        else
        {
          v16 = 0xD00000000000001BLL;
        }

        v17 = 0xD00000000000001CLL;
        if (!(a1 | a2))
        {
          v17 = 0xD000000000000025;
        }

        if (a1 <= 1)
        {
          return v17;
        }

        else
        {
          return v16;
        }
      }

      else
      {
        if (a1 <= 5)
        {
          v10 = a1 ^ 4 | a2;
          v11 = 0xD00000000000001ALL;
          v12 = 0xD00000000000001DLL;
        }

        else
        {
          v10 = a1 ^ 6 | a2;
          v11 = 0xD000000000000017;
          v12 = 0xD000000000000029;
          if (!(a1 ^ 7 | a2))
          {
            v12 = 0xD00000000000001CLL;
          }
        }

        if (v10)
        {
          return v12;
        }

        else
        {
          return v11;
        }
      }

    default:
      _StringGuts.grow(_:)(35);

      v5 = 0xD000000000000021;
LABEL_31:
      v18 = v5;
LABEL_32:
      v6 = a1;
      v7 = a2;
LABEL_33:
      MEMORY[0x266771550](v6, v7);
      return v18;
  }
}

id SGError.__allocating_init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = MEMORY[0x266771450](a1);

  if (a4)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v8 code:a3 userInfo:v9.super.isa];

  return v10;
}

id SGError.init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = MEMORY[0x266771450](a1, a2);

  if (a4)
  {
    v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithDomain_code_userInfo_, v10, a3, v11.super.isa);

  return v12;
}

id SGError.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SGError.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SGError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SGInternalError.details.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

__n128 SGInternalError.init(_:details:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a4 + 32) = result;
  *(a4 + 48) = v6;
  *(a4 + 64) = a2;
  *(a4 + 72) = a3;
  return result;
}

unint64_t SGInternalError.ErrorType.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[7];
  v7 = v5 >> 61;
  if ((v5 >> 61) <= 1)
  {
    if (v7)
    {
      _StringGuts.grow(_:)(27);

      v12 = MetalFunctionGraphError.description.getter();
      MEMORY[0x266771550](v12);

      return 0xD000000000000019;
    }

    else
    {
    }
  }

  else
  {
    if (v7 == 2)
    {
      _StringGuts.grow(_:)(28);

      v15 = 0xD000000000000014;
      MEMORY[0x266771550](v1, v2);
      MEMORY[0x266771550](544175136, 0xE400000000000000);
      MEMORY[0x266771550](v4, v3);
      return v15;
    }

    if (v7 == 3)
    {
      _StringGuts.grow(_:)(38);

      v15 = 0xD000000000000017;
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v8);

      MEMORY[0x266771550](0x746365707865202CLL, 0xEB00000000206465);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v9);

      return v15;
    }

    v10 = v4 | v2;
    v11 = v0[5] | v0[6];
    if (v5 != 0x8000000000000000 || v10 | v1 | v3 | v11 | v6)
    {
      v13 = v10 | v3 | v11;
      if (v6 || v5 != 0x8000000000000000 || v1 != 1 || v13)
      {
        if (v6 || v5 != 0x8000000000000000 || v1 != 2 || v13)
        {
          if (v6 || v5 != 0x8000000000000000 || v1 != 3 || v13)
          {
            if (v6 || v5 != 0x8000000000000000 || v1 != 4 || v13)
            {
              if (v6 || v5 != 0x8000000000000000 || v1 != 5 || v13)
              {
                return 0xD00000000000001DLL;
              }

              else
              {
                return 0xD000000000000011;
              }
            }

            else
            {
              return 0xD00000000000001ALL;
            }
          }

          else
          {
            return 0xD000000000000010;
          }
        }

        else
        {
          return 0xD000000000000019;
        }
      }

      else
      {
        return 0xD00000000000001BLL;
      }
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  return v1;
}

int64_t specialized _copySequenceToContiguousArray<A>(_:)(int64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a3)
  {
    v6 = MEMORY[0x277D84F90];
    v10 = (MEMORY[0x277D84F90] + 32);
    if (a2 <= 0)
    {
      v11 = 0;
      v9 = 0;
      v12 = 0;
LABEL_25:
      while (v9)
      {
LABEL_26:
        v17 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v18 = v17 | (v12 << 6);
        if (v11)
        {
LABEL_27:
          v19 = __OFSUB__(v11--, 1);
          if (v19)
          {
            goto LABEL_57;
          }
        }

        else
        {
LABEL_35:
          v22 = v6[3];
          if (((v22 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_58;
          }

          v23 = v22 & 0xFFFFFFFFFFFFFFFELL;
          if (v23 <= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = v23;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v25 = swift_allocObject();
          v26 = _swift_stdlib_malloc_size(v25);
          v27 = v26 - 32;
          if (v26 < 32)
          {
            v27 = v26 - 25;
          }

          v28 = v27 >> 3;
          v25[2] = v24;
          v25[3] = 2 * (v27 >> 3);
          v29 = (v25 + 4);
          v30 = v6[3] >> 1;
          if (v6[2])
          {
            v31 = v6 + 4;
            if (v25 != v6 || v29 >= v31 + 8 * v30)
            {
              memmove(v25 + 4, v31, 8 * v30);
            }

            v6[2] = 0;
          }

          v10 = (v29 + 8 * v30);
          v32 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

          v6 = v25;
          v19 = __OFSUB__(v32, 1);
          v11 = v32 - 1;
          if (v19)
          {
            goto LABEL_57;
          }
        }

        *v10++ = v18;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v9 = *result;
      if (*result)
      {
        goto LABEL_26;
      }
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= a2)
      {
        v33 = v6[3];
        if (v33 >= 2)
        {
          v34 = v33 >> 1;
          v19 = __OFSUB__(v34, v11);
          v35 = v34 - v11;
          if (v19)
          {
            goto LABEL_60;
          }

          v6[2] = v35;
        }

        return v6;
      }

      v21 = v4[v12];
      ++v20;
      if (v21)
      {
        v9 = (v21 - 1) & v21;
        v18 = __clz(__rbit64(v21)) | (v12 << 6);
        if (v11)
        {
          goto LABEL_27;
        }

        goto LABEL_35;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (a3 <= 0)
  {
    v6 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 24);
    if (a2 > 0)
    {
LABEL_6:
      if (a3 < 0)
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v9 = *v4;
      goto LABEL_14;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v6 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v6);
    v7 = result - 32;
    if (result < 32)
    {
      v7 = result - 25;
    }

    v8 = 2 * (v7 >> 3);
    v6[2] = a3;
    v6[3] = v8;
    if (a2 > 0)
    {
      goto LABEL_6;
    }
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
LABEL_14:
    v13 = 0;
    v12 = 0;
    v10 = v6 + 4;
    v11 = (v8 >> 1) - a3;
    while (v13 != a3)
    {
      if (!v9)
      {
        v15 = v12;
        while (1)
        {
          v12 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v12 >= a2)
          {
            goto LABEL_54;
          }

          v16 = v4[v12];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v9 = (v16 - 1) & v16;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      ++v13;
      *v10++ = v14 | (v12 << 6);
      if (v13 == a3)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_56;
  }

LABEL_61:
  __break(1u);
  return result;
}

int64_t specialized _copySequenceToContiguousArray<A>(_:)(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = vcnt_s8(a1);
    v2.i16[0] = vaddlv_u8(v2);
    v3 = v2.u32[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v4 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v4);
    v6 = result - 32;
    if (result < 32)
    {
      v6 = result - 25;
    }

    v7 = v6 >> 3;
    v4[2] = v3;
    v4[3] = 2 * v7;
    v8 = v4 + 4;
    v9 = (v7 & 0x7FFFFFFFFFFFFFFFLL) - v3;
    v10 = v7 | 0x8000000000000000;
    do
    {
      if (!v1)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (!v10)
      {
        goto LABEL_31;
      }

      v11 = (v1 - 1) & v1;
      *v8++ = __clz(__rbit64(v1));
      --v10;
      v1 = v11;
      --v3;
    }

    while (v3);
    if (!v11)
    {
      goto LABEL_26;
    }

    while (1)
    {
      if (!v9)
      {
        v12 = v4[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 25;
        }

        v18 = v17 >> 3;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 3);
        v19 = (v15 + 4);
        v20 = v4[3] >> 1;
        if (v4[2])
        {
          v21 = v4 + 4;
          if (v15 != v4 || v19 >= v21 + 8 * v20)
          {
            memmove(v15 + 4, v21, 8 * v20);
          }

          v4[2] = 0;
        }

        v8 = (v19 + 8 * v20);
        v9 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v4 = v15;
      }

      v22 = __OFSUB__(v9--, 1);
      if (v22)
      {
        break;
      }

      *v8++ = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      if (!v11)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v4 = MEMORY[0x277D84F90];
  v23 = *(MEMORY[0x277D84F90] + 24);

  v9 = v23 >> 1;
LABEL_26:
  v24 = v4[3];
  if (v24 < 2)
  {
    return v4;
  }

  v25 = v24 >> 1;
  v22 = __OFSUB__(v25, v9);
  v26 = v25 - v9;
  if (!v22)
  {
    v4[2] = v26;
    return v4;
  }

LABEL_34:
  __break(1u);
  return result;
}

void specialized _copySequenceToContiguousArray<A>(_:)(unint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = (v2 + 16);

  outlined copy of NestedError(a1);
  swift_beginAccess();
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = (MEMORY[0x277D84F90] + 32);
  do
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v8 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
      *v3 = v7;
      v9 = v8;
      outlined copy of NestedError(v7);
      outlined consume of NestedError?(a1);
      a1 = v8;
      if (v4)
      {
        a1 = v8;
        goto LABEL_18;
      }
    }

    else
    {
      v7 = 0xF000000000000007;
      *v3 = 0xF000000000000007;
      if (v4)
      {
        goto LABEL_18;
      }
    }

    v10 = v5[3];
    if (((v10 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_25;
    }

    v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Error_pGMd, &_ss23_ContiguousArrayStorageCys5Error_pGMR);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    v16 = v15 >> 3;
    v13[2] = v12;
    v13[3] = 2 * (v15 >> 3);
    v17 = (v13 + 4);
    v18 = v5[3] >> 1;
    if (v5[2])
    {
      v19 = v5 + 4;
      if (v13 != v5 || v17 >= v19 + 8 * v18)
      {
        memmove(v13 + 4, v19, 8 * v18);
      }

      v5[2] = 0;
    }

    v6 = (v17 + 8 * v18);
    v4 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;

    v5 = v13;
LABEL_18:
    v20 = __OFSUB__(v4--, 1);
    if (v20)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    *v6++ = a1;
    a1 = v7;
  }

  while ((~v7 & 0xF000000000000007) != 0);

  v21 = v5[3];
  if (v21 < 2)
  {
    return;
  }

  v22 = v21 >> 1;
  v20 = __OFSUB__(v22, v4);
  v23 = v22 - v4;
  if (!v20)
  {
    v5[2] = v23;
    return;
  }

LABEL_26:
  __break(1u);
}

void specialized _copySequenceToContiguousArray<A>(_:)(void *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v41 = a1[1];
  v42 = v1;
  v3 = a1[4];
  v39 = a1[3];
  v40 = v2;
  v37 = a1[5];
  v38 = v3;
  v4 = *(a1 + 1);
  v27 = *a1;
  v28 = v4;
  v29 = *(a1 + 2);
  outlined init with copy of [Input](&v42, &v30, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined init with copy of [Input](&v41, &v30, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  outlined init with copy of [Input](&v40, &v30, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  outlined init with copy of [Input](&v39, &v30, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v38, &v30, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v37, &v30, &_sSay11ShaderGraph0aB4NodeVGMd, &_sSay11ShaderGraph0aB4NodeVGMR);
  UserGraph.BreathFirstEdgeIterator.next()(&v30);
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v20 = v30;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v5 = MEMORY[0x277D84F90];
  v6 = 0;
  if (*(&v30 + 1))
  {
    v7 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      if (!v6)
      {
        v8 = v5[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph4EdgeVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph4EdgeVGMR);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 112;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v5[3] >> 1;
        if (v5[2])
        {
          if (v11 != v5 || v13 >= &v5[14 * v14 + 4])
          {
            memmove(v11 + 4, v5 + 4, 112 * v14);
          }

          v5[2] = 0;
        }

        v7 = (v13 + 112 * v14);
        v6 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v5 = v11;
      }

      v16 = __OFSUB__(v6--, 1);
      if (v16)
      {
        break;
      }

      memmove(v7, &v20, 0x70uLL);
      v7 += 112;
      UserGraph.BreathFirstEdgeIterator.next()(&v30);
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v20 = v30;
      v21 = v31;
      v22 = v32;
      v23 = v33;
      if (!*(&v30 + 1))
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:

  v17 = v5[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v16 = __OFSUB__(v18, v6);
    v19 = v18 - v6;
    if (v16)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v5[2] = v19;
  }
}

{
  v1 = *a1;
  v2 = a1[2];
  v40 = a1[1];
  v41[0] = v1;
  v3 = a1[4];
  v38 = a1[3];
  v39 = v2;
  v37 = v3;
  v4 = *(a1 + 1);
  v27 = *a1;
  v28 = v4;
  v29 = v3;
  outlined init with copy of [Input](v41, &v30, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined init with copy of [Input](&v40, &v30, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  outlined init with copy of [Input](&v39, &v30, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  outlined init with copy of [Input](&v38, &v30, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v37, &v30, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  UserGraph.DepthFirstEdgeIterator.next()(&v30);
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v20 = v30;
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v5 = MEMORY[0x277D84F90];
  v6 = 0;
  if (*(&v30 + 1))
  {
    v7 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      if (!v6)
      {
        v8 = v5[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph4EdgeVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph4EdgeVGMR);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 112;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v5[3] >> 1;
        if (v5[2])
        {
          if (v11 != v5 || v13 >= &v5[14 * v14 + 4])
          {
            memmove(v11 + 4, v5 + 4, 112 * v14);
          }

          v5[2] = 0;
        }

        v7 = (v13 + 112 * v14);
        v6 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v5 = v11;
      }

      v16 = __OFSUB__(v6--, 1);
      if (v16)
      {
        break;
      }

      memmove(v7, &v20, 0x70uLL);
      v7 += 112;
      UserGraph.DepthFirstEdgeIterator.next()(&v30);
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v20 = v30;
      v21 = v31;
      v22 = v32;
      v23 = v33;
      if (!*(&v30 + 1))
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:

  v17 = v5[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v16 = __OFSUB__(v18, v6);
    v19 = v18 - v6;
    if (v16)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v5[2] = v19;
  }
}

void specialized _copySequenceToContiguousArray<A>(_:)(unint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = (v4 + 16);

  outlined copy of NestedError(a1);
  swift_beginAccess();
  if (a2 >= 1)
  {
    v6 = MEMORY[0x277D84F90];
    while ((~a1 & 0xF000000000000007) != 0)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        v7 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        *v5 = v7;
        outlined copy of NestedError(v7);
      }

      else
      {
        v7 = 0xF000000000000007;
        *v5 = 0xF000000000000007;
      }

      outlined consume of NestedError?(a1);
      a1 = v7;
      if (!--a2)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_10;
  }

  v7 = a1;
LABEL_9:
  v6 = MEMORY[0x277D84F90];
  if ((~v7 & 0xF000000000000007) != 0)
  {
    v8 = 0;
    v9 = (MEMORY[0x277D84F90] + 32);
    while (1)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        v11 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v10 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        *v5 = v10;
        v12 = v11;
        outlined copy of NestedError(v10);
        outlined consume of NestedError?(v7);
        v7 = v11;
        if (v8)
        {
          v7 = v11;
          goto LABEL_28;
        }
      }

      else
      {
        v10 = 0xF000000000000007;
        *v5 = 0xF000000000000007;
        if (v8)
        {
          goto LABEL_28;
        }
      }

      v13 = v6[3];
      if (((v13 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_35;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Error_pGMd, &_ss23_ContiguousArrayStorageCys5Error_pGMR);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v18 = v17 - 32;
      if (v17 < 32)
      {
        v18 = v17 - 25;
      }

      v19 = v18 >> 3;
      v16[2] = v15;
      v16[3] = 2 * (v18 >> 3);
      v20 = (v16 + 4);
      v21 = v6[3] >> 1;
      if (v6[2])
      {
        v22 = v6 + 4;
        if (v16 != v6 || v20 >= v22 + 8 * v21)
        {
          memmove(v16 + 4, v22, 8 * v21);
        }

        v6[2] = 0;
      }

      v9 = (v20 + 8 * v21);
      v8 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

      v6 = v16;
LABEL_28:
      v23 = __OFSUB__(v8--, 1);
      if (v23)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      *v9++ = v7;
      v7 = v10;
      if ((~v10 & 0xF000000000000007) == 0)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_10:
  v8 = 0;
LABEL_30:

  v24 = v6[3];
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v23 = __OFSUB__(v25, v8);
    v26 = v25 - v8;
    if (v23)
    {
      goto LABEL_36;
    }

    v6[2] = v26;
  }
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void outlined consume of APIError(id a1, id a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:

      break;
    case 13:

      break;
    default:
      return;
  }
}

uint64_t get_enum_tag_for_layout_string_11ShaderGraph8APIErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 0x1Fu) <= 0x17)
  {
    return *(a1 + 16) & 0x1F;
  }

  else
  {
    return (*a1 + 24);
  }
}

uint64_t getEnumTagSinglePayload for APIError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE8 && *(a1 + 17))
  {
    return (*a1 + 232);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0x18)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for APIError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE7)
  {
    *(result + 16) = 0;
    *result = a2 - 232;
    *(result + 8) = 0;
    if (a3 >= 0xE8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for APIError(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x18)
  {
    *result = a2 - 24;
    *(result + 8) = 0;
    LOBYTE(a2) = 24;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11ShaderGraph013MetalFunctionB5ErrorV0E4TypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

unint64_t get_enum_tag_for_layout_string_11ShaderGraph15SGInternalErrorV0D4TypeO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SGInternalError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for SGInternalError(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 8 * -a2;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SGInternalError.ErrorType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for SGInternalError.ErrorType(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 8 * -a2;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for SGInternalError.ErrorType(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    result[4] = result[4] & 7 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 4);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0x8000000000000000;
    result[5] = 0;
    result[6] = 0;
    result[7] = 0;
  }

  return result;
}

uint64_t sub_265E593B0()
{
  v1 = *(v0 + 16);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    outlined consume of NestedError(v1);
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

BOOL specialized Sequence.allSatisfy(_:)(uint64_t a1, _OWORD *a2)
{
  v3 = (a1 + 80);
  v4 = *(a1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 7;
    v6 = *v3;
    v7 = *(v3 - 8);
    v9 = *(v3 - 3);
    v8 = *(v3 - 2);
    v11 = *(v3 - 5);
    v10 = *(v3 - 4);
    v23[0] = *(v3 - 6);
    v23[1] = v11;
    v23[2] = v10;
    v23[3] = v9;
    v23[4] = v8;
    v24 = v7;
    v25 = v6;
    v12 = a2[1];
    v26[0] = *a2;
    v26[1] = v12;
    v13 = a2[2];
    v14 = a2[3];
    v15 = a2[5];
    v26[4] = a2[4];
    v26[5] = v15;
    v26[2] = v13;
    v26[3] = v14;
    v16 = a2[6];
    v17 = a2[7];
    *(v27 + 9) = *(a2 + 153);
    v18 = a2[9];
    v26[8] = a2[8];
    v27[0] = v18;
    v26[6] = v16;
    v26[7] = v17;

    outlined init with copy of UserGraph(v26, v22);
    v19 = UserGraph.edges(from:)(v23);
    outlined destroy of UserGraph(v26);
    v20 = *(v19 + 16);

    v3 = v5;
  }

  while (!v20);
  return v4 == 0;
}

unint64_t specialized Sequence.compactMap<A>(_:)(unint64_t result, _OWORD *a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 32;
  v51 = MEMORY[0x277D84F90];
  v52 = result + 32;
  v54 = *(result + 16);
LABEL_7:
  if (v4 < v2)
  {
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_57;
    }

    v7 = v5 + 56 * v4;
    v9 = *v7;
    v8 = *(v7 + 8);
    v11 = *(v7 + 16);
    v10 = *(v7 + 24);
    v12 = *(v7 + 32);
    v13 = *(v7 + 40);
    v14 = *(v7 + 48);
    ++v4;
    *&v77 = v9;
    *(&v77 + 1) = v8;
    v81 = v8;
    v65 = v11;
    *&v78 = v11;
    *(&v78 + 1) = v10;
    v69 = v10;
    v58 = v12;
    *&v79 = v12;
    v59 = v13;
    BYTE8(v79) = v13;
    v60 = v14;
    v80 = v14;
    v15 = a2[5];
    v75[4] = a2[4];
    v75[5] = v15;
    v16 = a2[3];
    v75[2] = a2[2];
    v75[3] = v16;
    *(v76 + 9) = *(a2 + 153);
    v17 = a2[9];
    v75[8] = a2[8];
    v76[0] = v17;
    v18 = a2[7];
    v75[6] = a2[6];
    v75[7] = v18;
    v19 = a2[1];
    v75[0] = *a2;
    v75[1] = v19;
    v20 = v19;
    v21 = *(&v75[0] + 1) + 32;
    v22 = *(*(&v75[0] + 1) + 16);
    if (*&v75[0])
    {
      result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v9, v21, v22, (*&v75[0] + 16), *&v75[0] + 32);
      if (v23)
      {
        goto LABEL_6;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (!v22)
      {
        goto LABEL_6;
      }

      result = 0;
      while (*(v21 + 8 * result) != v9)
      {
        if (v22 == ++result)
        {
          goto LABEL_6;
        }
      }
    }

    if (result >= *(v20 + 16))
    {
      goto LABEL_59;
    }

    v24 = (v20 + 48 * result);
    v26 = v24[7];
    v25 = v24[8];
    v27 = v24[9];
    v28 = *(v25 + 16);
    v57 = v6;
    if (v26)
    {

      outlined init with copy of UserGraph(v75, &v71);

      result = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v77, v25 + 32, v28, (v26 + 16), v26 + 32);
      if ((v29 & 1) == 0)
      {
        v30 = result;
        if ((result & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_60;
      }

      outlined destroy of UserGraph(v75);

LABEL_4:

      goto LABEL_5;
    }

    v56 = v6;

    v53 = v27;

    if (!v28)
    {
      outlined init with copy of UserGraph(v75, &v71);
LABEL_47:
      outlined destroy of UserGraph(v75);
      v5 = v52;
      v4 = v56;
      goto LABEL_4;
    }

    v62 = v28;
    outlined init with copy of UserGraph(v75, &v71);
    v35 = v28;
    v30 = 0;
    v36 = (v25 + 80);
    while (1)
    {
      if (*(v36 - 6) != v9)
      {
        goto LABEL_27;
      }

      v37 = *(v36 - 4);
      v38 = *(v36 - 3);
      v64 = *(v36 - 2);
      v39 = *(v36 - 8);
      v68 = *v36;
      v40 = *(**(v36 - 5) + 128);

      if ((v40(v81) & 1) == 0)
      {

        v35 = v62;
        goto LABEL_27;
      }

      if (v37 == v65 && v38 == v69)
      {

        v35 = v62;
        if (v39)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v35 = v62;
        if ((v42 & 1) == 0)
        {
          goto LABEL_27;
        }

        if (v39)
        {
LABEL_36:
          v43 = v59;
          if (v68 != v60)
          {
            v43 = 0;
          }

          if (v43)
          {
            goto LABEL_45;
          }

          goto LABEL_27;
        }
      }

      v44 = v59 ^ 1;
      if (v64 != v58)
      {
        v44 = 0;
      }

      if (v44 == 1 && v68 == v60)
      {
LABEL_45:
        v5 = v52;
        v27 = v53;
        v4 = v56;
LABEL_16:
        if (v30 >= *(v27 + 16))
        {
          goto LABEL_61;
        }

        v55 = v4;
        v31 = (v27 + 56 * v30);
        v32 = v31[5];
        v33 = v31[9];
        v34 = v31[10];
        v63 = v31[6];
        v66 = v31[4];
        v61 = v31[7];
        v67 = v31[8];
        outlined copy of Output?(v66, v32, v63, v61);
        outlined destroy of UserGraph(v75);

        if (v32)
        {

          outlined consume of Output?(v66, v32, v63, v61);
          v71 = v77;
          v72 = v78;
          v73 = v79;
          v74 = v80;
          result = swift_isUniquelyReferenced_nonNull_native();
          v2 = v54;
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 16) + 1, 1, v51);
            v51 = result;
          }

          v46 = *(v51 + 16);
          v45 = *(v51 + 24);
          if (v46 >= v45 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v51);
            v51 = result;
          }

          *(v51 + 16) = v46 + 1;
          v47 = v51 + 112 * v46;
          *(v47 + 32) = v66;
          *(v47 + 40) = v32;
          *(v47 + 48) = v63;
          *(v47 + 56) = v61;
          *(v47 + 64) = v67;
          *(v47 + 72) = v33 & 1;
          v70[0] = v33 & 1;
          *(v47 + 73) = *v70;
          *(v47 + 76) = *&v70[3];
          *(v47 + 80) = v34;
          v48 = v71;
          v49 = v72;
          v50 = v73;
          *(v47 + 136) = v74;
          *(v47 + 120) = v50;
          *(v47 + 104) = v49;
          *(v47 + 88) = v48;
          v4 = v55;
          v5 = v52;
          if (v57 == v54)
          {
            return v51;
          }
        }

        else
        {

          v4 = v55;
LABEL_5:
          v6 = v57;
          v2 = v54;
LABEL_6:
          if (v6 == v2)
          {
            return v51;
          }
        }

        goto LABEL_7;
      }

LABEL_27:
      v36 += 7;
      if (v35 == ++v30)
      {
        goto LABEL_47;
      }
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0dE4NodeVG_SayAH2IDVGs5NeverOTg504_s11d62Graph04UserB0V30removeUnconnectedNodesAndEdges5rootsySayAA0aB4F22VG_tFSayAG2IDVGAGXEfU_AF0kE0VTf1cn_n(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v32 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v5 = 0;
  result = v32;
  v27 = a1 + 32;
  v28 = v2;
  do
  {
    v30 = result;
    v38 = v5;
    v7 = v27 + 48 * v5;
    v8 = *(v7 + 8);
    v10 = *(v7 + 16);
    v11 = *(v7 + 40);
    v33[0] = *v7;
    v9 = v33[0];
    v33[1] = v8;
    v33[2] = v10;
    v34 = *(v7 + 24);
    v35 = v11;
    v12 = a2[9];
    v36[8] = a2[8];
    v37[0] = v12;
    *(v37 + 9) = *(a2 + 153);
    v13 = a2[5];
    v36[4] = a2[4];
    v36[5] = v13;
    v14 = a2[7];
    v36[6] = a2[6];
    v36[7] = v14;
    v15 = a2[1];
    v36[0] = *a2;
    v36[1] = v15;
    v16 = a2[3];
    v36[2] = a2[2];
    v36[3] = v16;
    outlined copy of NodePersonality(v33[0]);

    outlined init with copy of UserGraph(v36, &v31);
    UserGraph.connectedUpstreamSubgraph(rootedAt:)(v33, &v31);
    v17 = v31;
    outlined destroy of UserGraph(v36);

    v18 = *(v17 + 16);
    if (v18)
    {
      v29 = v9;
      v31 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v19 = v31;
      v20 = *(v31 + 16);
      v21 = 56;
      do
      {
        v22 = *(v17 + v21);
        v31 = v19;
        v23 = *(v19 + 24);
        if (v20 >= v23 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v20 + 1, 1);
          v19 = v31;
        }

        *(v19 + 16) = v20 + 1;
        *(v19 + 8 * v20 + 32) = v22;
        v21 += 48;
        ++v20;
        --v18;
      }

      while (v18);

      outlined consume of NodePersonality(v29);
    }

    else
    {

      outlined consume of NodePersonality(v9);

      v19 = MEMORY[0x277D84F90];
    }

    result = v30;
    v32 = v30;
    v25 = *(v30 + 16);
    v24 = *(v30 + 24);
    v26 = v38;
    if (v25 >= v24 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
      result = v32;
    }

    v5 = v26 + 1;
    *(result + 16) = v25 + 1;
    *(result + 8 * v25 + 32) = v19;
  }

  while (v5 != v28);
  return result;
}

void *UserGraph.edge(to:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized OrderedDictionary.subscript.getter(*a1, *v2, v2[1], v2[2], &v26);
  v6 = v27;
  v7 = 0uLL;
  if (v27)
  {
    v8 = v30;
    v9 = v31;
    v11 = v28;
    v10 = v29;
    v40 = v26;

    outlined destroy of [Input](&v40, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    v39 = v6;
    outlined destroy of [Input](&v39, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
    v38 = v11;
    outlined destroy of [Input](&v38, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);

    specialized OrderedDictionary.subscript.getter(a1, v10, v8, v9, &v32);

    v12 = v33;
    if (v33 >= 2)
    {
      v15 = v37;
      v21 = v36;
      v24 = v35;
      v14 = v34;
      v13 = v32;

      outlined destroy of [Input](&v32, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
      v18 = v21 & 1;
      v25[0] = v21 & 1;
      v41 = *(a1 + 1);
      v6 = *a1;
      v16 = a1[1];
      v22 = *(a1 + 2);
      v23 = *(a1 + 1);
      v17 = a1[6];

      result = outlined init with copy of String(&v41, v25);
      v20 = v22;
      v19 = v23;
      v7 = v24;
    }

    else
    {
      v13 = 0;
      v12 = 0;
      v14 = 0;
      v15 = 0;
      v6 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0uLL;
      v20 = 0uLL;
      v7 = 0uLL;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
  }

  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v7;
  *(a2 + 40) = v18;
  *(a2 + 48) = v15;
  *(a2 + 56) = v6;
  *(a2 + 64) = v16;
  *(a2 + 72) = v19;
  *(a2 + 88) = v20;
  *(a2 + 104) = v17;
  return result;
}

unint64_t **specialized Sequence._copyContents(initializing:)(unint64_t **result, unint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  if (a5 >= 1)
  {
    v6 = *a4;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_17:
    v8 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = v8;
    result[4] = v6;
    return a3;
  }

LABEL_16:
  v6 = 0;
  if (!a2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (!a3)
  {
    v8 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = v8;
      if (!v6)
      {
        break;
      }

      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v8 << 6);
LABEL_12:
      *a2 = v12;
      if (v9 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v7 = v9;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    while (1)
    {
      v13 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= a5)
      {
        break;
      }

      v14 = a4[v13];
      v10 = (v10 + 1);
      if (v14)
      {
        v15 = __clz(__rbit64(v14));
        v6 = (v14 - 1) & v14;
        v12 = v15 | (v13 << 6);
        v8 = v13;
        goto LABEL_12;
      }
    }

    v6 = 0;
    if (a5 <= (v8 + 1))
    {
      v17 = (v8 + 1);
    }

    else
    {
      v17 = a5;
    }

    v8 = (v17 - 1);
    a3 = v7;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t *specialized Sequence._copyContents(initializing:)(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    v4 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_10:
    v4 = a3;
LABEL_12:
    *result = a4;
    return v4;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    while (a4)
    {
      v5 = __clz(__rbit64(a4));
      a4 &= a4 - 1;
      *(a2 + 8 * v4) = v5;
      if (a3 - 1 == v4)
      {
        goto LABEL_10;
      }

      if (__OFADD__(++v4, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copyContents(initializing:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_IteratorBoxCys013_ClosureBasedA0Vys5Error_pGGMd, &_ss12_IteratorBoxCys013_ClosureBasedA0Vys5Error_pGGMR);
  result = swift_allocObject();
  v10 = result;
  v11 = 0;
  *(result + 16) = partial apply for closure #1 in NestedError.makeIterator();
  *(result + 24) = v8;
  if (!a2 || !a3)
  {
LABEL_11:
    *a1 = v10;
    return v11;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    closure #1 in NestedError.makeIterator()(v8, &v13);
    v12 = v13;
    if (v13)
    {
      v11 = 0;
      while (1)
      {
        *(a2 + 8 * v11) = v12;
        if (a3 - 1 == v11)
        {
          break;
        }

        closure #1 in NestedError.makeIterator()(v8, &v13);
        v12 = v13;
        ++v11;
        if (!v13)
        {
          goto LABEL_11;
        }
      }

      v11 = a3;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

_OWORD *specialized Sequence._copyContents(initializing:)(_OWORD *result, _OWORD *a2, uint64_t a3)
{
  v4 = result;
  *v13 = *v3;
  *&v13[16] = v3[1];
  *&v13[32] = v3[2];
  if (!a2)
  {
    v5 = 0;
    v12 = v3[1];
    *result = *v3;
    result[1] = v12;
    result[2] = v3[2];
    return v5;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_10:
    *v4 = *v13;
    *(v4 + 8) = *&v13[8];
    *(v4 + 24) = *&v13[24];
    *(v4 + 5) = *&v13[40];
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      UserGraph.BreathFirstEdgeIterator.next()(v14);
      if (!*(&v14[0] + 1))
      {
        break;
      }

      v8 = v14[5];
      v6[4] = v14[4];
      v6[5] = v8;
      v6[6] = v14[6];
      v9 = v14[1];
      *v6 = v14[0];
      v6[1] = v9;
      v10 = v14[3];
      v6[2] = v14[2];
      v6[3] = v10;
      if (v5 == v7)
      {
        goto LABEL_10;
      }

      v6 += 7;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    *v4 = *v13;
    *(v4 + 8) = *&v13[8];
    *(v4 + 24) = *&v13[24];
    *(v4 + 5) = *&v13[40];
    return (v7 - 1);
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copyContents(initializing:)(void *result, _OWORD *a2, uint64_t a3)
{
  v4 = result;
  *v13 = *v3;
  *&v13[16] = *(v3 + 16);
  *&v13[32] = *(v3 + 32);
  if (!a2)
  {
    v5 = 0;
    v12 = *(v3 + 16);
    *result = *v3;
    *(result + 1) = v12;
    result[4] = *(v3 + 32);
    return v5;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_10:
    *v4 = *v13;
    *(v4 + 1) = *&v13[8];
    *(v4 + 3) = *&v13[24];
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 1;
    while (1)
    {
      UserGraph.DepthFirstEdgeIterator.next()(v14);
      if (!*(&v14[0] + 1))
      {
        break;
      }

      v8 = v14[5];
      v6[4] = v14[4];
      v6[5] = v8;
      v6[6] = v14[6];
      v9 = v14[1];
      *v6 = v14[0];
      v6[1] = v9;
      v10 = v14[3];
      v6[2] = v14[2];
      v6[3] = v10;
      if (v5 == v7)
      {
        goto LABEL_10;
      }

      v6 += 7;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    *v4 = *v13;
    *(v4 + 1) = *&v13[8];
    *(v4 + 3) = *&v13[24];
    return (v7 - 1);
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copyContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v18 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v18;
    return v6;
  }

  if (!a3)
  {
    v18 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 56 * v6);
      while (v6 + v9 <= *(a4 + 16))
      {
        v12 = *(v11 - 2);
        v13 = *(v11 - 1);
        v14 = *v11;
        v15 = v11[1];
        v16 = *(v11 + 16);
        v17 = v11[3];
        *v8 = *(v11 - 3);
        *(v8 + 8) = v12;
        *(v8 + 16) = v13;
        *(v8 + 24) = v14;
        *(v8 + 32) = v15;
        *(v8 + 40) = v16;
        *(v8 + 48) = v17;
        if (!(v10 + v9))
        {

          v18 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 7;
        v8 += 56;
        v18 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v18 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copyContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v13 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v13;
    return v6;
  }

  if (!a3)
  {
    v13 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 16 * v6 + 24);
      while (v6 + v9 <= *(a4 + 16))
      {
        v12 = *v11;
        *v8 = *(v11 - 1);
        v8[1] = v12;
        if (!(v10 + v9))
        {

          v13 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 2;
        v8 += 2;
        v13 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v13 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall UserGraph.flatten()()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v3 < v2)
  {
    v5 = (v1 + 72 + 48 * v3);
    v6 = v3;
    while (1)
    {
      if (v3 >= v2)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

      v7 = *(v5 - 2);
      if (v7 != -7)
      {
        break;
      }

      ++v6;
      v5 += 48;
      if (v2 == v6)
      {
        goto LABEL_15;
      }
    }

    v3 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_19;
    }

    v8 = *(v5 - 5);
    if (v8 >> 61 == 6)
    {
      v17 = *(v5 - 3);
      v18 = *(v5 - 4);
      v16 = *(v5 - 1);
      v15 = *v5;
      outlined copy of NodePersonality(v8);

      v19 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1);
      }

      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        v14 = *(v4 + 16);
        v13 = v10 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v10 = v14;
        v11 = v13;
        v4 = v19;
      }

      *(v4 + 16) = v11;
      v12 = v4 + 48 * v10;
      *(v12 + 32) = v8;
      *(v12 + 40) = v18;
      *(v12 + 48) = v17;
      *(v12 + 56) = v7;
      *(v12 + 64) = v16;
      *(v12 + 72) = v15;
    }
  }

LABEL_15:

  specialized Sequence.forEach(_:)(v4);
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (Hasher.init(_seed:)(), DebugConfig.Group.rawValue.getter(a1), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v29 = ~v5;
    v7 = 0x7972616D6D7573;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 > 4)
      {
        if (*(*(a2 + 48) + v6) <= 6u)
        {
          if (v8 == 5)
          {
            v13 = 0x6E69686374697473;
            v14 = 0xEE00687061724767;
          }

          else
          {
            v13 = 0x446C616D696E696DLL;
            v14 = 0xEA0000000000746FLL;
          }
        }

        else if (v8 == 7)
        {
          v14 = 0xE800000000000000;
          v13 = 0x6870617247697061;
        }

        else if (v8 == 8)
        {
          v13 = 0xD000000000000011;
          v14 = 0x8000000265F2BCB0;
        }

        else
        {
          v13 = 0xD00000000000001ALL;
          v14 = 0x8000000265F2BCD0;
        }
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 7630692;
        }

        else
        {
          v9 = 0x62694C6C6174656DLL;
        }

        if (v8 == 3)
        {
          v10 = 0xE300000000000000;
        }

        else
        {
          v10 = 0xEC00000079726172;
        }

        if (v8 == 2)
        {
          v9 = 0x65766968637261;
          v10 = 0xE700000000000000;
        }

        v11 = *(*(a2 + 48) + v6) ? v7 : 1701736302;
        v12 = *(*(a2 + 48) + v6) ? 0xE700000000000000 : 0xE400000000000000;
        v13 = *(*(a2 + 48) + v6) <= 1u ? v11 : v9;
        v14 = *(*(a2 + 48) + v6) <= 1u ? v12 : v10;
      }

      v15 = a1;
      v16 = 0xD00000000000001ALL;
      if (a1 == 8)
      {
        v16 = 0xD000000000000011;
      }

      v17 = 0x8000000265F2BCD0;
      if (a1 == 8)
      {
        v17 = 0x8000000265F2BCB0;
      }

      if (a1 == 7)
      {
        v16 = 0x6870617247697061;
        v17 = 0xE800000000000000;
      }

      v18 = 0x6E69686374697473;
      if (a1 != 5)
      {
        v18 = 0x446C616D696E696DLL;
      }

      v19 = 0xEE00687061724767;
      if (a1 != 5)
      {
        v19 = 0xEA0000000000746FLL;
      }

      if (a1 <= 6u)
      {
        v16 = v18;
        v17 = v19;
      }

      if (a1 == 3)
      {
        v20 = 7630692;
      }

      else
      {
        v20 = 0x62694C6C6174656DLL;
      }

      if (a1 == 3)
      {
        v21 = 0xE300000000000000;
      }

      else
      {
        v21 = 0xEC00000079726172;
      }

      if (a1 == 2)
      {
        v20 = 0x65766968637261;
        v21 = 0xE700000000000000;
      }

      if (a1)
      {
        v22 = v7;
      }

      else
      {
        v22 = 1701736302;
      }

      if (a1)
      {
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xE400000000000000;
      }

      if (a1 <= 1u)
      {
        v20 = v22;
        v21 = v23;
      }

      v24 = a1 <= 4u ? v20 : v16;
      v25 = a1 <= 4u ? v21 : v17;
      if (v13 == v24 && v14 == v25)
      {
        break;
      }

      v26 = v7;
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        v6 = (v6 + 1) & v29;
        a1 = v15;
        v7 = v26;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v27 & 1;
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t specialized Set.contains(_:)(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = *a1;
  MEMORY[0x266772770](*a1);
  v25 = a1[1];
  (*(*v25 + 120))(v29);
  v23 = a1[3];
  v24 = a1[2];
  String.hash(into:)();
  v5 = a1[4];
  v21 = *(a1 + 40);
  if (v21 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v5);
  }

  v22 = a1[6];
  MEMORY[0x266772770]();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v20 = v5;
    v10 = ~v8;
    do
    {
      v11 = *(a2 + 48) + 56 * v9;
      if (*v11 != v4)
      {
        goto LABEL_9;
      }

      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      v26 = *(v11 + 32);
      v27 = *(v11 + 40);
      v28 = *(v11 + 48);
      v14 = *(**(v11 + 8) + 128);

      if ((v14(v25) & 1) == 0)
      {

        goto LABEL_9;
      }

      if (v12 == v24 && v13 == v23)
      {

        if (v27)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          goto LABEL_9;
        }

        if (v27)
        {
LABEL_18:
          v17 = v21;
          if (v28 != v22)
          {
            v17 = 0;
          }

          if (v17)
          {
            return 1;
          }

          goto LABEL_9;
        }
      }

      v18 = v21 ^ 1;
      if (v26 != v20)
      {
        v18 = 0;
      }

      if (v18 == 1 && v28 == v22)
      {
        return 1;
      }

LABEL_9:
      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return 0;
}

double UserGraph.insertNode(inputs:outputs:shaderGraphData:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v9 = *(v4 + 40);
  v10 = *(v4 + 64);
  v11 = *(v10 + 2);

  outlined copy of NodePersonality(a3);
  specialized ShaderGraphNode.init(id:graphid:inputs:outputs:shaderGraphData:)(v11, v9, 0, a1, a2, a3, &v24);
  v31 = *(&v24 + 1);
  v32 = v24;
  v30 = *&v25[0];
  outlined init with copy of NodePersonality(&v32, &v33);
  outlined init with copy of [Input](&v31, &v33, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v30, &v33, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
  }

  v15 = v30;
  v14 = v31;
  *(v10 + 2) = v13 + 1;
  v16 = &v10[48 * v13];
  v18 = v24;
  v17 = v25[0];
  *(v16 + 57) = *(v25 + 9);
  *(v16 + 2) = v18;
  *(v16 + 3) = v17;
  *(v4 + 64) = v10;
  v19 = *(&v25[0] + 1);
  outlined init with copy of NodePersonality(&v32, &v33);
  outlined init with copy of [Input](&v31, &v33, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v30, &v33, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  specialized UserGraph.Adjacent.init(_:)(v14, v15, &v26);
  v20 = v26;
  v21 = v28;
  outlined destroy of NodePersonality(&v32);
  outlined destroy of [Input](&v31, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v30, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v34 = v27;
  v33 = v20;
  v35 = v21;
  v36 = v29;
  specialized OrderedDictionary.subscript.setter(&v33, v19);
  v22 = v25[0];
  *a4 = v24;
  a4[1] = v22;
  result = *(v25 + 9);
  *(a4 + 25) = *(v25 + 9);
  return result;
}

void *ShaderGraphNode.out.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  result = specialized ShaderGraphNode.input(labeled:)(7632239, 0xE300000000000000, *(v2 + 16), &v11);
  v5 = v12;
  if (v12)
  {
    v6 = v15;
    v7 = v14;
    v8 = v13;
    v9 = v16;
    *a1 = v11;
    *(a1 + 8) = v5;
    *(a1 + 16) = v8;
    *(a1 + 32) = v7;
    *(a1 + 40) = v6 & 1;
    *(a1 + 48) = v9;
  }

  else
  {
    MEMORY[0x266771550](7632239, 0xE300000000000000);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v10 = 14;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

void *ShaderGraphNode.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = specialized ShaderGraphNode.input(labeled:)(a1, a2, *(v4 + 8), &v15);
  v9 = v16;
  if (v16)
  {
    v10 = v19;
    v11 = v18;
    v12 = v17;
    v13 = v20;
    *a3 = v15;
    *(a3 + 8) = v9;
    *(a3 + 16) = v12;
    *(a3 + 32) = v11;
    *(a3 + 40) = v10 & 1;
    *(a3 + 48) = v13;
  }

  else
  {
    MEMORY[0x266771550](a1, a2);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v14 = 11;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

{
  v4 = v3;
  result = specialized ShaderGraphNode.input(labeled:)(a1, a2, *(v4 + 16), &v15);
  v9 = v16;
  if (v16)
  {
    v10 = v19;
    v11 = v18;
    v12 = v17;
    v13 = v20;
    *a3 = v15;
    *(a3 + 8) = v9;
    *(a3 + 16) = v12;
    *(a3 + 32) = v11;
    *(a3 + 40) = v10 & 1;
    *(a3 + 48) = v13;
  }

  else
  {
    MEMORY[0x266771550](a1, a2);
    MEMORY[0x266771550](32, 0xE100000000000000);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v14 = 14;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  return result;
}

uint64_t UserGraph.connect(_:to:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v61 = a1[2];
  v62 = a1[1];
  v63 = a1[3];
  v64 = a1[4];
  v58 = *(a1 + 40);
  v59 = (a1 + 2);
  v65 = a1[6];
  v60 = *a1;
  v7 = specialized OrderedDictionary.subscript.modify(v67, *a1);
  v8 = v6[1];
  if (!v8)
  {
    v7(v67, 0);
    goto LABEL_23;
  }

  v9 = v6;
  v10 = *v6;
  v11 = *(v8 + 16);
  if (!*v6)
  {
    v17 = specialized Collection<>.firstIndex(of:)(a1, v8 + 32, *(v8 + 16));
    if ((v18 & 1) == 0)
    {
      v12 = v17;
      goto LABEL_18;
    }

    v16 = 0;
LABEL_8:
    specialized OrderedSet._appendNew(_:in:)(a1, v16, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
    _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA5InputV_SayAHGTt0g5(MEMORY[0x277D84F90]);
    v20 = v19;
    v22 = v21;
    v25 = v9[2];
    v23 = v9 + 2;
    v24 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v23 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
      v24 = *v23;
    }

    v28 = *(v24 + 16);
    v27 = *(v24 + 24);
    if (v28 >= v27 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
      v24 = *v23;
    }

    *(v24 + 16) = v28 + 1;
    v29 = v24 + 16 * v28;
    *(v29 + 32) = v20;
    *(v29 + 40) = v22;
    v12 = *v23;
    v30 = *(*v23 + 16);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *v23 = v12;
    if ((v31 & 1) == 0)
    {
      v12 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v12);
      *v23 = v12;
    }

    if (v30)
    {
      v33 = *(v12 + 16);
      v12 += 16;
      v32 = v33;
      if (v30 <= v33)
      {
        goto LABEL_22;
      }

      goto LABEL_47;
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v12 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v8 + 32, v11, (v10 + 16), v10 + 32);
  v14 = v13;
  v16 = v15;

  if (v14)
  {
    goto LABEL_8;
  }

LABEL_18:
  v34 = v9[2];
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v9[2] = v34;
  if ((v35 & 1) == 0)
  {
    v34 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v34);
    v9[2] = v34;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v32 = v34[2];
  if (v12 >= v32)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), a2, 1);
    v49 = *v7;
LABEL_33:
    v49[2] = a2;
    v52 = &v49[7 * v12];
    *(v52 + 2) = 0u;
    *(v52 + 3) = 0u;
    *(v52 + 4) = 0u;
    v52[10] = 0;
    v53 = *v7;
    v54 = *(*v7 + 16);
    result = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v53;
    if ((result & 1) == 0)
    {
      result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v53);
      v53 = result;
      *v7 = result;
    }

    if (v54)
    {
      if (v54 <= v53[2])
      {
        v55 = &v53[7 * v54];
        outlined consume of Output?(*(v55 - 3), *(v55 - 2), *(v55 - 1), *v55);
        v68 = *v59;
        *(v55 - 3) = v60;
        *(v55 - 2) = v62;
        *(v55 - 1) = v61;
        *v55 = v63;
        v55[1] = v64;
        v55[2] = v58 & 1;
        v55[3] = v65;
LABEL_44:

        outlined init with copy of String(&v68, v66);
        return v3(v67, 0);
      }

      goto LABEL_52;
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_22:
  specialized OrderedSet._append(_:)(a2);
  v7(v67, 0);
LABEL_23:
  v3 = specialized OrderedDictionary.subscript.modify(v67, *a2);
  if (!v36[1])
  {
    return v3(v67, 0);
  }

  v37 = v36;
  v39 = v36[3];
  v38 = v36[4];
  v40 = *(v38 + 16);
  if (!v39)
  {
    v47 = specialized Collection<>.firstIndex(of:)(a2, v38 + 32, *(v38 + 16));
    if ((v48 & 1) == 0)
    {
      v41 = v47;
      goto LABEL_39;
    }

    v45 = 0;
LABEL_30:
    specialized OrderedSet._appendNew(_:in:)(a2, v45, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
    v50 = v37[5];
    v7 = (v37 + 5);
    v49 = v50;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v50;
    if ((v51 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1);
      v49 = *v7;
    }

    v12 = v49[2];
    v32 = v49[3];
    a2 = (v12 + 1);
    if (v12 < v32 >> 1)
    {
      goto LABEL_33;
    }

    goto LABEL_49;
  }

  v41 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v38 + 32, v40, (v39 + 16), v39 + 32);
  v43 = v42;
  v45 = v44;

  if (v43)
  {
    goto LABEL_30;
  }

LABEL_39:
  v56 = v37[5];
  result = swift_isUniquelyReferenced_nonNull_native();
  v37[5] = v56;
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v56);
    v56 = result;
    v37[5] = result;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

  if (v41 < v56[2])
  {
    v57 = &v56[7 * v41];
    outlined consume of Output?(v57[4], v57[5], v57[6], v57[7]);
    v68 = *v59;
    v57[4] = v60;
    v57[5] = v62;
    v57[6] = v61;
    v57[7] = v63;
    v57[8] = v64;
    v57[9] = v58 & 1;
    v57[10] = v65;
    goto LABEL_44;
  }

LABEL_53:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UserGraph.removeUnconnectedNodesAndEdges(roots:)(Swift::OpaquePointer roots)
{
  v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0dE4NodeVG_SayAH2IDVGs5NeverOTg504_s11d62Graph04UserB0V30removeUnconnectedNodesAndEdges5rootsySayAA0aB4F22VG_tFSayAG2IDVGAGXEfU_AF0kE0VTf1cn_n(roots._rawValue, v1);
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph0bC4NodeV2IDV_s15FlattenSequenceVySaySayAHGGGTt0g5(v2);
  v4 = *(v1 + 64);
  v5 = *(v4 + 16);

  v6 = 0;
  v14 = v4;
  while (2)
  {
    while (2)
    {
      if (v6 >= v5)
      {
LABEL_16:

        return;
      }

      v7 = (v4 + 56 + 48 * v6);
      v8 = v6;
      while (1)
      {
        if (v6 >= v5)
        {
          __break(1u);
          goto LABEL_20;
        }

        v9 = *v7;
        if (*v7 != -7)
        {
          break;
        }

        ++v8;
        v7 += 6;
        if (v5 == v8)
        {
          goto LABEL_16;
        }
      }

      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = *(v7 - 3);
      if (specialized Set.contains(_:)(*v7, v3))
      {
        continue;
      }

      break;
    }

    outlined copy of NodePersonality(v10);

    v13 = v1;
    specialized UserGraph.removeEdges(connectedTo:)(v9);
    v11 = v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_15;
    }

LABEL_12:
    if (v9 < *(v11 + 2))
    {
      v12 = v11;
      ShaderGraphNode.update(id:)(-7);
      outlined consume of NodePersonality(v10);

      v1 = v13;
      v14 = v12;
      *(v13 + 64) = v12;
      continue;
    }

    break;
  }

LABEL_21:
  __break(1u);
}

uint64_t UserGraph.nodes.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = (2 * *(v2 + 16)) | 1;
  *a1 = 0;
  a1[1] = v2;
  a1[2] = v2 + 32;
  a1[3] = 0;
  a1[4] = v3;
  a1[5] = closure #1 in UserGraph.nodes.getter;
  a1[6] = 0;
}

uint64_t UserGraph.connectedUpstreamSubgraph(rootedAt:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph0dE4NodeVGMR);
  inited = swift_initStackObject();
  v6 = *a1;
  v58 = a1[1];
  v59[0] = v6;
  v57 = a1[2];
  v8 = *a1;
  v7 = *(a1 + 1);
  inited[1] = xmmword_265F1F670;
  inited[2] = v8;
  inited[3] = v7;
  v36 = a1;
  *(inited + 57) = *(a1 + 25);
  outlined init with copy of UserGraph(v3, &v45);
  outlined init with copy of NodePersonality(v59, &v45);
  outlined init with copy of [Input](&v58, &v45, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v57, &v45, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  specialized UserGraph.DepthFirstEdgeIterator.init(_:initial:)(v3, inited, v48);
  v38 = v3;
  outlined destroy of UserGraph(v3);
  v9 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  v55 = v48[1];
  v56 = v48[0];
  v53 = v48[3];
  v54 = v48[2];
  v52 = v48[4];
  outlined init with copy of [Input](&v56, &v45, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  outlined init with copy of [Input](&v55, &v45, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
  outlined init with copy of [Input](&v54, &v45, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
  outlined init with copy of [Input](&v53, &v45, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v52, &v45, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
  UserGraph.DepthFirstEdgeIterator.next()(&v49);
  if (v50)
  {
    do
    {
      v10 = v49;
      specialized OrderedSet._append(_:)(v51);
      specialized OrderedSet._append(_:)(v10);
      outlined destroy of [Input](&v49, &_s11ShaderGraph4EdgeVSgMd, &_s11ShaderGraph4EdgeVSgMR);
      UserGraph.DepthFirstEdgeIterator.next()(&v49);
    }

    while (v50);
    v11 = v44;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(v11 + 16);
  if (v12)
  {
    v45 = v9;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v14 = 0;
    v15 = v45;
    v16 = v38[8];
    v39 = v16 + 32;
    v40 = v12;
    v41 = v11;
    v42 = *(v16 + 16);
    while (v14 < *(v11 + 16))
    {
      v17 = *(v11 + 8 * v14 + 32);
      if (v17 >= v42)
      {
        goto LABEL_16;
      }

      v18 = v39 + 48 * v17;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v43 = *(v18 + 32);
      v23 = *(v18 + 40);
      outlined copy of NodePersonality(*v18);
      v45 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);

      if (v25 >= v24 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v15 = v45;
      }

      ++v14;
      *(v15 + 16) = v25 + 1;
      v26 = v15 + 48 * v25;
      *(v26 + 32) = v19;
      *(v26 + 40) = v20;
      *(v26 + 48) = v21;
      *(v26 + 56) = v22;
      *(v26 + 64) = v43;
      *(v26 + 72) = v23;
      v11 = v41;
      if (v40 == v14)
      {

        v28 = v36;
        v27 = a2;
        v29 = v15;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
    v28 = a1;
    v27 = a2;
LABEL_14:
    v30 = swift_initStackObject();
    v31 = *v28;
    v32 = *(v28 + 1);
    v30[1] = xmmword_265F1F670;
    v30[2] = v31;
    v30[3] = v32;
    *(v30 + 57) = *(v28 + 25);
    outlined init with copy of UserGraph(v38, &v45);
    outlined init with copy of NodePersonality(v59, &v45);
    outlined init with copy of [Input](&v58, &v45, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    outlined init with copy of [Input](&v57, &v45, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
    specialized UserGraph.DepthFirstEdgeIterator.init(_:initial:)(v38, v30, &v45);
    v33 = v45;
    outlined destroy of UserGraph(v38);
    outlined destroy of [Input](&v56, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
    outlined destroy of [Input](&v55, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMd, &_ss15ContiguousArrayVy11ShaderGraph0cD4NodeV2IDVGMR);
    outlined destroy of [Input](&v54, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMd, &_ss15ContiguousArrayVy11ShaderGraph04UserD0V8AdjacentVGMR);
    outlined destroy of [Input](&v53, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
    result = outlined destroy of [Input](&v52, &_sShy11ShaderGraph5InputVGMd, &_sShy11ShaderGraph5InputVGMR);
    v34 = v46;
    v35 = v47;
    *v27 = v29;
    *(v27 + 8) = v33;
    *(v27 + 16) = v34;
    *(v27 + 32) = v35;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph0bC4NodeV2IDV_s15FlattenSequenceVySaySayAHGGGTt0g5(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ShaderGraphNode.ID and conformance ShaderGraphNode.ID();
  result = MEMORY[0x266771950](0, &type metadata for ShaderGraphNode.ID, v2);
  v4 = 0;
  v11 = result;
  while (1)
  {
LABEL_6:
    v8 = *(a1 + 16);
    if (v4 == v8)
    {

      return v11;
    }

    if (v4 >= v8)
    {
      break;
    }

    v9 = *(a1 + 32 + 8 * v4);

    ++v4;
    if (v9)
    {
      v5 = *(v9 + 16);
      if (v5)
      {
        v6 = 0;
        while (v6 < v5)
        {
          v7 = v6 + 1;
          result = specialized Set._Variant.insert(_:)(&v10, *(v9 + 32 + 8 * v6));
          v5 = *(v9 + 16);
          v6 = v7;
          if (v7 == v5)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
  return result;
}

void UserGraph.replace(_:with:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 8);
  v7 = *a1;
  v15 = a1[1];
  v8 = v15;
  v16 = v7;
  v14 = a1[2];
  v9 = v14;
  outlined init with copy of NodePersonality(&v16, v13);
  outlined init with copy of [Input](&v15, v13, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v14, v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  specialized Sequence.forEach(_:)(v6, v8, v3);
  outlined destroy of NodePersonality(&v16);
  outlined destroy of [Input](&v15, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v14, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v10 = *(a2 + 16);
  outlined init with copy of NodePersonality(&v16, v13);
  outlined init with copy of [Input](&v15, v13, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined init with copy of [Input](&v14, v13, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  specialized Sequence.forEach(_:)(v10, v9, v3);
  outlined destroy of NodePersonality(&v16);
  outlined destroy of [Input](&v15, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
  outlined destroy of [Input](&v14, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
  v11 = a1[3];
  specialized UserGraph.removeEdges(connectedTo:)(v11);
  v12 = *(v3 + 64);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v11 < *(v12 + 2))
  {
    ShaderGraphNode.update(id:)(-7);
    *(v3 + 64) = v12;
    return;
  }

LABEL_7:
  __break(1u);
}

double ShaderGraphNode.output(labeled:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized ShaderGraphNode.input(labeled:)(a1, a2, *(v3 + 16), v7);
  v5 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v5;
  result = *&v8;
  *(a3 + 32) = v8;
  *(a3 + 48) = v9;
  return result;
}

uint64_t UserGraph.edges(from:)(unint64_t *a1)
{
  v2 = a1;
  specialized OrderedDictionary.subscript.getter(*a1, *v1, v1[1], v1[2], &v39);
  v3 = v40;
  if (!v40)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v43;
  v4 = v44;
  v6 = v41;
  v7 = v39;
  v47 = v42;
  outlined destroy of [Input](&v47, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  v46 = v5;
  outlined destroy of [Input](&v46, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMd, &_ss15ContiguousArrayVy11ShaderGraph5InputVGMR);
  v45 = v4;
  outlined destroy of [Input](&v45, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVSgGMR);
  specialized OrderedDictionary.subscript.getter(v2, v7, v3, v6);
  v9 = v8;

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v11 = *(v9 + 16);
  if (!v11)
  {

LABEL_14:

    return v10;
  }

  v38 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  v10 = v38;
  v48 = *(v2 + 1);
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 80);
    v27 = v2;
    v28 = v11 - 1;
    v29 = v9;
    while (1)
    {
      v15 = *(v14 - 6);
      v16 = *(v14 - 5);
      v17 = *(v14 - 3);
      v18 = *(v14 - 2);
      v19 = *(v14 - 8);
      v30 = *(v14 - 4);
      v31 = *v14;
      v20 = *(v2 + 1);
      v34 = *v2;
      v35 = v20;
      v36 = *(v2 + 2);
      v37 = v2[6];
      v32[0] = v19;

      result = outlined init with copy of String(&v48, v32);
      v38 = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v10 = v38;
      }

      *(v10 + 16) = v22 + 1;
      v23 = v10 + 112 * v22;
      v24 = v34;
      v25 = v36;
      v26 = v37;
      *(v23 + 48) = v35;
      *(v23 + 64) = v25;
      *(v23 + 32) = v24;
      *(v23 + 80) = v26;
      *(v23 + 88) = v15;
      *(v23 + 96) = v16;
      *(v23 + 104) = v30;
      *(v23 + 112) = v17;
      *(v23 + 120) = v18;
      *(v23 + 128) = v19;
      LODWORD(v26) = *&v33[3];
      *(v23 + 129) = *v33;
      *(v23 + 132) = v26;
      *(v23 + 136) = v31;
      if (v28 == v13)
      {
        break;
      }

      v14 += 7;
      ++v13;
      v2 = v27;
      if (v13 >= *(v29 + 16))
      {
        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return result;
}

void *UserGraph.node(connectedTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized OrderedDictionary.subscript.getter(*a1, *v2, v2[1], v2[2], &v20);
  v6 = v21;
  v7 = 0uLL;
  if (!v21)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_10;
  }

  v8 = v24;
  v9 = v25;
  v11 = v22;
  v10 = v23;
  v29 = v20;

  outlined destroy of [Input](&v29, &_s11ShaderGraph10_HashTableV7StorageCSgMd, &_s11ShaderGraph10_HashTableV7StorageCSgMR);
  v28 = v6;
  outlined destroy of [Input](&v28, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMd, &_ss15ContiguousArrayVy11ShaderGraph6OutputVGMR);
  v27 = v11;
  outlined destroy of [Input](&v27, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMd, &_ss15ContiguousArrayVy11ShaderGraph10OrderedSetVyAC5InputVGGMR);

  specialized OrderedDictionary.subscript.getter(a1, v10, v8, v9, v26);

  if (v26[1] < 2uLL)
  {
LABEL_5:
    v13 = 0;
    v14 = 0;
    v6 = 0;
    v15 = 0;
    v7 = 0uLL;
LABEL_10:
    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
    *(a2 + 40) = v15;
    return result;
  }

  v12 = v26[0];

  result = outlined destroy of [Input](v26, &_s11ShaderGraph6OutputVSgSgMd, &_s11ShaderGraph6OutputVSgSgMR);
  v30 = *(a1 + 16);
  if (v12 == -7)
  {

    outlined init with copy of String(&v30, v19);

    goto LABEL_5;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v16 = v2[8];
    if (v12 < *(v16 + 16))
    {
      v17 = v16 + 48 * v12;
      v13 = *(v17 + 32);
      v14 = *(v17 + 40);
      v6 = *(v17 + 48);
      v18 = *(v17 + 56);
      v15 = *(v17 + 72);

      outlined init with copy of String(&v30, v19);
      outlined copy of NodePersonality(v13);

      v7 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *UserGraph.moveEdges(from:to:)(unint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  result = specialized OrderedDictionary.subscript.getter(*a1, *v2, v2[1], v2[2], &v27);
  v8 = v28;
  if (v28)
  {
    v10 = v31;
    v9 = v32;
    v11 = v29;
    v12 = v30;
    v13 = v27;
    specialized OrderedDictionary.subscript.getter(a1, v27, v28, v29);
    v14 = v13;
    v16 = v15;
    result = outlined consume of UserGraph.Adjacent?(v14, v8, v11, v12, v10, v9);
    if (v16)
    {
      v17 = specialized OrderedDictionary.subscript.modify(v26, *a2);
      if (*(v18 + 8))
      {
        v19 = specialized OrderedDictionary.subscript.modify(v25, a2);
        if (*(v20 + 8))
        {
          specialized OrderedSet.append<A>(contentsOf:)(v16);
        }

        v19(v25, 0);
        v17(v26, 0);
      }

      else
      {
        v17(v26, 0);
      }

      v21 = specialized OrderedDictionary.subscript.modify(v26, v6);
      if (*(v22 + 8))
      {
        v23 = specialized OrderedDictionary.subscript.modify(v25, a1);
        if (*(v24 + 8))
        {
          specialized OrderedSet.removeAll(keepingCapacity:)(1);
        }

        v23(v25, 0);
        v21(v26, 0);
      }

      else
      {
        v21(v26, 0);
      }

      *v26 = *(a2 + 16);

      outlined init with copy of String(v26, v25);
      specialized Sequence.forEach(_:)(v16, v3, a2);

      outlined destroy of String(v26);
    }
  }

  return result;
}

unint64_t specialized MutableCollection.swapAt(_:_:)(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > result)
      {
        if (v5 > a2)
        {
          v7 = &v4[2 * result + 4];
          v8 = *v7;
          v9 = v7[1];
          v10 = &v4[2 * a2 + 4];
          v11 = *v10;
          v12 = v10[1];

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
            v4 = result;
          }

          if (v4[2] > v3)
          {
            v13 = &v4[2 * v3 + 4];
            *v13 = v11;
            v13[1] = v12;

            if (v4[2] > a2)
            {
              v14 = &v4[2 * a2 + 4];
              *v14 = v8;
              v14[1] = v9;

              *v2 = v4;
              return result;
            }

LABEL_15:
            __break(1u);
            return result;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

{
  if (result != a2)
  {
    v3 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > result)
      {
        if (v5 > a2)
        {
          v20 = v2;
          v7 = (v4 + 32 + 48 * result);
          v8 = *v7;
          v9 = v7[1];
          v10 = v7[2];
          v11 = v7[3];
          v12 = v7[4];
          v13 = (v4 + 32 + 48 * a2);
          v23 = *v13;
          v24 = v7[5];
          v26 = v13[1];
          v25 = v13[2];
          v15 = v13[4];
          v14 = v13[5];
          v22 = v13[3];

          v21 = v15;
          v16 = v8;
          v17 = v4;

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
            v17 = result;
          }

          if (*(v17 + 16) > v3)
          {
            v18 = (v17 + 32 + 48 * v3);
            *v18 = v23;
            v18[1] = v26;
            v18[2] = v25;
            v18[3] = v22;
            v18[4] = v21;
            v18[5] = v14;

            if (*(v17 + 16) > a2)
            {
              v19 = (v17 + 32 + 48 * a2);
              *v19 = v16;
              v19[1] = v9;
              v19[2] = v10;
              v19[3] = v11;
              v19[4] = v12;
              v19[5] = v24;

              *v20 = v17;
              return result;
            }

LABEL_15:
            __break(1u);
            return result;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

{
  if (result != a2)
  {
    v3 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      if (v5 > result)
      {
        if (v5 > a2)
        {
          v7 = v4[result + 4];
          v8 = v4[a2 + 4];

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
            v4 = result;
          }

          if (v4[2] > v3)
          {
            v4[v3 + 4] = v8;

            if (v4[2] > a2)
            {
              v4[a2 + 4] = v7;

              *v2 = v4;
              return result;
            }

LABEL_15:
            __break(1u);
            return result;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t specialized OrderedSet._regenerateHashTable()()
{
  return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm);
}

{
  return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm);
}

{
  return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm);
}

{
  return specialized OrderedSet._regenerateHashTable()(specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA13TextureSourceOG_Tt2g5Tm);
}

{
  return specialized OrderedSet._regenerateHashTable()(_s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA6SGNodeCG_Tt2g5Tm);
}

{
  return specialized OrderedSet._regenerateHashTable()(specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm);
}

uint64_t specialized OrderedSet._regenerateHashTable()(uint64_t (*a1)(uint64_t, int64_t, void, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  v6 = *(v5 + 16);
  if (v4 || v6 >= 0x10)
  {
    v8 = specialized static _HashTable.scale(forCapacity:)(v6);
    if (v4 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    v7 = a1(v5, v9, 0, v4);
  }

  else
  {
    v7 = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t specialized OrderedSet._regenerateHashTable()(uint64_t a1, uint64_t (*a2)(uint64_t, int64_t, void, uint64_t, uint64_t))
{
  v5 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 24) & 0x3FLL;
  }

  else
  {
    v6 = 0;
  }

  v7 = v2[1];
  v8 = *(v7 + 16);
  if (v6 || v8 >= 0x10)
  {
    v10 = specialized static _HashTable.scale(forCapacity:)(v8);
    if (v6 <= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v6;
    }

    v9 = a2(v7, v11, 0, v6, a1);
  }

  else
  {
    v9 = 0;
  }

  *v2 = v9;
  return result;
}

unint64_t _ss15ContiguousArrayVyAByxGqd__c7ElementQyd__RszSTRd__lufC11ShaderGraph6SGEdgeC_SayAHGTt0g5Tm(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5Tm(uint64_t result, int64_t a2, char a3, int64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = result;
  v7 = 0;
  v8 = *(result + 16);
  if (v8 >= 0x10)
  {
    v9 = ceil(v8 / 0.75);
    if (v9 == INFINITY)
    {
      __break(1u);
    }

    else if (v9 > -9.22337204e18)
    {
      if (v9 < 9.22337204e18)
      {
        if ((v8 + 1) > v9)
        {
          v10 = v8 + 1;
        }

        else
        {
          v10 = v9;
        }

        v7 = 64 - __clz(v10 - 1);
        goto LABEL_9;
      }

LABEL_21:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_9:
  result = 0;
  if (a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  if (v7 > v11)
  {
    v11 = v7;
  }

  if (v11 <= a4)
  {
    v11 = a4;
  }

  if (v11 >= 5)
  {
    v12 = specialized _HashTable.init(scale:reservedScale:)(v11, a4);
    a5(v12 + 16, v12 + 32, v6);
    return v12;
  }

  return result;
}

uint64_t _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt2g5Tm(uint64_t result, int64_t a2, char a3, int64_t a4)
{
  v4 = *(result + 16);
  if (v4 >= 0x10)
  {
    v5 = ceil(v4 / 0.75);
    if (v5 == INFINITY)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        if ((v4 + 1) > v5)
        {
          v6 = v4 + 1;
        }

        else
        {
          v6 = v5;
        }

        v7 = 64 - __clz(v6 - 1);
        goto LABEL_10;
      }

LABEL_22:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_22;
  }

  v7 = 0;
LABEL_10:
  v8 = 0;
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  if (v7 <= v9)
  {
    v7 = v9;
  }

  if (v7 <= a4)
  {
    v7 = a4;
  }

  if (v7 >= 5)
  {
    v10 = result;
    v8 = specialized _HashTable.init(scale:reservedScale:)(v7, a4);
    specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(v10, (v8 + 16), v8 + 32);
  }

  return v8;
}

uint64_t _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA13TextureSourceOG_Tt2g5Tm(uint64_t result, int64_t a2, char a3, int64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(result + 16);
  if (v6 >= 0x10)
  {
    v7 = ceil(v6 / 0.75);
    if (v7 == INFINITY)
    {
      __break(1u);
    }

    else if (v7 > -9.22337204e18)
    {
      if (v7 < 9.22337204e18)
      {
        if ((v6 + 1) > v7)
        {
          v8 = v6 + 1;
        }

        else
        {
          v8 = v7;
        }

        v9 = 64 - __clz(v8 - 1);
        goto LABEL_10;
      }

LABEL_22:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_22;
  }

  v9 = 0;
LABEL_10:
  v10 = 0;
  if (a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  if (v9 <= v11)
  {
    v9 = v11;
  }

  if (v9 <= a4)
  {
    v9 = a4;
  }

  if (v9 >= 5)
  {
    v12 = result;
    v10 = specialized _HashTable.init(scale:reservedScale:)(v9, a4);
    a5(v12, v10 + 16, v10 + 32);
  }

  return v10;
}

uint64_t _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA6SGNodeCG_Tt2g5Tm(uint64_t result, int64_t a2, char a3, int64_t a4)
{
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  if (v6 >= 0x10)
  {
    v7 = ceil(v6 / 0.75);
    if (v7 == INFINITY)
    {
      __break(1u);
    }

    else if (v7 > -9.22337204e18)
    {
      if (v7 < 9.22337204e18)
      {
        if ((v6 + 1) > v7)
        {
          v8 = v6 + 1;
        }

        else
        {
          v8 = v7;
        }

        v5 = 64 - __clz(v8 - 1);
        goto LABEL_9;
      }

LABEL_21:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_9:
  result = 0;
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  if (v5 > v9)
  {
    v9 = v5;
  }

  if (v9 <= a4)
  {
    v9 = a4;
  }

  if (v9 >= 5)
  {
    v10 = specialized _HashTable.init(scale:reservedScale:)(v9, a4);
    specialized closure #1 in static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)((v10 + 16), v10 + 32, v4);
    return v10;
  }

  return result;
}

void _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA5InputV_s15ContiguousArrayVyAHGTt0g5(uint64_t a1)
{
  v2 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt3g5Tm = _s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt3g5Tm(v8, a1, 0, 1, v2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), closure #1 in Sequence<>.contains(_:)specialized partial apply, specialized Sequence.contains(where:));
  v4 = *(a1 + 16);
  v5 = v8[0];
  if (v8[0] != v4)
  {
    if ((v8[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 >= v8[0])
    {
      v6 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt3g5Tm;
      specialized _copyCollectionToContiguousArray<A>(_:)(a1, a1 + 32, 0, (2 * v8[0]) | 1);
      v8[1] = v6;
      v8[2] = v7;
      if (*(a1 + 16) >= v4)
      {
        specialized OrderedSet.append<A>(contentsOf:)(a1 + 32, v5, (2 * v4) | 1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

void _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA6OutputV_s15ContiguousArrayVyAHGTt0g5(uint64_t a1)
{
  v2 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt3g5Tm = _s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt3g5Tm(v8, a1, 0, 1, v2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), closure #1 in Sequence<>.contains(_:)specialized partial apply, specialized Sequence.contains(where:));
  v4 = *(a1 + 16);
  v5 = v8[0];
  if (v8[0] != v4)
  {
    if ((v8[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 >= v8[0])
    {
      v6 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA5InputVG_Tt3g5Tm;
      specialized _copyCollectionToContiguousArray<A>(_:)(a1, a1 + 32, 0, (2 * v8[0]) | 1);
      v8[1] = v6;
      v8[2] = v7;
      if (*(a1 + 16) >= v4)
      {
        specialized OrderedSet.append<A>(contentsOf:)(a1 + 32, v5, (2 * v4) | 1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

void _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA5InputV_SayAHGTt0g5(uint64_t a1)
{
  v2 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA5InputVG_Tt3g5 = _s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA5InputVG_Tt3g5(v8, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v8[0];
  if (v8[0] != v4)
  {
    if ((v8[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 >= v8[0])
    {
      v6 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA5InputVG_Tt3g5;
      specialized _copyCollectionToContiguousArray<A>(_:)(a1, a1 + 32, 0, (2 * v8[0]) | 1);
      v8[1] = v6;
      v8[2] = v7;
      if (*(a1 + 16) >= v4)
      {
        specialized OrderedSet.append<A>(contentsOf:)(a1 + 32, v5, (2 * v4) | 1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5Tm(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(unint64_t *, uint64_t, void, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, unint64_t), void (*a5)(uint64_t, unint64_t, unint64_t))
{
  v9 = a2();
  result = a3(&v14, a1, 0, 1, v9);
  v11 = *(a1 + 16);
  v12 = v14;
  if (v14 != v11)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 >= v14)
    {
      v13 = result;
      result = a4(a1, a1 + 32, 0, (2 * v14) | 1);
      v15 = v13;
      v16 = result;
      if (*(a1 + 16) >= v11)
      {
        a5(a1 + 32, v12, (2 * v11) | 1);

        return v15;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

unint64_t _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA6SGEdgeC_SayAHGTt0g5(unint64_t a1)
{
  v7 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm = _s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm(&v62, a1, 0, 1, v7, type metadata accessor for SGEdge, partial apply for specialized closure #1 in Sequence<>.contains(_:), specialized Sequence.contains(where:));
  v8 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

LABEL_99:
  v9 = __CocoaSet.count.getter();
LABEL_3:
  v10 = v62;
  if (v62 == v9)
  {
    _ss15ContiguousArrayVyAByxGqd__c7ElementQyd__RszSTRd__lufC11ShaderGraph6SGEdgeC_SayAHGTt0g5Tm(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph6SGNodeC_Tt1g5, specialized Array._copyContents(initializing:));
    return DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm;
  }

  if (v62 < 0)
  {
    __break(1u);
    goto LABEL_101;
  }

  if (!v8)
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
  {
    v12 = __CocoaSet.count.getter();
LABEL_13:
    if (v12 >= v10)
    {
      v3 = (a1 & 0xC000000000000001);
      if ((a1 & 0xC000000000000001) != 0 && v10)
      {
        type metadata accessor for SGEdge();

        v13 = 0;
        do
        {
          v14 = v13 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v13);
          v13 = v14;
        }

        while (v10 != v14);
        if (!v8)
        {
LABEL_19:
          v1 = 0;
          v2 = a1 & 0xFFFFFFFFFFFFFF8;
          v15 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
          v4 = (2 * v10) | 1;
          goto LABEL_23;
        }
      }

      else
      {

        if (!v8)
        {
          goto LABEL_19;
        }
      }

      v2 = _CocoaArrayWrapper.subscript.getter();
      v1 = v16;
      v4 = v17;
      if ((v17 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_23:
      v5 = v10;
      v61 = v15;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        swift_unknownObjectRelease();
        v19 = MEMORY[0x277D84F90];
      }

      v20 = *(v19 + 16);

      if (!__OFSUB__(v4 >> 1, v1))
      {
        if (v20 == (v4 >> 1) - v1)
        {
          v1 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v10 = v5;
          if (!v1)
          {
            v1 = MEMORY[0x277D84F90];
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        goto LABEL_107;
      }

      goto LABEL_106;
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  while (1)
  {
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    swift_unknownObjectRelease();
    v15 = v61;
    v10 = v5;
LABEL_22:
    specialized _copyCollectionToContiguousArray<A>(_:)(v2, v15, v1, v4);
    v1 = v18;
LABEL_29:
    swift_unknownObjectRelease();
LABEL_30:
    v63 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm;
    v64 = v1;
    if (v9 < v10)
    {
      goto LABEL_102;
    }

    if (v8)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21 < v9)
    {
      goto LABEL_103;
    }

    if (!v3)
    {

      goto LABEL_41;
    }

    if (v10 < v9)
    {
      break;
    }

LABEL_104:
    __break(1u);
  }

  type metadata accessor for SGEdge();

  v22 = v10;
  do
  {
    v3 = (v22 + 1);
    _ArrayBuffer._typeCheckSlowPath(_:)(v22);
    v22 = v3;
  }

  while (v9 != v3);
LABEL_41:

  if (v8)
  {
    _CocoaArrayWrapper.subscript.getter();
    v59 = v23;
    v10 = v24;
    v26 = v25;

    v9 = v26 >> 1;
  }

  else
  {
    v59 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v2 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm;
  a1 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm;
  if (v10 == v9)
  {
    goto LABEL_93;
  }

  v57 = v9;
  while (1)
  {
    if (v10 >= v9)
    {
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v2 = *(v59 + 8 * v10);
    v5 = v63;
    v3 = (v64 + 32);
    if (!v63)
    {
      v54 = *(v64 + 16);
      v55 = v2;
      if (v54)
      {
        v1 = v55;
        v8 = v2;
        a1 = type metadata accessor for SGEdge();
        while (1)
        {
          v2 = *v3;
          v4 = static NSObject.== infix(_:_:)();

          if (v4)
          {
            break;
          }

          ++v3;
          if (!--v54)
          {
            v4 = 0;
            v2 = v8;
            goto LABEL_90;
          }
        }

        goto LABEL_47;
      }

      v4 = 0;
      goto LABEL_90;
    }

    v60 = v10;
    v27 = (v63 + 16);
    v1 = *(v63 + 16);
    v28 = v2;

    a1 = v28;
    v29 = NSObject._rawHashValue(seed:)(v1);
    v30 = 1 << *v27;
    v31 = __OFSUB__(v30, 1);
    v32 = v30 - 1;
    if (v31)
    {
      goto LABEL_98;
    }

    v58 = v2;
    v4 = v32 & v29;
    v33 = _HashTable.UnsafeHandle._startIterator(bucket:)(v32 & v29, (v5 + 16), v5 + 32);
    if (!v33)
    {
LABEL_88:

      v9 = v57;
      v2 = v58;
      v10 = v60;
LABEL_90:
      a1 = &v63;
      specialized OrderedSet._appendNew(_:in:)(v2, v4);

      goto LABEL_47;
    }

    v36 = v34;
    v2 = v35;
    v37 = -1 << *(v5 + 16);
    v38 = (v37 ^ ~v33) + (*(v5 + 24) >> 6);
    v39 = v38 >= ~v37 ? ~v37 : 0;
    v40 = v38 - v39;
    a1 = type metadata accessor for SGEdge();
    v8 = v3[v40];
    v1 = static NSObject.== infix(_:_:)();

    if ((v1 & 1) == 0)
    {
      break;
    }

LABEL_46:

    v9 = v57;
    v10 = v60;
LABEL_47:
    if (++v10 == v9)
    {
      a1 = v63;
LABEL_93:
      swift_unknownObjectRelease();

      return a1;
    }
  }

  LODWORD(v61) = 0;
  while (1)
  {
    ++v4;
    v41 = *v27 & 0x3FLL;
    v42 = 1 << *v27;
    if (v4 != v42)
    {
      goto LABEL_60;
    }

    if (v61)
    {
      break;
    }

    v4 = 0;
    LODWORD(v61) = 1;
LABEL_60:
    if (v2 >= v41)
    {
      v50 = (v42 - 1) & v36;
      v36 >>= v41;
      v2 -= v41;
      if (!v50)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v43 = (v4 * v41) >> 6;
      if (v2)
      {
        if (__OFADD__(v41 << v41, 64))
        {
          goto LABEL_97;
        }

        v44 = (v41 << v41) + 126;
        if ((v41 << v41) + 64 >= 1)
        {
          v44 = (v41 << v41) + 63;
        }

        if (v43 + 1 == v44 >> 6)
        {
          v43 = 0;
        }

        else
        {
          ++v43;
        }
      }

      v45 = v41 - v2;
      if (__OFSUB__(v41, v2))
      {
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v46 = v43 == 2 && v41 == 5;
      v47 = 64;
      if (v46)
      {
        v47 = 32;
      }

      v31 = __OFSUB__(v47, v45);
      v48 = v47 - v45;
      if (v31)
      {
        goto LABEL_95;
      }

      v49 = *(v5 + 32 + 8 * v43);
      v50 = ((v49 << v2) | v36) & (v42 - 1);
      v36 = v49 >> v45;
      v2 = v48;
      if (!v50)
      {
        goto LABEL_88;
      }
    }

    v51 = -1 << v41;
    v52 = (v51 ^ ~v50) + (*(v5 + 24) >> 6);
    if (v52 >= ~v51)
    {
      v53 = ~v51;
    }

    else
    {
      v53 = 0;
    }

    v1 = v3[v52 - v53];
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      goto LABEL_46;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCAA6SGNodeC_SayAHGTt0g5(unint64_t a1)
{
  v7 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm = _s11ShaderGraph10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm(&v62, a1, 0, 1, v7, type metadata accessor for SGNode, partial apply for specialized closure #1 in Sequence<>.contains(_:), specialized Sequence.contains(where:));
  v8 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

LABEL_99:
  v9 = __CocoaSet.count.getter();
LABEL_3:
  v10 = v62;
  if (v62 == v9)
  {
    _ss15ContiguousArrayVyAByxGqd__c7ElementQyd__RszSTRd__lufC11ShaderGraph6SGEdgeC_SayAHGTt0g5Tm(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph6SGNodeC_Tt1g5, specialized Array._copyContents(initializing:));
    return DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm;
  }

  if (v62 < 0)
  {
    __break(1u);
    goto LABEL_101;
  }

  if (!v8)
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
  {
    v12 = __CocoaSet.count.getter();
LABEL_13:
    if (v12 >= v10)
    {
      v3 = (a1 & 0xC000000000000001);
      if ((a1 & 0xC000000000000001) != 0 && v10)
      {
        type metadata accessor for SGNode();

        v13 = 0;
        do
        {
          v14 = v13 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v13);
          v13 = v14;
        }

        while (v10 != v14);
        if (!v8)
        {
LABEL_19:
          v1 = 0;
          v2 = a1 & 0xFFFFFFFFFFFFFF8;
          v15 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
          v4 = (2 * v10) | 1;
          goto LABEL_23;
        }
      }

      else
      {

        if (!v8)
        {
          goto LABEL_19;
        }
      }

      v2 = _CocoaArrayWrapper.subscript.getter();
      v1 = v16;
      v4 = v17;
      if ((v17 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_23:
      v5 = v10;
      v61 = v15;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        swift_unknownObjectRelease();
        v19 = MEMORY[0x277D84F90];
      }

      v20 = *(v19 + 16);

      if (!__OFSUB__(v4 >> 1, v1))
      {
        if (v20 == (v4 >> 1) - v1)
        {
          v1 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v10 = v5;
          if (!v1)
          {
            v1 = MEMORY[0x277D84F90];
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        goto LABEL_107;
      }

      goto LABEL_106;
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  while (1)
  {
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    swift_unknownObjectRelease();
    v15 = v61;
    v10 = v5;
LABEL_22:
    specialized _copyCollectionToContiguousArray<A>(_:)(v2, v15, v1, v4);
    v1 = v18;
LABEL_29:
    swift_unknownObjectRelease();
LABEL_30:
    v63 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm;
    v64 = v1;
    if (v9 < v10)
    {
      goto LABEL_102;
    }

    if (v8)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21 < v9)
    {
      goto LABEL_103;
    }

    if (!v3)
    {

      goto LABEL_41;
    }

    if (v10 < v9)
    {
      break;
    }

LABEL_104:
    __break(1u);
  }

  type metadata accessor for SGNode();

  v22 = v10;
  do
  {
    v3 = (v22 + 1);
    _ArrayBuffer._typeCheckSlowPath(_:)(v22);
    v22 = v3;
  }

  while (v9 != v3);
LABEL_41:

  if (v8)
  {
    _CocoaArrayWrapper.subscript.getter();
    v59 = v23;
    v10 = v24;
    v26 = v25;

    v9 = v26 >> 1;
  }

  else
  {
    v59 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v2 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm;
  a1 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSayAA6SGEdgeCG_Tt3g5Tm;
  if (v10 == v9)
  {
    goto LABEL_93;
  }

  v57 = v9;
  while (1)
  {
    if (v10 >= v9)
    {
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v2 = *(v59 + 8 * v10);
    v5 = v63;
    v3 = (v64 + 32);
    if (!v63)
    {
      v54 = *(v64 + 16);
      v55 = v2;
      if (v54)
      {
        v1 = v55;
        v8 = v2;
        a1 = type metadata accessor for SGNode();
        while (1)
        {
          v2 = *v3;
          v4 = static NSObject.== infix(_:_:)();

          if (v4)
          {
            break;
          }

          ++v3;
          if (!--v54)
          {
            v4 = 0;
            v2 = v8;
            goto LABEL_90;
          }
        }

        goto LABEL_47;
      }

      v4 = 0;
      goto LABEL_90;
    }

    v60 = v10;
    v27 = (v63 + 16);
    v1 = *(v63 + 16);
    v28 = v2;

    a1 = v28;
    v29 = NSObject._rawHashValue(seed:)(v1);
    v30 = 1 << *v27;
    v31 = __OFSUB__(v30, 1);
    v32 = v30 - 1;
    if (v31)
    {
      goto LABEL_98;
    }

    v58 = v2;
    v4 = v32 & v29;
    v33 = _HashTable.UnsafeHandle._startIterator(bucket:)(v32 & v29, (v5 + 16), v5 + 32);
    if (!v33)
    {
LABEL_88:

      v9 = v57;
      v2 = v58;
      v10 = v60;
LABEL_90:
      a1 = &v63;
      specialized OrderedSet._appendNew(_:in:)(v2, v4);

      goto LABEL_47;
    }

    v36 = v34;
    v2 = v35;
    v37 = -1 << *(v5 + 16);
    v38 = (v37 ^ ~v33) + (*(v5 + 24) >> 6);
    v39 = v38 >= ~v37 ? ~v37 : 0;
    v40 = v38 - v39;
    a1 = type metadata accessor for SGNode();
    v8 = v3[v40];
    v1 = static NSObject.== infix(_:_:)();

    if ((v1 & 1) == 0)
    {
      break;
    }

LABEL_46:

    v9 = v57;
    v10 = v60;
LABEL_47:
    if (++v10 == v9)
    {
      a1 = v63;
LABEL_93:
      swift_unknownObjectRelease();

      return a1;
    }
  }

  LODWORD(v61) = 0;
  while (1)
  {
    ++v4;
    v41 = *v27 & 0x3FLL;
    v42 = 1 << *v27;
    if (v4 != v42)
    {
      goto LABEL_60;
    }

    if (v61)
    {
      break;
    }

    v4 = 0;
    LODWORD(v61) = 1;
LABEL_60:
    if (v2 >= v41)
    {
      v50 = (v42 - 1) & v36;
      v36 >>= v41;
      v2 -= v41;
      if (!v50)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v43 = (v4 * v41) >> 6;
      if (v2)
      {
        if (__OFADD__(v41 << v41, 64))
        {
          goto LABEL_97;
        }

        v44 = (v41 << v41) + 126;
        if ((v41 << v41) + 64 >= 1)
        {
          v44 = (v41 << v41) + 63;
        }

        if (v43 + 1 == v44 >> 6)
        {
          v43 = 0;
        }

        else
        {
          ++v43;
        }
      }

      v45 = v41 - v2;
      if (__OFSUB__(v41, v2))
      {
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v46 = v43 == 2 && v41 == 5;
      v47 = 64;
      if (v46)
      {
        v47 = 32;
      }

      v31 = __OFSUB__(v47, v45);
      v48 = v47 - v45;
      if (v31)
      {
        goto LABEL_95;
      }

      v49 = *(v5 + 32 + 8 * v43);
      v50 = ((v49 << v2) | v36) & (v42 - 1);
      v36 = v49 >> v45;
      v2 = v48;
      if (!v50)
      {
        goto LABEL_88;
      }
    }

    v51 = -1 << v41;
    v52 = (v51 ^ ~v50) + (*(v5 + 24) >> 6);
    if (v52 >= ~v51)
    {
      v53 = ~v51;
    }

    else
    {
      v53 = 0;
    }

    v1 = v3[v52 - v53];
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      goto LABEL_46;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}
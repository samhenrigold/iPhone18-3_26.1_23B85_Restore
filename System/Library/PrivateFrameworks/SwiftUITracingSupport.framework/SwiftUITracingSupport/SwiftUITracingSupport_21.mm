id @nonobjc NSFileHandle.__allocating_init(forWritingTo:)(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v13);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t closure #1 in FileCompressor.run()(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  result = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v8 + 104))(v10, *MEMORY[0x277CC92A8]);
    v11 = specialized Data.init(bytesNoCopy:count:deallocator:)(a1, a2 - a1, v10);
    v13 = v12;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [a3 writeData_];

    return outlined consume of Data._Representation(v11, v13);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t outlined init with copy of BufferCompressor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferCompressorVSgMd, &_s21SwiftUITracingSupport16BufferCompressorVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of BufferCompressor?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferCompressorVSgMd, &_s21SwiftUITracingSupport16BufferCompressorVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C2700F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t type metadata accessor for FileCompressor(uint64_t a1)
{
  result = type metadata singleton initialization cache for FileCompressor;
  if (!type metadata singleton initialization cache for FileCompressor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata accessor for NSFileHandle()
{
  result = lazy cache variable for type metadata for NSFileHandle;
  if (!lazy cache variable for type metadata for NSFileHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSFileHandle);
  }

  return result;
}

uint64_t sub_26C2701EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t get_enum_tag_for_layout_string_SWIegy_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for BufferCompressor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for BufferCompressor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for FileCompressor(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Algorithm();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BufferCompressor.CompressorError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for BufferCompressor.CompressorError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Data._Representation.init(_:count:)(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = MEMORY[0x26D69C520]();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = specialized Data.InlineData.init(_:)(v3, v7);

  return v8;
}

uint64_t specialized Data.init(bytesNoCopy:count:deallocator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();

    v10 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277CC92A8])
    {
      v11 = __DataStorage._capacity.modify();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = specialized Data._Representation.init(_:count:)(v10, a2);
  }

  else
  {
    v13 = Data.Deallocator._deallocator.getter();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

uint64_t UnsafeLongestCommonSubsequence.subsequence.getter(uint64_t a1)
{
  specialized UnsafeLongestCommonSubsequence.subsequence.getter(a1);
}

uint64_t UnsafeLongestCommonSubsequence.init(baseline:candidate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for UnsafeLongestCommonSubsequence(0, a3, a4, a5);
  v13 = *(v12 + 48);
  memset(v18, 0, sizeof(v18));
  v19 = -1;
  type metadata accessor for UnsafeLongestCommonSubsequence.Work(255, a3, a4, a5);
  v14 = type metadata accessor for Optional();
  v15 = static UnsafeMutablePointer.allocate(capacity:)();
  _sSpsRi_zrlE10initialize2toyxn_tF(v18, v15, v14);
  *(a6 + v13) = v15;
  v16 = *(*(a3 - 8) + 32);
  v16(a6, a1, a3);
  return (v16)(a6 + *(v12 + 44), a2, a3);
}

double protocol witness for Comparison.init(baseline:candidate:) in conformance <> UnsafeLongestCommonSubsequence<A>@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  *a3 = *a1;
  a3[1] = v4;
  v5 = swift_slowAlloc();
  result = 0.0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = -1;
  a3[2] = v5;
  return result;
}

Swift::Void __swiftcall UnsafeLongestCommonSubsequence.Work.deallocate()()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = *v0;
    v3 = *(v0 + 8);
    outlined consume of UnsafeLongestCommonSubsequence<[EventRef]>.Work(*v0, v3, v1, v2, 0);
    if (v4)
    {
      MEMORY[0x26D69EAB0](v4, -1, -1);
    }

    *v0 = 0;
    *(v0 + 8) = v3;
    *(v0 + 16) = v1;
    *(v0 + 24) = v2;
    *(v0 + 32) = 0;
  }
}

Swift::Void __swiftcall UnsafeLongestCommonSubsequence.deallocate()()
{
  v2 = v1;
  v3 = *(v0 + 48);
  v4 = *(v1 + v3);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  if (*(v4 + 32) != 255)
  {
    UnsafeLongestCommonSubsequence.Work.deallocate()();
  }

  type metadata accessor for UnsafeLongestCommonSubsequence.Work(255, v5, v6, v7);
  v8 = type metadata accessor for Optional();
  v9 = _sSp21SwiftUITracingSupportRi_zrlE7nullPtrSpyxGvgZ();
  if (v4 == v9)
  {
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    type metadata accessor for Unique(0, v8, v11, v12);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v10 = v9;
    UnsafeMutablePointer.deinitialize(count:)();
    MEMORY[0x26D69D370](v4, v8);
    *(v2 + v3) = v10;
  }
}

unint64_t UnsafeLongestCommonSubsequence.count.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v79 = *(*(a1 + 24) + 8);
  v3 = *(v79 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v101 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v105 = &v75 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v106 = type metadata accessor for Optional();
  v103 = *(v106 - 8);
  v9 = MEMORY[0x28223BE20](v106);
  v11 = (&v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v75 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v75 - v15;
  v17 = type metadata accessor for EnumeratedSequence();
  MEMORY[0x28223BE20](v17);
  v19 = &v75 - v18;
  v88 = v2;
  v20 = type metadata accessor for EnumeratedSequence.Iterator();
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v91 = a1;
  v26 = *(v89 + *(a1 + 48));
  v27 = *(v26 + 32);
  if (v27 != 255)
  {
    goto LABEL_2;
  }

  v100 = v25;
  v90 = v16;
  v87 = &v75 - v23;
  v102 = v24;
  v104 = v22;
  v85 = v19;
  v78 = v26;
  v86 = v17;
  v35 = v88;
  result = dispatch thunk of Collection.count.getter();
  v36 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_69;
  }

  v83 = *(v91 + 44);
  result = dispatch thunk of Collection.count.getter();
  v37 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  result = v36 * v37;
  if ((v36 * v37) >> 64 != (v36 * v37) >> 63)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v80 = v37;
  v77 = v36;
  v38 = _s21SwiftUITracingSupport11UnsafeArrayVAASzRzlE5zerosACyxGSi_tcfCSi_Tt0g5(result);
  v76 = v39;
  v40 = HIDWORD(v39);
  v82 = v3;
  MEMORY[0x26D69CEE0](v35, v3);
  EnumeratedSequence.makeIterator()();
  v103 += 4;
  v84 = TupleTypeMetadata2 - 8;
  v98 = (v101 + 32);
  v41 = (v101 + 8);
  v81 = (v100 + 8);
  for (i = v14; ; v14 = i)
  {
    EnumeratedSequence.Iterator.next()();
    v42 = v90;
    v101 = *v103;
    (v101)(v90, v14, v106);
    v43 = TupleTypeMetadata2;
    v44 = *(TupleTypeMetadata2 - 8);
    v45 = *(v44 + 48);
    v99 = v44 + 48;
    v100 = v45;
    if ((v45)(v42, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v94 = *v90;
    v46 = v90 + *(v43 + 48);
    v97 = *v98;
    v97(v105, v46, AssociatedTypeWitness);
    MEMORY[0x26D69CEE0](v88, v82);
    EnumeratedSequence.makeIterator()();
    EnumeratedSequence.Iterator.next()();
    v47 = TupleTypeMetadata2;
    (v101)(v11, v14, v106);
    if ((v100)(v11, 1, v47) != 1)
    {
      v48 = v94 + 1;
      v49 = __OFADD__(v94, 1);
      v95 = v49;
      v93 = v94 * v80;
      LODWORD(v94) = (v94 * v80) >> 64 != (v94 * v80) >> 63;
      v50 = v48 * v80;
      v92 = (v48 * v80) >> 64 != (v48 * v80) >> 63;
      do
      {
        v52 = *v11;
        v97(v7, v11 + *(v47 + 48), AssociatedTypeWitness);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          if (v95)
          {
            goto LABEL_50;
          }

          v53 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_52;
          }

          if (v94)
          {
            goto LABEL_55;
          }

          v54 = v93 + v52;
          if (__OFADD__(v93, v52))
          {
            goto LABEL_57;
          }

          if (v54 >= v40)
          {
            goto LABEL_59;
          }

          if (!v38)
          {
            goto LABEL_76;
          }

          v55 = *(v38 + 8 * v54);
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          v58 = v106;
          if (v56)
          {
            goto LABEL_60;
          }

          if (v92)
          {
            goto LABEL_62;
          }

          v56 = __OFADD__(v50, v53);
          v59 = v50 + v53;
          if (v56)
          {
            goto LABEL_64;
          }

          if (v59 >= v40)
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v95)
          {
            goto LABEL_51;
          }

          v60 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_53;
          }

          if (v94)
          {
            goto LABEL_54;
          }

          v61 = v93 + v60;
          if (__OFADD__(v93, v60))
          {
            goto LABEL_56;
          }

          if (v61 >= v40)
          {
            goto LABEL_58;
          }

          if (!v38)
          {
            goto LABEL_75;
          }

          if (v92)
          {
            goto LABEL_61;
          }

          v62 = v50 + v52;
          if (__OFADD__(v50, v52))
          {
            goto LABEL_63;
          }

          if (v62 >= v40)
          {
            goto LABEL_65;
          }

          v56 = __OFADD__(v50, v60);
          v59 = v50 + v60;
          if (v56)
          {
            goto LABEL_66;
          }

          v57 = *(v38 + 8 * v61);
          v63 = *(v38 + 8 * v62);
          if (v63 > v57)
          {
            v57 = v63;
          }

          if (v59 >= v40)
          {
            goto LABEL_68;
          }

          v58 = v106;
        }

        *(v38 + 8 * v59) = v57;
        (*v41)(v7, AssociatedTypeWitness);
        v51 = i;
        EnumeratedSequence.Iterator.next()();
        (v101)(v11, v51, v58);
        v47 = TupleTypeMetadata2;
      }

      while ((v100)(v11, 1, TupleTypeMetadata2) != 1);
    }

    (*v81)(v102, v104);
    (*v41)(v105, AssociatedTypeWitness);
  }

  (*v81)(v87, v104);
  v67 = v78;
  v68 = *v78;
  v69 = v78[1];
  v70 = v78[2];
  v71 = v78[3];
  v72 = v76;
  *v78 = v38;
  v67[1] = v72;
  v73 = v80;
  v67[2] = v77;
  v67[3] = v73;
  v74 = *(v67 + 32);
  *(v67 + 32) = 0;
  result = outlined consume of UnsafeLongestCommonSubsequence<[EventRef]>.Work?(v68, v69, v70, v71, v74);
  v26 = v67;
  v27 = *(v67 + 32);
  if (v27 == 255)
  {
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
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
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_2:
  v28 = *v26;
  v29 = v26[1];
  v30 = v26[3];
  if (v27)
  {
    v31 = v26[2];
    outlined copy of UnsafeLongestCommonSubsequence<A>.Work<A>(*v26, v26[1], v31, v26[3], 1);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v33 = MEMORY[0x26D69D030](v28, TupleTypeMetadata3);
    outlined consume of UnsafeLongestCommonSubsequence<[EventRef]>.Work?(v28, v29, v31, v30, v27);
    return v33;
  }

  v64 = dispatch thunk of Collection.count.getter();
  result = dispatch thunk of Collection.count.getter();
  v65 = v64 * v30;
  if ((v64 * v30) >> 64 != (v64 * v30) >> 63)
  {
    goto LABEL_72;
  }

  v56 = __OFADD__(v65, result);
  v66 = v65 + result;
  if (v56)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v66 >= HIDWORD(v29))
  {
    goto LABEL_74;
  }

  if (!v28)
  {
LABEL_77:
    __break(1u);
    return result;
  }

  return *(v28 + 8 * v66);
}

uint64_t UnsafeLongestCommonSubsequence.indexedSubsequence(_:)(uint64_t *a1, uint64_t a2)
{
  v62 = a2;
  v4 = *(a2 + 16);
  v60 = *(a2 + 24);
  v53 = *(v60 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v48 = &v43 - v8;
  v52 = v6;
  v50 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v51 = &v43 - v10;
  v63 = AssociatedTypeWitness;
  v54 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v59 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = *a1;
  v18 = *(a1 + 3);
  v19 = a1[3];
  v64 = v2;
  v20 = dispatch thunk of Collection.count.getter();
  v21 = *(v62 + 44);
  v22 = dispatch thunk of Collection.count.getter();
  dispatch thunk of Collection.endIndex.getter();
  v49 = v21;
  v61 = v4;
  dispatch thunk of Collection.endIndex.getter();
  result = Array.init()();
  v66 = result;
  if (v20 < 1 || v22 < 1)
  {
LABEL_23:
    type metadata accessor for Array();
    swift_getWitnessTable();
    swift_getWitnessTable();
    MutableCollection<>.reverse()();
    v41 = *(v54 + 8);
    v42 = v63;
    v41(v56, v63);
    v41(v16, v42);
    return v66;
  }

  else
  {
    v57 = (v54 + 32);
    v58 = (v54 + 8);
    v47 = (v50 + 2);
    v46 = (v54 + 16);
    v50 += 4;
LABEL_4:
    v62 = v22 - 1;
    while (1)
    {
      v24 = v20 * v19;
      if ((v20 * v19) >> 64 != (v20 * v19) >> 63)
      {
        break;
      }

      v25 = v24 + v22;
      if (__OFADD__(v24, v22))
      {
        goto LABEL_25;
      }

      if (v25 >= v18)
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        goto LABEL_32;
      }

      v26 = __OFADD__(v24, v62);
      v27 = v24 + v62;
      if (v26)
      {
        goto LABEL_27;
      }

      if (v27 >= v18)
      {
        goto LABEL_28;
      }

      v28 = *(v17 + 8 * v25);
      if (v28 == *(v17 + 8 * v27))
      {
        v34 = v59;
        v35 = v56;
        dispatch thunk of BidirectionalCollection.index(before:)();
        v36 = v63;
        (*v58)(v35, v63);
        result = (*v57)(v35, v34, v36);
        if (v20 < 1)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      v29 = --v20 * v19;
      if ((v20 * v19) >> 64 != (v20 * v19) >> 63)
      {
        goto LABEL_29;
      }

      v26 = __OFADD__(v29, v22);
      v30 = v29 + v22;
      if (v26)
      {
        goto LABEL_30;
      }

      if (v30 >= v18)
      {
        goto LABEL_31;
      }

      v31 = *(v17 + 8 * v30);
      v32 = v59;
      dispatch thunk of BidirectionalCollection.index(before:)();
      v33 = v63;
      (*v58)(v16, v63);
      result = (*v57)(v16, v32, v33);
      if (v28 != v31)
      {
        v37 = dispatch thunk of Collection.subscript.read();
        (*v47)(v51);
        v37(v65, 0);
        v44 = *(TupleTypeMetadata3 + 48);
        v45 = *(TupleTypeMetadata3 + 64);
        v38 = *v46;
        v39 = v48;
        (*v46)(v48, v16, v63);
        (*v50)(&v39[v44], v51, v52);
        v38(&v39[v45], v56, v63);
        type metadata accessor for Array();
        result = Array.append(_:)();
        if (v20 < 1)
        {
          goto LABEL_23;
        }

LABEL_21:
        v40 = v22 <= 1;
        v22 = v62;
        if (v40)
        {
          goto LABEL_23;
        }

        goto LABEL_4;
      }

      if ((v20 + 1) < 2)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

uint64_t UnsafeLongestCommonSubsequence.rest(ts:)(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v3 = *(a2 + 16);
  v55 = *(a2 + 24);
  v4 = *(v55 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = v4;
  v6 = *(v4 + 8);
  v7 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v46 = &v43 - v8;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v51 = &v43 - v10;
  v69 = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v50 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v43 - v15;
  v66 = *(v7 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  v70 = v7;
  v19 = swift_getTupleTypeMetadata2();
  v61 = type metadata accessor for Optional();
  v67 = *(v61 - 8);
  v20 = MEMORY[0x28223BE20](v61);
  v60 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v59 = &v43 - v22;
  v23 = v6;
  v24 = type metadata accessor for EnumeratedSequence();
  MEMORY[0x28223BE20](v24);
  v65 = type metadata accessor for EnumeratedSequence.Iterator();
  v43 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v26 = &v43 - v25;
  v62 = specialized UnsafeLongestCommonSubsequence.subsequence.getter(a2);

  v71 = Array.init()();
  v54 = v3;
  MEMORY[0x26D69CEE0](v3, v23);
  v64 = v26;
  v27 = v18;
  EnumeratedSequence.makeIterator()();
  v28 = 0;
  v57 = v19 - 8;
  v58 = (v67 + 4);
  v49 = (v66 + 32);
  v67 = (v66 + 8);
  v68 = (v11 + 8);
  v45 = (v11 + 16);
  v44 = (v66 + 16);
  v48 = v19;
  v56 = v27;
  while (1)
  {
    v32 = v60;
    EnumeratedSequence.Iterator.next()();
    v33 = v59;
    (*v58)(v59, v32, v61);
    if ((*(*(v19 - 8) + 48))(v33, 1, v19) == 1)
    {
      break;
    }

    (*v49)(v27, &v33[*(v19 + 48)], v70);
    v34 = v50;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of BidirectionalCollection.index(_:offsetBy:)();
    v35 = *v68;
    v36 = v34;
    v37 = v69;
    (*v68)(v36, v69);
    v39 = v51;
    v38 = TupleTypeMetadata3;
    Array.subscript.getter();
    v66 = *(v38 + 48);
    v40 = *(v38 + 64);
    swift_getAssociatedConformanceWitness();
    LOBYTE(v38) = dispatch thunk of static Equatable.== infix(_:_:)();
    v35(&v39[v40], v37);
    v41 = *v67;
    (*v67)(&v39[v66], v70);
    v35(v39, v37);
    if (v38)
    {
      v27 = v56;
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        break;
      }
    }

    else
    {
      v29 = v28;
      v30 = *(TupleTypeMetadata2 + 48);
      v31 = v46;
      (*v45)(v46, v16, v69);
      v27 = v56;
      (*v44)(&v31[v30], v56, v70);
      type metadata accessor for Array();
      Array.append(_:)();
    }

    v35(v16, v69);
    v41(v27, v70);
    v19 = v48;
    v28 = v29;
  }

  (*(v43 + 8))(v64, v65);

  return v71;
}

unint64_t specialized UnsafeLongestCommonSubsequence.subsequence.getter(uint64_t a1)
{
  result = UnsafeLongestCommonSubsequence.count.getter(a1);
  v4 = *(v1 + *(a1 + 48));
  v6 = (v4 + 32);
  v5 = *(v4 + 32);
  if (v5 == 255)
  {
LABEL_4:
    __break(1u);
  }

  else
  {
    while (1)
    {
      result = *v4;
      if (v5)
      {
        break;
      }

      v7 = *(v4 + 8);
      v14[0] = *v4;
      v14[1] = v7;
      v15 = *(v4 + 16);
      v8 = UnsafeLongestCommonSubsequence.indexedSubsequence(_:)(v14, a1);
      v10 = *v4;
      v9 = *(v4 + 8);
      v11 = *(v4 + 16);
      v12 = *(v4 + 24);
      v13 = *v6;
      *v4 = v8;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *v6 = 1;
      outlined consume of UnsafeLongestCommonSubsequence<[EventRef]>.Work?(v10, v9, v11, v12, v13);
      result = UnsafeLongestCommonSubsequence.count.getter(a1);
      v4 = *(v1 + *(a1 + 48));
      v6 = (v4 + 32);
      v5 = *(v4 + 32);
      if (v5 == 255)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t outlined copy of UnsafeLongestCommonSubsequence<A>.Work<A>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return v5;
}

uint64_t type metadata completion function for UnsafeLongestCommonSubsequence(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    type metadata accessor for UnsafeLongestCommonSubsequence.Work(255, result, a1[3], a1[4]);
    v4 = type metadata accessor for Optional();
    result = type metadata accessor for Unique(319, v4, v5, v6);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeLongestCommonSubsequence(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = v6 + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((v10 + (v9 & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = a2 - v7;
  v13 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v11);
      if (v17)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v17 = *(a1 + v11);
      if (v17)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    else
    {
      return *((v10 + ((a1 + v9) & ~v8)) & 0xFFFFFFFFFFFFFFF8) == 0;
    }
  }

  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = *(a1 + v11);
  if (!v17)
  {
    goto LABEL_28;
  }

LABEL_24:
  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v7 + (v13 | v19) + 1;
}

_BYTE *storeEnumTagSinglePayload for UnsafeLongestCommonSubsequence(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = v7 + v9;
  v11 = (v7 + v9) & ~v9;
  v12 = v7 + 7;
  v13 = ((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v17 = 0;
    v18 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v8;
    if (((v12 + v11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
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

    v18 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&result[v13] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v13] = 0;
      }

      else if (v17)
      {
        result[v13] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6)
      {
        v22 = *(v5 + 56);

        return v22();
      }

      else
      {
        v23 = ((v12 + (&result[v10] & ~v9)) & 0xFFFFFFFFFFFFFFF8);
        if (a2 == 1)
        {
          *v23 = 0;
        }

        else
        {
          *v23 = a2 - 2;
        }
      }

      return result;
    }
  }

  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = ~v8 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *&result[v13] = v19;
    }

    else
    {
      *&result[v13] = v19;
    }
  }

  else if (v17)
  {
    result[v13] = v19;
  }

  return result;
}

uint64_t type metadata instantiation function for UnsafeLongestCommonSubsequence.Work(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for UnsafeLongestCommonSubsequence.Work(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeLongestCommonSubsequence.Work(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t Clonable.init(copying:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a2 - 8);
  (*(v9 + 16))(a4, a1, a2);
  (*(a3 + 8))(a2, a3);
  v7 = *(v9 + 8);

  return v7(a1, a2);
}

uint64_t UnsafeArray.init(arrayLiteral:)(uint64_t a1, uint64_t a2)
{
  specialized UnsafeArray.init(arrayLiteral:)(a1, a2);
  v3 = v2;

  return v3;
}

void UnsafeArray.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32[1] = a2;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v36 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - v12;
  v14 = type metadata accessor for Optional();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v32 - v16;
  v18 = *(a3 - 8);
  MEMORY[0x28223BE20](v15);
  AssociatedConformanceWitness = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32[0] = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v37 = v32 - v20;
  v21 = dispatch thunk of Sequence.underestimatedCount.getter();
  v22 = *(v5 + 12);
  v23 = v22 + v21;
  if (__OFADD__(v22, v21))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = *(v5 + 8);
  if (v23 >= v24)
  {
    v25 = __OFADD__(v24, v21);
    v26 = v24 + v21;
    if (!v25)
    {
      if (v26 + 0x4000000000000000 >= 0)
      {
        UnsafeArray.growToCapacity(_:)(2 * v26);
        goto LABEL_6;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_6:
  (*(v18 + 16))(AssociatedConformanceWitness, a1, a3);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v33 = *(v9 + 48);
  v34 = v9 + 48;
  if (v33(v17, 1, v8) == 1)
  {
LABEL_13:
    (*(v32[0] + 8))(v37, AssociatedTypeWitness);
    return;
  }

  v27 = *(v9 + 32);
  v32[2] = v9 + 8;
  v32[3] = v9 + 16;
  v28 = v36;
  while (1)
  {
    v27(v13, v17, v8);
    v29 = *(v5 + 12);
    if (v29 == *(v5 + 8))
    {
      UnsafeArray.growToCapacity(_:)(2 * v29);
    }

    if (!*v5)
    {
      break;
    }

    v30 = *(v5 + 12);
    v31 = *v5 + *(v9 + 72) * v30;
    (*(v9 + 16))(v28, v13, v8);
    v27(v31, v28, v8);
    (*(v9 + 8))(v13, v8);
    if (v30 == -1)
    {
      __break(1u);
      goto LABEL_15;
    }

    *(v5 + 12) = v30 + 1;
    dispatch thunk of IteratorProtocol.next()();
    if (v33(v17, 1, v8) == 1)
    {
      goto LABEL_13;
    }
  }

LABEL_18:
  __break(1u);
}

Swift::Void __swiftcall UnsafeArray.deallocate()()
{
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v0 + 16);
    UnsafeMutablePointer.deinitialize(count:)();
    MEMORY[0x26D69D370](v2, v3);
    *v1 = 0;
  }
}

Swift::Void __swiftcall UnsafeArray.copy()()
{
  if (*v0)
  {
    *v0 = static UnsafeMutablePointer.allocate(capacity:)();

    UnsafeMutablePointer.initialize(from:count:)();
  }
}

void *protocol witness for Clonable.init(copying:) in conformance EventTreeStats@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[2];
  v4 = result[3];
  v5 = *(result + 8);
  v6 = *(result + 9);
  *a2 = *result;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 36) = v6;
  if (v4)
  {
    v7 = swift_slowAlloc();
    *(a2 + 24) = v7;

    return memcpy(v7, v4, 40 * v6);
  }

  return result;
}

void protocol witness for Clonable.init(copying:) in conformance DiffTreeStats(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = *(a1 + 112);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  DiffTreeStats.copy()();
}

uint64_t specialized Inspectable.description(depth:mode:context:)(uint64_t a1, char a2, uint64_t a3, unsigned int a4)
{
  v5 = a4;
  v9 = a4 >> 8;
  swift_beginAccess();
  outlined init with copy of Aggregate_AccessorProtocol(v4 + 16, v20);
  v10 = v21;
  v11 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v14[0] = a1;
  v14[1] = 1;
  v15 = a2;
  v16 = 0;
  v17 = a3;
  v18 = v5;
  v19 = v9;
  v12 = (*(*(v11 + 24) + 32))(v14, v10);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v12;
}

uint64_t specialized Inspectable.description(depth:mode:context:)(uint64_t a1, char a2, uint64_t a3, __int16 a4, uint64_t a5, os_unfair_lock_s *a6)
{
  v9[0] = a1;
  v9[1] = 1;
  v10 = a2;
  v11 = 0;
  v12 = a3;
  v13 = a4;
  os_unfair_lock_lock_with_options();
  closure #1 in CircularBuffer.describe(state:)(&a6[2], v9, &v8);
  os_unfair_lock_unlock(a6);
  return v8;
}

uint64_t Inspectable.description(depth:mode:context:)(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 4);
  v9[0] = a1;
  v9[1] = 1;
  v10 = v5;
  v11 = 0;
  v12 = v6;
  v13 = v7;
  return (*(a5 + 32))(v9, a4, a5);
}

void UnsafeArray.append<A>(ref:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a1;
  v24 = a5;
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v26 = *(v23 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v23 - v10;
  v12 = *(a2 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v9);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + 3);
  if (*(v5 + 2) == v16)
  {
    UnsafeArray.growToCapacity(_:)(2 * v16);
  }

  v27 = a3;
  v17 = *v5;
  if (*v5)
  {
    v18 = *(v5 + 3);
    v19 = v17 + *(v13 + 72) * v18;
    (*(v13 + 16))(v15, v28, v12);
    (*(v13 + 32))(v19, v15, v12);
    if (v18 == -1)
    {
      __break(1u);
    }

    else
    {
      *(v5 + 3) = v18 + 1;
      v20 = *(v5 + 2);
      v31 = v17;
      v32 = v20;
      v33 = v18 + 1;
      WitnessTable = swift_getWitnessTable();
      ArrayLike.lastIndex.getter(a2, WitnessTable);
      v29 = v30;
      v22 = v27;
      swift_getAssociatedConformanceWitness();
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(_:)();
      if (v26 == *(*(v22 - 8) + 64))
      {
        (*(*(v22 - 8) + 16))(v24, v11, v22);
        (*(v23 + 8))(v11, AssociatedTypeWitness);
        return;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void UnsafeArray.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 12);
  if (*(v2 + 8) == v8)
  {
    UnsafeArray.growToCapacity(_:)(2 * v8);
  }

  if (*v2)
  {
    v9 = *(v2 + 12);
    v10 = *v2 + *(v5 + 72) * v9;
    (*(v5 + 16))(v7, a1, v4);
    (*(v5 + 32))(v10, v7, v4);
    if (v9 != -1)
    {
      *(v2 + 12) = v9 + 1;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t UnsafeArray.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v29 = a5;
  v30 = a2;
  v28 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = swift_checkMetadataState();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  (*(a4 + 56))(a3, a4);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v31 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v14 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v15 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v14)
    {
      if (v15 > 64)
      {
LABEL_8:
        lazy protocol witness table accessor for type Int and conformance Int();
        v16 = v27;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v17 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v9 + 8))(v16, v8);
        if ((v17 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v19 = v27;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v20 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v9 + 8))(v19, v8);
      if (v20)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v15 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v21 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v21 & 1) == 0)
    {
      break;
    }

    if (v22 <= 64)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    v23 = v27;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v24 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v9 + 8))(v23, v8);
    if (v24)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v22 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v25 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v9 + 8))(v13, v8);
  return (*(*(v30 - 8) + 16))(v29, v28 + *(*(v30 - 8) + 72) * v25);
}

void (*UnsafeArray.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1)
{
  v10 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x28uLL);
  }

  v12 = v11;
  *a1 = v11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(v13);
  }

  v12[2] = v14;
  v15 = swift_checkMetadataState();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  if (v10)
  {
    v18 = swift_coroFrameAlloc();
    v12[3] = v18;
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v18 = malloc(*(*(v15 - 8) + 64));
    v12[3] = v18;
    v19 = malloc(v17);
  }

  v20 = v19;
  v12[4] = v19;
  (*(a7 + 56))(a6, a7);
  v21 = v16;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v12[1] = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    v22 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v23 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v22)
    {
      if (v23 > 64)
      {
LABEL_17:
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v24 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v21 + 8))(v18, v15);
        if ((v24 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_34:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v21 + 8))(v18, v15);
      if (v26)
      {
        goto LABEL_34;
      }

LABEL_22:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_23;
    }

    if (v23 < 64)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_28;
  }

  while (1)
  {
    *v12 = 0x7FFFFFFFFFFFFFFFLL;
    v27 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v28 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v27 & 1) == 0)
    {
      break;
    }

    if (v28 <= 64)
    {
      goto LABEL_32;
    }

LABEL_26:
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v29 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v21 + 8))(v18, v15);
    if (v29)
    {
      __break(1u);
LABEL_28:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_33;
  }

  if (v28 >= 64)
  {
    goto LABEL_26;
  }

LABEL_32:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_33:
  dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v21 + 8))(v20, v15);
  return UnsafeArray.subscript.modify;
}

void UnsafeArray.subscript.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 16);
  free(*(*a1 + 32));
  free(v2);
  free(v3);

  free(v1);
}

Swift::Void __swiftcall Strong.deallocate()()
{
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v0 + 16);
    UnsafeMutablePointer.deinitialize(count:)();
    MEMORY[0x26D69D370](v2, v3);
    *v1 = 0;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

Swift::Void __swiftcall Strong.copy()()
{
  v2 = *(v0 + 16);
  v3 = *(v2 - 8);
  (MEMORY[0x28223BE20])();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, *v1, v2);
  v6 = specialized Strong.init(_:)(v5, v2);
  (*(v3 + 8))(v5, v2);
  *v1 = v6;
}

uint64_t IterativeTreeTraversal.visit<A>(each:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v34 = a2;
  v10 = *(a3 + 16);
  v35 = *(a3 + 24);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v13 = v28 - v12;
  v36 = *(v10 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v28[0] = v15;
  v37 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  (*(v17 + 16))(v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  v18 = Sequence.reversed()();
  result = MEMORY[0x26D69D060](v18, v10);
  if (!result)
  {
  }

  v20 = *(v5 + 64);
  v30 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    v21 = 0;
    v31 = *(v5 + 80);
    v32 = (v36 + 16);
    v28[1] = v35 - 8;
    v29 = (v36 + 32);
    v22 = TupleTypeMetadata3;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        result = (*(v36 + 16))(v37, v18 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v21, v10);
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v28[0] != 8)
        {
          goto LABEL_18;
        }

        v38 = result;
        (*v32)(v37, &v38, v10);
        result = swift_unknownObjectRelease();
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_12:
          __break(1u);
LABEL_13:

          *(v7 + 80) = v6;
          return result;
        }
      }

      v6 = v31 + v21 + 1;
      if (__OFADD__(v31 + v21, 1))
      {
        break;
      }

      v25 = *(v22 + 48);
      v26 = v7;
      v27 = *(v22 + 64);
      (*v29)(v13, v37, v10);
      (*(*(v35 - 8) + 16))(&v13[v25], v34);
      *&v13[v27] = v30;
      v7 = v26;
      type metadata accessor for Array();
      Array.append(_:)();
      ++v21;
      if (v24 == MEMORY[0x26D69D060](v18, v10))
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void (**a6)(char *, uint64_t), uint64_t a7, uint64_t a8, void (**a9)(char *, char *, uint64_t), __int128 a10)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a10;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (), v16, a3, a4, a7, a8, a9, a5, a6, a10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t InspectionState.describe<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!__OFSUB__(*v6, 1))
  {
    return InspectionState.wrapDescription<A>(_:)(result, a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t InspectionState.describe<A>(value:)(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x28223BE20](a1);
  if (__OFSUB__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 16);
    v8 = *(v2 + 8);
    v12[0] = *v2 - 1;
    v12[1] = v8;
    v13 = v7;
    v14 = *(v2 + 24);
    v15 = v6;
    (*(v5 + 16))(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = String.init<A>(describing:)();
    v11 = specialized InspectionState.wrapDescription<A>(_:)(v9, v10);

    return v11;
  }

  return result;
}

uint64_t protocol witness for Clonable.init(copying:) in conformance UnsafeTree<A, B>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  v5 = a1[3];
  v7[0] = *a1;
  v7[1] = v4;
  v7[2] = a1[2];
  v7[3] = v5;
  v7[4] = a1[4];
  return Clonable.init(copying:)(v7, a2, a3, a4);
}

uint64_t ArrayLike.lastIndex.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v7 - v4;
  dispatch thunk of Collection.endIndex.getter();
  dispatch thunk of BidirectionalCollection.index(before:)();
  return (*(v3 + 8))(v5, AssociatedTypeWitness);
}

unint64_t UnsafeArray.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (result >= HIDWORD(a3))
  {
    __break(1u);
  }

  else if (a2)
  {
    return (*(*(a4 - 8) + 16))(a5, a2 + *(*(a4 - 8) + 72) * result, a4);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall UnsafeArray.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  if (!keepingCapacity)
  {
    UnsafeArray.deallocate()();
    *(v1 + 8) = 16;
    *v1 = static UnsafeMutablePointer.allocate(capacity:)();
    goto LABEL_6;
  }

  if (!*(v1 + 12))
  {
LABEL_6:
    *(v1 + 12) = 0;
    return;
  }

  if (*v1)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t (*Atomic.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v23 - 8);
  if (v7)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v23 - 8) + 64));
  }

  v12 = v11;
  v9[7] = v11;
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  if (v7)
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(*(*(v13 - 8) + 64));
  }

  v9[8] = v15;
  if ((*(a3 + 4) & 1) == 0)
  {
    v20 = v15;
    os_unfair_lock_lock_with_options();
    *(a3 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v22 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a3;
    v9[4] = partial apply for closure #1 in Atomic.subscript.read;
    v9[5] = v18;
    *v9 = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v9[3] = &block_descriptor_4;
    v21 = _Block_copy(v9);

    static DispatchQoS.unspecified.getter();
    v9[6] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v20, v12, v21);
    _Block_release(v21);

    (*(v10 + 8))(v12, v23);
    (*(v14 + 8))(v20, v13);
  }

  type metadata accessor for Atomic.Storage(0, a4, v16, v17);
  return Atomic.subscript.read;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance CauseEffect(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[1];
  v14 = *v3;
  v15 = v7;
  v16 = v3[2];
  v17 = *(v3 + 48);
  v9[0] = a1;
  v9[1] = 1;
  v10 = v4;
  v11 = 0;
  v12 = v5;
  v13 = v6;
  return specialized Aggregate<>.describe(ref:state:)(v14, v9);
}

void *protocol witness for Clonable.init(copying:) in conformance CauseEffect@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 28);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 44);
  v10 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  *(a2 + 28) = v5;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 44) = v9;
  *(a2 + 48) = v10;
  v11 = *v3;
  if (*v3)
  {
    v12 = *(v3 + 12);
    v13 = swift_slowAlloc();
    *v3 = v13;
    memcpy(v13, v11, 88 * v12);
  }

  v14 = *(v3 + 16);
  if (v14)
  {
    v15 = *(v3 + 28);
    v16 = swift_slowAlloc();
    *(v3 + 16) = v16;
    memcpy(v16, v14, v15 << 6);
  }

  *(v3 + 32) = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v17);
  if (v4)
  {
    v18 = swift_slowAlloc();
    *(a2 + 16) = v18;
    memcpy(v18, v4, 4 * v5);
  }

  if (v7)
  {
    v19 = swift_slowAlloc();
    *(a2 + 32) = v19;
    memcpy(v19, v7, 4 * v9);
  }

  result = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v20);
  *(v3 + 40) = result;
  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance UpdateStack(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void *))
{
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 4);
  v10 = v6[1];
  v17 = *v6;
  v18[0] = v10;
  *(v18 + 9) = *(v6 + 25);
  v12[0] = a1;
  v12[1] = 1;
  v13 = v7;
  v14 = 0;
  v15 = v8;
  v16 = v9;
  return a6(0, v12);
}

uint64_t protocol witness for Clonable.init(copying:) in conformance UpdateStack@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v4 = a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = a1[3];
  v12 = *(a1 + 8);
  v11 = *(a1 + 9);
  v13 = *(a1 + 40);
  *a4 = *a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = v8;
  *(a4 + 20) = v9;
  *(a4 + 24) = v10;
  *(a4 + 32) = v12;
  *(a4 + 36) = v11;
  *(a4 + 40) = v13;
  v14 = *v7;
  if (*v7)
  {
    v15 = v11;
    v17 = *(v7 + 12);
    v18 = swift_slowAlloc();
    *v7 = v18;
    v19 = 88 * v17;
    v4 = a3;
    v11 = v15;
    memcpy(v18, v14, v19);
  }

  v20 = *(v7 + 16);
  if (v20)
  {
    v21 = *(v7 + 28);
    v22 = swift_slowAlloc();
    *(v7 + 16) = v22;
    memcpy(v22, v20, v21 << 6);
  }

  *(v7 + 32) = a2(v23);
  if (v6)
  {
    v24 = swift_slowAlloc();
    *(a4 + 8) = v24;
    memcpy(v24, v6, 4 * v9);
  }

  if (v10)
  {
    v25 = swift_slowAlloc();
    *(a4 + 24) = v25;
    memcpy(v25, v10, 4 * v11);
  }

  result = v4(v26);
  *(v7 + 40) = result;
  return result;
}

uint64_t _s21SwiftUITracingSupport6UniqueVAARi_zrlE12wrappedValueACyxGx_tcfC(uint64_t a1, uint64_t a2)
{
  v4 = static UnsafeMutablePointer.allocate(capacity:)();
  (*(*(a2 - 8) + 32))(v4, a1, a2);
  return v4;
}

uint64_t Strong.init(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

void (*Atomic.subscript.modify(uint64_t a1, char a2, os_unfair_lock *lock, uint64_t a4))(uint64_t a1, char a2)
{
  *a1 = lock;
  *(a1 + 8) = a2;
  if (a2)
  {
    os_unfair_lock_lock_with_options();
  }

  else
  {
    os_unfair_lock_assert_owner(lock);
  }

  type metadata accessor for Atomic.Storage(0, a4, v5, v6);
  return Atomic.subscript.modify;
}

void Atomic.subscript.modify(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (*(a1 + 8))
    {
      os_unfair_lock_unlock(*a1);
    }
  }
}

Swift::Void __swiftcall Atomic.deallocate()()
{
  v4 = *v3;
  v5 = *(v0 + 16);
  v6 = type metadata accessor for Atomic.Storage(0, v5, v1, v2);
  if (v4)
  {
    v9 = v6;
    if (*(v4 + 5) == 1)
    {
      UnsafeMutablePointer.deinitialize(count:)();
    }

    type metadata accessor for Atomic.Params(0, v5, v7, v8);
    UnsafeMutablePointer.deinitialize(count:)();
    MEMORY[0x26D69D370](v4, v9);
    *v3 = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t _s21SwiftUITracingSupport6UniqueVAARi_zrlE10deallocateyyF(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = *(a1 + 16);
    UnsafeMutablePointer.deinitialize(count:)();
    result = MEMORY[0x26D69D370](v2, v3);
    *v1 = 0;
  }

  else
  {
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Attachment_Entry(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v12[0] = a1;
  v12[1] = 1;
  v13 = v4;
  v14 = 0;
  v15 = v5;
  v16 = v6;
  return Attachment_Entry.describe(state:)(v12, v7, v8, v9, v10);
}

uint64_t UnsafeArray.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return a2 + *(*(a4 - 8) + 72) * result;
  }

  __break(1u);
  return result;
}

uint64_t ArrayLike.has(index:)@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v17[-v7];
  dispatch thunk of Collection.indices.getter();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = Sequence<>.contains(_:)();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  if (v9)
  {
    v10 = dispatch thunk of Collection.subscript.read();
    v12 = v11;
    v13 = swift_getAssociatedTypeWitness();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a4, v12, v13);
    v10(v17, 0);
    return (*(v14 + 56))(a4, 0, 1, v13);
  }

  else
  {
    v16 = swift_getAssociatedTypeWitness();
    return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
  }
}

uint64_t ArrayLike.mutEach(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a1;
  v54 = a2;
  v44 = *(a4 + 8);
  v55 = *(v44 + 8);
  v46 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v56 = &v43 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v52 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v43 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v43 - v22;
  v24 = *(v5 + 56);
  v24(&v43 - v22, 1, 1, AssociatedTypeWitness);
  v51 = v21;
  v24(v21, 1, 1, AssociatedTypeWitness);
  v25 = v12;
  v49 = v13;
  v26 = *(v13 + 16);
  v47 = v23;
  v45 = v26;
  v26(v18, v23, v12);
  v27 = *(v5 + 48);
  v28 = v27(v18, 1, AssociatedTypeWitness);
  v50 = v12;
  if (v28 == 1)
  {
    dispatch thunk of Collection.startIndex.getter();
    v25 = v50;
    if (v27(v18, 1, AssociatedTypeWitness) != 1)
    {
      (*(v49 + 8))(v18, v25);
    }
  }

  else
  {
    (*(v5 + 32))(v11, v18, AssociatedTypeWitness);
  }

  v29 = v52;
  v45(v52, v51, v25);
  if (v27(v29, 1, AssociatedTypeWitness) == 1)
  {
    v30 = v56;
    dispatch thunk of Collection.endIndex.getter();
    v31 = v52;
    v32 = v27(v52, 1, AssociatedTypeWitness);
    v25 = v50;
    v33 = v30;
    if (v32 != 1)
    {
      (*(v49 + 8))(v31, v50);
    }
  }

  else
  {
    v33 = v56;
    (*(v5 + 32))(v56, v29, AssociatedTypeWitness);
  }

  v34 = *(swift_getAssociatedConformanceWitness() + 8);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v35 = *(v5 + 8);
    v35(v33, AssociatedTypeWitness);
  }

  else
  {
    v36 = (v5 + 8);
    v37 = (v5 + 32);
    v48 = v36 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v38 = v43;
    v52 = v34;
    do
    {
      v39 = dispatch thunk of MutableCollection.subscript.modify();
      v53(v40);
      v39(v57, 0);
      dispatch thunk of Collection.index(after:)();
      v35 = *v36;
      (*v36)(v11, AssociatedTypeWitness);
      (*v37)(v11, v38, AssociatedTypeWitness);
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    v25 = v50;
    v35(v56, AssociatedTypeWitness);
  }

  v35(v11, AssociatedTypeWitness);
  v41 = *(v49 + 8);
  v41(v51, v25);
  return (v41)(v47, v25);
}

void (*UnsafeArray.subscript.modify(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4))()
{
  if (a2 >= HIDWORD(a4))
  {
    __break(1u);
  }

  else if (a3)
  {
    return EventTreeStats.count.modify;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Clonable.init(copying:) in conformance EvolutionTable<A>@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  return Clonable.init(copying:)(v6, a2, a3, a4);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance IntervalSet(uint64_t result)
{
  if (!__OFSUB__(result, 1))
  {
    return specialized InspectionState.wrapDescription<A>(_:)(*v1);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Control.Events(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *(v3 + 8);
  v9[0] = a1;
  v9[1] = 1;
  v10 = v4;
  v11 = 0;
  v12 = v5;
  v13 = v6;
  return specialized Interpreter.Control.Events.describe(state:)(v9, v7);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Control()
{
  v1 = *(v0 + 40);
  MEMORY[0x26D69CDB0](0x6C6F72746E6F4328, 0xE900000000000020);
  if (v1)
  {
    v2 = 0x6C65636E6163;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v2, v3);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 0;
}

unint64_t UnsafeArray.init(capacity:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = 0;
  if (v4)
  {
    type metadata accessor for UnsafeArray(0, a2, a3, a4);
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  return result;
}

uint64_t Atomic.initialized.getter(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  v2 = *(a1 + 5);
  os_unfair_lock_unlock(a1);
  return v2;
}

void (*Atomic.subscript.read(uint64_t a1, char a2, os_unfair_lock *lock, uint64_t a4))(uint64_t a1, char a2)
{
  *a1 = lock;
  *(a1 + 8) = a2;
  if (a2)
  {
    os_unfair_lock_lock_with_options();
  }

  else
  {
    os_unfair_lock_assert_owner(lock);
  }

  type metadata accessor for Atomic.Storage(0, a4, v5, v6);
  return Atomic.subscript.read;
}

uint64_t Collection<>.binarySearchFirstBefore(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v163 = a1;
  v138 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v133 = type metadata accessor for Optional();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v142 = (&v132 - v9);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v159 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  v137 = *(*(v11 + 24) + 16);
  v136 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v136);
  v135 = &v132 - v12;
  v13 = swift_checkMetadataState();
  v161 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v166 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v144 = &v132 - v16;
  v156 = swift_checkMetadataState();
  v162 = *(v156 - 8);
  v17 = MEMORY[0x28223BE20](v156);
  v153 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v145 = &v132 - v20;
  v139 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v155 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v160 = &v132 - v24;
  MEMORY[0x28223BE20](v23);
  v147 = &v132 - v25;
  v26 = swift_checkMetadataState();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v171 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v152 = &v132 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v143 = &v132 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v150 = &v132 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v132 - v36;
  v164 = a2;
  v165 = a3;
  if (!dispatch thunk of Collection.count.getter())
  {
    v39 = *(v139 + 56);
    v40 = v138;

    return v39(v40, 1, 1, AssociatedTypeWitness);
  }

  v158 = AssociatedTypeWitness;
  v38 = *(AssociatedConformanceWitness + 56);
  v169 = v13;
  v154 = AssociatedConformanceWitness;
  v167 = v38;
  v168 = AssociatedConformanceWitness + 56;
  v38(v13, AssociatedConformanceWitness);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v172 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    v42 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v43 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v42)
    {
      if (v43 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v46 = v150;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v47 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v27 + 8))(v46, v26);
        if (v47)
        {
          goto LABEL_114;
        }

        goto LABEL_17;
      }

LABEL_12:
      lazy protocol witness table accessor for type Int and conformance Int();
      v44 = v150;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v45 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v27 + 8))(v44, v26);
      if (v45)
      {
        goto LABEL_114;
      }

      goto LABEL_18;
    }

    if (v43 < 64)
    {
LABEL_17:
      dispatch thunk of BinaryInteger._lowWord.getter();
    }
  }

LABEL_18:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v172 = 0x7FFFFFFFFFFFFFFFLL;
    v48 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v49 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v48 & 1) == 0)
    {
      break;
    }

    if (v49 <= 64)
    {
      goto LABEL_27;
    }

LABEL_21:
    lazy protocol witness table accessor for type Int and conformance Int();
    v50 = v150;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v51 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v27 + 8))(v50, v26);
    if (v51)
    {
      __break(1u);
LABEL_23:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_28;
  }

  if (v49 >= 64)
  {
    goto LABEL_21;
  }

LABEL_27:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_28:
  v134 = dispatch thunk of BinaryInteger._lowWord.getter();
  v157 = *(v27 + 8);
  v170 = v27 + 8;
  v157(v37, v26);
  v52 = v160;
  dispatch thunk of Collection.endIndex.getter();
  v53 = v147;
  dispatch thunk of Collection.index(_:offsetBy:)();
  v54 = (v139 + 8);
  v55 = *(v139 + 8);
  v55(v52, v158);
  v151 = v55;
  v56 = dispatch thunk of Collection.subscript.read();
  v57 = v162;
  v58 = *(v162 + 16);
  v59 = v145;
  v60 = v156;
  v149 = v162 + 16;
  v148 = v58;
  v58(v145);
  v56(&v172, 0);
  v61 = v53;
  v62 = v158;
  v55(v61, v158);
  v63 = *(v159 + 24);
  v64 = v144;
  v147 = (v159 + 24);
  v146 = v63;
  (v63)(v60);
  v65 = *(v57 + 8);
  v162 = v57 + 8;
  v145 = v65;
  (v65)(v59, v60);
  v66 = v143;
  v167(v169, v154);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v172 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
      {
        lazy protocol witness table accessor for type Int and conformance Int();
        v67 = v150;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v68 = dispatch thunk of static Comparable.< infix(_:_:)();
        v69 = v67;
        v64 = v144;
        result = (v157)(v69, v26);
        if (v68)
        {
          goto LABEL_115;
        }

        goto LABEL_42;
      }

LABEL_41:
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

    else
    {
      v70 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v71 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v70)
      {
        if (v71 > 64)
        {
          lazy protocol witness table accessor for type Int and conformance Int();
          v72 = v150;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v73 = dispatch thunk of static Comparable.< infix(_:_:)();
          result = (v157)(v72, v26);
          v64 = v144;
          if (v73)
          {
            goto LABEL_115;
          }

          goto LABEL_42;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v74 = v150;
        v66 = v143;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v75 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (v157)(v74, v26);
        v64 = v144;
        if (v75)
        {
          goto LABEL_115;
        }

        goto LABEL_41;
      }

      if (v71 < 64)
      {
        goto LABEL_41;
      }
    }
  }

LABEL_42:
  v76 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v77 = v163;
  if (v76 <= 64)
  {
    goto LABEL_47;
  }

  while (2)
  {
    v172 = 0x7FFFFFFFFFFFFFFFLL;
    v78 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v79 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v78)
    {
      if (v79 <= 64)
      {
        break;
      }

      goto LABEL_45;
    }

    if (v79 >= 64)
    {
LABEL_45:
      lazy protocol witness table accessor for type Int and conformance Int();
      v80 = v150;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v81 = dispatch thunk of static Comparable.< infix(_:_:)();
      v82 = v80;
      v64 = v144;
      v157(v82, v26);
      if ((v81 & 1) == 0)
      {
        goto LABEL_52;
      }

      __break(1u);
LABEL_47:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_52;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_52:
  v83 = dispatch thunk of BinaryInteger._lowWord.getter();
  v157(v66, v26);
  v84 = *(v161 + 8);
  v161 += 8;
  v144 = v84;
  (v84)(v64, v169);
  if (v83 < v134)
  {
    v85 = v160;
    dispatch thunk of Collection.endIndex.getter();
    v86 = v138;
    dispatch thunk of Collection.index(_:offsetBy:)();
    v151(v85, v62);
    return (*(v139 + 56))(v86, 0, 1, v62);
  }

  v143 = v54;
  v87 = v142;
  Collection<>.binarySearch(for:)(v77, v164, v165, v159, v142);
  v88 = *(v139 + 48);
  v89 = v88(v87, 1, v62);
  v141 = v26;
  if (v89 == 1)
  {
    v90 = v160;
    dispatch thunk of Collection.endIndex.getter();
    dispatch thunk of Collection.index(_:offsetBy:)();
    v151(v90, v62);
    v26 = v141;
    if (v88(v87, 1, v62) != 1)
    {
      (*(v132 + 8))(v87, v133);
    }
  }

  else
  {
    (*(v139 + 32))();
  }

  v142 = (v139 + 32);
  v140 = v11;
  while (2)
  {
    v91 = dispatch thunk of Collection.subscript.read();
    v92 = v153;
    v93 = v156;
    v148(v153);
    v91(&v172, 0);
    v146(v93, v159);
    (v145)(v92, v93);
    v94 = v152;
    v95 = v154;
    v167(v169, v154);
    v96 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v97 = v157;
    if ((v96 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      v172 = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
        {
          goto LABEL_71;
        }

LABEL_66:
        lazy protocol witness table accessor for type Int and conformance Int();
        v100 = v150;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v101 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = v97(v100, v26);
        if (v101)
        {
          goto LABEL_112;
        }
      }

      else
      {
        v98 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v99 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v98)
        {
          if (v99 > 64)
          {
            goto LABEL_66;
          }

          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v102 = v150;
          v97 = v157;
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v103 = dispatch thunk of static Comparable.< infix(_:_:)();
          result = v97(v102, v26);
          if (v103)
          {
            goto LABEL_112;
          }

LABEL_71:
          dispatch thunk of BinaryInteger._lowWord.getter();
        }

        else if (v99 < 64)
        {
          goto LABEL_71;
        }
      }
    }

    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
    {
LABEL_82:
      v108 = dispatch thunk of BinaryInteger._lowWord.getter();
      v97(v94, v26);
      v109 = v169;
      (v144)(v166, v169);
      v167(v109, v95);
      v110 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v111 = v160;
      if ((v110 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
      {
        v172 = 0x8000000000000000;
        if (dispatch thunk of static BinaryInteger.isSigned.getter())
        {
          if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
          {
            goto LABEL_94;
          }

LABEL_89:
          lazy protocol witness table accessor for type Int and conformance Int();
          v114 = v150;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v115 = dispatch thunk of static Comparable.< infix(_:_:)();
          result = v97(v114, v26);
          if (v115)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v112 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v113 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v112)
          {
            if (v113 > 64)
            {
              goto LABEL_89;
            }

            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v116 = v150;
            v97 = v157;
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v117 = dispatch thunk of static Comparable.< infix(_:_:)();
            result = v97(v116, v26);
            if (v117)
            {
              goto LABEL_113;
            }

LABEL_94:
            dispatch thunk of BinaryInteger._lowWord.getter();
          }

          else if (v113 < 64)
          {
            goto LABEL_94;
          }
        }
      }

      if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
      {
LABEL_105:
        v122 = v171;
        v123 = dispatch thunk of BinaryInteger._lowWord.getter();
        v97(v122, v26);
        if (v123 >= v108)
        {
          v128 = v138;
          v124 = v158;
          (*(v139 + 32))(v138, v155, v158);
          v129 = *(v139 + 56);
          v130 = v128;
          v131 = 0;
          return v129(v130, v131, 1, v124);
        }

        dispatch thunk of Collection.startIndex.getter();
        v124 = v158;
        swift_getAssociatedConformanceWitness();
        v125 = v155;
        v126 = dispatch thunk of static Equatable.== infix(_:_:)();
        v127 = v151;
        v151(v111, v124);
        if (v126)
        {
          v127(v125, v124);
          v129 = *(v139 + 56);
          v130 = v138;
          v131 = 1;
          return v129(v130, v131, 1, v124);
        }

        dispatch thunk of Collection.index(_:offsetBy:)();
        v127(v125, v124);
        (*v142)(v125, v111, v124);
        v26 = v141;
        continue;
      }

      v172 = 0x7FFFFFFFFFFFFFFFLL;
      v118 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v119 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v118)
      {
        if (v119 > 64)
        {
          goto LABEL_98;
        }
      }

      else if (v119 >= 64)
      {
LABEL_98:
        lazy protocol witness table accessor for type Int and conformance Int();
        v120 = v150;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v121 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = v97(v120, v26);
        if (v121)
        {
          goto LABEL_111;
        }

        goto LABEL_105;
      }

      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_105;
    }

    break;
  }

  v172 = 0x7FFFFFFFFFFFFFFFLL;
  v104 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v105 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v104)
  {
    if (v105 > 64)
    {
      goto LABEL_75;
    }

LABEL_81:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_82;
  }

  if (v105 < 64)
  {
    goto LABEL_81;
  }

LABEL_75:
  lazy protocol witness table accessor for type Int and conformance Int();
  v106 = v150;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v107 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = v97(v106, v26);
  if ((v107 & 1) == 0)
  {
    goto LABEL_82;
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
  return result;
}

uint64_t (*Atomic.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v23 - 8);
  if (v7)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v23 - 8) + 64));
  }

  v12 = v11;
  v9[7] = v11;
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  if (v7)
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(*(*(v13 - 8) + 64));
  }

  v9[8] = v15;
  if ((*(a3 + 4) & 1) == 0)
  {
    v20 = v15;
    os_unfair_lock_lock_with_options();
    *(a3 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v22 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a3;
    v9[4] = partial apply for closure #1 in Atomic.subscript.modify;
    v9[5] = v18;
    *v9 = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v9[3] = &block_descriptor_8;
    v21 = _Block_copy(v9);

    static DispatchQoS.unspecified.getter();
    v9[6] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D69D2D0](0, v20, v12, v21);
    _Block_release(v21);

    (*(v10 + 8))(v12, v23);
    (*(v14 + 8))(v20, v13);
  }

  type metadata accessor for Atomic.Storage(0, a4, v16, v17);
  return Interpreter.Storage.subscript.read;
}

uint64_t Inspectable_Context.init(_:_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 9) = 1;
  return result;
}

uint64_t Inspectable.printDescription(depth:mode:context:)(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *(a3 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26C328DC0;
  v17 = v8;
  v15 = v9;
  v16 = v10;
  v12 = (*(a5 + 8))(a1, &v17, &v15, a4, a5);
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  print(_:separator:terminator:)();
}

uint64_t IterativeTreeTraversal.visit(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  result = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v11 = &v19 - v10;
  v12 = *(v3 + 80);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 80) = v14;
    v15 = *(v3 + 64);
    v16 = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      v17 = *(TupleTypeMetadata3 + 48);
      v18 = *(TupleTypeMetadata3 + 64);
      (*(*(v7 - 8) + 16))(v11, a1, v7);
      (*(*(v6 - 8) + 16))(&v11[v17], a2, v6);
      *&v11[v18] = v16;
      type metadata accessor for Array();
      return Array.append(_:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interval(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 4);
  v10 = *v6;
  v11 = v6[1];
  v13[0] = a1;
  v13[1] = 1;
  v14 = v7;
  v15 = 0;
  v16 = v8;
  v17 = v9;
  return (a6)(v13, v10, v11, a4, a5);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Context(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[11];
  v29 = v3[10];
  v30[0] = v7;
  *(v30 + 9) = *(v3 + 185);
  v8 = v3[7];
  v25 = v3[6];
  v26 = v8;
  v9 = v3[9];
  v27 = v3[8];
  v28 = v9;
  v10 = v3[3];
  v21 = v3[2];
  v22 = v10;
  v11 = v3[5];
  v23 = v3[4];
  v24 = v11;
  v12 = v3[1];
  v19 = *v3;
  v20 = v12;
  v14[0] = a1;
  v14[1] = 1;
  v15 = v4;
  v16 = 0;
  v17 = v5;
  v18 = v6;
  return Interpreter.Context.describe(state:)(v14);
}

uint64_t Array.mutLast(_:)(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x26D69D030](*v3, v6);
  if (result)
  {
    result = MEMORY[0x26D69D030](v5, v6);
    v8 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      Array._makeMutableAndUnique()();
      v9 = *v3;
      Array._checkSubscript_mutating(_:)(v8);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v11 = v9 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v11 = v9;
      }

      return a1(v11 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v8);
    }
  }

  return result;
}

_DWORD *Atomic.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Atomic.Storage(0, a1, a3, a4);
  v5 = static UnsafeMutablePointer.allocate(capacity:)();
  *v5 = 0;
  v10 = 0;
  v8 = type metadata accessor for Atomic.Params(0, a1, v6, v7);
  (*(*(v8 - 8) + 32))(v5 + 1, &v10, v8);
  return v5;
}

void Atomic.initialize(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  os_unfair_lock_assert_owner(*v2);
  if ((v8[1]._os_unfair_lock_opaque & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(type metadata accessor for Atomic.Storage(0, v4, v9, v10) + 32);
    (*(v5 + 16))(v7, a1, v4);
    (*(v5 + 32))(v8 + v11, v7, v4);
    BYTE1(v8[1]._os_unfair_lock_opaque) = 1;
  }
}

Swift::Void __swiftcall Atomic.deinitialize()()
{
  v2 = *v1;
  v3 = *(v0 + 16);
  os_unfair_lock_assert_owner(v2);
  if (*(v2 + 5) == 1)
  {
    type metadata accessor for Atomic.Storage(0, v3, v4, v5);
    UnsafeMutablePointer.deinitialize(count:)();
    *(v2 + 5) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t InspectionState.describe<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x26D69CDB0](a1, a2);
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v8 = InspectionState.wrapDescription<A>(_:)(a3, a4, a5);
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v9 = 40;
  if (String.count.getter() >= 51)
  {
    MEMORY[0x26D69CDB0](40, 0xE100000000000000);

    return 2105354;
  }

  return v9;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Request()
{
  if (*(v0 + 8))
  {
    v1 = 0x73656469766F7270;
    v2 = 0xE800000000000000;
  }

  else
  {
    v1 = 0x736465656ELL;
    v2 = 0xE500000000000000;
  }

  return specialized InspectionState.describe<A>(_:_:)(v1, v2, *v0);
}

BOOL Dictionary.isDisjoint<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a2;
  v37 = a6;
  v39 = a4;
  v41 = a1;
  v35 = type metadata accessor for Optional();
  v33 = *(v35 - 8);
  v9 = MEMORY[0x28223BE20](v35);
  v11 = &v32 - v10;
  v34 = *(a3 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32 - v16;
  v18 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v23 = &v32 - v22;
  (*(v18 + 16))(v20, v41, a5);
  v40 = v23;
  dispatch thunk of Sequence.makeIterator()();
  v24 = v34;
  v25 = (v34 + 32);
  v41 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = (v24 + 48);
  v27 = (v24 + 8);
  v34 = v39 - 8;
  v28 = (v33 + 8);
  do
  {
    dispatch thunk of IteratorProtocol.next()();
    v29 = (*v26)(v17, 1, a3);
    if (v29 == 1)
    {
      break;
    }

    (*v25)(v13, v17, a3);
    v30 = v39;
    MEMORY[0x26D69CA60](v13, v36, a3, v39, v37);
    (*v27)(v13, a3);
    LODWORD(v30) = (*(*(v30 - 8) + 48))(v11, 1, v30);
    (*v28)(v11, v35);
  }

  while (v30 == 1);
  (*(v32 + 8))(v40, v41);
  return v29 == 1;
}

uint64_t IterativePair.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for IterativePair(0, a3, a4, v9);
  v11 = *(*(a4 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a2, a4);
}

uint64_t Array.lastIndex.getter(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x26D69D060]() < 1)
  {
    goto LABEL_5;
  }

  v4 = MEMORY[0x26D69D060](a1, a2);
  v5 = __OFSUB__(v4, 1);
  result = v4 - 1;
  if (v5)
  {
    __break(1u);
LABEL_5:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static Pair<>.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v37 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v35 = AssociatedTypeWitness;
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30 = &v30 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v21 = *(a4 + 24);
  v32 = a1;
  v21(a3, a4);
  v33 = a2;
  v21(a3, a4);
  LOBYTE(a1) = dispatch thunk of static Comparable.< infix(_:_:)();
  v22 = *(v15 + 8);
  v22(v18, v14);
  v22(v20, v14);
  if (a1)
  {
    v23 = *(a4 + 48);
    v24 = v30;
    v23(a3, a4);
    v25 = v31;
    v23(a3, a4);
    v26 = v35;
    v27 = dispatch thunk of static Comparable.< infix(_:_:)();
    v28 = *(v34 + 8);
    v28(v25, v26);
    v28(v24, v26);
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t UnsafeArray<A>.copy()(uint64_t result, uint64_t a2)
{
  if (*v2)
  {
    v4 = *(result + 16);
    v5 = result;
    *v2 = static UnsafeMutablePointer.allocate(capacity:)();
    v6 = UnsafeMutablePointer.initialize(from:count:)();
    MEMORY[0x28223BE20](v6);
    v8[2] = v4;
    v8[3] = a2;
    WitnessTable = swift_getWitnessTable();
    return ArrayLike.mutEach(_:)(partial apply for closure #1 in UnsafeArray<A>.copy(), v8, v5, WitnessTable);
  }

  return result;
}

uint64_t UnsafeArray.removeAll(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](a1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v8;
  v9 = *(v8 + 12);
  if (v9)
  {
    v10 = 0;
    v18 = 0;
    v19 = v4;
    v16[0] = v4 + 8;
    v16[1] = v4 + 16;
    while (*v20)
    {
      (*(v4 + 16))(v7, *v20 + *(v4 + 72) * v10, v3);
      v11 = v17(v7);
      result = (*(v4 + 8))(v7, v3);
      if ((v11 & 1) == 0)
      {
        v12 = v18;
        result = UnsafeMutablePointer.moveInitialize(from:count:)();
        v18 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_9:
          v13 = v18;
          if (v18 > v9)
          {
            __break(1u);
            goto LABEL_20;
          }

          if (v18 == v9)
          {
            goto LABEL_16;
          }

          v14 = v18;
          while (*v20)
          {
            v15 = v14 + 1;
            result = UnsafeMutablePointer.deinitialize(count:)();
            v14 = v15;
            if (v9 == v15)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_23;
        }
      }

      if (v9 == ++v10)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v13 = 0;
LABEL_16:
    if ((v13 & 0x8000000000000000) != 0)
    {
LABEL_20:
      __break(1u);
    }

    else if (!HIDWORD(v13))
    {
      *(v20 + 12) = v13;
      return result;
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t Array.mutEach(_:)(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x26D69D030](*v3, v6);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (result)
    {
      v9 = 0;
      do
      {
        v10 = v9 + 1;
        Array._makeMutableAndUnique()();
        v11 = *v4;
        Array._checkSubscript_mutating(_:)(v9);
        if (_swift_isClassOrObjCExistentialType())
        {
          v12 = v11 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          v12 = v11;
        }

        result = a1(v12 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v9++);
      }

      while (v8 != v10);
    }
  }

  return result;
}

void protocol witness for Clonable.init(copying:) in conformance Snapshot(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  Snapshot.copy()();
  *a2 = v3;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance TreeRef(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t))
{
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 4);
  v10 = *v6;
  v12[0] = a1;
  v12[1] = 1;
  v13 = v7;
  v14 = 0;
  v15 = v8;
  v16 = v9;
  return a6(v12, v10);
}

uint64_t JustIterator.init(_:onlyIf:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = *(a3 - 8);
  v11 = *(v12 + 56);
  v11(a4, 1, 1, a3);
  if (a2)
  {
    v8 = type metadata accessor for Optional();
    (*(*(v8 - 8) + 8))(a4, v8);
    (*(v12 + 32))(a4, a1, a3);

    return (v11)(a4, 0, 1, a3);
  }

  else
  {
    v10 = *(v12 + 8);

    return v10(a1, a3);
  }
}

uint64_t ConcatIterator.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ConcatIterator(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t UnsafeArray.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized UnsafeArray.init<A>(_:)(a1, a2, a3, a4);
  v7 = v6;
  (*(*(a3 - 8) + 8))(a1, a3);
  return v7;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Tree(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[11];
  v29 = v3[10];
  v30 = v7;
  v31 = v3[12];
  v8 = v3[7];
  v25 = v3[6];
  v26 = v8;
  v9 = v3[9];
  v27 = v3[8];
  v28 = v9;
  v10 = v3[3];
  v21 = v3[2];
  v22 = v10;
  v11 = v3[5];
  v23 = v3[4];
  v24 = v11;
  v12 = v3[1];
  v19 = *v3;
  v20 = v12;
  v14[0] = a1;
  v14[1] = 1;
  v15 = v4;
  v16 = 0;
  v17 = v5;
  v18 = v6;
  return Tree.describe(state:)(v14);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance TreeValue(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[6];
  v8 = *(v3 + 28);
  v15 = *v3;
  v16 = *(v3 + 2);
  v17 = v7;
  v18 = v8;
  v19 = *(v3 + 4);
  v10[0] = a1;
  v10[1] = 1;
  v11 = v4;
  v12 = 0;
  v13 = v5;
  v14 = v6;
  return TreeValue.describe(state:)(v10);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Subforest2(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[1];
  v15 = *v3;
  v16[0] = v7;
  *(v16 + 9) = *(v3 + 25);
  v10[0] = a1;
  v10[1] = 1;
  v11 = v4;
  v12 = 0;
  v13 = v5;
  v14 = v6;
  strcpy(v9, "(subforest \n");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  desc #1 (for:offset:into:) in Subforest2.describe(state:)(0, 256, 0, v9, v10, &v15);
  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return v9[0];
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance GraphContext(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[3];
  v17 = v3[2];
  v18 = v7;
  v19 = v3[4];
  v8 = v3[1];
  v15 = *v3;
  v16 = v8;
  *&v10 = a1;
  *(&v10 + 1) = 1;
  v11 = v4;
  v12 = 0;
  v13 = v5;
  v14 = v6;
  return GraphContext.describe(state:)(&v10);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Subgraph(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[9];
  v26 = v3[8];
  v27 = v7;
  v28 = *(v3 + 20);
  v8 = v3[5];
  v22 = v3[4];
  v23 = v8;
  v9 = v3[7];
  v24 = v3[6];
  v25 = v9;
  v10 = v3[1];
  v18 = *v3;
  v19 = v10;
  v11 = v3[3];
  v20 = v3[2];
  v21 = v11;
  *&v13 = a1;
  *(&v13 + 1) = 1;
  v14 = v4;
  v15 = 0;
  v16 = v5;
  v17 = v6;
  return Subgraph.describe(state:)(&v13);
}

__n128 protocol witness for Clonable.init(copying:) in conformance Subgraph@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v2;
  *(a2 + 160) = *(a1 + 160);
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  v4 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v4;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  v6 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v6;
  Subgraph.copy()();
  return result;
}

unsigned int *protocol witness for Clonable.init(copying:) in conformance Attribute.Value@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = result[2];
  v5 = *(result + 12);
  v6 = *(result + 2);
  v7 = result[6];
  v8 = *(result + 7);
  if (v6)
  {
    v10 = *(result + 7);
    v9 = swift_slowAlloc();
    result = memcpy(v9, v6, 40 * v10);
    v8 = v10;
  }

  else
  {
    v9 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  *(a2 + 16) = v9;
  *(a2 + 24) = v7;
  *(a2 + 28) = v8;
  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Attribute.AttributeType(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v9[0] = a1;
  v9[1] = 1;
  v10 = v4;
  v11 = 0;
  v12 = v5;
  v13 = v6;
  return Attribute.AttributeType.describe(state:)(v9, v7);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Attribute(uint64_t a1, char *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *(a3 + 4);
  memcpy(__dst, v3, sizeof(__dst));
  *&v9 = a1;
  *(&v9 + 1) = 1;
  v10 = v5;
  v11 = 0;
  v12 = v6;
  v13 = v7;
  return Attribute.describe(state:)(&v9);
}

Swift::Void __swiftcall UnsafeArray.removeLast()()
{
  if (*v1)
  {
    v2 = v0;
    v3 = *(v1 + 12);
    WitnessTable = swift_getWitnessTable();
    ArrayLike.lastIndex.getter(v2, WitnessTable);
    UnsafeMutablePointer.deinitialize(count:)();
    if (v3)
    {
      *(v1 + 12) = v3 - 1;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t HeterogeneousBuffer.index(after:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 <= HIDWORD(result))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  v6 = HeterogeneousBuffer.type(at:)(result, a2, a3, a4 & 1, a5);
  v7 = *(v6 - 8);
  result = v6 - 8;
  v8 = *(v7 + 72);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v9 = __OFADD__(v8, 8);
  v10 = v8 + 8;
  if (v9)
  {
    goto LABEL_10;
  }

  v9 = __OFADD__(v10, v5);
  v11 = v10 + v5;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v11 > 0xFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    return (v5 & 0xFFFFFFFF00000000 | v11) + 0x100000000;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *protocol witness for Inspectable.description(depth:mode:context:) in conformance Event.Relative(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v8 = *(v3 + 1);
  v10[0] = a1;
  v10[1] = 1;
  v11 = v4;
  v12 = 0;
  v13 = v5;
  v14 = v6;
  return Event.Relative.describe(state:)(v10, v7 | (v8 << 32));
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Event.Relationship(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v9[0] = a1;
  v9[1] = 1;
  v10 = v4;
  v11 = 0;
  v12 = v5;
  v13 = v6;
  return Event.Relationship.describe(state:)(v9, v7);
}

double protocol witness for Clonable.init(copying:) in conformance Event.Abstract@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

uint64_t protocol witness for Clonable.init(copying:) in conformance Event.Prefetch@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 9) = v3;
  return result;
}

__n128 protocol witness for Clonable.init(copying:) in conformance Event.Update@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void protocol witness for Clonable.init(copying:) in conformance Event.AttributeValue(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  v4 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v4;
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 52) = *(a1 + 52);
  if (v4)
  {
    v10[0] = *v4;
    v5 = v4[1];
    v6 = v4[2];
    v7 = v4[3];
    *&v11[12] = *(v4 + 60);
    v10[2] = v6;
    *v11 = v7;
    v10[1] = v5;
    outlined init with copy of Event.AttributeValue.ChangedField(v10, &v9);
    _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5EventV14AttributeValueV12ChangedFieldV_Tt0B5(v10);
    *(a2 + 40) = v8;
  }
}

double protocol witness for Clonable.init(copying:) in conformance Event.Observable@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 protocol witness for Clonable.init(copying:) in conformance Event.Transaction@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

double protocol witness for Clonable.init(copying:) in conformance Event.Animation@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = result;
  return result;
}

double protocol witness for Clonable.init(copying:) in conformance Event.RenderTick@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = result;
  return result;
}

double protocol witness for Clonable.init(copying:) in conformance Event.DynamicProperties@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t protocol witness for Clonable.init(copying:) in conformance Event.GraphRootValueUpdate@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

unint64_t HeterogeneousBuffer.type(at:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  v5 = a5;
  if (a5 <= HIDWORD(result))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  if (a2)
  {
    if (a3 - a2 >= result)
    {
      return *(a2 + result);
    }

    goto LABEL_7;
  }

LABEL_9:
  if (!v5)
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t HeterogeneousBuffer.valuePointer<A>(for:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6)
{
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (a5 <= HIDWORD(a1) || result != a6)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a2)
  {
    return a2 + a1 + 8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t HeterogeneousBuffer.insert<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 82))
  {
    *(v2 + 17) = 0;
  }

  v8 = *(v2 + 16);
  v39 = v7;
  v40 = v5;
  if (v8 == 1)
  {
    v9 = *(v4 + 72);
    v10 = 8;
    if (v9 > 8)
    {
      v10 = *(v4 + 72);
    }

    v11 = v10 + 8;
    v12 = __OFADD__(v10, 8);
  }

  else
  {
    v13 = *v2;
    v14 = *(v2 + 8);
    v15 = *(v2 + 20);
    v16 = v14 - *v2;
    if (!*v2)
    {
      v16 = 0;
    }

    v17 = v16 - v15;
    if (__OFSUB__(v16, v15))
    {
      goto LABEL_56;
    }

    v9 = *(v4 + 72);
    v18 = 8;
    if (v9 > 8)
    {
      v18 = *(v4 + 72);
    }

    v19 = __OFADD__(v18, 8);
    v11 = v18 + 8;
    v12 = __OFADD__(v18, 8);
    if (v19)
    {
      goto LABEL_57;
    }

    if (v17 >= v11)
    {
      v20 = 0;
LABEL_22:
      v21 = *(v2 + 24);
      LOBYTE(v42) = v20;
      v22 = HeterogeneousBuffer.find<A>(_:)(a2, v13, v14, v20, v21);
      if (v15 != v22 || v21 != HIDWORD(v22))
      {
        goto LABEL_60;
      }

      if (v20)
      {
        goto LABEL_58;
      }

      v24 = v14 - v13;
      if (v13)
      {
        v25 = v14 - v13;
      }

      else
      {
        v25 = 0;
      }

      if (v25 < v15)
      {
        __break(1u);
      }

      else
      {
        MetatypeMetadata = swift_getMetatypeMetadata();
        v27 = MetatypeMetadata;
        if (v13)
        {
          v28 = v13 + v25;
        }

        else
        {
          v28 = 0;
        }

        if (v13)
        {
          v29 = v13 + v15;
        }

        else
        {
          v29 = 0;
        }

        v30 = _sSw19assumingMemoryBound2toSryxGxm_tRi_zlF(MetatypeMetadata, v29, v28, MetatypeMetadata);
        v42 = a2;
        (*(*(v27 - 8) + 32))(v30, &v42, v27);
        if (!v13)
        {
          goto LABEL_59;
        }

        if (v24 >= v15 + 8)
        {
          v31 = _sSw19assumingMemoryBound2toSryxGxm_tRi_zlF(a2, v13 + v15 + 8, v13 + v24, a2);
          v32 = v39;
          (*(v4 + 16))(v39, v40, a2);
          result = (*(v4 + 32))(v31, v32, a2);
          v34 = 8;
          if (v9 > 8)
          {
            v34 = v9;
          }

          v19 = __OFADD__(v34, 8);
          v35 = v34 + 8;
          if (!v19)
          {
            v19 = __OFADD__(v15, v35);
            v36 = v15 + v35;
            if (!v19)
            {
              if (v36 <= 0xFFFFFFFFLL)
              {
                if ((v36 & 0x8000000000000000) == 0)
                {
                  if (v21 != -1)
                  {
                    *(v2 + 20) = v36;
                    *(v2 + 24) = v21 + 1;
                    return result;
                  }

                  goto LABEL_54;
                }

LABEL_53:
                __break(1u);
LABEL_54:
                __break(1u);
                goto LABEL_55;
              }

LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }
      }

      __break(1u);
      goto LABEL_50;
    }
  }

  if (!v12)
  {
    HeterogeneousBuffer.grow(_:)(v11);
    v13 = *v2;
    v14 = *(v2 + 8);
    v20 = *(v2 + 16);
    v15 = *(v2 + 20);
    goto LABEL_22;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v42 = 0xD000000000000011;
  v43 = 0x800000026C33C250;
  v41 = a2;
  swift_getMetatypeMetadata();
  v37 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v37);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL HeterogeneousBuffer.contains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = HIDWORD(a4);
  v7 = HeterogeneousBuffer.find<A>(_:)(a1, a2, a3, a4 & 1, a5);
  return v7 != v6 || HIDWORD(v7) != v5;
}

uint64_t HeterogeneousBuffer.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, unsigned int a7@<W4>)
{
  v11[4] = HeterogeneousBuffer.valuePointerAs<A>(for:)(a1, a2, a3, a4 & 1, a7, a5);
  v11[2] = a5;
  type metadata accessor for UnsafeMutablePointer();
  type metadata accessor for Optional();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in HeterogeneousBuffer.subscript.getter, v11, MEMORY[0x277D84A98], a5, v9, a6);
}

uint64_t HeterogeneousBuffer.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(a1, a2, a3, a4 & 0xFFFFFFFF00000101, a5, a6);
  if (v9)
  {
    v14 = *(a6 - 8);
    (*(v14 + 16))(a7, v9, a6);
    v10 = v14;
    v11 = 0;
  }

  else
  {
    v10 = *(a6 - 8);
    v11 = 1;
  }

  v12 = *(v10 + 56);

  return v12(a7, v11, 1, a6);
}

void (*HeterogeneousBuffer.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v7 = a5;
  v10 = a4 & 1;
  v11 = HeterogeneousBuffer.find<A>(_:)(a6, a2, a3, a4 & 1, a5);
  HeterogeneousBuffer.valuePointer<A>(for:)(v11, a2, a3, v10, v7, a6);
  return EventTreeStats.count.modify;
}

void (*HeterogeneousBuffer.subscript.modify(uint64_t a1, uint64_t a2))()
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 24);
  v6 = *(v2 + 16);
  v8 = HeterogeneousBuffer.find<A>(_:)(a2, *v2, v5, v6, v7);
  HeterogeneousBuffer.valuePointer<A>(for:)(v8, v4, v5, v6, v7, a2);
  return EventTreeStats.count.modify;
}

uint64_t IterativeTreeTraversal<>.visit(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  result = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v8 = &v15 - v7;
  v9 = *(v2 + 80);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 80) = v11;
    v12 = *(v2 + 64);
    v13 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      v14 = *(TupleTypeMetadata3 + 64);
      (*(*(v4 - 8) + 16))(v8, a1, v4);
      *&v8[v14] = v13;
      type metadata accessor for Array();
      return Array.append(_:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t HeterogeneousBuffer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = *v3;
  v17 = *(v3 + 8);
  v18 = *(v3 + 17);
  v20 = *(v3 + 20);
  v19 = *(v3 + 24);
  LOBYTE(v32) = *(v3 + 16);
  v21 = v18 == 0;
  v22 = 256;
  if (v21)
  {
    v22 = 0;
  }

  v23 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(v13, v16, v17, v22 | (v20 << 32) | v32, v19, a3);
  v24 = *(v9 + 16);
  v25 = (v5 + 48);
  if (v23)
  {
    v26 = v23;
    v27 = v31;
    v24(v15, v31, v8);
    if ((*v25)(v15, 1, a3) != 1)
    {
      (*(v5 + 40))(v26, v15, a3);
      return (*(v9 + 8))(v27, v8);
    }

    __break(1u);
    goto LABEL_11;
  }

  v24(v12, v31, v8);
  if ((*v25)(v12, 1, a3) == 1)
  {
LABEL_11:
    (*(v9 + 8))(v12, v8);
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(114);
    MEMORY[0x26D69CDB0](0xD000000000000038, 0x800000026C33C090);
    v29 = _typeName(_:qualified:)();
    MEMORY[0x26D69CDB0](v29);

    MEMORY[0x26D69CDB0](0xD000000000000038, 0x800000026C33C0D0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  (*(v5 + 32))(v7, v12, a3);
  HeterogeneousBuffer.insert<A>(_:)(v7, a3);
  (*(v9 + 8))(v31, v8);
  return (*(v5 + 8))(v7, a3);
}

{
  v6 = *v3;
  v7 = *(v3 + 8);
  v9 = *(v3 + 24);
  v8 = *(v3 + 16);
  v10 = HeterogeneousBuffer.find<A>(_:)(a3, *v3, v7, v8, v9);
  v11 = HeterogeneousBuffer.valuePointer<A>(for:)(v10, v6, v7, v8, v9, a3);
  v12 = *(*(a3 - 8) + 40);

  return v12(v11, a1, a3);
}

Swift::Void __swiftcall HeterogeneousBuffer.deallocate()()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v1 = *v0;
    if ((*(v0 + 17) & 1) == 0)
    {
      v2 = 0;
      v3 = 0;
      v4 = *(v0 + 24);
      v5 = *(v0 + 8) - v1;
      do
      {
        v6 = v3;
        if (v3 >= v4)
        {
          goto LABEL_3;
        }

        if (!v1)
        {
          goto LABEL_23;
        }

        if (v5 < v2)
        {
          goto LABEL_19;
        }

        projectDeinit #1 <A>(_:) in HeterogeneousBuffer.deallocate()(*(v1 + v2), v0, *(v1 + v2));
        v7 = *(*(*(v1 + v2) - 8) + 72);
        if (v7 <= 8)
        {
          v7 = 8;
        }

        v8 = __OFADD__(v7, 8);
        v9 = v7 + 8;
        if (v8)
        {
          goto LABEL_20;
        }

        v8 = __OFADD__(v9, v2);
        v2 += v9;
        if (v8)
        {
          goto LABEL_21;
        }

        if (v2 > 0xFFFFFFFFLL)
        {
          goto LABEL_22;
        }

        v3 = v6 + 1;
      }

      while ((v2 & 0x8000000000000000) == 0);
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      JUMPOUT(0x26D69EAB0);
    }

LABEL_3:
    if (v1)
    {

      goto LABEL_24;
    }
  }
}

Swift::Void __swiftcall HeterogeneousBuffer.copy()()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v2 = *v0;
    v1 = *(v0 + 8);
    v21 = 0;
    v3 = v1 - v2;
    if (v2)
    {
      v4 = v1 - v2;
    }

    else
    {
      v4 = 0;
    }

    v5 = swift_slowAlloc();
    *&v18 = v5;
    *(&v18 + 1) = &v5[v4];
    v19 = 0;
    v20 = *(v0 + 17);
    if (v20 == 1)
    {
      if (v2)
      {
        memmove(v5, v2, v3);
      }

      v21 = *(v0 + 20);
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = *(v0 + 24);
      while (1)
      {
        v11 = v9;
        if (v9 >= v10)
        {
          break;
        }

        if (!v2)
        {
          goto LABEL_31;
        }

        if (v3 < v8)
        {
          goto LABEL_27;
        }

        specialized projectCopy #1 <A>(_:) in HeterogeneousBuffer.copy()(*&v2[v8], &v18, v0, *&v2[v8]);
        v12 = *&v2[v8];
        v13 = swift_conformsToProtocol2();
        if (v13)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          projectClone #1 <A>(_:) in HeterogeneousBuffer.copy()(v12, v0, v12, v13);
          v12 = *&v2[v8];
        }

        v15 = *(*(v12 - 8) + 72);
        if (v15 <= 8)
        {
          v15 = 8;
        }

        v16 = __OFADD__(v15, 8);
        v17 = v15 + 8;
        if (v16)
        {
          goto LABEL_28;
        }

        v16 = __OFADD__(v17, v8);
        v8 += v17;
        if (v16)
        {
          goto LABEL_29;
        }

        if (v8 > 0xFFFFFFFFLL)
        {
          goto LABEL_30;
        }

        v9 = v11 + 1;
        if (v8 < 0)
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return;
        }
      }
    }

    swift_beginAccess();
    v6 = v19;
    v7 = v20;
    *v0 = v18;
    *(v0 + 16) = v6;
    *(v0 + 17) = v7;
    *(v0 + 20) = v21;
  }
}

void protocol witness for Clonable.init(copying:) in conformance Event(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 112);
  v5 = *(a1 + 120);
  v4 = *(a1 + 124);
  v6 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v6;
  *(a2 + 96) = *(a1 + 96);
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  v8 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v8;
  *(a2 + 112) = v3;
  *(a2 + 120) = v5;
  *(a2 + 124) = v4;
  HeterogeneousBuffer.copy()();
  if (v3)
  {
    v9 = swift_slowAlloc();
    *(a2 + 112) = v9;

    memcpy(v9, v3, 8 * v4);
  }
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Event(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[5];
  v21 = v3[4];
  v22 = v7;
  v8 = v3[7];
  v23 = v3[6];
  v24 = v8;
  v9 = v3[1];
  v17 = *v3;
  v18 = v9;
  v10 = v3[3];
  v19 = v3[2];
  v20 = v10;
  v12[0] = a1;
  v12[1] = 1;
  v13 = v4;
  v14 = 0;
  v15 = v5;
  v16 = v6;
  return Event.describe(state:)(v12);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Iterator.Kind(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *(v3 + 48);
  v8 = v3[1];
  v15 = *v3;
  v16 = v8;
  v17 = v3[2];
  v18 = v7;
  v10[0] = a1;
  v10[1] = 1;
  v11 = v4;
  v12 = 0;
  v13 = v5;
  v14 = v6;
  return Interpreter.Iterator.Kind.describe(state:)(v10);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Iterator.Mode(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[7];
  v23 = v3[6];
  v24 = v7;
  v25 = v3[8];
  v26 = *(v3 + 18);
  v8 = v3[3];
  v19 = v3[2];
  v20 = v8;
  v9 = v3[5];
  v21 = v3[4];
  v22 = v9;
  v10 = v3[1];
  v17 = *v3;
  v18 = v10;
  *&v12 = a1;
  *(&v12 + 1) = 1;
  v13 = v4;
  v14 = 0;
  v15 = v5;
  v16 = v6;
  return Interpreter.Iterator.Mode.describe(state:)(&v12);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Iterator.CancelationPolicy(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *(v3 + 8);
  v14 = *v3;
  v15 = v7;
  v9[0] = a1;
  v9[1] = 1;
  v10 = v4;
  v11 = 0;
  v12 = v5;
  v13 = v6;
  return Interpreter.Iterator.CancelationPolicy.describe(state:)(v9);
}

Swift::String __swiftcall UnsafeRawBufferPointer.previewDescription()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v4 - 8);
  specialized Collection.prefix(_:)(40, v3, v2);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR, MEMORY[0x277D84B58]);
  v5 = String.init<A>(bytes:encoding:)();
  if (!v6)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

BOOL UnsafeRawBufferPointer.contains(address:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  return a2 && a2 <= a1 && a3 > a1;
}

{
  v3 = a3 > a1;
  if (a2 > a1)
  {
    v3 = 0;
  }

  return a2 && v3;
}

uint64_t UnsafeRawBufferPointer.endAddress.getter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

const void *UnsafeRawBufferPointer.partialLoadUnaligned<A>()@<X0>(const void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(*(a3 - 8) + 64);
  if (result)
  {
    if (a2 - result >= v4)
    {
      return UnsafeRawPointer.loadUnaligned<A>(fromByteOffset:as:)(0, result, a3, a4);
    }

    return copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(result, a2, a3, a4);
  }

  if (v4 >= 1)
  {
    return copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(result, a2, a3, a4);
  }

  __break(1u);
  return result;
}

uint64_t RandomAccessCollection.enumeratedReversed()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v3, a1);
  return EnumeratedReversedIterator.init(collection:)(v8, a1, a2, a3);
}

uint64_t EnumeratedReversedIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v24 = a2;
  v5 = *(a1 + 16);
  v25 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v23 - v7;
  v9 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v23 - v11;
  v13 = *(v4 + 36);
  dispatch thunk of Collection.startIndex.getter();
  swift_getAssociatedConformanceWitness();
  v26 = v3;
  v14 = v23;
  LOBYTE(v4) = dispatch thunk of static Comparable.>= infix(_:_:)();
  (*(v14 + 8))(v8, AssociatedTypeWitness);
  if (v4)
  {
    v15 = *(TupleTypeMetadata2 + 48);
    (*(v14 + 16))(v12, v26 + v13, AssociatedTypeWitness);
    v16 = dispatch thunk of Collection.subscript.read();
    v17 = *(v9 - 8);
    (*(v17 + 16))(&v12[v15]);
    v16(v27, 0);
    v18 = swift_getTupleTypeMetadata2();
    v19 = *(v18 + 48);
    v20 = v24;
    (*(v14 + 32))(v24, v12, AssociatedTypeWitness);
    (*(v17 + 32))(v20 + v19, &v12[v15], v9);
    (*(*(v18 - 8) + 56))(v20, 0, 1, v18);
  }

  else
  {
    v21 = swift_getTupleTypeMetadata2();
    (*(*(v21 - 8) + 56))(v24, 1, 1, v21);
  }

  return $defer #1 <A>() in EnumeratedReversedIterator.next()(v26, v5, v25);
}

uint64_t Dictionary.subscript.getter@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a3;
  v29 = a2;
  v31 = a5;
  v8 = *(a4 + 16);
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  v20 = *v5;
  v21 = *(a4 + 32);
  v30 = a1;
  MEMORY[0x26D69CA60](a1, v20, v8, v12, v21);
  v22 = *(v12 - 8);
  if ((*(v22 + 48))(v19, 1, v12) != 1)
  {
    return (*(v22 + 32))(v31, v19, v12);
  }

  v23 = (*(v14 + 8))(v19, v13);
  v24 = v31;
  v29(v23);
  (*(v27 + 16))(v10, v30, v8);
  (*(v22 + 16))(v17, v24, v12);
  (*(v22 + 56))(v17, 0, 1, v12);
  return Dictionary.subscript.setter();
}

uint64_t Inspectable_Context.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

NSUInteger protocol witness for Inspectable.description(depth:mode:context:) in conformance Interpreter.Iterator(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[11];
  v29 = v3[10];
  v30 = v7;
  v31 = *(v3 + 192);
  v8 = v3[7];
  v25 = v3[6];
  v26 = v8;
  v9 = v3[9];
  v27 = v3[8];
  v28 = v9;
  v10 = v3[3];
  v21 = v3[2];
  v22 = v10;
  v11 = v3[5];
  v23 = v3[4];
  v24 = v11;
  v12 = v3[1];
  v19 = *v3;
  v20 = v12;
  v14[0] = a1;
  v14[1] = 1;
  v15 = v4;
  v16 = 0;
  v17 = v5;
  v18 = v6;
  return Interpreter.Iterator.describe(state:)(v14);
}

void *protocol witness for Inspectable.description(depth:mode:context:) in conformance TraceChunk(uint64_t a1, char *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a3 + 4);
  v7[0] = a1;
  v7[1] = 1;
  v8 = v3;
  v9 = 0;
  v10 = v4;
  v11 = v5;
  return TraceChunk.describe(state:)(v7);
}

uint64_t _sSw19assumingMemoryBound2toSryxGxm_tRi_zlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return a2;
  }

  v4 = *(*(a4 - 8) + 72);
  if (v4)
  {
    if (a3 - a2 != 0x8000000000000000 || v4 != -1)
    {
      return a2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t URL.regularFileExists.getter()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  v2 = URL.path.getter();
  v3 = MEMORY[0x26D69CC20](v2);

  v4 = [v1 fileExistsAtPath_];

  if (!v4)
  {
    return 0;
  }

  v10 = 0;
  v5 = [v0 defaultManager];
  v6 = URL.path.getter();
  v7 = MEMORY[0x26D69CC20](v6);

  v8 = [v5 fileExistsAtPath:v7 isDirectory:&v10];

  return (v8 & v10) ^ 1u;
}

id URL.fileExists.getter()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = URL.path.getter();
  v2 = MEMORY[0x26D69CC20](v1);

  v3 = [v0 fileExistsAtPath_];

  return v3;
}

Swift::Void __swiftcall URL.createFile()()
{
  v0 = [objc_opt_self() defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v2 = MEMORY[0x26D69CC20](countAndFlagsBits);

  [v0 createFileAtPath:v2 contents:0 attributes:0];
}

id URL.fileSize.getter()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = URL.path.getter();
  v2 = MEMORY[0x26D69CC20](v1);

  v10[0] = 0;
  v3 = [v0 attributesOfItemAtPath:v2 error:v10];

  v4 = v10[0];
  if (v3)
  {
    type metadata accessor for NSFileAttributeKey(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey, &protocol conformance descriptor for NSFileAttributeKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v7 = [(objc_class *)isa fileSize];

    return v7;
  }

  else
  {
    v9 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

Swift::Int32 __swiftcall URL.openFd(mode:)(Swift::Int32 mode)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = URL.path.getter();
  v4 = MEMORY[0x26D69CC20](v3);

  v5 = [v2 fileExistsAtPath_];

  if (v5)
  {
    if ((URL.regularFileExists.getter() & 1) != 0 || (mode & 0x100000) != 0)
    {
      MEMORY[0x26D69C8D0](0);
      URL.pathBytes.getter();
      v6 = open(_:_:)();

      $defer #1 () in URL.openFd(mode:)();
      return v6;
    }

    type metadata accessor for URL();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    MEMORY[0x26D69CDB0](0xD00000000000001FLL, 0x800000026C33D0C0);
  }

  else
  {
    type metadata accessor for URL();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    MEMORY[0x26D69CDB0](0xD000000000000012, 0x800000026C33D0A0);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall UnsafeTable.deallocate()()
{
  if (*v0)
  {
    MEMORY[0x26D69EAB0](*v0, -1, -1);
    *v0 = 0;
  }
}

uint64_t UnsafeTable.init(rows:columns:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = a1 * a2;
  if ((a1 * a2) >> 64 == result >> 63)
  {
    result = _s21SwiftUITracingSupport11UnsafeArrayVAASzRzlE5zerosACyxGSi_tcfCSi_Tt0g5(result);
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 12) = v8;
    *(a3 + 16) = a1;
    *(a3 + 24) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*UnsafeTable.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = *(v3 + 24);
  v5 = a2 * v4;
  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = __OFADD__(v5, a3);
  v7 = v5 + a3;
  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 >= *(v3 + 12))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*v3)
  {
    return EventTreeStats.count.modify;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t (*UnsafeTable.subscript.modify(uint64_t (**a1)(), uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  *a1 = result;
  v8 = v3[3];
  v9 = a2 * v8;
  if ((a2 * v8) >> 64 == (a2 * v8) >> 63)
  {
    if (!__OFADD__(v9, a3))
    {
      *(result + 4) = specialized UnsafeArray.subscript.modify(result, v9 + a3, *v3, v3[1]);
      return UnsafeTree.subjectsMap.modify;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Atomic.Storage.params.getter()
{
  if (*(v0 + 5))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return v1 | *(v0 + 4);
}

uint64_t Atomic.Storage.params.setter(uint64_t result)
{
  *(v1 + 4) = result & 1;
  *(v1 + 5) = BYTE1(result) & 1;
  return result;
}

void Atomic.lock<A>(_:)(void (*a1)(char *), uint64_t a2, os_unfair_lock_s *a3, uint64_t a4)
{
  os_unfair_lock_lock_with_options();
  v9 = type metadata accessor for Atomic.Storage(0, a4, v7, v8);
  a1(a3 + *(v9 + 32));
  os_unfair_lock_unlock(a3);
}

uint64_t Atomic.subscript.setter(uint64_t a1, char a2, os_unfair_lock *lock, uint64_t a4)
{
  if (a2)
  {
    os_unfair_lock_lock_with_options();
  }

  else
  {
    os_unfair_lock_assert_owner(lock);
  }

  v10 = *(type metadata accessor for Atomic.Storage(0, a4, v8, v9) + 32);
  v13 = *(a4 - 8);
  (*(v13 + 24))(lock + v10, a1, a4);
  if (a2)
  {
    os_unfair_lock_unlock(lock);
  }

  v11 = *(v13 + 8);

  return v11(a1, a4);
}

void (*Atomic.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  type metadata accessor for Atomic.Storage(0, a3, a3, a4);
  return EventTreeStats.count.modify;
}

{
  type metadata accessor for Atomic.Storage(0, a3, a3, a4);
  return EventTreeStats.count.modify;
}

uint64_t Atomic.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Atomic.Storage(0, a3, a3, a4);
  v8 = *(*(a3 - 8) + 40);
  v9 = a2 + *(v7 + 32);

  return v8(v9, a1, a3);
}

{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = MEMORY[0x28223BE20](v11);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a3 + 4) & 1) == 0)
  {
    v26 = v15;
    v27 = v12;
    os_unfair_lock_lock_with_options();
    *(a3 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v28 = a1;
    v25 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a3;
    aBlock[4] = closure #1 in Atomic.subscript.modifypartial apply;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_17;
    v24 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v24;
    v19 = v25;
    MEMORY[0x26D69D2D0](0, v17, v10, v24);
    a1 = v28;
    _Block_release(v20);

    (*(v8 + 8))(v10, v7);
    (*(v26 + 8))(v17, v27);
  }

  v21 = type metadata accessor for Atomic.Storage(0, a4, v13, v14);
  return (*(*(a4 - 8) + 40))(a3 + *(v21 + 32), a1, a4);
}

Swift::Void __swiftcall Atomic.unlockOnMain()()
{
  if (*(v0 + 4) == 1)
  {
    *(v0 + 4) = 0;
    os_unfair_lock_unlock(v0);
  }
}

uint64_t copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v21 - v13;
  v15 = *(v8 + 80);
  if (((v15 + 1) & v15) != 0)
  {
    __break(1u);
LABEL_9:
    v21[0] = v12;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v12 = v21[0];
    if (!isStackAllocationSafe)
    {
LABEL_3:
      v16 = swift_slowAlloc();
      closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v16, a1, a2, a3, a4);

      JUMPOUT(0x26D69EAB0);
    }

    goto LABEL_7;
  }

  v12 = *(v8 + 72);
  if (v15 > 0xF)
  {
    goto LABEL_3;
  }

  if (v12 > 1024)
  {
    goto LABEL_9;
  }

LABEL_7:
  MEMORY[0x28223BE20](v12);
  closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(v21 - v17, a1, a2, a3, v11);
  v18 = *(v8 + 32);
  v18(v14, v11, a3);
  return (v18)(a4, v14, a3);
}

char *closure #1 in copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()@<X0>(uint64_t a1@<X0>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = UnsafeMutableRawBufferPointer.init<A>(_:)();
  v13 = v12 - result;
  if (result)
  {
    v14 = v12 - result;
  }

  else
  {
    v14 = 0;
  }

  v15 = a4 - a3;
  if (a3)
  {
    v16 = a4 - a3;
  }

  else
  {
    v16 = 0;
  }

  if (v14 < v16)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = result;
  if (a3 && result)
  {
    result = memmove(result, a3, v15);
    goto LABEL_12;
  }

  if (result)
  {
LABEL_12:
    v18 = v13 - v16;
    if (v13 >= v16)
    {
      if (v18 > 0)
      {
        bzero(&v17[v16], v18);
      }

      return (*(*(a5 - 8) + 16))(a6, a1, a5);
    }

    goto LABEL_18;
  }

  if (v16 <= 0)
  {
    return (*(*(a5 - 8) + 16))(a6, a1, a5);
  }

LABEL_19:
  __break(1u);
  return result;
}

const void *UnsafeMutableRawBufferPointer.partialLoadUnaligned<A>()@<X0>(const void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (result)
  {
    if (a2 - result >= *(*(a3 - 8) + 64))
    {
      return UnsafeRawPointer.loadUnaligned<A>(fromByteOffset:as:)(0, result, a3, a4);
    }

    return copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(result, a2, a3, a4);
  }

  if (*(*(a3 - 8) + 64) >= 1)
  {
    a2 = 0;
    return copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(result, a2, a3, a4);
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall UnsafeMutableRawBufferPointer.previewDescription()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v4 - 8);
  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  specialized Collection.prefix(_:)(40, v3, v5);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR, MEMORY[0x277D84B58]);
  v6 = String.init<A>(bytes:encoding:)();
  if (!v7)
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t Array.mut(i:_:)(uint64_t a1, uint64_t (*a2)(unint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  result = MEMORY[0x26D69D030](*v4, v6);
  v8 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    Array._makeMutableAndUnique()();
    v9 = *v4;
    Array._checkSubscript_mutating(_:)(v8);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v11 = v9;
    }

    return a2(v11 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v8);
  }

  return result;
}

uint64_t Collection<>.binarySearch(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v231 = a1;
  v234 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v205 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v206 = &v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v202 = &v185 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v204 = type metadata accessor for Range();
  v203 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v201 = &v185 - v13;
  v212 = swift_getAssociatedTypeWitness();
  v211 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v210 = &v185 - v14;
  v200 = type metadata accessor for PartialRangeUpTo();
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v198 = &v185 - v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v232 = a4;
  v16 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v233 = v16;
  v226 = *(swift_getAssociatedConformanceWitness() + 8);
  v195 = *(*(v226 + 24) + 16);
  v193 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v193);
  v194 = &v185 - v17;
  v243 = AssociatedTypeWitness;
  v225 = swift_checkMetadataState();
  v239 = *(v225 - 8);
  v18 = MEMORY[0x28223BE20](v225);
  v213 = &v185 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v215 = &v185 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v227 = &v185 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v228 = &v185 - v25;
  MEMORY[0x28223BE20](v24);
  v224 = &v185 - v26;
  v240 = swift_checkMetadataState();
  v236 = *(v240 - 8);
  v27 = MEMORY[0x28223BE20](v240);
  v216 = &v185 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v235 = &v185 - v29;
  v229 = swift_checkMetadataState();
  v238 = *(v229 - 8);
  v30 = MEMORY[0x28223BE20](v229);
  v214 = &v185 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v223 = &v185 - v33;
  v34 = *(AssociatedTypeWitness - 8);
  v35 = MEMORY[0x28223BE20](v32);
  v218 = &v185 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v242 = &v185 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v185 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v185 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v185 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v185 - v48;
  v50 = a3;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.startIndex.getter();
  v51 = a2;
  v52 = v50;
  dispatch thunk of Collection.endIndex.getter();
  v53 = v5;
  dispatch thunk of Collection.distance(from:to:)();
  v241 = v34;
  v54 = v34 + 8;
  v55 = *(v34 + 8);
  v208 = v41;
  v56 = v41;
  v57 = v49;
  v58 = v243;
  v55(v56, v243);
  v219 = v44;
  v55(v44, v58);
  dispatch thunk of Collection.index(_:offsetBy:)();
  v55(v47, v58);
  dispatch thunk of Collection.endIndex.getter();
  v59 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v221 = v47;
  v55(v47, v58);
  if (v59)
  {
    v55(v57, v58);
    return (*(v241 + 56))(v234, 1, 1, v58);
  }

  v220 = v55;
  v61 = *(v241 + 16);
  v192 = v241 + 16;
  v191 = v61;
  v61(v242, v57, v58);
  v196 = v53;
  v197 = v51;
  v62 = dispatch thunk of Collection.subscript.read();
  v63 = v238;
  v64 = *(v238 + 16);
  v65 = v223;
  v66 = v229;
  v190 = v238 + 16;
  v189 = v64;
  v64(v223);
  v62(&v244, 0);
  v67 = *(v232 + 24);
  v188 = v232 + 24;
  v187 = v67;
  (v67)(v66);
  v68 = *(v63 + 8);
  v238 = v63 + 8;
  v186 = v68;
  v68(v65, v66);
  v69 = v233;
  v70 = *(v233 + 56);
  v71 = v224;
  v223 = (v233 + 56);
  v217 = v70;
  v70(v240, v233);
  v72 = v225;
  v73 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v230 = v52;
  v74 = v72;
  v75 = v239;
  v209 = v57;
  if ((v73 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v244 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    v76 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v77 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v76)
    {
      if (v77 > 64)
      {
LABEL_10:
        lazy protocol witness table accessor for type Int and conformance Int();
        v78 = v228;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v79 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v75 + 8))(v78, v74);
        if ((v79 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v80 = v228;
      v69 = v233;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v81 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v75 + 8))(v80, v74);
      if (v81)
      {
        goto LABEL_105;
      }

LABEL_15:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_16;
    }

    if (v77 < 64)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v82 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v83 = v243;
  if (v82 <= 64)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v244 = 0x7FFFFFFFFFFFFFFFLL;
    v84 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v85 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v84 & 1) == 0)
    {
      break;
    }

    if (v85 <= 64)
    {
      goto LABEL_25;
    }

LABEL_19:
    lazy protocol witness table accessor for type Int and conformance Int();
    v86 = v228;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v87 = dispatch thunk of static Comparable.< infix(_:_:)();
    v88 = v86;
    v69 = v233;
    (*(v75 + 8))(v88, v74);
    if (v87)
    {
      __break(1u);
LABEL_21:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  if (v85 >= 64)
  {
    goto LABEL_19;
  }

LABEL_25:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_26:
  v222 = v54;
  v224 = dispatch thunk of BinaryInteger._lowWord.getter();
  v91 = *(v75 + 8);
  v89 = v75 + 8;
  v90 = v91;
  v91(v71, v74);
  v92 = v235;
  v93 = v240;
  v235 = *(v236 + 8);
  v236 += 8;
  (v235)(v92, v240);
  v94 = v93;
  v95 = v227;
  v217(v94, v69);
  v96 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v98 = v241;
  v97 = v242;
  if ((v96 & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    goto LABEL_40;
  }

  v244 = 0x8000000000000000;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v102 = v98;
    v103 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v104 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v103 & 1) == 0)
    {
      v98 = v102;
      v97 = v242;
      if (v104 >= 64)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v98 = v102;
    if (v104 > 64)
    {
      lazy protocol witness table accessor for type Int and conformance Int();
      v105 = v228;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v106 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = v90(v105, v74);
      v97 = v242;
      if (v106)
      {
        goto LABEL_106;
      }

      goto LABEL_40;
    }

    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v107 = v228;
    v95 = v227;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v108 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = v90(v107, v74);
    v97 = v242;
    if ((v108 & 1) == 0)
    {
LABEL_39:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_40;
    }

LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
  {
    goto LABEL_39;
  }

  lazy protocol witness table accessor for type Int and conformance Int();
  v99 = v228;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v100 = dispatch thunk of static Comparable.< infix(_:_:)();
  v101 = v99;
  v97 = v242;
  result = v90(v101, v74);
  if (v100)
  {
    goto LABEL_106;
  }

LABEL_40:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_45;
  }

  while (2)
  {
    v109 = v98;
    v244 = 0x7FFFFFFFFFFFFFFFLL;
    v110 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v111 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v110)
    {
      if (v111 <= 64)
      {
        break;
      }

      goto LABEL_43;
    }

    if (v111 >= 64)
    {
LABEL_43:
      lazy protocol witness table accessor for type Int and conformance Int();
      v112 = v228;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v113 = dispatch thunk of static Comparable.< infix(_:_:)();
      v90(v112, v74);
      v98 = v109;
      v97 = v242;
      if ((v113 & 1) == 0)
      {
        goto LABEL_50;
      }

      __break(1u);
LABEL_45:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_50;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
  v98 = v109;
  v97 = v242;
LABEL_50:
  v114 = dispatch thunk of BinaryInteger._lowWord.getter();
  v90(v95, v74);
  if (v224 == v114 || (v239 = v89, v115 = v74, v116 = v221, dispatch thunk of Collection.startIndex.getter(), v117 = v219, dispatch thunk of Collection.endIndex.getter(), v83 = v243, v118 = dispatch thunk of Collection.distance(from:to:)(), v119 = v220, v220(v117, v83), v120 = v116, v121 = v115, v119(v120, v83), v97 = v242, v122 = v240, v118 == 1))
  {
    v220(v209, v83);
    v123 = v234;
    (*(v98 + 32))(v234, v97, v83);
    return (*(v98 + 56))(v123, 0, 1, v83);
  }

  v220(v242, v83);
  v191(v218, v209, v83);
  v124 = dispatch thunk of Collection.subscript.read();
  v125 = v214;
  v126 = v229;
  v189(v214);
  v124(&v244, 0);
  v127 = v216;
  v187(v126, v232);
  v186(v125, v126);
  v128 = v215;
  v217(v122, v233);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v244 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
      {
        lazy protocol witness table accessor for type Int and conformance Int();
        v129 = v228;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v130 = dispatch thunk of static Comparable.< infix(_:_:)();
        v131 = v129;
        v127 = v216;
        result = v90(v131, v115);
        if (v130)
        {
          goto LABEL_109;
        }

        goto LABEL_67;
      }

LABEL_66:
      dispatch thunk of BinaryInteger._lowWord.getter();
    }

    else
    {
      v132 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v133 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v132)
      {
        if (v133 > 64)
        {
          lazy protocol witness table accessor for type Int and conformance Int();
          v134 = v228;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v135 = dispatch thunk of static Comparable.< infix(_:_:)();
          result = v90(v134, v115);
          v127 = v216;
          if (v135)
          {
            goto LABEL_109;
          }

          goto LABEL_67;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v136 = v228;
        v122 = v240;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v137 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = v90(v136, v115);
        v127 = v216;
        if (v137)
        {
          goto LABEL_109;
        }

        goto LABEL_66;
      }

      if (v133 < 64)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_67:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_72;
  }

  while (2)
  {
    v244 = 0x7FFFFFFFFFFFFFFFLL;
    v138 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v139 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v138)
    {
      if (v139 <= 64)
      {
        break;
      }

      goto LABEL_70;
    }

    if (v139 >= 64)
    {
LABEL_70:
      lazy protocol witness table accessor for type Int and conformance Int();
      v140 = v228;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v141 = dispatch thunk of static Comparable.< infix(_:_:)();
      v142 = v140;
      v127 = v216;
      v90(v142, v115);
      if ((v141 & 1) == 0)
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_72:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_77;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_77:
  v143 = dispatch thunk of BinaryInteger._lowWord.getter();
  v90(v128, v115);
  (v235)(v127, v122);
  v144 = v213;
  v217(v122, v233);
  v145 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v146 = v221;
  if ((v145 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v244 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_89;
      }

LABEL_84:
      lazy protocol witness table accessor for type Int and conformance Int();
      v150 = v228;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v151 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = v90(v150, v121);
      if (v151)
      {
        goto LABEL_110;
      }
    }

    else
    {
      v147 = v98;
      v148 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v149 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v148)
      {
        v98 = v147;
        if (v149 > 64)
        {
          goto LABEL_84;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v152 = v228;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v153 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = v90(v152, v121);
        if (v153)
        {
          goto LABEL_110;
        }

LABEL_89:
        dispatch thunk of BinaryInteger._lowWord.getter();
      }

      else
      {
        v98 = v147;
        if (v149 < 64)
        {
          goto LABEL_89;
        }
      }
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_95;
  }

  while (2)
  {
    v154 = v98;
    v244 = 0x7FFFFFFFFFFFFFFFLL;
    v155 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v156 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v155)
    {
      if (v156 <= 64)
      {
        break;
      }

      goto LABEL_93;
    }

    if (v156 >= 64)
    {
LABEL_93:
      lazy protocol witness table accessor for type Int and conformance Int();
      v157 = v228;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v158 = dispatch thunk of static Comparable.< infix(_:_:)();
      v90(v157, v121);
      v98 = v154;
      if ((v158 & 1) == 0)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_95:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_100;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
  v98 = v154;
LABEL_100:
  v159 = dispatch thunk of BinaryInteger._lowWord.getter();
  v90(v144, v121);
  if (v159 >= v143)
  {
    v169 = v243;
    v220(v218, v243);
    v170 = *(v98 + 32);
    v170(v146, v209, v169);
    v171 = v219;
    dispatch thunk of Collection.index(after:)();
    v172 = v208;
    dispatch thunk of Collection.endIndex.getter();
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if ((result & 1) == 0)
    {
      goto LABEL_108;
    }

    v173 = v202;
    v170(v202, v171, v169);
    v174 = TupleTypeMetadata2;
    v170(&v173[*(TupleTypeMetadata2 + 48)], v172, v169);
    v175 = v205;
    v176 = v206;
    (*(v205 + 16))(v206, v173, v174);
    v177 = *(v174 + 48);
    v178 = v201;
    v170(v201, v176, v169);
    v179 = &v176[v177];
    v180 = v220;
    v220(v179, v169);
    (*(v175 + 32))(v176, v173, v174);
    v181 = v204;
    v170(&v178[*(v204 + 36)], &v176[*(v174 + 48)], v169);
    v180(v176, v169);
    v182 = v210;
    dispatch thunk of Collection.subscript.getter();
    (*(v203 + 8))(v178, v181);
    v183 = v212;
    v184 = swift_getAssociatedConformanceWitness();
    Collection<>.binarySearch(for:)(v231, v183, v184, v232, v234);
    (*(v211 + 8))(v182, v183);
    return (v180)(v221, v169);
  }

  else
  {
    v160 = v243;
    v161 = v220;
    v220(v209, v243);
    v162 = v218;
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    v163 = v234;
    if (result)
    {
      v164 = v198;
      v191(v198, v162, v160);
      v165 = v200;
      swift_getWitnessTable();
      v166 = v210;
      Collection.subscript.getter();
      (*(v199 + 8))(v164, v165);
      v167 = v212;
      v168 = swift_getAssociatedConformanceWitness();
      Collection<>.binarySearch(for:)(v231, v167, v168, v232, v163);
      (*(v211 + 8))(v166, v167);
      return v161(v162, v160);
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
  }

  return result;
}

BOOL Collection<>.sContains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  Collection<>.binarySearch(for:)(a1, a2, a3, a4, &v15 - v11);
  v13 = (*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) != 1;
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t UnsafeArray<A>.binarySearch(for:_:_:)(uint64_t a1, uint64_t a2, int64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v132 = a1;
  v13 = HIDWORD(a5);
  swift_getAssociatedTypeWitness();
  v127 = *(swift_getAssociatedConformanceWitness() + 8);
  v117 = *(*(v127 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v115 = &v111 - v14;
  v126 = swift_checkMetadataState();
  v131 = *(v126 - 1);
  v15 = MEMORY[0x28223BE20](v126);
  v124 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v121 = &v111 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v133 = &v111 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v128 = &v111 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v111 - v24;
  v134 = *(a6 - 8);
  v26 = MEMORY[0x28223BE20](v23);
  v125 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v111 - v28;
  v140 = a2;
  v141 = a4;
  v142 = a5;
  v143 = v13;
  v130 = a4;
  v136 = a2;
  v137 = a4;
  v120 = a5;
  v138 = a5;
  v139 = v13;
  v118 = a2;
  v135 = a3;
  type metadata accessor for UnsafeArray(0, a6, v30, v31);
  swift_getWitnessTable();
  RandomAccessCollection<>.distance(from:to:)();
  RandomAccessCollection<>.index(_:offsetBy:)();
  v119 = a3;
  if (v137 >= a3)
  {
    return 0;
  }

  v32 = *(v134 + 16);
  v33 = *(v134 + 72);
  v114 = v137;
  v112 = v130 + v33 * v137;
  v113 = v32;
  v111 = v134 + 16;
  (v32)(v29);
  v34 = *(a7 + 56);
  v35 = a6;
  v129 = a7;
  v122 = v34;
  v123 = a7 + 56;
  v34(a6, a7);
  v36 = v126;
  v37 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v38 = v131;
  v39 = v29;
  if ((v37 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v141 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    v41 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v42 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v41)
    {
      if (v42 > 64)
      {
LABEL_10:
        lazy protocol witness table accessor for type Int and conformance Int();
        v43 = v128;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v44 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = v38[1](v43, v36);
        if ((v44 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v45 = v128;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v46 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = v38[1](v45, v36);
      if (v46)
      {
        goto LABEL_104;
      }

LABEL_15:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_16;
    }

    if (v42 < 64)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v47 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v48 = v35;
  v49 = v25;
  v50 = v134;
  if (v47 <= 64)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v126 = v39;
    v141 = 0x7FFFFFFFFFFFFFFFLL;
    v51 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v52 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v51 & 1) == 0)
    {
      break;
    }

    if (v52 <= 64)
    {
      goto LABEL_25;
    }

LABEL_19:
    lazy protocol witness table accessor for type Int and conformance Int();
    v53 = v36;
    v54 = v128;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v55 = dispatch thunk of static Comparable.< infix(_:_:)();
    v56 = v54;
    v36 = v53;
    v50 = v134;
    v38[1](v56, v53);
    v39 = v126;
    if (v55)
    {
      __break(1u);
LABEL_21:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  if (v52 >= 64)
  {
    goto LABEL_19;
  }

LABEL_25:
  dispatch thunk of BinaryInteger._lowWord.getter();
  v39 = v126;
LABEL_26:
  v134 = dispatch thunk of BinaryInteger._lowWord.getter();
  v131 = v38[1];
  (v131)(v49, v36);
  v58 = *(v50 + 8);
  v57 = v50 + 8;
  v126 = v58;
  (v58)(v39, v48);
  v59 = v133;
  v122(v48, v129);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    goto LABEL_40;
  }

  v141 = 0x8000000000000000;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v61 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v62 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v61 & 1) == 0)
    {
      v59 = v133;
      if (v62 < 64)
      {
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    if (v62 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v64 = v128;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v59 = v133;
      v65 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v131)(v64, v36);
      if ((v65 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      lazy protocol witness table accessor for type Int and conformance Int();
      v60 = v128;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v59 = v133;
LABEL_34:
      v63 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v131)(v60, v36);
      if ((v63 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v59 = v133;
  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    v60 = v128;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    goto LABEL_34;
  }

LABEL_39:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_40:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_45;
  }

  while (2)
  {
    v141 = 0x7FFFFFFFFFFFFFFFLL;
    v66 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v67 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v66)
    {
      if (v67 <= 64)
      {
        break;
      }

      goto LABEL_43;
    }

    if (v67 >= 64)
    {
LABEL_43:
      lazy protocol witness table accessor for type Int and conformance Int();
      v68 = v128;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v59 = v133;
      v69 = dispatch thunk of static Comparable.< infix(_:_:)();
      (v131)(v68, v36);
      if ((v69 & 1) == 0)
      {
        goto LABEL_50;
      }

      __break(1u);
LABEL_45:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_50;
      }

      continue;
    }

    break;
  }

  v59 = v133;
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_50:
  v70 = dispatch thunk of BinaryInteger._lowWord.getter();
  (v131)(v59, v36);
  if (v134 == v70)
  {
    return v114;
  }

  v113(v125, v112, v48);
  v71 = v121;
  v122(v48, v129);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    goto LABEL_66;
  }

  v141 = 0x8000000000000000;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v75 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v76 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v75)
    {
      v134 = v57;
      if (v76 > 64)
      {
        lazy protocol witness table accessor for type Int and conformance Int();
        v77 = v128;
        v78 = v36;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v79 = v121;
        v80 = dispatch thunk of static Comparable.< infix(_:_:)();
        v81 = v77;
        v71 = v79;
        v36 = v78;
        result = (v131)(v81, v78);
        if ((v80 & 1) == 0)
        {
          goto LABEL_66;
        }

LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v82 = v128;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v83 = v121;
      v84 = dispatch thunk of static Comparable.< infix(_:_:)();
      v85 = v82;
      v71 = v83;
      result = (v131)(v85, v36);
      if (v84)
      {
        goto LABEL_106;
      }
    }

    else if (v76 >= 64)
    {
      goto LABEL_66;
    }

LABEL_65:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_66;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
  {
    goto LABEL_65;
  }

  lazy protocol witness table accessor for type Int and conformance Int();
  v72 = v128;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v73 = dispatch thunk of static Comparable.< infix(_:_:)();
  v74 = v72;
  v71 = v121;
  result = (v131)(v74, v36);
  if (v73)
  {
    goto LABEL_106;
  }

LABEL_66:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_71;
  }

  while (2)
  {
    v141 = 0x7FFFFFFFFFFFFFFFLL;
    v86 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v87 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v86)
    {
      if (v87 <= 64)
      {
        break;
      }

      goto LABEL_69;
    }

    if (v87 >= 64)
    {
LABEL_69:
      lazy protocol witness table accessor for type Int and conformance Int();
      v88 = v128;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v89 = dispatch thunk of static Comparable.< infix(_:_:)();
      v90 = v88;
      v71 = v121;
      (v131)(v90, v36);
      if ((v89 & 1) == 0)
      {
        goto LABEL_76;
      }

      __break(1u);
LABEL_71:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_76;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_76:
  v91 = dispatch thunk of BinaryInteger._lowWord.getter();
  (v131)(v71, v36);
  (v126)(v125, v48);
  v92 = v124;
  v122(v48, v129);
  v93 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v94 = v130;
  if ((v93 & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    goto LABEL_90;
  }

  v141 = 0x8000000000000000;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v97 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v98 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v97 & 1) == 0)
    {
      v92 = v124;
      if (v98 >= 64)
      {
        goto LABEL_90;
      }

      goto LABEL_89;
    }

    if (v98 > 64)
    {
      lazy protocol witness table accessor for type Int and conformance Int();
      v99 = v128;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v92 = v124;
      v100 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v131)(v99, v36);
      if (v100)
      {
        goto LABEL_107;
      }

      goto LABEL_90;
    }

    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v101 = v128;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v92 = v124;
    v102 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (v131)(v101, v36);
    if ((v102 & 1) == 0)
    {
LABEL_89:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_90;
    }

LABEL_107:
    __break(1u);
    return result;
  }

  v92 = v124;
  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
  {
    goto LABEL_89;
  }

  lazy protocol witness table accessor for type Int and conformance Int();
  v95 = v128;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v96 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (v131)(v95, v36);
  if (v96)
  {
    goto LABEL_107;
  }

LABEL_90:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_95;
  }

  while (2)
  {
    v141 = 0x7FFFFFFFFFFFFFFFLL;
    v103 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v104 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v103)
    {
      if (v104 <= 64)
      {
        break;
      }

      goto LABEL_93;
    }

    if (v104 >= 64)
    {
LABEL_93:
      lazy protocol witness table accessor for type Int and conformance Int();
      v105 = v128;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v92 = v124;
      v106 = dispatch thunk of static Comparable.< infix(_:_:)();
      (v131)(v105, v36);
      if ((v106 & 1) == 0)
      {
        goto LABEL_100;
      }

      __break(1u);
LABEL_95:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_100;
      }

      continue;
    }

    break;
  }

  v92 = v124;
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_100:
  v107 = dispatch thunk of BinaryInteger._lowWord.getter();
  (v131)(v92, v36);
  if (v107 >= v91)
  {
    v109 = v114 + 1;
    v108 = v132;
    v110 = &v145;
  }

  else
  {
    v108 = v132;
    v109 = v118;
    v110 = &v144;
  }

  return UnsafeArray<A>.binarySearch(for:_:_:)(v108, v109, *(v110 - 32), v94, v120, v48, v129);
}

Swift::Int __swiftcall UnsafeArray.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t UnsafeArray<A>.binarySearchFirstBefore(id:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v111 = a2;
  v113 = a3;
  v8 = HIDWORD(a3);
  swift_getAssociatedTypeWitness();
  v9 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v101 = &v95 - v11;
  v115 = *(a4 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v117 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v104 = &v95 - v14;
  v15 = swift_checkMetadataState();
  v119 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v95 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v103 = &v95 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v110 = &v95 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v95 - v26;
  v112 = v8;
  if (!v8)
  {
    return 0;
  }

  v97 = v9;
  v29 = *(a5 + 56);
  v102 = a5 + 56;
  v116 = v29;
  v29(a4, a5);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v122 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    v30 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v31 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v30)
    {
      if (v31 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v35 = v110;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v36 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v119 + 8))(v35, v15);
        if (v36)
        {
          goto LABEL_110;
        }

        goto LABEL_16;
      }

LABEL_11:
      lazy protocol witness table accessor for type Int and conformance Int();
      v32 = v110;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v33 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v119 + 8))(v32, v15);
      if (v33)
      {
        goto LABEL_110;
      }

      goto LABEL_17;
    }

    if (v31 < 64)
    {
LABEL_16:
      dispatch thunk of BinaryInteger._lowWord.getter();
    }
  }

LABEL_17:
  v37 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v114 = a5;
  if (v37 <= 64)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v122 = 0x7FFFFFFFFFFFFFFFLL;
    v38 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v39 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v38 & 1) == 0)
    {
      break;
    }

    if (v39 <= 64)
    {
      goto LABEL_26;
    }

LABEL_20:
    lazy protocol witness table accessor for type Int and conformance Int();
    v40 = v110;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v41 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v119 + 8))(v40, v15);
    a5 = v114;
    if (v41)
    {
      __break(1u);
LABEL_22:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  if (v39 >= 64)
  {
    goto LABEL_20;
  }

LABEL_26:
  dispatch thunk of BinaryInteger._lowWord.getter();
  a5 = v114;
LABEL_27:
  v99 = v18;
  v98 = dispatch thunk of BinaryInteger._lowWord.getter();
  v118 = *(v119 + 8);
  v119 += 8;
  v118(v27, v15);
  v43 = v111;
  v42 = v112;
  v122 = v111;
  v123 = v113;
  v124 = v112;
  v44 = a4;
  v47 = type metadata accessor for UnsafeArray(0, a4, v45, v46);
  WitnessTable = swift_getWitnessTable();
  v108 = v47;
  v96 = WitnessTable;
  result = ArrayLike.lastIndex.getter(v47, WitnessTable);
  if (v121 >= v42)
  {
    goto LABEL_107;
  }

  if (!v43)
  {
    goto LABEL_112;
  }

  v49 = v115[2];
  v105 = v115[9];
  v106 = v49;
  v50 = v44;
  v107 = v115 + 2;
  v49(v104, v43 + v105 * v121, v44);
  v51 = v103;
  v116(v50, a5);
  v52 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v109 = a1;
  v53 = v51;
  v54 = v99;
  if ((v52 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v120 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_41;
      }

LABEL_36:
      lazy protocol witness table accessor for type Int and conformance Int();
      v57 = v110;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v58 = dispatch thunk of static Comparable.< infix(_:_:)();
      v59 = v57;
      v53 = v103;
      result = (v118)(v59, v15);
      if (v58)
      {
        goto LABEL_111;
      }
    }

    else
    {
      v55 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v56 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v55)
      {
        a5 = v114;
        if (v56 > 64)
        {
          goto LABEL_36;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v60 = v110;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v61 = dispatch thunk of static Comparable.< infix(_:_:)();
        v62 = v60;
        v53 = v103;
        result = (v118)(v62, v15);
        if (v61)
        {
          goto LABEL_111;
        }

LABEL_41:
        dispatch thunk of BinaryInteger._lowWord.getter();
      }

      else
      {
        a5 = v114;
        if (v56 < 64)
        {
          goto LABEL_41;
        }
      }
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_47;
  }

  while (2)
  {
    v120 = 0x7FFFFFFFFFFFFFFFLL;
    v63 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v64 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v63)
    {
      if (v64 <= 64)
      {
        break;
      }

      goto LABEL_45;
    }

    if (v64 >= 64)
    {
LABEL_45:
      lazy protocol witness table accessor for type Int and conformance Int();
      v65 = v110;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v66 = dispatch thunk of static Comparable.< infix(_:_:)();
      v118(v65, v15);
      a5 = v114;
      if ((v66 & 1) == 0)
      {
        goto LABEL_52;
      }

      __break(1u);
LABEL_47:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_52;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
  a5 = v114;
LABEL_52:
  v67 = dispatch thunk of BinaryInteger._lowWord.getter();
  v118(v53, v15);
  v68 = v115[1];
  v69 = v104;
  ++v115;
  v104 = v68;
  (v68)(v69, v50);
  if (v67 < v98)
  {
    v122 = v43;
    v123 = v113;
    v124 = v112;
    ArrayLike.lastIndex.getter(v108, v96);
    return v121;
  }

  v28 = UnsafeArray<A>.binarySearch(for:_:_:)(v109, 0, v112, v43, v113, v50, a5);
  if (v70)
  {
    return v28;
  }

  while (2)
  {
    v106(v117, v43 + v28 * v105, v50);
    v116(v50, a5);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      v122 = 0x8000000000000000;
      if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        v71 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v72 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v71)
        {
          a5 = v114;
          if (v72 > 64)
          {
            goto LABEL_63;
          }

          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v75 = v110;
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v76 = dispatch thunk of static Comparable.< infix(_:_:)();
          result = (v118)(v75, v15);
          if (v76)
          {
            goto LABEL_108;
          }
        }

        else
        {
          a5 = v114;
          if (v72 >= 64)
          {
            goto LABEL_69;
          }
        }

LABEL_68:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_69;
      }

      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_68;
      }

LABEL_63:
      lazy protocol witness table accessor for type Int and conformance Int();
      v73 = v110;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v74 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v118)(v73, v15);
      if (v74)
      {
        goto LABEL_108;
      }
    }

LABEL_69:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
    {
LABEL_79:
      v81 = dispatch thunk of BinaryInteger._lowWord.getter();
      v118(v21, v15);
      (v104)(v117, v50);
      v116(v50, a5);
      if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        goto LABEL_93;
      }

      v122 = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
        {
          lazy protocol witness table accessor for type Int and conformance Int();
          v82 = v110;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v83 = dispatch thunk of static Comparable.< infix(_:_:)();
          result = (v118)(v82, v15);
          if (v83)
          {
            goto LABEL_109;
          }

          goto LABEL_93;
        }

LABEL_92:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_93;
      }

      v84 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v85 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if ((v84 & 1) == 0)
      {
        a5 = v114;
        if (v85 >= 64)
        {
          goto LABEL_93;
        }

        goto LABEL_92;
      }

      a5 = v114;
      if (v85 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v88 = v110;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v89 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (v118)(v88, v15);
        if (v89)
        {
          goto LABEL_109;
        }

        goto LABEL_92;
      }

      lazy protocol witness table accessor for type Int and conformance Int();
      v86 = v110;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v87 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v118)(v86, v15);
      if (v87)
      {
        goto LABEL_109;
      }

LABEL_93:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
      {
LABEL_103:
        v94 = dispatch thunk of BinaryInteger._lowWord.getter();
        v118(v54, v15);
        if (v94 >= v81 || !v28)
        {
          return v28;
        }

        v43 = v111;
        v122 = v111;
        v123 = v113;
        v124 = v112;
        v120 = v28;
        swift_getWitnessTable();
        RandomAccessCollection<>.index(_:offsetBy:)();
        v28 = v121;
        continue;
      }

      v122 = 0x7FFFFFFFFFFFFFFFLL;
      v90 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v91 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v90)
      {
        if (v91 > 64)
        {
          goto LABEL_96;
        }
      }

      else if (v91 >= 64)
      {
LABEL_96:
        lazy protocol witness table accessor for type Int and conformance Int();
        v92 = v110;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v93 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (v118)(v92, v15);
        a5 = v114;
        if (v93)
        {
          goto LABEL_106;
        }

        goto LABEL_103;
      }

      dispatch thunk of BinaryInteger._lowWord.getter();
      a5 = v114;
      goto LABEL_103;
    }

    break;
  }

  v122 = 0x7FFFFFFFFFFFFFFFLL;
  v77 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v78 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v77)
  {
    if (v78 > 64)
    {
      goto LABEL_72;
    }

LABEL_78:
    dispatch thunk of BinaryInteger._lowWord.getter();
    a5 = v114;
    goto LABEL_79;
  }

  if (v78 < 64)
  {
    goto LABEL_78;
  }

LABEL_72:
  lazy protocol witness table accessor for type Int and conformance Int();
  v79 = v110;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v80 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (v118)(v79, v15);
  a5 = v114;
  if ((v80 & 1) == 0)
  {
    goto LABEL_79;
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
  return result;
}

uint64_t UnsafeArray<A>.sContains(_:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v36 = &v31 - v17;
  if (!v13)
  {
    v18 = 0;
    return v18 & 1;
  }

  if (v12[1])
  {
    UnsafeArray<A>.binarySearch(for:_:_:)(a1, 0, v13, v14, v15, a5, v37);
    v18 = v19 ^ 1;
    return v18 & 1;
  }

  v20 = *v12;
  v21 = (v16 + 8);
  v33 = v14;
  v34 = v12;
  v31 = v16;
  v32 = v13;
  v22 = v36;
  while (2)
  {
    if (v20 == v13)
    {
      v18 = 0;
      *v12 = v13;
      *(v12 + 8) = 0;
      return v18 & 1;
    }

    if (v20 >= v13)
    {
      __break(1u);
    }

    else if (v14)
    {
      v23 = *(v16 + 72);
      v35 = v20;
      v38 = v14 + v23 * v20;
      v24 = *(v16 + 16);
      while (1)
      {
        v24(v22, v38, a5);
        v25 = dispatch thunk of static Comparable.< infix(_:_:)();
        v26 = *v21;
        result = (*v21)(v22, a5);
        if (v25)
        {
          break;
        }

        v24(v10, v38, a5);
        v27 = dispatch thunk of static Equatable.== infix(_:_:)();
        v26(v10, a5);
        if (v27)
        {
          goto LABEL_17;
        }

        v24(v10, v38, a5);
        v28 = dispatch thunk of static Comparable.> infix(_:_:)();
        v26(v10, a5);
        if (v28)
        {
          v18 = 0;
          v30 = v34;
          *v34 = v35;
          *(v30 + 8) = 0;
          return v18 & 1;
        }
      }

      v12 = v34;
      v20 = v35 + 1;
      v13 = v32;
      v14 = v33;
      v16 = v31;
      if (!__OFADD__(v35, 1))
      {
        continue;
      }

      __break(1u);
LABEL_17:
      v29 = v34;
      *v34 = v35;
      *(v29 + 8) = 0;
      v18 = 1;
      return v18 & 1;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t UnsafeMutableRawPointer.misalignedLoad<A>(as:into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 - 8) + 8))(a2, a4);

  return UnsafeMutableRawPointer.loadUnaligned<A>(fromByteOffset:as:)(0, a3, a4, a2);
}

uint64_t UnsafeMutableRawPointer.loadUnaligned<A>(fromByteOffset:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v11 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = *(v8 + 80);
  if (((v15 + 1) & v15) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = *(v8 + 72);
  if (v15 > 0xF)
  {
    while (1)
    {
      v12 = swift_slowAlloc();
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      v22 = v12;
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      v12 = v22;
      if (isStackAllocationSafe)
      {
        goto LABEL_8;
      }
    }

    v16 = (a2 + a1);
    v17 = v12;
    memcpy(v12, v16, v9);
    (*(v8 + 16))(a4, v17, a3);

LABEL_15:
    JUMPOUT(0x26D69EAB0);
  }

  if (v12 >= 1025)
  {
    goto LABEL_12;
  }

LABEL_8:
  MEMORY[0x28223BE20](v12);
  v19 = &v24 - v18;
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  memcpy(&v24 - v18, (a2 + a1), v9);
  (*(v8 + 16))(v11, v19, a3);
  v20 = *(v8 + 32);
  v20(v14, v11, a3);
  return (v20)(a4, v14, a3);
}

BOOL static Box.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  return v4 == *(a2 + 16);
}

uint64_t Box.value.getter()
{
  Box.opaque.getter();

  return swift_unknownObjectRetain();
}

uint64_t Box.__allocating_init(opaque:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  swift_unknownObjectRetain();
  return v2;
}

uint64_t Box.init(opaque:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  swift_unknownObjectRetain();
  return v1;
}

uint64_t Box.__allocating_init(wrappedValue:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t (*Box.subscript.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Box.value.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t Box.value.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t Box.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for _Ref.value.getter in conformance Box<A>@<X0>(uint64_t *a1@<X8>)
{
  *a1 = Box.opaque.getter();

  return swift_unknownObjectRetain();
}

uint64_t (*protocol witness for _Ref.value.modify in conformance Box<A>(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Box.value.modify(v2);
  return protocol witness for AMortalReference.interval.modify in conformance MortalReference<A>;
}

uint64_t protocol witness for OpaqueConvertable.init(opaque:) in conformance Box<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Box.__allocating_init(opaque:)(a1);
  *a2 = result;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Box<A1>(uint64_t a1)
{
  Hasher.init(_seed:)();
  Box.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _sSp21SwiftUITracingSupportRi_zrlExycisTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 - 8);
  (*(v8 + 8))(a2, a3);
  v6 = *(v8 + 32);

  return v6(a2, a1, a3);
}

uint64_t _Ref.init(from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  if (*(*(a2 - 8) + 64) == 8)
  {
    return (*(*(a2 - 8) + 16))(a3, &v3, a2);
  }

  __break(1u);
  return result;
}

uint64_t _Ref.hashValue.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  result = a1 - 8;
  if (*(v3 + 64) == 8)
  {
    return *v1;
  }

  __break(1u);
  return result;
}

uint64_t (*_Ref.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  (*(a3 + 32))(a2, a3);
  return _Ref.subscript.read;
}

uint64_t (*_Ref.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  *(v5 + 32) = (*(a3 + 48))();
  return UnsafeTree.storage.modify;
}

uint64_t _Ref.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 48))(v10);
  v6 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 24))(v6, a1, AssociatedTypeWitness);
  v4(v10, 0);
  return (*(v8 + 8))(a1, AssociatedTypeWitness);
}

BOOL static _Ref<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v6(&v9, a3, a4);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6(&v9, a3, a4);
  return ObjCClassFromMetadata == swift_getObjCClassFromMetadata();
}

void (*Strong.wrappedValue.read(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Strong.value.read();
  return UnsafeTree.subjectsMap.readspecialized ;
}

uint64_t (*Strong.wrappedValue.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Strong.value.modify();
  return UnsafeTree.storage.modify;
}

uint64_t Strong.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized Strong.init(_:)(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t Strong.init(conditional:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v6);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v9 + 48))(v8, 1, a2) == 1)
  {
    v12 = *(v5 + 8);
    v12(a1, v4);
    v12(v8, v4);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v8, a2);
    v14 = specialized Strong.init(_:)(v11, a2);
    (*(v5 + 8))(a1, v4);
    (*(v9 + 8))(v11, a2);
    return v14;
  }
}

uint64_t key path getter for UnownedSafe.value : <A>UnownedSafe<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for UnownedSafe(0, *(a2 + a3 - 8), a3, a5);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectUnownedLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t (*UnownedSafe.value.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectUnownedLoadStrong();
  return UnownedSafe.subscript.modify;
}

uint64_t UnownedSafe.init(wrappedValue:)()
{
  swift_unknownObjectUnownedInit();

  return swift_unknownObjectRelease();
}

uint64_t UnownedSafe.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = a1;
  v6 = type metadata accessor for UnownedSafe(0, a2, a4, a5);
  return (*(*(v6 - 8) + 16))(a3, &v8, v6);
}

uint64_t UnownedSafe.init(conditional:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result)
  {
    swift_unknownObjectUnownedInit();
    swift_unknownObjectRelease();
    v7 = type metadata accessor for UnownedSafe(0, a2, v5, v6);
    return (*(*(v7 - 8) + 32))(a3, v8, v7);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t (*UnownedSafe.subscript.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectUnownedLoadStrong();
  return UnownedSafe.subscript.modify;
}

uint64_t (*UnownedSafe.wrappedValue.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectUnownedLoadStrong();
  return UnownedSafe.wrappedValue.modify;
}

uint64_t UnownedSafe.wrappedValue.setter(uint64_t a1)
{
  swift_unknownObjectUnownedAssign();

  return swift_unknownObjectRelease();
}

BOOL static UnownedSafe.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return Strong == v3;
}

uint64_t protocol witness for _Ref.value.getter in conformance UnownedSafe<A>@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectUnownedLoadStrong();
  *a1 = result;
  return result;
}

uint64_t protocol witness for _Ref.value.setter in conformance UnownedSafe<A>(void *a1)
{
  swift_unknownObjectUnownedAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for _Ref.value.modify in conformance UnownedSafe<A>(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectUnownedLoadStrong();
  return UnownedSafe.subscript.modify;
}

uint64_t UnownedSafe.value.modify(void *a1)
{
  swift_unknownObjectUnownedAssign();

  return swift_unknownObjectRelease();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance UnownedSafe<A>(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return Strong == v3;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnownedSafe<A>(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](*v1);
  return Hasher._finalize()();
}

uint64_t (*Unowned.value.modify(uint64_t *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  swift_unknownObjectRetain();
  return Unowned.subscript.modify;
}

uint64_t Unowned.init(conditional:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_unknownObjectRelease();
    return v1;
  }

  return result;
}

uint64_t (*Unowned.subscript.read(void *a1, uint64_t a2))()
{
  *a1 = a2;
  swift_unknownObjectRetain();
  return UnownedSafe.subscript.read;
}

uint64_t (*Unowned.subscript.modify(uint64_t *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  swift_unknownObjectRetain();
  return Unowned.subscript.modify;
}

uint64_t (*Unowned.wrappedValue.read(void *a1, uint64_t a2))()
{
  *a1 = a2;
  swift_unknownObjectRetain();
  return UnownedSafe.subscript.read;
}

uint64_t (*Unowned.wrappedValue.modify(uint64_t *a1))(uint64_t *a1)
{
  *a1 = *v1;
  a1[1] = v1;
  swift_unknownObjectRetain();
  return Unowned.wrappedValue.modify;
}

uint64_t Unowned.wrappedValue.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = swift_unknownObjectRelease();
  *v2 = v1;
  return result;
}

uint64_t Unowned.wrappedValue.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t protocol witness for _Ref.value.setter in conformance Unowned<A>(uint64_t *a1)
{
  v2 = *a1;
  result = swift_unknownObjectRelease();
  *v1 = v2;
  return result;
}

uint64_t (*protocol witness for _Ref.value.modify in conformance Unowned<A>(uint64_t *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  swift_unknownObjectRetain();
  return Unowned.subscript.modify;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Strong<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void))
{
  Hasher.init(_seed:)();
  a4(v7, *v4);
  return Hasher._finalize()();
}

uint64_t key path getter for Weak.value : <A>Weak<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for Weak(0, *(a2 + a3 - 8), a3, a5);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t Weak.value.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*Weak.value.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return Weak.value.modify;
}

uint64_t Weak.value.modify(void *a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t Weak.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t Weak.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  v8 = type metadata accessor for Weak(0, a2, v6, v7);
  v9 = *(v8 - 8);
  (*(v9 + 8))(a3, v8);
  v11 = a1;
  return (*(v9 + 16))(a3, &v11, v8);
}

uint64_t Weak.init(conditional:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  if (a1)
  {
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v10 = type metadata accessor for Weak(0, a2, v8, v9);
    result = (*(*(v10 - 8) + 32))(a3, v13, v10);
  }

  else
  {
    v12 = type metadata accessor for Weak(0, a2, v6, v7);
    result = (*(*(v12 - 8) + 8))(v13, v12);
    *a3 = 0;
  }

  *(a3 + 8) = a1 == 0;
  return result;
}

uint64_t UnsafeArray.withUnsafeMutableBufferPointer<A>(_:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = UnsafeBufferPointer.init(start:count:)();
  v7[0] = MEMORY[0x26D69D400](v4);
  v7[1] = v5;
  return a1(v7);
}

Swift::Void __swiftcall UnsafeArray.growToCapacity(_:)(Swift::Int a1)
{
  v3 = *(v2 + 8);
  if (v3 < a1 || (v3 | a1) == 0)
  {
    if (a1 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = a1;
    }

    if (a1 > 0xFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v6 = *v2;
      v7 = *(v1 + 16);
      *(v2 + 8) = v5;
      if (!v6)
      {
        goto LABEL_15;
      }

      v8 = *(v7 - 8);
      v9 = v5;
      if (*(v8 + 82))
      {
        v12 = static UnsafeMutablePointer.allocate(capacity:)();
        *v2 = v12;
        if (v12)
        {
          UnsafeMutablePointer.moveInitialize(from:count:)();

LABEL_24:
          JUMPOUT(0x26D69D370);
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v10 = *(v8 + 72);
      if ((v9 * v10) >> 64 == (v9 * v10) >> 63)
      {
        v11 = realloc(v6, v9 * v10);
        if (v11)
        {
LABEL_16:
          *v2 = v11;
          return;
        }

        __break(1u);
LABEL_15:
        v11 = static UnsafeMutablePointer.allocate(capacity:)();
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_23;
  }
}

uint64_t UnsafeArray.bytesCapacity.getter(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 72);
  result = a2 * v3;
  if ((a2 * v3) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeArray.bytesCount.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 72);
  result = HIDWORD(a2) * v3;
  if ((HIDWORD(a2) * v3) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t key path getter for UnsafeArray.subscript(_:) : <A>UnsafeArray<A>A@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 >= *(result + 12))
  {
    __break(1u);
  }

  else if (*result)
  {
    v4 = *(*(a2 + a3 - 8) - 8);
    return (*(v4 + 16))(a4, *result + *(v4 + 72) * *a2);
  }

  __break(1u);
  return result;
}

uint64_t key path setter for UnsafeArray.subscript(_:) : <A>UnsafeArray<A>A(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a3 >= *(a2 + 12))
  {
    __break(1u);
  }

  else if (*a2)
  {
    v4 = *(*(a3 + a4 - 8) - 8);
    return (*(v4 + 24))(*a2 + *(v4 + 72) * *a3, result);
  }

  __break(1u);
  return result;
}

uint64_t UnsafeArray.subscript.setter(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a2 >= HIDWORD(a4))
  {
    __break(1u);
  }

  else if (a3)
  {
    return (*(*(a5 - 8) + 40))(a3 + *(*(a5 - 8) + 72) * a2, result, a5);
  }

  __break(1u);
  return result;
}

uint64_t key path getter for UnsafeArray.subscript<A>(_:) : <A><A1>UnsafeArray<A>AA1@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v5 = *(a2 + a3 - 16);
  v31 = *(a2 + a3 - 24);
  v6 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = swift_checkMetadataState();
  v9 = MEMORY[0x28223BE20](v8);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = *a1;
  v14 = *(v6 + 56);
  v15 = v6;
  v17 = v16;
  v14(v5, v15);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v33 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v19 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v18)
    {
      if (v19 > 64)
      {
LABEL_8:
        lazy protocol witness table accessor for type Int and conformance Int();
        v20 = v30;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v21 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v17 + 8))(v20, v8);
        if ((v21 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v23 = v30;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v24 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v17 + 8))(v23, v8);
      if (v24)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v19 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
    v25 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v26 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v25 & 1) == 0)
    {
      break;
    }

    if (v26 <= 64)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    v27 = v30;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v28 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v17 + 8))(v27, v8);
    if (v28)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v26 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v29 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v17 + 8))(v12, v8);
  return (*(*(v31 - 8) + 16))(v32, v13 + *(*(v31 - 8) + 72) * v29);
}

uint64_t key path setter for UnsafeArray.subscript<A>(_:) : <A><A1>UnsafeArray<A>AA1(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v31 = *(a3 + a4 - 24);
  v32 = a1;
  v6 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = swift_checkMetadataState();
  v9 = MEMORY[0x28223BE20](v8);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = *a2;
  v14 = *(v6 + 56);
  v15 = v6;
  v17 = v16;
  v14(v5, v15);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v33 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v19 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v18)
    {
      if (v19 > 64)
      {
LABEL_8:
        lazy protocol witness table accessor for type Int and conformance Int();
        v20 = v30;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v21 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v17 + 8))(v20, v8);
        if ((v21 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v23 = v30;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v24 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v17 + 8))(v23, v8);
      if (v24)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v19 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
    v25 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v26 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v25 & 1) == 0)
    {
      break;
    }

    if (v26 <= 64)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    v27 = v30;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v28 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v17 + 8))(v27, v8);
    if (v28)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v26 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v29 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v17 + 8))(v12, v8);
  return (*(*(v31 - 8) + 24))(v13 + *(*(v31 - 8) + 72) * v29, v32);
}

uint64_t UnsafeArray.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a1;
  v34 = a5;
  v32 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = swift_checkMetadataState();
  v12 = MEMORY[0x28223BE20](v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v16 = *(a7 + 56);
  v35 = a2;
  v18 = v17;
  v16(a6, a7);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v36 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v19 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v20 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v19)
    {
      if (v20 > 64)
      {
LABEL_8:
        lazy protocol witness table accessor for type Int and conformance Int();
        v21 = v31;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v22 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v18 + 8))(v21, v11);
        if ((v22 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v24 = v31;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v25 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v18 + 8))(v24, v11);
      if (v25)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v20 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    v26 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v27 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v26 & 1) == 0)
    {
      break;
    }

    if (v27 <= 64)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    v28 = v31;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v29 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v18 + 8))(v28, v11);
    if (v29)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v27 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v30 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v18 + 8))(v15, v11);
  (*(*(v34 - 8) + 40))(v32 + *(*(v34 - 8) + 72) * v30, v33);
  return (*(*(a6 - 8) + 8))(v35, a6);
}

uint64_t UnsafeArray.popLast()(uint64_t a1)
{
  if (*(v1 + 12))
  {
    if (*v1)
    {
      WitnessTable = swift_getWitnessTable();
      ArrayLike.lastIndex.getter(a1, WitnessTable);
      result = UnsafeMutablePointer.move()();
      v5 = *(v1 + 12);
      v6 = v5 != 0;
      v7 = v5 - 1;
      if (v6)
      {
        *(v1 + 12) = v7;
        return result;
      }

      __break(1u);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance UnsafeArray<A>(uint64_t result, void *a2, uint64_t a3)
{
  if (*a2 >= *(v3 + 12))
  {
    __break(1u);
  }

  else if (*v3)
  {
    return (*(*(*(a3 + 16) - 8) + 40))(*v3 + *(*(*(a3 + 16) - 8) + 72) * *a2, result);
  }

  __break(1u);
  return result;
}

void (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeArray<A>(uint64_t a1, void *a2))()
{
  if (*a2 >= *(v2 + 12))
  {
    __break(1u);
  }

  else if (*v2)
  {
    return EventTreeStats.count.modify;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance UnsafeArray<A>(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v7[1] = a1[1];
  v6 = *a2;
  v7[0] = v4;
  return specialized MutableCollection<>.subscript.setter(v7, &v6, a3, a4);
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeArray<A>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = MutableCollection<>.subscript.modify(v8, a2, a3, a4);
  return protocol witness for AMortalReference.ref.modify in conformance MortalReference<A>;
}

void (*MutableCollection<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Slice();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[6] = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for Range();
  v11[7] = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  v11[8] = v18;
  if (v9)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  v11[9] = v20;
  (*(v19 + 16))();
  MutableCollection<>.subscript.getter(a2, a3, a4, v16);
  return MutableCollection<>.subscript.modify;
}

void MutableCollection<>.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v10 = (*a1)[7];
  v8 = (*a1)[3];
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    v9 = *(v4 + 8);
    v9(v3, v8);
    (*(v6 + 8))(v5, v10);
    v9(v7, v8);
  }

  else
  {
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    (*(v6 + 8))(v5, v10);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance UnsafeArray<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  specialized UnsafeArray.init(arrayLiteral:)(a1, *(a2 + 16));
  v5 = v4;
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

uint64_t protocol witness for Clonable.init(copying:) in conformance UnsafeArray<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[0] = *a1;
  v5[1] = a1[1];
  return Clonable.init(copying:)(v5, a2, a3, a4);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance UnsafeArray<A>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(before:)();
}

void *_s21SwiftUITracingSupport11UnsafeArrayVyxGSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(_:offsetBy:)();
}

uint64_t _s21SwiftUITracingSupport11UnsafeArrayVyxGSlAASl5index_8offsetBy07limitedH05IndexQzSgAI_SiAItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC6F0](a1, a2, a3, a4, WitnessTable);
}

uint64_t _s21SwiftUITracingSupport11UnsafeArrayVyxGSlAASl8distance4from2toSi5IndexQz_AItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.distance(from:to:)();
}

unint64_t protocol witness for Collection.endIndex.getter in conformance UnsafeArray<A>@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = UnsafeArray.count.getter(a1, *(v2 + 8));
  *a2 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance UnsafeArray<A>(void *a1, unint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = UnsafeArray.subscript.read(v7, *a2, *v3, *(v3 + 8), *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance UnsafeArray<A>;
}

void protocol witness for Collection.subscript.read in conformance UnsafeArray<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*UnsafeArray.subscript.read(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5))()
{
  v9 = HIDWORD(a4);
  v10 = *(a5 - 8);
  v11 = v10;
  *a1 = a5;
  a1[1] = v10;
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v10 + 64));
  }

  a1[2] = result;
  if (v9 <= a2)
  {
    __break(1u);
  }

  else if (a3)
  {
    (*(v11 + 16))(result, a3 + *(v11 + 72) * a2, a5);
    return UnsafeArray.subscript.read;
  }

  __break(1u);
  return result;
}

void _Ref.subscript.read(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}
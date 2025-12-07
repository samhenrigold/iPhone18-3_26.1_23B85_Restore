uint64_t MLDataTable.prefix(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = v2;
  if (a1 <= 0)
  {
    v9 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v8 = swift_allocError(&type metadata for MLCreateError, v9, 0, 0);
    result = 0xD00000000000002BLL;
    *v11 = 0xD00000000000002BLL;
    *(v11 + 8) = "Column initialized as invalid" + 0x8000000000000000;
    *(v11 + 16) = 0;
    *(v11 + 32) = 0;
    *(v11 + 48) = 0;
LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

  v5 = *v3;
  if (*(v3 + 8))
  {
    v21[0] = *v3;
    outlined copy of Result<_DataTable, Error>(v5, 1);
    swift_errorRetain(v5);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v7 = _getErrorEmbeddedNSError<A>(_:)(v21, v6, &protocol self-conformance witness table for Error);
    if (v7)
    {
      v8 = v7;
      outlined consume of Result<_DataTable, Error>(v5, 1);
    }

    else
    {
      v8 = swift_allocError(v6, &protocol self-conformance witness table for Error, 0, 0);
      *v14 = v5;
    }

    result = outlined consume of Result<_DataTable, Error>(v5, 1);
    goto LABEL_9;
  }

  v12 = *(*(v5 + 16) + 16);

  v13 = a2(v12, a1);
  v16 = v13;
  if (!v13)
  {
    BUG();
  }

  v15 = 0;
  v17 = type metadata accessor for CMLTable();
  v18 = swift_allocObject(v17, 24, 7);
  *(v18 + 16) = v16;
  v19 = v18;
  v20 = type metadata accessor for _DataTable();
  v8 = swift_allocObject(v20, 40, 7);
  *(v8 + 24) = 0;
  *(v8 + 16) = v19;
  result = outlined consume of Result<_DataTable, Error>(v5, 0);
LABEL_10:
  *v4 = v8;
  *(v4 + 8) = v15;
  return result;
}

uint64_t MLDataTable.sort(columnNamed:byIncreasingOrder:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v6 = *v4;
  if (*(v4 + 8))
  {
    v18 = *v4;
    outlined copy of Result<_DataTable, Error>(v6, 1);
    swift_errorRetain(v6);
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v8 = _getErrorEmbeddedNSError<A>(_:)(&v18, v7, &protocol self-conformance witness table for Error);
    if (v8)
    {
      v9 = v8;
      outlined consume of Result<_DataTable, Error>(v6, 1);
    }

    else
    {
      v9 = swift_allocError(v7, &protocol self-conformance witness table for Error, 0, 0);
      *v12 = v6;
    }

    result = outlined consume of Result<_DataTable, Error>(v6, 1);
    v15 = 1;
  }

  else
  {
    v19 = &v17;
    v10 = alloca(25);
    v11 = alloca(32);
    v19 = *(v6 + 16);
    v20 = a3 & 1;

    v13 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.sorted(by:increasingOrder:), &v17, a1, a2, type metadata accessor for CMLTable, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    v14 = type metadata accessor for _DataTable();
    v9 = swift_allocObject(v14, 40, 7);
    *(v9 + 24) = 0;
    *(v9 + 16) = v13;
    v15 = 0;
    result = outlined consume of Result<_DataTable, Error>(v6, 0);
  }

  *v5 = v9;
  *(v5 + 8) = v15;
  return result;
}

uint64_t *MLDataTable.expand(columnNamed:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v23 = v5;
  v7 = *v6;
  if (*(v6 + 8))
  {
    v22 = *v6;
    outlined copy of Result<_DataTable, Error>(v7, 1);
    swift_errorRetain(v7);
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v9 = _getErrorEmbeddedNSError<A>(_:)(&v22, v8, &protocol self-conformance witness table for Error);
    if (v9)
    {
      v10 = v9;
      outlined consume of Result<_DataTable, Error>(v7, 1);
    }

    else
    {
      v10 = swift_allocError(v8, &protocol self-conformance witness table for Error, 0, 0);
      *v16 = v7;
    }

    outlined consume of Result<_DataTable, Error>(v7, 1);
    v20 = 1;
  }

  else
  {
    v24 = v21;
    v13 = *(v7 + 16);
    v14 = alloca(40);
    v15 = alloca(48);
    v22 = a3;
    v23 = a4;
    v24 = v13;

    v18 = specialized String.withCString<A>(_:)(a5, v21, a1, a2, type metadata accessor for CMLTable, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    v19 = type metadata accessor for _DataTable();
    v10 = swift_allocObject(v19, 40, 7);
    *(v10 + 24) = 0;
    *(v10 + 16) = v18;
    v20 = 0;
    outlined consume of Result<_DataTable, Error>(v7, 0);
  }

  result = v23;
  *v23 = v10;
  *(result + 8) = v20;
  return result;
}

uint64_t MLDataTable.show()()
{
  v2 = v0;
  v3 = *(v1 + 8);
  v6 = *v1;
  v7 = v3;
  outlined copy of Result<_DataTable, Error>(v6, v3);
  v4 = MLDataTableVisualization.init(_:)(&v6);
  v2[3] = &type metadata for MLDataTableVisualization;
  result = lazy protocol witness table accessor for type MLDataTableVisualization and conformance MLDataTableVisualization();
  v2[4] = result;
  *v2 = v4;
  return result;
}

uint64_t MLDataTable.playgroundDescription.getter()
{
  v2 = v0;
  v3 = *v1;
  if (*(v1 + 8))
  {
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    v42[0] = v3;
    outlined copy of Result<_DataTable, Error>(v3, 1);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(v42, &v39, v4, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v41 = v39;
    v2[3] = &type metadata for String;
    result = outlined consume of Result<_DataTable, Error>(v3, 1);
    *v2 = v41;
  }

  else
  {
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    outlined copy of Result<_DataTable, Error>(v3, 0);
    _StringGuts.grow(_:)(36);

    v6 = CMLTable.rows()();

    if (v7)
    {
      swift_unexpectedError(v7, "CreateML/MLDataTable.swift", 26, 1, 1330);
      BUG();
    }

    v42[0] = v6;
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v8._object;
    String.append(_:)(v8);
    object;
    v10._countAndFlagsBits = 0x20582073776F7220;
    v10._object = 0xE800000000000000;
    String.append(_:)(v10);
    *&v41 = v3;
    _DataTable.columnNames.getter();

    v11 = CMLSequence.size.getter();
    v12 = specialized RandomAccessCollection<>.distance(from:to:)(0, v11);

    v13 = CMLSequence.size.getter();
    v14 = specialized RandomAccessCollection<>.distance(from:to:)(0, v13);

    if (v14 < 0)
    {
      BUG();
    }

    v15 = CMLSequence.size.getter();
    v16 = specialized RandomAccessCollection<>.distance(from:to:)(0, v15);
    v42[0];
    if (v12 < 0 || v16 < v12)
    {
      BUG();
    }

    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v18 = v17._object;
    String.append(_:)(v17);
    v18;
    v19._object = "ed on this device" + 0x8000000000000000;
    v19._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v19);
    _DataTable.columnNames.getter();

    v20 = CMLSequence.size.getter();
    v21 = specialized RandomAccessCollection<>.distance(from:to:)(0, v20);

    v22 = CMLSequence.size.getter();
    v23 = specialized RandomAccessCollection<>.distance(from:to:)(0, v22);

    if (v23 < 0)
    {
      BUG();
    }

    v24 = CMLSequence.size.getter();
    v25 = specialized RandomAccessCollection<>.distance(from:to:)(0, v24);
    v42[0];
    if (v21 < 0 || v25 < v21)
    {
      BUG();
    }

    v40 = v2;

    ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_SSs5NeverOTg565_s8CreateML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n(0, v21);
    v27 = ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n;
    v28 = Array.description.getter(ML11MLDataTableV11ColumnNamesV11descriptionSSvgSSSiXEfU_0F2ML0hI0V0kL0VTf1cn_n, &type metadata for String);
    v30 = v29;
    v27;
    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v30;
    SBYTE8(v39);
    outlined copy of Result<_DataTable, Error>(v41, 0);
    outlined copy of Result<_DataTable, Error>(v41, 0);

    v32 = CMLTable.description()();
    if (v33)
    {
      countAndFlagsBits = 0;
      v33;

      v35 = 0;
    }

    else
    {
      countAndFlagsBits = v32._countAndFlagsBits;
      v35 = v32._object;
    }

    v36 = v40;
    v37 = v41;
    outlined consume of Result<_DataTable, Error>(v41, 0);
    outlined consume of Result<_DataTable, Error>(v41, 0);
    objc_allocWithZone(NSMutableAttributedString);
    v38 = @nonobjc NSMutableAttributedString.init(string:attributes:)(countAndFlagsBits, v35, 0);
    v40[3] = type metadata accessor for NSMutableAttributedString();
    result = outlined consume of Result<_DataTable, Error>(v37, 0);
    *v36 = v38;
  }

  return result;
}

uint64_t MLDataTable.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    v8[0] = v1;
    v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(v8, v7, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    return v7[0];
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v1, 0);

    countAndFlagsBits = CMLTable.description()()._countAndFlagsBits;
    if (v5)
    {
      v5;

      v3 = 0;
    }

    else
    {
      v3 = countAndFlagsBits;
    }

    outlined consume of Result<_DataTable, Error>(v1, 0);
  }

  return v3;
}

id @nonobjc NSMutableAttributedString.init(string:attributes:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();
  a2;
  if (a3)
  {
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    a3;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6.super.isa];

  return v7;
}

uint64_t specialized closure #1 in LazyMapSequence<>.map<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  v12[0] = a1;
  v12[1] = a2;
  a6(v12);
  a3(v9);
  v7 = v10;
  LOBYTE(a3) = v11;
  v9[8];
  return outlined consume of Result<_DataTable, Error>(v7, a3);
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v37 = a3;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return a1;
  }

  v33 = v3;
  v35 = a1;
  v5 = (a1 + 48);
  while (1)
  {
    v31 = v4;
    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v32 = v5;
    v30 = *v5;
    v28[0] = v6;
    v28[1] = v7;
    v8 = *v37;

    v34 = v6;
    v36 = v7;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
    v11 = (v9 & 1) == 0;
    v12 = __OFADD__(v8[2], v11);
    v13 = v8[2] + v11;
    if (v12)
    {
      BUG();
    }

    v14 = v9;
    if (v8[3] >= v13)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Double>);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a2);
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v36);
      LOBYTE(v16) = v16 & 1;
      if ((v14 & 1) != v16)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v36, v16, v15);
        BUG();
      }
    }

    if (v14)
    {
      break;
    }

    v17 = *v37;
    v17[(v10 >> 6) + 8] |= 1 << v10;
    v18 = v17[6];
    v19 = 16 * v10;
    *(v18 + v19) = v34;
    *(v18 + v19 + 8) = v36;
    *(v17[7] + 8 * v10) = v30;
    v20 = v17[2];
    v12 = __OFADD__(1, v20);
    v21 = v20 + 1;
    if (v12)
    {
      BUG();
    }

    v17[2] = v21;
    v5 = v32 + 3;
    a2 = 1;
    v4 = v31 - 1;
    if (v31 == 1)
    {
      return v35;
    }
  }

  v22 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
  swift_willThrow();
  v29 = v22;
  swift_errorRetain(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v29, v23, &type metadata for _MergeError, 0))
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v25._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
    v25._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v25);
    _print_unlocked<A, B>(_:_:)(v28, &v26, &type metadata for String, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v25._countAndFlagsBits = 39;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v26, v27, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
    BUG();
  }

  v35;
  v36;
  return v29;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, double a6)
{
  v49 = v6;
  v52 = a5;
  v55 = a4;

  v9 = a3;
  v45 = a2 - a3;
  v50 = a1;
  v10 = (a1 + 48);
  v11 = 0;
  v46 = a3;
  v51 = a2;
  while (1)
  {
    v47 = v11 + a2;
    v43 = v11;
    if (v11 == *(v50 + 16))
    {
      return swift_bridgeObjectRelease_n(v50, 2);
    }

    if (v11 >= *(v50 + 16))
    {
      BUG();
    }

    if (!(v11 + v45))
    {
      return swift_bridgeObjectRelease_n(v50, 2);
    }

    if (v9 < a2)
    {
      BUG();
    }

    if (v47 >= v9)
    {
      BUG();
    }

    v12 = *(v10 - 2);
    v13 = *(v10 - 1);
    v56 = *v10;
    outlined copy of MLDataValue(v12, v13, v56);
    if (v56 == 0xFF)
    {
      return swift_bridgeObjectRelease_n(v50, 2);
    }

    v44 = v10;
    v40[0] = v12;
    v40[1] = v13;
    v41 = v56;
    v14 = *v52;
    v48 = v12;
    *&v15 = v12;
    v54 = v13;
    *(&v15 + 1) = v13;
    v53 = v56;
    specialized __RawDictionaryStorage.find<A>(_:)(v15, v56, a6);
    v18 = v17;
    *&v15 = (v16 & 1) == 0;
    v19 = __OFADD__(v14[2], v15);
    v20 = v14[2] + v15;
    if (v19)
    {
      BUG();
    }

    v21 = v16;
    if (v14[3] < v20)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, v55);
      v22 = v48;
      *&v23 = v48;
      *(&v23 + 1) = v54;
      specialized __RawDictionaryStorage.find<A>(_:)(v23, v53, a6);
      v18 = v25;
      LOBYTE(v26) = v26 & 1;
      if ((v21 & 1) != v26)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v54, v26, v24);
        BUG();
      }

      goto LABEL_11;
    }

    a2 = v51;
    v22 = v48;
    if ((v55 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLDataValue, Int>);
      _NativeDictionary.copy()();
LABEL_11:
      a2 = v51;
    }

    v27 = v54;
    if (v21)
    {
      break;
    }

    v28 = *v52;
    v28[(v18 >> 6) + 8] |= 1 << v18;
    v29 = v28[6];
    v30 = 24 * v18;
    *(v29 + v30) = v22;
    *(v29 + v30 + 8) = v27;
    *(v29 + v30 + 16) = v56;
    *(v28[7] + 8 * v18) = v47;
    v31 = v28[2];
    v19 = __OFADD__(1, v31);
    v32 = v31 + 1;
    if (v19)
    {
      BUG();
    }

    v28[2] = v32;
    v10 = v44 + 24;
    v11 = v43 + 1;
    LOBYTE(v28) = 1;
    v55 = v28;
    v9 = v46;
  }

  v34 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
  swift_willThrow();
  v42 = v34;
  v49 = v34;
  swift_errorRetain(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v42, v35, &type metadata for _MergeError, 0))
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v37._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
    v37._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v37);
    _print_unlocked<A, B>(_:_:)(v40, &v38, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v38, v39, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
    BUG();
  }

  v36 = v50;
  v50;
  outlined consume of MLDataValue(v22, v54, v53);
  v36;
  return v42;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(unint64_t *), uint64_t a3, int a4, void *a5)
{
  v58 = v5;
  v57 = a5;
  v59 = a4;
  v49 = a2;
  v7 = a1;

  v55 = a3;

  v8 = 0;
  for (i = a1; ; v7 = i)
  {

    v9 = CMLSequence.size.getter();
    v10 = specialized RandomAccessCollection<>.distance(from:to:)(0, v9);

    if (v8 == v10)
    {
      goto LABEL_17;
    }

    v53 = v8;
    v11 = v58;
    CMLSequence.value(at:)(v8);
    if (v11)
    {
      swift_unexpectedError(v11, "CreateML/SequenceType.swift", 27, 1, 76);
      BUG();
    }

    v12 = CMLFeatureValue.stringValue()();
    v58 = v13;
    if (v13)
    {
      v58;

      v51 = 0;
      v52 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);
      v52;
      v51 = 0xD000000000000022;
      v52 = "able.ColumnNames.swift" + 0x8000000000000000;
      v42 = v53;
      v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      object = v38._object;
      String.append(_:)(v38);
      object;
      v40._countAndFlagsBits = 46;
      v40._object = 0xE100000000000000;
      String.append(_:)(v40);
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v51, v52, "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
      goto LABEL_25;
    }

    countAndFlagsBits = v12._countAndFlagsBits;
    v15 = v12._object;

    v16 = CMLSequence.size.getter();
    v17 = specialized RandomAccessCollection<>.distance(from:to:)(0, v16);

    if (v53 >= v17)
    {
      BUG();
    }

    v51 = countAndFlagsBits;
    v52 = v15;
    v49(&v51);
    v15;
    if (!v45)
    {
      break;
    }

    v18 = v44;
    v50 = v46;
    v51 = v44;
    v52 = v45;
    v60 = v47;
    v19 = *v57;
    v54 = v45;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v45);
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v19[2], v22);
    v24 = v19[2] + v22;
    if (v23)
    {
      BUG();
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if ((v59 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLUntypedColumn>);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, v59);
      v26 = v54;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v54);
      LOBYTE(v28) = v28 & 1;
      if ((v25 & 1) != v28)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v26, v28, v27);
        BUG();
      }
    }

    if (v25)
    {
      v36 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
      swift_willThrow();
      v48 = v36;
      swift_errorRetain(v36);
      v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
      if (!swift_dynamicCast(&demangling cache variable for type metadata for Error, &v48, v37, &type metadata for _MergeError, 0))
      {

        outlined consume of Result<_DataTable, Error>(v50, v60);

        v54;
        return v48;
      }

      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);
      v41._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
      v41._countAndFlagsBits = 0xD00000000000001BLL;
      String.append(_:)(v41);
      _print_unlocked<A, B>(_:_:)(&v51, &v42, &type metadata for String, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v41._countAndFlagsBits = 39;
      v41._object = 0xE100000000000000;
      String.append(_:)(v41);
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v42, v43, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
LABEL_25:
      BUG();
    }

    v29 = *v57;
    v29[(v21 >> 6) + 8] |= 1 << v21;
    v30 = v29[6];
    v31 = 16 * v21;
    *(v30 + v31) = v18;
    *(v30 + v31 + 8) = v54;
    v32 = v29[7];
    *(v32 + v31) = v50;
    *(v32 + v31 + 8) = v60 & 1;
    v33 = v29[2];
    v23 = __OFADD__(1, v33);
    v34 = v33 + 1;
    if (v23)
    {
      BUG();
    }

    v29[2] = v34;
    v8 = v53 + 1;
    LOBYTE(v29) = 1;
    v59 = v29;
  }

  v7 = i;
LABEL_17:
  v55;
  return v7;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v48 = a5;
  v41 = a1[2];
  if (!v41)
  {
    return a1;
  }

  v7 = __OFSUB__(a3, a2);
  v8 = a3 - a2;
  if (!v8)
  {
    return a1;
  }

  if (v8 < 0 != v7)
  {
    BUG();
  }

  v49 = a4;
  v42 = v5;
  v47 = a1[4];
  v10 = a1[5];
  v11 = v8;

  v38 = v11;
  v40 = v11 - 1;
  v12 = a1 + 7;
  --v41;
  v13 = 0;
  v46 = a1;
  v39 = a2;
  while (1)
  {
    v44 = v12;

    if (v38 == v13)
    {
      BUG();
    }

    v45 = v13;
    v36[0] = v47;
    v36[1] = v10;
    v14 = *v48;
    v43 = v10;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v10);
    v17 = (v15 & 1) == 0;
    v7 = __OFADD__(v14[2], v17);
    v18 = v14[2] + v17;
    if (v7)
    {
      BUG();
    }

    v19 = v15;
    if (v14[3] >= v18)
    {
      v22 = v44;
      v23 = v45;
      if ((v49 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Int>);
        _NativeDictionary.copy()();
        v23 = v45;
        v22 = v44;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, v49);
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v43);
      LOBYTE(v21) = v21 & 1;
      if ((v19 & 1) != v21)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v43, v21, v20);
        BUG();
      }

      v22 = v44;
      v23 = v45;
    }

    if (v19)
    {
      break;
    }

    v24 = *v48;
    v24[(v16 >> 6) + 8] |= 1 << v16;
    v25 = v24[6];
    v26 = 16 * v16;
    *(v25 + v26) = v47;
    *(v25 + v26 + 8) = v43;
    *(v24[7] + 8 * v16) = a2 + v23;
    v27 = v24[2];
    v7 = __OFADD__(1, v27);
    v28 = v27 + 1;
    if (v7)
    {
      BUG();
    }

    v24[2] = v28;
    if (v41 == v23)
    {
      v32 = v46;
      return swift_bridgeObjectRelease_n(v32, 2);
    }

    v13 = v23 + 1;
    if ((v23 + 1) >= v46[2])
    {
      BUG();
    }

    if (v40 == v23)
    {
      v32 = v46;
      return swift_bridgeObjectRelease_n(v32, 2);
    }

    v47 = *(v22 - 1);
    v29 = v47;
    v10 = *v22;
    v12 = v22 + 2;
    LOBYTE(v29) = 1;
    v49 = v29;
  }

  v30 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
  swift_willThrow();
  v37 = v30;
  swift_errorRetain(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v37, v31, &type metadata for _MergeError, 0))
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v33._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
    v33._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v33);
    _print_unlocked<A, B>(_:_:)(v36, &v34, &type metadata for String, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v33._countAndFlagsBits = 39;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v34, v35, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
    BUG();
  }

  v43;
  swift_bridgeObjectRelease_n(v46, 2);
  return v37;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v54 = a5;
  v46 = *(a1 + 16);
  if (!v46)
  {
    return a1;
  }

  v6 = a3;
  if (a2 == a3)
  {
    return a1;
  }

  if (a2 > a3)
  {
    BUG();
  }

  v55 = a4;
  v49 = v5;
  *v50 = *(a1 + 32);
  v8 = *(a1 + 48);

  si128 = _mm_load_si128(v50);
  v10 = a2;
  v11 = (a1 + 72);
  v12 = 1;
  v53 = a1;
  v52 = v6;
  while (1)
  {
    if (v6 == v10)
    {
      BUG();
    }

    v44 = v12;
    v45 = v11;
    v43 = v10;
    v13 = v8;
    v40 = si128;
    v56 = v8 & 1;
    v41 = v8 & 1;
    v14 = *v54;
    *v50 = si128;
    epi64 = _mm_extract_epi64(si128, 1);
    outlined copy of MLRecommender.Identifier(si128.i64[0], epi64, v13);
    v51 = v13;
    v47 = si128.i64[0];
    v48 = epi64;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(si128.u64[0], epi64, v13 & 1);
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v14[2], v18);
    v20 = v14[2] + v18;
    if (v19)
    {
      BUG();
    }

    v21 = v16;
    if (v14[3] >= v20)
    {
      v6 = v52;
      v25 = *v50;
      v22 = v56;
      if ((v55 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLRecommender.Identifier, Int>);
        _NativeDictionary.copy()();
        v25 = *v50;
        v6 = v52;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, v55);
      v22 = v56;
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48, v56);
      LOBYTE(v24) = v24 & 1;
      if ((v21 & 1) != v24)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLRecommender.Identifier, v48, v24, v23);
        BUG();
      }

      v6 = v52;
      v25 = *v50;
    }

    if (v21)
    {
      break;
    }

    v26 = *v54;
    v27 = 1 << v17;
    v26[(v17 >> 6) + 8] |= 1 << v17;
    v28 = v26[6];
    v29 = 24 * v17;
    *(v28 + v29) = v25;
    *(v28 + v29 + 16) = v22;
    v30 = v43;
    *(v26[7] + 8 * v17) = v43;
    v31 = v26[2];
    v19 = __OFADD__(1, v31);
    v32 = v31 + 1;
    if (v19)
    {
      BUG();
    }

    v26[2] = v32;
    if (v46 == v44)
    {
      v36 = v53;
      return swift_bridgeObjectRelease_n(v36, 2);
    }

    if (v44 >= *(v53 + 16))
    {
      BUG();
    }

    v10 = v30 + 1;
    v12 = v44 + 1;
    v8 = v45->i8[0];
    si128 = _mm_loadu_si128(v45 - 1);
    v11 = (v45 + 24);
    LOBYTE(v27) = 1;
    v55 = v27;
    if (v6 == v10)
    {
      v36 = v53;
      return swift_bridgeObjectRelease_n(v36, 2);
    }
  }

  v33 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
  swift_willThrow();
  v42 = v33;
  swift_errorRetain(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v42, v34, &type metadata for _MergeError, 0))
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v37._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
    v37._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v37);
    _print_unlocked<A, B>(_:_:)(&v40, &v38, &type metadata for MLRecommender.Identifier, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v38, v39, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
    BUG();
  }

  v35 = v53;
  v53;
  outlined consume of MLRecommender.Identifier(v47, v48, v51);
  v35;
  return v42;
}

uint64_t sub_2660BD()
{

  return swift_deallocObject(v0, 56, 7);
}

uint64_t sub_26611C()
{

  *(v0 + 40);

  return swift_deallocObject(v0, 64, 7);
}

uint64_t lazy protocol witness table accessor for type MLDataTableVisualization and conformance MLDataTableVisualization()
{
  result = lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization;
  if (!lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTableVisualization, &type metadata for MLDataTableVisualization);
    lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization;
  if (!lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTableVisualization, &type metadata for MLDataTableVisualization);
    lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization;
  if (!lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTableVisualization, &type metadata for MLDataTableVisualization);
    lazy protocol witness table cache variable for type MLDataTableVisualization and conformance MLDataTableVisualization = result;
  }

  return result;
}

uint64_t type metadata accessor for NSMutableAttributedString()
{
  result = lazy cache variable for type metadata for NSMutableAttributedString;
  if (!lazy cache variable for type metadata for NSMutableAttributedString)
  {
    v1 = objc_opt_self(NSMutableAttributedString);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for NSMutableAttributedString = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLDataTable.JoinType and conformance MLDataTable.JoinType()
{
  result = lazy protocol witness table cache variable for type MLDataTable.JoinType and conformance MLDataTable.JoinType;
  if (!lazy protocol witness table cache variable for type MLDataTable.JoinType and conformance MLDataTable.JoinType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.JoinType, &type metadata for MLDataTable.JoinType);
    lazy protocol witness table cache variable for type MLDataTable.JoinType and conformance MLDataTable.JoinType = result;
  }

  return result;
}

uint64_t outlined consume of Result<(), Error>(uint64_t a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  return result;
}

uint64_t outlined init with copy of (String, JSONType)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, JSONType));
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

unint64_t MLWordTagger.FeatureExtractorType.description.getter()
{
  result = 0xD000000000000016;
  if (*v0)
  {
    if (*v0 == 1)
    {
      return 0xD000000000000027;
    }

    else
    {
      return 0xD000000000000046;
    }
  }

  return result;
}

Swift::Int MLWordTagger.FeatureExtractorType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t *MLWordTagger.FeatureExtractorType.playgroundDescription.getter()
{
  v2 = 0xD000000000000016;
  if (*v1)
  {
    if (*v1 == 1)
    {
      v2 = 0xD000000000000027;
      v3 = "Unspecified Language";
    }

    else
    {
      v2 = 0xD000000000000046;
      v3 = "Average Tokens per Sequence";
    }
  }

  else
  {
    v3 = "ge Model Text Embedding";
  }

  result[3] = &type metadata for String;
  *result = v2;
  result[1] = v3 | 0x8000000000000000;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLWordTagger.FeatureExtractorType and conformance MLWordTagger.FeatureExtractorType()
{
  result = lazy protocol witness table cache variable for type MLWordTagger.FeatureExtractorType and conformance MLWordTagger.FeatureExtractorType;
  if (!lazy protocol witness table cache variable for type MLWordTagger.FeatureExtractorType and conformance MLWordTagger.FeatureExtractorType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLWordTagger.FeatureExtractorType, &type metadata for MLWordTagger.FeatureExtractorType);
    lazy protocol witness table cache variable for type MLWordTagger.FeatureExtractorType and conformance MLWordTagger.FeatureExtractorType = result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for MLWordTagger.FeatureExtractorType(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFE)
  {
    v4 = a3 + 2;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFD)
  {
    v5 = a2 - 254;
    v6 = (v5 >> 8) + 1;
    *a1 = v5;
    result = result;
    switch(result)
    {
      case 0:
        return result;
      case 1:
        a1[1] = v6;
        break;
      case 2:
        *(a1 + 1) = v6;
        break;
      case 3:
LABEL_16:
        BUG();
      case 4:
        *(a1 + 1) = v6;
        break;
    }
  }

  else
  {
    result = result;
    switch(result)
    {
      case 0:
        goto LABEL_11;
      case 1:
        a1[1] = 0;
        goto LABEL_11;
      case 2:
        *(a1 + 1) = 0;
        goto LABEL_11;
      case 3:
        goto LABEL_16;
      case 4:
        *(a1 + 1) = 0;
LABEL_11:
        if (a2)
        {
          *a1 = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t String.featureValue.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CMLFeatureValue();

  return CMLFeatureValue.__allocating_init(_:)(a1, a2);
}

uint64_t Int.dataValue.getter(uint64_t a1)
{
  *result = a1;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t String.dataValue.getter(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 2;
}

uint64_t Bool.featureValue.getter(char a1)
{
  v1 = specialized handling<A, B>(_:_:)(a1 & 1);
  if (!v1)
  {
    BUG();
  }

  v2 = type metadata accessor for CMLFeatureValue();
  swift_allocObject(v2, 25, 7);
  return CMLFeatureValue.init(rawValue:ownsValue:)(v1, 1);
}

uint64_t MLDataValueConvertible.featureValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  (*(v3 + 16))(&v12, v2, a1);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureValueConvertible);
  if (swift_dynamicCast(&v16, &v12, a1, v7, 6))
  {
    outlined init with take of TabularRegressionTask(&v16, &v12);
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_0Tm(&v12, v14);
    v10 = (*(v9 + 24))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v18 = 0;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v16, &demangling cache variable for type metadata for FeatureValueConvertible?);
    (*(a2 + 32))(a1, a2);
    v16 = v12;
    LOBYTE(v17) = v13;
    v10 = MLDataValue.featureValue.getter(a1, a2, *&v12);
    outlined consume of MLDataValue(v16, *(&v16 + 1), v17);
  }

  return v10;
}

uint64_t Double.dataValue.getter(double a1)
{
  *result = a1;
  *(result + 8) = 0;
  *(result + 16) = 1;
  return result;
}

uint64_t static MLDataValueConvertible.makeInstance(featureValue:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v30 = a3;
  v6 = v4;
  v7 = dynamic_cast_existential_1_conditional(v5, v5, &protocol descriptor for FeatureValueConvertible);
  if (v7)
  {
    v9 = v7;
    v29 = v6;
    v30 = a2;
    v25 = *(v8 + 16);
    v10 = v8;
    v28 = &v20;
    v26 = type metadata accessor for Optional(0, v7);
    v27 = *(v26 - 8);
    v11 = *(v27 + 64);
    v12 = alloca(v11);
    v13 = alloca(v11);

    v25(a1, v9, v10);
    if (__swift_getEnumTagSinglePayload(&v20, 1, v9) == 1)
    {
      (*(v27 + 8))(&v20, v26);
      v23 = 0;
      v22 = 0;
      v24 = 0;
    }

    else
    {
      *(&v23 + 1) = v9;
      v24 = v10;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
      (*(*(v9 - 8) + 32))(boxed_opaque_existential_0, &v20, v9);
    }

    v16 = v30;
    v17 = v29;
    v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureValueConvertible?);
    v19 = swift_dynamicCast(v17, &v22, v18, v16, 6);
    return __swift_storeEnumTagSinglePayload(v17, v19 ^ 1u, 1, v16);
  }

  else
  {

    MLDataValue.init(_:)(a1, a4);
    v20 = v22;
    v21 = v23;
    return (*(v30 + 16))(&v20, a2);
  }
}

uint64_t Double.init(from:)(uint64_t a1, double a2)
{
  specialized handling<A, B>(_:_:)(*(a1 + 16));

  return *&a2;
}

uint64_t String.init(from:)()
{
  countAndFlagsBits = CMLFeatureValue.stringValue()()._countAndFlagsBits;
  if (v1)
  {
    v1;

    return 0;
  }

  else
  {
    v2 = countAndFlagsBits;
  }

  return v2;
}

uint64_t Double.featureValue.getter()
{
  v0 = specialized handling<A, B>(_:_:)();
  if (!v0)
  {
    BUG();
  }

  v1 = type metadata accessor for CMLFeatureValue();
  swift_allocObject(v1, 25, 7);
  return CMLFeatureValue.init(rawValue:ownsValue:)(v0, 1);
}

uint64_t MLDataValueConvertible.featureColumn.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  (*(v3 + 16))(&v15, v2, a1);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for CMLColumnConvertible);
  if (swift_dynamicCast(v19, &v15, a1, v7, 6))
  {
    outlined init with take of TabularRegressionTask(v19, v16);
    v8 = v17;
    v9 = v18;
    __swift_project_boxed_opaque_existential_0Tm(v16, v17);
    v10 = (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for CMLColumnConvertible?);
    v11 = MLDataValueConvertible.featureValue.getter(a1, a2);
    v12 = specialized handling<A, B, C>(_:_:_:)(*(v11 + 16), 1);
    if (!v12)
    {
      BUG();
    }

    v13 = type metadata accessor for CMLColumn();
    v10 = swift_allocObject(v13, 24, 7);
    *(v10 + 16) = v12;
  }

  return v10;
}

void *Int.init(from:)(uint64_t a1)
{
  return Int.init(from:)(a1);
}

{
  result = *a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    outlined consume of MLDataValue(*a1, *(a1 + 8), v2);
    return 0;
  }

  return result;
}

void *protocol witness for MLDataValueConvertible.init(from:) in conformance Int(uint64_t a1)
{
  v2 = v1;
  result = Int.init(from:)(a1);
  *v2 = result;
  *(v2 + 8) = v4 & 1;
  return result;
}

uint64_t protocol witness for FeatureValueConvertible.init(from:) in conformance Int(uint64_t a1)
{
  v2 = v1;
  result = Int.init(from:)(a1);
  *v2 = result;
  *(v2 + 8) = v4 & 1;
  return result;
}

char Bool.init(from:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2 != 0;
  }

  outlined consume of MLDataValue(v2, *(a1 + 8), v3);
  return 2;
}

uint64_t Bool.dataValue.getter(char a1)
{
  *result = a1 & 1;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

BOOL Bool.init(from:)(uint64_t a1)
{
  v1 = specialized handling<A, B>(_:_:)(*(a1 + 16));

  return v1 != 0;
}

char protocol witness for MLDataValueConvertible.init(from:) in conformance Bool(uint64_t a1)
{
  v2 = v1;
  result = Bool.init(from:)(a1);
  *v2 = result;
  return result;
}

BOOL protocol witness for FeatureValueConvertible.init(from:) in conformance Bool(uint64_t a1)
{
  v2 = v1;
  result = Bool.init(from:)(a1);
  *v2 = result;
  return result;
}

uint64_t Int.init(from:)(uint64_t a1)
{
  v1 = specialized handling<A, B>(_:_:)(*(a1 + 16));

  return v1;
}

uint64_t Int.featureValue.getter(uint64_t a1)
{
  v1 = specialized handling<A, B>(_:_:)(a1);
  if (!v1)
  {
    BUG();
  }

  v2 = type metadata accessor for CMLFeatureValue();
  swift_allocObject(v2, 25, 7);
  return CMLFeatureValue.init(rawValue:ownsValue:)(v1, 1);
}

void *Double.init(from:)(uint64_t a1)
{
  result = *a1;
  v2 = *(a1 + 16);
  if (v2 != 1)
  {
    outlined consume of MLDataValue(*a1, *(a1 + 8), v2);
    return 0;
  }

  return result;
}

void *protocol witness for MLDataValueConvertible.init(from:) in conformance Double(uint64_t a1)
{
  v2 = v1;
  result = Double.init(from:)(a1);
  *v2 = result;
  *(v2 + 8) = v4 & 1;
  return result;
}

uint64_t protocol witness for FeatureValueConvertible.init(from:) in conformance Double(uint64_t a1, double a2)
{
  v3 = v2;
  result = Double.init(from:)(a1, a2);
  *v3 = result;
  *(v3 + 8) = v5 & 1;
  return result;
}

void *String.init(from:)(uint64_t a1)
{
  result = *a1;
  v2 = *(a1 + 16);
  if (v2 != 2)
  {
    outlined consume of MLDataValue(result, *(a1 + 8), v2);
    return 0;
  }

  return result;
}

void *protocol witness for MLDataValueConvertible.init(from:) in conformance String(uint64_t a1)
{
  v2 = v1;
  result = String.init(from:)(a1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t protocol witness for FeatureValueConvertible.init(from:) in conformance String()
{
  v1 = v0;
  result = String.init(from:)();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!swift_conformsToProtocol2(a2, a3))
  {
    return 0;
  }

  return a1;
}

uint64_t MLObjectDetector.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLObjectDetector(0);
  return outlined init with copy of MLObjectDetector.ModelParameters(v1 + *(v3 + 20), v2);
}

uint64_t type metadata accessor for MLObjectDetector(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLObjectDetector;
  if (!type metadata singleton initialization cache for MLObjectDetector)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLObjectDetector);
  }

  return result;
}

uint64_t outlined init with copy of MLObjectDetector.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLObjectDetector.validationMetrics.getter(double a1)
{
  v2 = v1;
  if (_Model.hasObjectDetectorValidationMetrics.getter(a1))
  {
    return _Model.makeDetectorMetrics(onTraining:)(0, a1);
  }

  v4 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  result = swift_allocError(&type metadata for MLCreateError, v4, 0, 0);
  *v5 = 0xD000000000000035;
  *(v5 + 8) = " the given table." + 0x8000000000000000;
  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  *(v5 + 48) = 0;
  *v2 = result;
  *(v2 + 8) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;
  return result;
}

uint64_t MLObjectDetector.init(trainingData:parameters:annotationType:)(void *a1, uint64_t a2, uint64_t a3, __m128 a4)
{
  v42 = v4;
  *(&parameterValue._object + 5) = *a3;
  v6 = *(a3 + 2);
  static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:)(a1, 0, 0, 0, 0, a4);
  if (v5)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a2, type metadata accessor for MLObjectDetector.ModelParameters);
    v7 = type metadata accessor for MLObjectDetector.DataSource;
    return outlined destroy of MLActivityClassifier.ModelParameters(a1, v7);
  }

  HIBYTE(parameterValue._object) = v6;
  v44 = a1;
  v46 = a2;
  v9 = countAndFlagsBits;
  v10 = v38;
  static MLObjectDetector.validateInput(trainingData:imageColumn:annotationColumn:)(&countAndFlagsBits, 0x7461506567616D69, 0xE900000000000068, 0x697461746F6E6E61, 0xEA00000000006E6FLL);
  v36 = type metadata accessor for MLObjectDetector(0);
  v11 = v42 + *(v36 + 20);
  v45 = 0;
  v12 = v46;
  v43 = v11;
  outlined init with copy of MLObjectDetector.ModelParameters(v46, v11);
  LOWORD(v40) = *(&parameterValue._object + 5);
  BYTE2(v40) = HIBYTE(parameterValue._object);
  parameterValue._countAndFlagsBits = v9;
  countAndFlagsBits = v9;
  v38 = v10;
  v13 = v45;
  v14 = static MLObjectDetector.validateAndConvertParameters(_:annotationType:imageColumn:annotationColumn:table:)(v12, &v40, 0x7461506567616D69, 0xE900000000000068, 0x697461746F6E6E61, 0xEA00000000006E6FLL, a4, &countAndFlagsBits);
  if (v13)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLObjectDetector.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for MLObjectDetector.DataSource);
    outlined consume of Result<_DataTable, Error>(parameterValue._countAndFlagsBits, v10);
    v7 = type metadata accessor for MLObjectDetector.ModelParameters;
    a1 = v43;
    return outlined destroy of MLActivityClassifier.ModelParameters(a1, v7);
  }

  v15 = v14;

  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLObjectDetector.init(trainingData:parameters:annotationType:), v15);
  v17 = v16;

  v45 = v15;
  v18 = v42;
  *v42 = v17;
  if (AnalyticsReporter.init()())
  {
    outlined consume of Result<_DataTable, Error>(parameterValue._countAndFlagsBits, v10);
  }

  else
  {
    countAndFlagsBits = parameterValue._countAndFlagsBits;
    v38 = v10;
    LODWORD(v43) = v10;
    outlined copy of Result<_DataTable, Error>(parameterValue._countAndFlagsBits, v10);
    v19 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(countAndFlagsBits, v38);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__((" training session" + 0x8000000000000000), 0xD000000000000011), v19);
    v20 = type metadata accessor for MLObjectDetector.ModelParameters(0);
    v21 = v20[6];
    v22 = v46;
    v23 = 0.0;
    if (!*(v46 + v21 + 8))
    {
      v23 = *(v46 + v21);
    }

    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__(0xEE00736E6F697461, 0x726574492078614DLL), v23);
    v24 = v20[5];
    v25 = 0.0;
    if (!*(v22 + v24 + 8))
    {
      v25 = *(v22 + v24);
    }

    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__(0xEA0000000000657ALL, 0x6953206863746142), v25);
    v26 = *(v22 + v20[7]);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__(0xEF68746469572065, 0x7A69532064697247), v26);
    v27 = *(v22 + v20[8]);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__(("etrics not available." + 0x8000000000000000), 0xD000000000000010), v27);
    outlined init with copy of Any?(v22 + v20[10], &countAndFlagsBits);
    if (v39)
    {
      v28 = swift_dynamicCast(&v40, &countAndFlagsBits, &type metadata for Any + 8, &type metadata for MLObjectDetector.ModelParameters.ModelAlgorithmType, 6);
      v29 = parameterValue._countAndFlagsBits;
      if (v28)
      {
        v30 = v40;
        v31 = v41;
      }

      else
      {
        v31 = 1;
        v30 = 0;
      }
    }

    else
    {
      outlined destroy of Any?(&countAndFlagsBits);
      v31 = 1;
      v30 = 0;
      v29 = parameterValue._countAndFlagsBits;
    }

    countAndFlagsBits = v30;
    v38 = v31 & 1;
    v32 = MLObjectDetector.ModelParameters.ModelAlgorithmType.dictionary.getter();
    v33 = v32;
    parameterValue._countAndFlagsBits = Dictionary.description.getter(v32, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
    v35 = v34;
    v33;
    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_objectDetector, __PAIR128__(0xE90000000000006DLL, 0x687469726F676C41), __PAIR128__(v35, parameterValue._countAndFlagsBits));
    v35;
    outlined consume of Result<_DataTable, Error>(v29, v43);

    v18 = v42;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLObjectDetector.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for MLObjectDetector.DataSource);
  result = *(v36 + 24);
  *(v18 + result) = *(&parameterValue._object + 5);
  *(v18 + result + 2) = HIBYTE(parameterValue._object);
  return result;
}

uint64_t closure #1 in MLObjectDetector.init(trainingData:parameters:annotationType:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = type metadata accessor for _Model();
  swift_allocObject(v3, 48, 7);

  v4 = swift_task_alloc(112);
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return _Model.init(type:parameters:modelOptions:)(17, a2, 0);
}

uint64_t partial apply for closure #1 in MLObjectDetector.init(trainingData:parameters:annotationType:)(uint64_t a1)
{
  v3 = swift_task_alloc(48);
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLObjectDetector.init(trainingData:parameters:annotationType:)(a1, v1);
}

uint64_t MLObjectDetector.init(trainingData:imageColumn:annotationColumn:annotationType:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, __int16 *a6, __m128 xmm0_0, uint64_t a7)
{
  v41 = v8;
  v11 = *a1;
  v12 = *(a1 + 8);
  v45 = *a6;
  v46 = *(a6 + 2);
  v43 = v11;
  v34 = v11;
  v47 = v12;
  v35 = v12;
  v42 = a4;
  v44 = a5;
  static MLObjectDetector.validateInput(trainingData:imageColumn:annotationColumn:)(&v34, a2, a3, a4, a5);
  if (v9)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLObjectDetector.ModelParameters);
    a3;
    v44;
    return outlined consume of Result<_DataTable, Error>(v43, v47);
  }

  v38 = type metadata accessor for MLObjectDetector(0);
  v37 = v41 + *(v38 + 20);
  outlined init with copy of MLObjectDetector.ModelParameters(a7, v37);
  LOWORD(v39) = v45;
  BYTE2(v39) = v46;
  v34 = v43;
  v35 = v47;
  v14 = static MLObjectDetector.validateAndConvertParameters(_:annotationType:imageColumn:annotationColumn:table:)(a7, &v39, a2, a3, v42, v44, xmm0_0, &v34);
  a3;
  v44;

  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLObjectDetector.init(trainingData:imageColumn:annotationColumn:annotationType:parameters:), v14);
  v16 = v15;

  v17 = v41;
  *v41 = v16;
  v18 = v17;
  if (!AnalyticsReporter.init()())
  {
    v42 = v14;
    v44 = 0;
    v34 = v43;
    v35 = v47;
    v19 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v34, v35);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__((" training session" + 0x8000000000000000), 0xD000000000000011), v19);
    v20 = type metadata accessor for MLObjectDetector.ModelParameters(0);
    v21 = v20[6];
    v22 = 0.0;
    if (!*(a7 + v21 + 8))
    {
      v22 = *(a7 + v21);
    }

    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__(0xEE00736E6F697461, 0x726574492078614DLL), v22);
    v23 = v20[5];
    v24 = 0.0;
    if (!*(a7 + v23 + 8))
    {
      v24 = *(a7 + v23);
    }

    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__(0xEA0000000000657ALL, 0x6953206863746142), v24);
    v25 = *(a7 + v20[7]);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__(0xEF68746469572065, 0x7A69532064697247), v25);
    v26 = *(a7 + v20[8]);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_objectDetector, __PAIR128__(("etrics not available." + 0x8000000000000000), 0xD000000000000010), v26);
    outlined init with copy of Any?(a7 + v20[10], &v34);
    if (v36)
    {
      if (swift_dynamicCast(&v39, &v34, &type metadata for Any + 8, &type metadata for MLObjectDetector.ModelParameters.ModelAlgorithmType, 6))
      {
        v27 = v39;
        v28 = v40;
LABEL_14:
        v34 = v27;
        v35 = v28 & 1;
        v29 = MLObjectDetector.ModelParameters.ModelAlgorithmType.dictionary.getter();
        v30 = v29;
        v31 = Dictionary.description.getter(v29, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
        v33 = v32;
        v30;
        AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_objectDetector, __PAIR128__(0xE90000000000006DLL, 0x687469726F676C41), __PAIR128__(v33, v31));

        v33;
        outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLObjectDetector.ModelParameters);
        v18 = v41;
        goto LABEL_15;
      }
    }

    else
    {
      outlined destroy of Any?(&v34);
    }

    v28 = 1;
    v27 = 0;
    goto LABEL_14;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLObjectDetector.ModelParameters);

  outlined consume of Result<_DataTable, Error>(v43, v47);
LABEL_15:
  result = *(v38 + 24);
  *(v18 + result) = v45;
  *(v18 + result + 2) = v46;
  return result;
}

uint64_t closure #1 in MLObjectDetector.init(trainingData:imageColumn:annotationColumn:annotationType:parameters:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = type metadata accessor for _Model();
  swift_allocObject(v3, 48, 7);

  v4 = swift_task_alloc(112);
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:);
  return _Model.init(type:parameters:modelOptions:)(17, a2, 0);
}

uint64_t partial apply for closure #1 in MLObjectDetector.init(trainingData:imageColumn:annotationColumn:annotationType:parameters:)(uint64_t a1)
{
  v3 = swift_task_alloc(48);
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLObjectDetector.init(trainingData:imageColumn:annotationColumn:annotationType:parameters:)(a1, v1);
}

void *MLObjectDetector.debugDescription.getter(double a1)
{
  v2 = *v1;
  v49._object = ModelType.description.getter(*(*v1 + 32));
  v50 = v3;
  type metadata accessor for MLObjectDetector(0);
  v49._countAndFlagsBits = MLObjectDetector.ModelParameters.description.getter();
  v53 = v4;
  v54 = v2;
  _Model.makeDetectorMetrics(onTraining:)(1, a1);
  if (v34)
  {
    v36 = 0;
    *&v37 = 0xE000000000000000;
    v40 = v31;
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(&v40, &v36, v5, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    outlined consume of Result<MLObjectDetector.Metrics, Error>(v31, v32, *(&v32 + 1), v33, 1);
    v52._countAndFlagsBits = v36;
    v51 = v37;
  }

  else
  {
    outlined copy of Result<MLObjectDetector.Metrics, Error>(v31, v32, *(&v32 + 1), v33, 0);
    v32;
    v31;
    v36 = v31;
    v37 = v32;
    v38 = v33;
    v39 = 0;
    outlined copy of Result<MLObjectDetector.Metrics, Error>(v31, v32, *(&v32 + 1), v33, 0);
    v52._countAndFlagsBits = MLObjectDetectorMetrics.description.getter();
    v51 = v6;
    outlined consume of Result<MLObjectDetector.Metrics, Error>(v31, v32, *(&v32 + 1), v33, 0);
    outlined consume of Result<MLObjectDetector.Metrics, Error>(v31, v32, *(&v32 + 1), v33, 0);
  }

  if (_Model.hasObjectDetectorValidationMetrics.getter(a1))
  {
    _Model.makeDetectorMetrics(onTraining:)(0, a1);
    v7 = v36;
    v8 = *(&v37 + 1);
    v9 = v37;
    v10 = v38;
    v11 = v39;
  }

  else
  {
    v12 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v10 = 0;
    v7 = swift_allocError(&type metadata for MLCreateError, v12, 0, 0);
    *v13 = 0xD000000000000035;
    *(v13 + 8) = " the given table." + 0x8000000000000000;
    a1 = 0.0;
    *(v13 + 16) = 0;
    *(v13 + 32) = 0;
    *(v13 + 48) = 0;
    v36 = v7;
    v37 = 0;
    v38 = 0;
    v39 = 1;
    v11 = 1;
    v8 = 0;
    v9 = 0;
  }

  LOBYTE(v54) = v11;
  outlined consume of Result<MLObjectDetector.Metrics, Error>(v7, v9, v8, v10, v11);
  if ((_Model.hasObjectDetectorValidationMetrics.getter(a1) & 1) == 0)
  {
    v17 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v55 = 0;
    v14 = swift_allocError(&type metadata for MLCreateError, v17, 0, 0);
    *v18 = 0xD000000000000035;
    *(v18 + 8) = " the given table." + 0x8000000000000000;
    *(v18 + 16) = 0;
    *(v18 + 32) = 0;
    *(v18 + 48) = 0;
    v40 = v14;
    v42 = 0;
    v41 = 0;
    v43 = 1;
    v15 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  _Model.makeDetectorMetrics(onTraining:)(0, a1);
  v14 = v40;
  v15 = *(&v41 + 1);
  v16 = v42;
  if (v43)
  {
    v55 = v41;
LABEL_11:
    object = 0;
    v45 = 0xE000000000000000;
    v35._countAndFlagsBits = v14;
    v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(&v35, &object, v19, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    outlined consume of Result<MLObjectDetector.Metrics, Error>(v14, v55, v15, v16, 1);
    v52._object = object;
    v55 = v45;
    goto LABEL_13;
  }

  v20 = v41;
  outlined copy of Result<MLObjectDetector.Metrics, Error>(v40, v41, *(&v41 + 1), v42, 0);
  v20;
  v14;
  object = v14;
  v45 = v20;
  v46 = v15;
  v47 = v16;
  v48 = 0;
  outlined copy of Result<MLObjectDetector.Metrics, Error>(v14, v20, v15, v16, 0);
  v52._object = MLObjectDetectorMetrics.description.getter();
  v55 = v21;
  outlined consume of Result<MLObjectDetector.Metrics, Error>(object, v45, v46, v47, v48);
  outlined consume of Result<MLObjectDetector.Metrics, Error>(v14, v20, v15, v16, 0);
LABEL_13:
  object = v49._object;
  v45 = v50;

  v22._countAndFlagsBits = 0x656D617261500A0ALL;
  v22._object = 0xED00000A73726574;
  String.append(_:)(v22);
  v23 = v45;

  v22._countAndFlagsBits = v49._countAndFlagsBits;
  v22._object = v53;
  String.append(_:)(v22);
  v23;
  v35._countAndFlagsBits = 0xD00000000000001ELL;
  v35._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  v22._countAndFlagsBits = v52._countAndFlagsBits;
  v24 = v51;
  v22._object = v51;
  String.append(_:)(v22);
  v25 = v35._object;
  String.append(_:)(v35);
  v25;
  if (v54)
  {
    v26 = v55;
    v27 = v53;
  }

  else
  {
    v35._countAndFlagsBits = 0xD000000000000020;
    v35._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v28._countAndFlagsBits = v52._object;
    v26 = v55;
    v28._object = v55;
    String.append(_:)(v28);
    v29 = v35._object;
    String.append(_:)(v35);
    v53;
    v27 = v24;
    v24 = v29;
  }

  v27;
  v24;
  v26;
  v50;
  return object;
}

NSAttributedString MLObjectDetector.playgroundDescription.getter(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for NSAttributedString();
  v4._countAndFlagsBits = MLObjectDetector.debugDescription.getter(a1);
  v4._object = v5;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v4).super.isa;
  v2[3].super.isa = v3;
  v2->super.isa = result.super.isa;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLObjectDetector(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));

    return v5;
  }

  v5 = a1;
  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v9);
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v18 = type metadata accessor for DataFrame(0);
      (*(*(v18 - 8) + 16))(v7, v8, v18);
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      v20 = *(v19 + 48);
      *&v7[v20] = *&v8[v20];
      *&v7[v20 + 8] = *&v8[v20 + 8];
      v21 = *(v19 + 64);
      *&v7[v21] = *&v8[v21];
      *&v7[v21 + 8] = *&v8[v21 + 8];

      v15 = 3;
      v16 = v7;
      v17 = v9;
      goto LABEL_16;
    case 2:
      v13 = *v8;
      v44 = v9;
      v14 = v8[8];
      outlined copy of Result<_DataTable, Error>(*v8, v14);
      *v7 = v13;
      v7[8] = v14;
      *(v7 + 2) = *(v8 + 2);
      *(v7 + 3) = *(v8 + 3);
      *(v7 + 4) = *(v8 + 4);
      *(v7 + 5) = *(v8 + 5);

      v15 = 2;
      v16 = v7;
      v17 = v44;
LABEL_16:
      swift_storeEnumTagMultiPayload(v16, v17, v15);
      goto LABEL_17;
    case 1:
      v11 = type metadata accessor for MLObjectDetector.DataSource(0);
      v43 = swift_getEnumCaseMultiPayload(v8, v11);
      switch(v43)
      {
        case 0u:
          v12 = type metadata accessor for URL(0);
          (*(*(v12 - 8) + 16))(v7, v8, v12);
          break;
        case 1u:
          v48 = v11;
          v27 = type metadata accessor for URL(0);
          v46 = v9;
          v28 = *(*(v27 - 8) + 16);
          v28(v7, v8, v27);
          v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
          v30 = v27;
          v11 = v48;
          v28(&v7[*(v29 + 48)], &v8[*(v29 + 48)], v30);
          v9 = v46;
          break;
        case 2u:
          v47 = v11;
          v22 = *v8;
          v45 = v8[8];
          outlined copy of Result<_DataTable, Error>(*v8, v45);
          *v7 = v22;
          v7[8] = v45;
          *(v7 + 2) = *(v8 + 2);
          *(v7 + 3) = *(v8 + 3);
          *(v7 + 4) = *(v8 + 4);
          *(v7 + 5) = *(v8 + 5);
          goto LABEL_13;
        case 3u:
          v23 = type metadata accessor for DataFrame(0);
          (*(*(v23 - 8) + 16))(v7, v8, v23);
          v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
          v25 = *(v24 + 48);
          *&v7[v25] = *&v8[v25];
          *&v7[v25 + 8] = *&v8[v25 + 8];
          v26 = *(v24 + 64);
          *&v7[v26] = *&v8[v26];
          v47 = v11;
          *&v7[v26 + 8] = *&v8[v26 + 8];
LABEL_13:

          v11 = v47;

          break;
      }

      swift_storeEnumTagMultiPayload(v7, v11, v43);
      v15 = 1;
      v16 = v7;
      v17 = v9;
      goto LABEL_16;
  }

  memcpy(v7, v8, *(*(v9 - 8) + 64));
LABEL_17:
  v31 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v32 = v31[5];
  v7[v32 + 8] = v8[v32 + 8];
  *&v7[v32] = *&v8[v32];
  v33 = v31[6];
  *&v7[v33] = *&v8[v33];
  v7[v33 + 8] = v8[v33 + 8];
  *&v7[v31[7]] = *&v8[v31[7]];
  *&v7[v31[8]] = *&v8[v31[8]];
  v7[v31[9]] = v8[v31[9]];
  v34 = v31[10];
  v35 = &v7[v34];
  v36 = &v8[v34];
  v37 = *&v8[v34 + 24];
  if (v37)
  {
    *(v35 + 3) = v37;
    (**(v37 - 8))(v35, v36);
  }

  else
  {
    v38 = *v36;
    *(v35 + 1) = *(v36 + 1);
    *v35 = v38;
  }

  v39 = *(a3 + 24);
  *(v5 + v39 + 2) = *(a2 + v39 + 2);
  *(v5 + v39) = *(a2 + v39);
  return v5;
}

uint64_t destroy for MLObjectDetector(uint64_t a1, uint64_t a2)
{

  v2 = a1 + *(a2 + 20);
  v3 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v2, v3);
  switch(EnumCaseMultiPayload)
  {
    case 3:
LABEL_7:
      v8 = type metadata accessor for DataFrame(0);
      (*(*(v8 - 8) + 8))(v2, v8);
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *(v2 + *(v9 + 48) + 8);
      v7 = *(v2 + *(v9 + 64) + 8);
      goto LABEL_8;
    case 2:
LABEL_6:
      outlined consume of Result<_DataTable, Error>(*v2, *(v2 + 8));
      *(v2 + 24);
      v7 = *(v2 + 40);
LABEL_8:
      v7;
      break;
    case 1:
      v5 = type metadata accessor for MLObjectDetector.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v2, v5))
      {
        case 0u:
          v6 = type metadata accessor for URL(0);
          (*(*(v6 - 8) + 8))(v2, v6);
          break;
        case 1u:
          v11 = type metadata accessor for URL(0);
          v12 = *(*(v11 - 8) + 8);
          v12(v2, v11);
          v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
          v12(v2 + *(v13 + 48), v11);
          break;
        case 2u:
          goto LABEL_6;
        case 3u:
          goto LABEL_7;
        default:
          goto LABEL_9;
      }

      break;
  }

LABEL_9:
  result = *(type metadata accessor for MLObjectDetector.ModelParameters(0) + 40);
  if (*(v2 + result + 24))
  {
    return __swift_destroy_boxed_opaque_existential_1Tm((result + v2));
  }

  return result;
}

void *initializeWithCopy for MLObjectDetector(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v6, v7);
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v16 = type metadata accessor for DataFrame(0);
      (*(*(v16 - 8) + 16))(v5, v6, v16);
      v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      v18 = *(v17 + 48);
      *&v5[v18] = *&v6[v18];
      *&v5[v18 + 8] = *&v6[v18 + 8];
      v19 = *(v17 + 64);
      *&v5[v19] = *&v6[v19];
      *&v5[v19 + 8] = *&v6[v19 + 8];

      v13 = 3;
      v14 = v5;
      v15 = v7;
      break;
    case 2:
      v11 = *v6;
      v42 = v7;
      v12 = v6[8];
      outlined copy of Result<_DataTable, Error>(*v6, v12);
      *v5 = v11;
      v5[8] = v12;
      *(v5 + 2) = *(v6 + 2);
      *(v5 + 3) = *(v6 + 3);
      *(v5 + 4) = *(v6 + 4);
      *(v5 + 5) = *(v6 + 5);

      v13 = 2;
      v14 = v5;
      v15 = v42;
      break;
    case 1:
      v9 = type metadata accessor for MLObjectDetector.DataSource(0);
      v41 = swift_getEnumCaseMultiPayload(v6, v9);
      switch(v41)
      {
        case 0u:
          v10 = type metadata accessor for URL(0);
          (*(*(v10 - 8) + 16))(v5, v6, v10);
          break;
        case 1u:
          v46 = v9;
          v25 = type metadata accessor for URL(0);
          v44 = v7;
          v26 = *(*(v25 - 8) + 16);
          v26(v5, v6, v25);
          v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
          v28 = v25;
          v9 = v46;
          v26(&v5[*(v27 + 48)], &v6[*(v27 + 48)], v28);
          v7 = v44;
          break;
        case 2u:
          v45 = v9;
          v20 = *v6;
          v43 = v6[8];
          outlined copy of Result<_DataTable, Error>(*v6, v43);
          *v5 = v20;
          v5[8] = v43;
          *(v5 + 2) = *(v6 + 2);
          *(v5 + 3) = *(v6 + 3);
          *(v5 + 4) = *(v6 + 4);
          *(v5 + 5) = *(v6 + 5);
          goto LABEL_11;
        case 3u:
          v21 = type metadata accessor for DataFrame(0);
          (*(*(v21 - 8) + 16))(v5, v6, v21);
          v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
          v23 = *(v22 + 48);
          *&v5[v23] = *&v6[v23];
          *&v5[v23 + 8] = *&v6[v23 + 8];
          v24 = *(v22 + 64);
          *&v5[v24] = *&v6[v24];
          v45 = v9;
          *&v5[v24 + 8] = *&v6[v24 + 8];
LABEL_11:

          v9 = v45;

          break;
      }

      swift_storeEnumTagMultiPayload(v5, v9, v41);
      v13 = 1;
      v14 = v5;
      v15 = v7;
      break;
    default:
      memcpy(v5, v6, *(*(v7 - 8) + 64));
      goto LABEL_15;
  }

  swift_storeEnumTagMultiPayload(v14, v15, v13);
LABEL_15:
  v29 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v30 = v29[5];
  v5[v30 + 8] = v6[v30 + 8];
  *&v5[v30] = *&v6[v30];
  v31 = v29[6];
  *&v5[v31] = *&v6[v31];
  v5[v31 + 8] = v6[v31 + 8];
  *&v5[v29[7]] = *&v6[v29[7]];
  *&v5[v29[8]] = *&v6[v29[8]];
  v5[v29[9]] = v6[v29[9]];
  v32 = v29[10];
  v33 = &v5[v32];
  v34 = &v6[v32];
  v35 = *&v6[v32 + 24];
  if (v35)
  {
    *(v33 + 3) = v35;
    (**(v35 - 8))(v33, v34);
  }

  else
  {
    v36 = *v34;
    *(v33 + 1) = *(v34 + 1);
    *v33 = v36;
  }

  v37 = *(a3 + 24);
  *(a1 + v37 + 2) = *(a2 + v37 + 2);
  *(a1 + v37) = *(a2 + v37);
  return a1;
}

void *assignWithCopy for MLObjectDetector(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v43 = a3;
  v5 = *(a3 + 20);
  v6 = a1 + v5;
  v7 = a2 + v5;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLObjectDetector.ModelParameters.ValidationData);
    v8 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v7, v8);
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v17 = type metadata accessor for DataFrame(0);
        (*(*(v17 - 8) + 16))(v6, v7, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
        v19 = *(v18 + 48);
        *&v6[v19] = *&v7[v19];
        *&v6[v19 + 8] = *&v7[v19 + 8];
        v20 = *(v18 + 64);
        *&v6[v20] = *&v7[v20];
        *&v6[v20 + 8] = *&v7[v20 + 8];

        v41 = 3;
        break;
      case 2:
        v12 = *v7;
        v45 = v8;
        v13 = v7[8];
        outlined copy of Result<_DataTable, Error>(*v7, v13);
        *v6 = v12;
        v6[8] = v13;
        *(v6 + 2) = *(v7 + 2);
        *(v6 + 3) = *(v7 + 3);
        *(v6 + 4) = *(v7 + 4);
        *(v6 + 5) = *(v7 + 5);

        v14 = 2;
        v15 = v6;
        v16 = v45;
LABEL_16:
        swift_storeEnumTagMultiPayload(v15, v16, v14);
        goto LABEL_17;
      case 1:
        v10 = type metadata accessor for MLObjectDetector.DataSource(0);
        v44 = swift_getEnumCaseMultiPayload(v7, v10);
        switch(v44)
        {
          case 0u:
            v11 = type metadata accessor for URL(0);
            (*(*(v11 - 8) + 16))(v6, v7, v11);
            break;
          case 1u:
            v49 = v10;
            v27 = type metadata accessor for URL(0);
            v47 = v8;
            v28 = *(*(v27 - 8) + 16);
            v28(v6, v7, v27);
            v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
            v30 = v27;
            v10 = v49;
            v28(&v6[*(v29 + 48)], &v7[*(v29 + 48)], v30);
            v8 = v47;
            break;
          case 2u:
            v48 = v10;
            v21 = *v7;
            v46 = v8;
            v22 = v7[8];
            outlined copy of Result<_DataTable, Error>(*v7, v22);
            *v6 = v21;
            v6[8] = v22;
            v8 = v46;
            *(v6 + 2) = *(v7 + 2);
            *(v6 + 3) = *(v7 + 3);
            *(v6 + 4) = *(v7 + 4);
            *(v6 + 5) = *(v7 + 5);
            goto LABEL_12;
          case 3u:
            v23 = type metadata accessor for DataFrame(0);
            (*(*(v23 - 8) + 16))(v6, v7, v23);
            v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
            v25 = *(v24 + 48);
            *&v6[v25] = *&v7[v25];
            *&v6[v25 + 8] = *&v7[v25 + 8];
            v26 = *(v24 + 64);
            *&v6[v26] = *&v7[v26];
            v48 = v10;
            *&v6[v26 + 8] = *&v7[v26 + 8];
LABEL_12:

            v10 = v48;

            break;
        }

        swift_storeEnumTagMultiPayload(v6, v10, v44);
        v41 = 1;
        break;
      default:
        memcpy(v6, v7, *(*(v8 - 8) + 64));
        goto LABEL_17;
    }

    v14 = v41;
    v15 = v6;
    v16 = v8;
    goto LABEL_16;
  }

LABEL_17:
  v31 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v32 = v31[5];
  v6[v32 + 8] = v7[v32 + 8];
  *&v6[v32] = *&v7[v32];
  v33 = v31[6];
  *&v6[v33] = *&v7[v33];
  v6[v33 + 8] = v7[v33 + 8];
  *&v6[v31[7]] = *&v7[v31[7]];
  *&v6[v31[8]] = *&v7[v31[8]];
  v6[v31[9]] = v7[v31[9]];
  v34 = v31[10];
  v35 = &v6[v34];
  v36 = &v7[v34];
  v37 = *&v7[v34 + 24];
  if (!*&v6[v34 + 24])
  {
    if (v37)
    {
      *(v35 + 3) = v37;
      (**(v37 - 8))(v35, v36);
      goto LABEL_24;
    }

LABEL_23:
    v38 = *v36;
    *(v35 + 1) = *(v36 + 1);
    *v35 = v38;
    goto LABEL_24;
  }

  if (!v37)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v6[v34]);
    goto LABEL_23;
  }

  __swift_assign_boxed_opaque_existential_0(&v6[v34], &v7[v34]);
LABEL_24:
  v39 = *(v43 + 24);
  *(a1 + v39) = *(a2 + v39);
  *(a1 + v39 + 1) = *(a2 + v39 + 1);
  *(a1 + v39 + 2) = *(a2 + v39 + 2);
  return a1;
}

void *initializeWithTake for MLObjectDetector(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v7, v8);
  if (EnumCaseMultiPayload == 3)
  {
    v15 = type metadata accessor for DataFrame(0);
    (*(*(v15 - 8) + 32))(v6, v7, v15);
    v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
    *&v6[*(v16 + 48)] = *&v7[*(v16 + 48)];
    *&v6[*(v16 + 64)] = *&v7[*(v16 + 64)];
    swift_storeEnumTagMultiPayload(v6, v8, 3);
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = type metadata accessor for MLObjectDetector.DataSource(0);
      v10 = swift_getEnumCaseMultiPayload(v7, v31);
      if (v10 == 3)
      {
        v18 = type metadata accessor for DataFrame(0);
        (*(*(v18 - 8) + 32))(v6, v7, v18);
        v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
        *&v6[*(v19 + 48)] = *&v7[*(v19 + 48)];
        *&v6[*(v19 + 64)] = *&v7[*(v19 + 64)];
        v27 = 3;
      }

      else
      {
        if (v10 != 1)
        {
          if (v10)
          {
            memcpy(v6, v7, *(*(v31 - 8) + 64));
            goto LABEL_14;
          }

          v11 = type metadata accessor for URL(0);
          (*(*(v11 - 8) + 32))(v6, v7, v11);
          v12 = v6;
          v13 = v31;
          v14 = 0;
LABEL_12:
          swift_storeEnumTagMultiPayload(v12, v13, v14);
LABEL_14:
          swift_storeEnumTagMultiPayload(v6, v8, 1);
          goto LABEL_15;
        }

        v29 = type metadata accessor for URL(0);
        v30 = *(*(v29 - 8) + 32);
        v30(v6, v7, v29);
        v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
        v30(&v6[*(v17 + 48)], &v7[*(v17 + 48)], v29);
        v27 = 1;
      }

      v14 = v27;
      v12 = v6;
      v13 = v31;
      goto LABEL_12;
    }

    memcpy(v6, v7, *(*(v8 - 8) + 64));
  }

LABEL_15:
  v20 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v21 = v20[5];
  v6[v21 + 8] = v7[v21 + 8];
  *&v6[v21] = *&v7[v21];
  v22 = v20[6];
  *&v6[v22] = *&v7[v22];
  v6[v22 + 8] = v7[v22 + 8];
  *&v6[v20[7]] = *&v7[v20[7]];
  *&v6[v20[8]] = *&v7[v20[8]];
  v6[v20[9]] = v7[v20[9]];
  v23 = v20[10];
  v24 = *&v7[v23 + 16];
  *&v6[v23] = *&v7[v23];
  *&v6[v23 + 16] = v24;
  v25 = *(a3 + 24);
  *(a1 + v25 + 2) = *(a2 + v25 + 2);
  *(a1 + v25) = *(a2 + v25);
  return a1;
}

void *assignWithTake for MLObjectDetector(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v32 = a3;
  v5 = *(a3 + 20);
  v6 = a1 + v5;
  v7 = a2 + v5;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLObjectDetector.ModelParameters.ValidationData);
    v8 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v7, v8);
    if (EnumCaseMultiPayload == 3)
    {
      v16 = type metadata accessor for DataFrame(0);
      (*(*(v16 - 8) + 32))(v6, v7, v16);
      v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *&v6[*(v17 + 48)] = *&v7[*(v17 + 48)];
      *&v6[*(v17 + 64)] = *&v7[*(v17 + 64)];
      swift_storeEnumTagMultiPayload(v6, v8, 3);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload != 1)
    {
      memcpy(v6, v7, *(*(v8 - 8) + 64));
      goto LABEL_15;
    }

    v10 = type metadata accessor for MLObjectDetector.DataSource(0);
    v11 = swift_getEnumCaseMultiPayload(v7, v10);
    if (v11 == 3)
    {
      v21 = type metadata accessor for DataFrame(0);
      (*(*(v21 - 8) + 32))(v6, v7, v21);
      v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *&v6[*(v22 + 48)] = *&v7[*(v22 + 48)];
      *&v6[*(v22 + 64)] = *&v7[*(v22 + 64)];
      v15 = 3;
      v13 = v6;
      v14 = v10;
    }

    else if (v11 == 1)
    {
      v34 = v10;
      v18 = type metadata accessor for URL(0);
      v33 = v8;
      v19 = *(*(v18 - 8) + 32);
      v19(v6, v7, v18);
      v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
      v19(&v6[*(v20 + 48)], &v7[*(v20 + 48)], v18);
      v8 = v33;
      v15 = 1;
      v13 = v6;
      v14 = v34;
    }

    else
    {
      if (v11)
      {
        memcpy(v6, v7, *(*(v10 - 8) + 64));
        goto LABEL_14;
      }

      v12 = type metadata accessor for URL(0);
      (*(*(v12 - 8) + 32))(v6, v7, v12);
      v13 = v6;
      v14 = v10;
      v15 = 0;
    }

    swift_storeEnumTagMultiPayload(v13, v14, v15);
LABEL_14:
    swift_storeEnumTagMultiPayload(v6, v8, 1);
  }

LABEL_15:
  v23 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v24 = v23[5];
  v6[v24 + 8] = v7[v24 + 8];
  *&v6[v24] = *&v7[v24];
  v25 = v23[6];
  *&v6[v25] = *&v7[v25];
  v6[v25 + 8] = v7[v25 + 8];
  *&v6[v23[7]] = *&v7[v23[7]];
  *&v6[v23[8]] = *&v7[v23[8]];
  v6[v23[9]] = v7[v23[9]];
  v26 = v23[10];
  v27 = &v6[v26];
  if (*&v6[v26 + 24])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v6[v26]);
  }

  v28 = *&v7[v26];
  *(v27 + 1) = *&v7[v26 + 16];
  *v27 = v28;
  v29 = *(v32 + 24);
  *(a1 + v29) = *(a2 + v29);
  *(a1 + v29 + 1) = *(a2 + v29 + 1);
  *(a1 + v29 + 2) = *(a2 + v29 + 2);
  return a1;
}

uint64_t sub_2693EF(void *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*a1 & 0xFFFFFFFF00000001) == 0)
    {
      return (*a1 >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for MLObjectDetector.ModelParameters(0);
    return __swift_getEnumTagSinglePayload(a1 + *(a3 + 20), a2, v5);
  }

  return result;
}

uint64_t sub_26946A(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for MLObjectDetector.ModelParameters(0);
    return __swift_storeEnumTagSinglePayload(a1 + *(a4 + 20), a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLObjectDetector(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.NativeObject + 64;
  result = type metadata accessor for MLObjectDetector.ModelParameters(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    v3[2] = &unk_347B18;
    swift_initStructMetadata(a1, 256, 3, v3, a1 + 16);
    return 0;
  }

  return result;
}

void MLLogisticRegressionClassifier.Model.export(internalMetadata:)()
{
  v130 = v0;
  v124 = type metadata accessor for FeatureType(0);
  v123 = *(v124 - 8);
  v3 = *(v123 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v137 = &v111;
  v125 = type metadata accessor for LinearClassifierConfiguration.ClassLabels(0);
  v113 = *(v125 - 8);
  v6 = *(v113 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v112 = &v111;
  v131 = type metadata accessor for ModelKind(0);
  v122 = *(v131 - 8);
  v9 = *(v122 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v119 = &v111;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v114 = &v111;
  v132 = type metadata accessor for LinearClassifierConfiguration(0);
  v133 = *(v132 - 8);
  v14 = *(v133 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v134 = &v111;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Model?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v115 = &v111;
  v120 = type metadata accessor for Model(0);
  v121 = *(v120 - 8);
  v20 = *(v121 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v140 = &v111;
  v142 = type metadata accessor for URL.DirectoryHint(0);
  v128 = *(v142 - 1);
  v23 = *(v128 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v129 = &v111;
  v26 = type metadata accessor for UUID(0);
  v145 = *(v26 - 8);
  v27 = *(v145 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v139 = &v111;
  v136 = type metadata accessor for URL(0);
  v144 = *(v136 - 8);
  v30 = *(v144 + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v111 = &v111;
  v33 = alloca(v30);
  v34 = alloca(v30);
  v143 = &v111;
  v35 = alloca(v30);
  v36 = alloca(v30);
  v146 = &v111;
  v37 = alloca(v30);
  v38 = alloca(v30);
  v39 = v2;
  v40 = v2[2];
  if (!v40)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, ("ressorModel.swift" + 0x8000000000000000), "CreateML/MLLogisticRegressionClassifier.Model+CoreML.swift", 58, 2, 10, 0);
    goto LABEL_16;
  }

  v41 = v39;
  v42 = specialized FeatureVectorizer.Transformer.exportEncoders()(v40, v39[3], v39[4]);
  if (v1)
  {
    return;
  }

  v135 = v41;
  v116 = v40;
  v141 = v42;
  v138 = &v111;
  v43 = objc_opt_self(NSFileManager);
  v44 = [v43 defaultManager];
  v45 = v44;
  NSFileManager.createTemporaryModelDirectory()();
  if (v46)
  {
    v141;

    return;
  }

  v47 = [v43 defaultManager];
  v48 = v47;
  NSFileManager.temporaryModelDirectory.getter();

  v49 = v139;
  UUID.init()();
  v118 = UUID.uuidString.getter();
  v51 = v50;
  v117 = v50;
  (*(v145 + 8))(v49, v26);
  v126 = v118;
  v127 = v51;
  v52 = v129;
  v53 = v128;
  (*(v128 + 104))(v129, enum case for URL.DirectoryHint.inferFromPath(_:), v142);
  v54 = lazy protocol witness table accessor for type String and conformance String();
  v145 = 0;
  v55 = v143;
  URL.appending<A>(component:directoryHint:)(&v126, v52, &type metadata for String, v54);
  (*(v53 + 8))(v52, v142);
  v117;
  v56 = *(v144 + 8);
  v57 = v136;
  v56(v55, v136);
  v58 = v138;
  v59 = v146;
  URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
  v142 = v56;
  v56(v59, v57);
  v60 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v61 = v145;
  BaseLogisticRegressionClassifierModel.export(to:)(v58);
  if (v61)
  {
    v142(v138, v136);
    v141;
    return;
  }

  v146 = v60;
  v62 = v111;
  (*(v144 + 16))(v111, v138, v136);
  Model.init(contentsOf:)(v62);
  v145 = 0;
  v63 = v115;
  specialized BidirectionalCollection.last.getter(v141);
  v64 = v120;
  if (__swift_getEnumTagSinglePayload(v63, 1, v120) == 1)
  {
    BUG();
  }

  v65 = Model.outputs.getter();
  v128 = *(v121 + 8);
  (v128)(v63, v64);
  Model.inputs.setter(v65);
  v66 = *v135;
  v67 = v135[1];

  Model.predictedFeatureName.setter(v66, v67);
  v144 = v66;
  v126 = v66;
  v127 = v67;
  v143 = v67;

  v68._countAndFlagsBits = 0x6C696261626F7250;
  v68._object = 0xEB00000000797469;
  String.append(_:)(v68);
  Model.predictedProbabilitiesName.setter(v126, v127);
  v69 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
  Model.metadata.setter(v69);
  v70 = v114;
  Model.kind.getter();
  v71 = v70;
  v68._countAndFlagsBits = v70;
  v72 = v131;
  v73 = v122;
  LODWORD(v129) = (*(v122 + 88))(v68._countAndFlagsBits, v131);
  if (v129 != enum case for ModelKind.linearClassifier(_:))
  {
    (*(v73 + 8))(v71, v72);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001DLL, ("ssifier.Model+CoreML.swift" + 0x8000000000000000), "CreateML/MLLogisticRegressionClassifier.Model+CoreML.swift", 58, 2, 31, 0);
LABEL_16:
    BUG();
  }

  (*(v73 + 96))(v71, v72);
  (*(v133 + 32))(v134, v71, v132);
  v74 = *(v146 + 7);
  v75 = *(v135 + v74 + 8) == 0;
  v76 = v112;
  *v112 = *(v135 + v74);
  v77 = *(v113 + 104);
  if (v75)
  {
    v77(v76, enum case for LinearClassifierConfiguration.ClassLabels.int(_:), v125);

    LinearClassifierConfiguration.classLabels.setter(v76);
    v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
    v89 = *(type metadata accessor for FeatureDescription(0) - 8);
    v139 = *(v89 + 72);
    v90 = swift_allocObject(v88, ((*(v89 + 80) + 32) & ~*(v89 + 80)) + 2 * v139, *(v89 + 80) | 7);
    *(v90 + 16) = 2;
    *(v90 + 24) = 4;
    v146 = v90;
    v91 = v143;

    v92 = v137;
    FeatureType.IntParameters.init(optional:)(0);
    (*(v123 + 104))(v92, enum case for FeatureType.int(_:), v124);
    v93 = v144;
    FeatureDescription.init(name:type:description:)(v144, v91, v92, 0, 0xE000000000000000);
    v126 = v93;
    v127 = v91;

    v94._countAndFlagsBits = 0x6C696261626F7250;
    v94._object = 0xEB00000000797469;
    String.append(_:)(v94);
    v85 = v126;
    v86 = v127;
    v87 = v137;
    static FeatureType.dictionaryWithIntKeys(optional:)(0);
  }

  else
  {
    v77(v76, enum case for LinearClassifierConfiguration.ClassLabels.string(_:), v125);

    LinearClassifierConfiguration.classLabels.setter(v76);
    v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
    v79 = *(type metadata accessor for FeatureDescription(0) - 8);
    v139 = *(v79 + 72);
    v80 = swift_allocObject(v78, ((*(v79 + 80) + 32) & ~*(v79 + 80)) + 2 * v139, *(v79 + 80) | 7);
    *(v80 + 16) = 2;
    *(v80 + 24) = 4;
    v146 = v80;
    v81 = v143;

    v82 = v137;
    FeatureType.StringParameters.init(optional:)(0);
    (*(v123 + 104))(v82, enum case for FeatureType.string(_:), v124);
    v83 = v144;
    FeatureDescription.init(name:type:description:)(v144, v81, v82, 0, 0xE000000000000000);
    v126 = v83;
    v127 = v81;

    v84._countAndFlagsBits = 0x6C696261626F7250;
    v84._object = 0xEB00000000797469;
    String.append(_:)(v84);
    v85 = v126;
    v86 = v127;
    v87 = v137;
    static FeatureType.dictionaryWithStringKeys(optional:)(0);
  }

  FeatureDescription.init(name:type:description:)(v85, v86, v87, 0, 0xE000000000000000);
  Model.outputs.setter(v146);
  v95 = v119;
  (*(v133 + 16))(v119, v134, v132);
  v146 = *(v122 + 104);
  (v146)(v95, v129, v131);
  Model.kind.setter(v95);
  Model.init()();
  Model.specificationVersion.setter(1);
  v96 = v116;

  v97 = v145;
  ML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n(v96);
  v145 = v97;
  v96;
  Model.inputs.setter(ML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n);
  v99 = Model.outputs.getter();
  Model.outputs.setter(v99);
  v100 = v143;

  v101 = v144;
  Model.predictedFeatureName.setter(v144, v100);
  v126 = v101;
  v127 = v100;

  v102._countAndFlagsBits = 0x6C696261626F7250;
  v102._object = 0xEB00000000797469;
  String.append(_:)(v102);
  Model.predictedProbabilitiesName.setter(v126, v127);
  v103 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
  v104 = v121;
  v105 = *(v121 + 80);
  v106 = (v105 + 32) & ~*(v121 + 80);
  v107 = swift_allocObject(v103, v106 + *(v121 + 72), v105 | 7);
  *(v107 + 16) = 1;
  *(v107 + 24) = 2;
  v102._countAndFlagsBits = v107 + v106;
  v108 = v120;
  (*(v104 + 16))(v102._countAndFlagsBits, v140, v120);
  v126 = v141;
  specialized Array.append<A>(contentsOf:)(v107);
  v109 = v119;
  PipelineClassifierConfiguration.init(models:names:)(v126, _swiftEmptyArrayStorage);
  (v146)(v109, enum case for ModelKind.pipelineClassifier(_:), v131);
  Model.kind.setter(v109);
  (*(v133 + 8))(v134, v132);
  (v128)(v140, v108);
  v110 = v138;
  $defer #1 () in MLLogisticRegressionClassifier.Model.export(internalMetadata:)();
  v142(v110, v136);
}

NSURL *$defer #1 () in MLLogisticRegressionClassifier.Model.export(internalMetadata:)()
{
  v0 = objc_opt_self(NSFileManager);
  v1 = [v0 defaultManager];
  v2 = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v10 = 0;
  v5 = [(NSURL *)v2 removeItemAtURL:v3 error:&v10];

  v6 = v10;
  if (v5)
  {
    return v10;
  }

  v8 = v10;
  v9 = _convertNSErrorToError(_:)(v6);

  swift_willThrow();
  v9;
  return __stack_chk_guard;
}

void *initializeBufferWithCopyOfBuffer for MLLinearRegressor.Regressor(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *v3 = *a2;
    v3 = (v7 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = a2[2];
    v14 = (a1 + 24);
    v15 = a2 + 3;
    v6 = a2[6];

    if (v6)
    {
      *(a1 + 48) = v6;
      (**(v6 - 8))(v14, v15, v6);
    }

    else
    {
      v8 = *v15;
      *(a1 + 40) = *(a2 + 5);
      *v14 = v8;
    }

    *(a1 + 56) = *(a2 + 7);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 88) = a2[11];
    *(a1 + 96) = *(a2 + 96);
    v9 = *(a3 + 28);
    v10 = a1 + v9;
    v11 = a2 + v9;
    v12 = type metadata accessor for BaseLinearRegressor(0);
    (*(*(v12 - 8) + 16))(v10, v11, v12);
  }

  return v3;
}

uint64_t destroy for MLLinearRegressor.Regressor(void *a1, uint64_t a2)
{
  a1[1];
  a1[2];
  if (a1[6])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 3);
  }

  v2 = a1 + *(a2 + 28);
  v3 = type metadata accessor for BaseLinearRegressor(0);
  return (*(*(v3 - 8) + 8))(v2, v3);
}

uint64_t initializeWithCopy for MLLinearRegressor.Regressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v11 = (a1 + 24);
  v3 = *(a2 + 48);

  if (v3)
  {
    *(a1 + 48) = v3;
    (**(v3 - 8))(v11, a2 + 24, v3);
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *v11 = v4;
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v5 = *(a3 + 28);
  v6 = a1 + v5;
  v7 = v5 + a2;
  v8 = type metadata accessor for BaseLinearRegressor(0);
  (*(*(v8 - 8) + 16))(v6, v7, v8);
  return a1;
}

uint64_t assignWithCopy for MLLinearRegressor.Regressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v4;
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v5;
  v6 = *(a2 + 48);
  if (!*(a1 + 48))
  {
    if (v6)
    {
      *(a1 + 48) = v6;
      (**(v6 - 8))(a1 + 24, a2 + 24);
      goto LABEL_8;
    }

LABEL_7:
    v7 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v7;
    goto LABEL_8;
  }

  if (!v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 24));
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0((a1 + 24), (a2 + 24));
LABEL_8:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v8 = *(a3 + 28);
  v9 = a1 + v8;
  v10 = v8 + a2;
  v11 = type metadata accessor for BaseLinearRegressor(0);
  (*(*(v11 - 8) + 24))(v9, v10, v11);
  return a1;
}

uint64_t initializeWithTake for MLLinearRegressor.Regressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  qmemcpy((a1 + 24), (a2 + 24), 0x49uLL);
  v3 = *(a3 + 28);
  v4 = type metadata accessor for BaseLinearRegressor(0);
  (*(*(v4 - 8) + 32))(a1 + v3, a2 + v3, v4);
  return a1;
}

uint64_t assignWithTake for MLLinearRegressor.Regressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v5;
  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v6;
  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 24));
  }

  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v8 = *(a3 + 28);
  v9 = a1 + v8;
  v10 = v8 + a2;
  v11 = type metadata accessor for BaseLinearRegressor(0);
  (*(*(v11 - 8) + 40))(v9, v10, v11);
  return a1;
}

uint64_t sub_26A5D5(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*(a1 + 8) & 0xFFFFFFFF00000001) == 0)
    {
      return (*(a1 + 8) >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for BaseLinearRegressor(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 28) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_26A65D(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for BaseLinearRegressor(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 28) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for MLLinearRegressor.Regressor(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLinearRegressor.Regressor;
  if (!type metadata singleton initialization cache for MLLinearRegressor.Regressor)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLinearRegressor.Regressor);
  }

  return result;
}

uint64_t type metadata completion function for MLLinearRegressor.Regressor(uint64_t a1)
{
  v3[0] = &unk_347B50;
  v3[1] = &value witness table for Builtin.BridgeObject + 64;
  v3[2] = &unk_347B68;
  result = type metadata accessor for BaseLinearRegressor(319);
  if (v2 <= 0x3F)
  {
    v3[3] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 4, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t MLLinearRegressor.Regressor.init(annotationColumnName:featureColumnNames:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v26 = a3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearRegressor<Double>.Configuration);
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v25 = &v17;
  v10 = alloca(v7);
  v11 = alloca(v7);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = v26;
  v12 = v27;
  outlined init with copy of MLLinearRegressor.ModelParameters(v27, (v5 + 3));
  outlined init with copy of MLLinearRegressor.ModelParameters(v12, v18);
  v13 = lazy protocol witness table accessor for type Double and conformance Double();
  LinearRegressor.Configuration.init()(&type metadata for Double, &protocol witness table for Double, v13);
  LinearRegressor.Configuration.maximumIterations.setter(v19, v6);
  LinearRegressor.Configuration.l1Penalty.setter(v6, v20);
  LinearRegressor.Configuration.l2Penalty.setter(v6, v21);
  LinearRegressor.Configuration.stepSize.setter(v6, v22);
  LinearRegressor.Configuration.convergenceThreshold.setter(v6, v23);
  outlined destroy of MLLinearRegressor.ModelParameters(v18);
  v14 = v25;
  v15 = v24;
  (*(v24 + 16))(v25, &v17, v6);
  type metadata accessor for MLLinearRegressor.Regressor(0);
  BaseLinearRegressor.init(configuration:)(v14);
  outlined destroy of MLLinearRegressor.ModelParameters(v27);
  return (*(v15 + 8))(&v17, v6);
}

uint64_t MLLinearRegressor.Regressor.makeTransformer()()
{
  v2 = v0;
  v3 = *v1;
  v4 = v1[1];
  type metadata accessor for MLLinearRegressor.Regressor(0);
  type metadata accessor for MLLinearRegressor.Model(0);

  result = BaseLinearRegressor.makeTransformer()(v4);
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  return result;
}

uint64_t MLLinearRegressor.Regressor.update(_:with:eventHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = v5;
  v54 = a4;
  v55 = a3;
  v67 = a2;
  v60 = type metadata accessor for BaseLinearRegressor(0);
  v6 = *(v60 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v53 = v43;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearRegressor<Double>.Configuration);
  v63 = *(v52 - 8);
  v10 = *(v63 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v57 = v43;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v56 = v43;
  v50 = type metadata accessor for AnyColumn(0);
  v66 = *(v50 - 8);
  v15 = v66[8];
  v16 = alloca(v15);
  v17 = alloca(v15);
  v51 = v43;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v62 = v18;
  v61 = *(v18 - 8);
  v20 = *(v61 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  ML16ColumnDescriptorVsAE_pTg5 = a1[2];
  v59 = a1;
  if (ML16ColumnDescriptorVsAE_pTg5)
  {
    v24 = v67;
    v25 = a1[3];
    v26 = a1[4];
  }

  else
  {
    v64 = v6;
    v65 = v43;
    v39 = v58[2];
    v40 = alloca(24);
    v41 = alloca(32);
    v44 = v67;

    ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(partial apply for closure #1 in FeatureVectorizer.fitted(to:), v43, v39);
    result = v39;
    if (v4)
    {
      return result;
    }

    v24 = v67;
    v25 = 0xD000000000000013;
    v26 = "raining samples." + 0x8000000000000000;
    v42 = v59;
    v59[2] = ML16ColumnDescriptorVsAE_pTg5;
    v42[3] = 0xD000000000000013;
    v42[4] = "raining samples." + 0x8000000000000000;
    v6 = v64;
  }

  result = specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v24, 1, ML16ColumnDescriptorVsAE_pTg5, v25, v26);
  if (!v4)
  {
    v67 = 0;
    v65 = v43;
    v64 = v6;
    v28 = v58;
    v29 = v51;
    DataFrame.subscript.getter(*v58, v58[1]);
    v30 = AnyColumn.convertedToDoubles()();
    (v66[1])(v29, v50);
    v66 = v30;
    if (!v30)
    {
      BUG();
    }

    outlined init with copy of MLLinearRegressor.ModelParameters((v28 + 3), v43);
    v31 = lazy protocol witness table accessor for type Double and conformance Double();
    v32 = v56;
    LinearRegressor.Configuration.init()(&type metadata for Double, &protocol witness table for Double, v31);
    v33 = v52;
    LinearRegressor.Configuration.maximumIterations.setter(v45, v52);
    LinearRegressor.Configuration.l1Penalty.setter(v33, v46);
    LinearRegressor.Configuration.l2Penalty.setter(v33, v47);
    LinearRegressor.Configuration.stepSize.setter(v33, v48);
    LinearRegressor.Configuration.convergenceThreshold.setter(v33, v49);
    outlined destroy of MLLinearRegressor.ModelParameters(v43);
    v34 = v57;
    (*(v63 + 16))(v57, v32, v33);
    v35 = v53;
    BaseLinearRegressor.init(configuration:)(v34);
    v36 = type metadata accessor for MLLinearRegressor.Model(0);
    v37 = v65;
    v38 = v67;
    BaseLinearRegressor.update(_:features:annotations:eventHandler:)(v59 + *(v36 + 24), v65, v66, v55, v54);
    v67 = v38;

    (*(v64 + 8))(v35, v60);
    (*(v63 + 8))(v32, v33);
    return (*(v61 + 8))(v37, v62);
  }

  return result;
}

uint64_t MLLinearRegressor.Regressor.annotationColumnID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return ColumnID.init(_:_:)(v1, v2, &type metadata for Double, &type metadata for Double);
}

uint64_t MLLinearRegressor.Regressor.annotationColumnID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<Double>);
  v3 = ColumnID.name.getter(v2);
  v5 = v4;
  (*(*(v2 - 8) + 8))(a1, v2);
  result = v1[1];
  *v1 = v3;
  v1[1] = v5;
  return result;
}

uint64_t MLLinearRegressor.Regressor.fitted(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v132 = v5;
  v107 = a4;
  v108 = a3;
  v100 = a2;
  *&v117 = a1;
  v102 = v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v99 = v91;
  v113 = type metadata accessor for DataFrame(0);
  v120 = *(v113 - 8);
  v10 = *(v120 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v114 = v91;
  v103 = type metadata accessor for BaseLinearRegressorModel(0);
  v104 = *(v103 - 8);
  v13 = *(v104 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v106 = v91;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v109 = v91;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v105 = v91;
  v124 = type metadata accessor for BaseLinearRegressor(0);
  v123 = *(v124 - 8);
  v20 = *(v123 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v122 = v91;
  v129 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearRegressor<Double>.Configuration);
  v128 = *(v129 - 8);
  v23 = *(v128 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v101 = v91;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v130 = v91;
  v111 = type metadata accessor for AnyColumn(0);
  v119 = *(v111 - 8);
  v28 = v119[8];
  v29 = alloca(v28);
  v30 = alloca(v28);
  v112 = v91;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Double>);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v121 = v91;
  v36 = alloca(v33);
  v37 = alloca(v33);
  v127 = v91;
  v118 = v6;
  v38 = v6[2];
  v92 = v117;

  v39 = v132;
  ML16ColumnDescriptorVsAE_pTg5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_8CreateML16ColumnDescriptorVsAE_pTg5(closure #1 in FeatureVectorizer.fitted(to:)partial apply, v91, v38);
  if (v39)
  {
    return v38;
  }

  v125 = v32;
  v131 = v31;
  v42 = v38;
  v43 = ML16ColumnDescriptorVsAE_pTg5;
  v42;
  specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v117, 1, v43, 0xD000000000000013, ("raining samples." + 0x8000000000000000));
  v132 = 0;
  v110 = "raining samples." + 0x8000000000000000;
  v126 = v43;
  v44 = v118;
  v45 = v118[1];
  v46 = v112;
  v116 = *v118;
  v115 = v45;
  DataFrame.subscript.getter(v116, v45);
  v47 = AnyColumn.convertedToDoubles()();
  v48 = v119[1];
  v49 = v46;
  v50 = v47;
  (v48)(v49, v111);
  v119 = v48;
  if (!v50)
  {
    v126;
    *&v93[0] = 0;
    *(&v93[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v61._object = "Expected a linear classifier." + 0x8000000000000000;
    v61._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v61);
    v62 = v112;
    v61._countAndFlagsBits = v116;
    DataFrame.subscript.getter(v116, v115);
    v63 = AnyColumn.wrappedElementType.getter(v61._countAndFlagsBits);
    (v119)(v62, v111);
    v64 = _typeName(_:qualified:)(v63, 0);
    v66 = v65;
    v61._countAndFlagsBits = v64;
    v61._object = v65;
    String.append(_:)(v61);
    v66;
    v61._countAndFlagsBits = 46;
    v61._object = 0xE100000000000000;
    String.append(_:)(v61);
    v117 = v93[0];
    v67 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
    *v68 = v117;
    *(v68 + 16) = 0;
    *(v68 + 32) = 0;
    *(v68 + 48) = 1;
    swift_willThrow();
    return (*(v125 + 8))(v127, v131);
  }

  outlined init with copy of MLLinearRegressor.ModelParameters((v44 + 3), v93);
  v51 = lazy protocol witness table accessor for type Double and conformance Double();
  v52 = v130;
  LinearRegressor.Configuration.init()(&type metadata for Double, &protocol witness table for Double, v51);
  v53 = v129;
  LinearRegressor.Configuration.maximumIterations.setter(v94, v129);
  LinearRegressor.Configuration.l1Penalty.setter(v53, v95);
  LinearRegressor.Configuration.l2Penalty.setter(v53, v96);
  LinearRegressor.Configuration.stepSize.setter(v53, v97);
  LinearRegressor.Configuration.convergenceThreshold.setter(v53, v98);
  outlined destroy of MLLinearRegressor.ModelParameters(v93);
  v54 = v101;
  (*(v128 + 16))(v101, v52, v53);
  v55 = v122;
  BaseLinearRegressor.init(configuration:)(v54);
  v56 = v99;
  outlined init with copy of DataFrame?(v100, v99);
  v57 = v113;
  if (__swift_getEnumTagSinglePayload(v56, 1, v113) == 1)
  {
    outlined destroy of DataFrame?(v56);
    v58 = v127;
    v59 = v132;
    BaseLinearRegressor.fitted(features:annotations:eventHandler:)(v127, v50, v108, v107);
    v60 = v125;
    if (v59)
    {

      v126;
      (*(v123 + 8))(v55, v124);
      (*(v128 + 8))(v130, v129);
      return (*(v60 + 8))(v58, v131);
    }

    (*(v123 + 8))(v55, v124);
    (*(v128 + 8))(v130, v129);
    v72 = *(v60 + 8);
    v73 = v106;
    v74 = v131;
    goto LABEL_12;
  }

  v118 = v50;
  v69 = v114;
  (*(v120 + 32))(v114, v56, v57);
  v70 = v126;
  v71 = v132;
  specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(v69, 1, v126, 0xD000000000000013, v110);
  if (v71)
  {

    v70;
    (*(v120 + 8))(v69, v57);
    (*(v123 + 8))(v122, v124);
    (*(v128 + 8))(v130, v129);
    return (*(v125 + 8))(v127, v131);
  }

  v80 = v112;
  DataFrame.subscript.getter(v116, v115);
  v81 = AnyColumn.convertedToDoubles()();
  (v119)(v80, v111);
  v132 = v81;
  if (v81)
  {
    BaseLinearRegressor.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:eventHandler:)(v127, v118, v121, v132, v108, v107);

    v72 = *(v125 + 8);
    v74 = v131;
    v72(v121, v131);
    (*(v120 + 8))(v114, v113);
    (*(v123 + 8))(v122, v124);
    (*(v128 + 8))(v130, v129);
    v73 = v109;
LABEL_12:
    v72(v127, v74);
    *&v117 = *(v104 + 32);
    v75 = v105;
    v76 = v73;
    v77 = v103;
    (v117)(v105, v76, v103);
    v78 = type metadata accessor for MLLinearRegressor.Model(0);
    v79 = v102;
    (v117)(v102 + *(v78 + 24), v75, v77);
    *v79 = v116;
    v79[1] = v115;
    v79[2] = v126;
    v79[3] = 0xD000000000000013;
    v79[4] = v110;
  }

  v126;
  *&v93[0] = 0;
  *(&v93[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v82._object = "Expected a linear classifier." + 0x8000000000000000;
  v82._countAndFlagsBits = 0xD000000000000031;
  String.append(_:)(v82);
  v83 = v112;
  v82._countAndFlagsBits = v116;
  DataFrame.subscript.getter(v116, v115);
  v84 = AnyColumn.wrappedElementType.getter(v82._countAndFlagsBits);
  (v119)(v83, v111);
  v85 = _typeName(_:qualified:)(v84, 0);
  LOBYTE(v83) = v86;
  v82._countAndFlagsBits = v85;
  v82._object = v86;
  String.append(_:)(v82);
  v83;
  v82._countAndFlagsBits = 46;
  v82._object = 0xE100000000000000;
  String.append(_:)(v82);
  v117 = v93[0];
  v87 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v87, 0, 0);
  *v88 = v117;
  *(v88 + 16) = 0;
  *(v88 + 32) = 0;
  *(v88 + 48) = 1;
  swift_willThrow();
  v89 = *(v125 + 8);
  v90 = v131;
  v89(v121, v131);
  (*(v120 + 8))(v114, v113);
  (*(v123 + 8))(v122, v124);
  (*(v128 + 8))(v130, v129);
  return (v89)(v127, v90);
}

uint64_t MLLinearRegressor.Regressor.encode(_:to:)(uint64_t a1, uint64_t a2)
{
  v16 = v2;
  v3 = *(a1 + 32);
  v15 = a1;
  v13 = *(a1 + 16);
  v14 = v3;
  v4 = *(a2 + 24);
  v17 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer?);
  v6 = lazy protocol witness table accessor for type FeatureVectorizer<Double>.Transformer? and conformance <A> A?();
  result = dispatch thunk of EstimatorEncoder.encode<A>(_:)(&v13, v5, v6, v4, v17, v7, v13, *(&v13 + 1), v14);
  if (!v2)
  {
    v9 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24) + v15;
    v17 = *(a2 + 24);
    v16 = *(a2 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
    v10 = type metadata accessor for BaseLinearRegressorModel(0);
    v11 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type BaseLinearRegressorModel and conformance BaseLinearRegressorModel, &type metadata accessor for BaseLinearRegressorModel, &protocol conformance descriptor for BaseLinearRegressorModel);
    return dispatch thunk of EstimatorEncoder.encode<A>(_:)(v9, v10, v11, v17, v16, v12, v13, *(&v13 + 1), v14);
  }

  return result;
}

uint64_t MLLinearRegressor.Regressor.decode(from:)(uint64_t a1)
{
  v28 = v2;
  v21 = v1;
  v24 = type metadata accessor for BaseLinearRegressorModel(0);
  v22 = *(v24 - 8);
  v4 = *(v22 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v25 = v19;
  v23 = *v3;
  v7 = v3[1];
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
  v9 = *(a1 + 24);
  v29 = *(a1 + 32);
  v20 = a1;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v10 = lazy protocol witness table accessor for type FeatureVectorizer<Double>.Transformer and conformance FeatureVectorizer<A>.Transformer(&lazy protocol witness table cache variable for type FeatureVectorizer<Double>.Transformer and conformance FeatureVectorizer<A>.Transformer, &protocol conformance descriptor for FeatureVectorizer<A>.Transformer);
  v26 = v7;

  v11 = v28;
  dispatch thunk of EstimatorDecoder.decode<A>(_:)(v8, v8, v10, v9, v29);
  if (v11)
  {
    return v26;
  }

  v28 = v19[1];
  v12 = v19[2];
  v29 = v19[3];
  v13 = *(v20 + 24);
  v27 = *(v20 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v20, v13);
  v14 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type BaseLinearRegressorModel and conformance BaseLinearRegressorModel, &type metadata accessor for BaseLinearRegressorModel, &protocol conformance descriptor for BaseLinearRegressorModel);
  dispatch thunk of EstimatorDecoder.decode<A>(_:)(v24, v24, v14, v13, v27);
  v16 = v12;
  v17 = v21;
  *v21 = v23;
  *(v17 + 1) = v26;
  *(v17 + 2) = v28;
  *(v17 + 3) = v16;
  *(v17 + 4) = v29;
  v18 = type metadata accessor for MLLinearRegressor.Model(0);
  return (*(v22 + 32))(&v17[*(v18 + 24)], v25, v24);
}

void (*protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance MLLinearRegressor.Regressor(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0x28uLL);
  *a1 = v2;
  *v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<Double>);
  v2[1] = v3;
  v4 = *(v3 - 8);
  v2[2] = v4;
  v5 = *(v4 + 64);
  v2[3] = malloc(v5);
  v2[4] = malloc(v5);
  MLLinearRegressor.Regressor.annotationColumnID.getter();
  return protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance MLLinearRegressor.Regressor;
}

void protocol witness for SupervisedTabularEstimator.annotationColumnID.modify in conformance MLLinearRegressor.Regressor(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[1];
    (*(v5 + 16))(v3, v4);
    MLLinearRegressor.Regressor.annotationColumnID.setter(v3);
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    MLLinearRegressor.Regressor.annotationColumnID.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);
  free(v2);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    swift_makeBoxUnique(a1, a2, v2);
    return v3;
  }

  return a1;
}

uint64_t lazy protocol witness table accessor for type FeatureVectorizer<Double>.Transformer? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type FeatureVectorizer<Double>.Transformer? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type FeatureVectorizer<Double>.Transformer? and conformance <A> A?)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer?);
    lazy protocol witness table accessor for type FeatureVectorizer<Double>.Transformer and conformance FeatureVectorizer<A>.Transformer(&lazy protocol witness table cache variable for type FeatureVectorizer<Double>.Transformer and conformance FeatureVectorizer<A>.Transformer, &protocol conformance descriptor for FeatureVectorizer<A>.Transformer);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v1);
    lazy protocol witness table cache variable for type FeatureVectorizer<Double>.Transformer? and conformance <A> A? = result;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Adam<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable(&protocol conformance descriptor for Adam<A>, a2);
  *(a1 + 8) = result;
  return result;
}

void static MLCreateError.checkoutDictionaryMissingOrInvalidValue(key:)(Swift::String a1)
{
  object = a1._object;
  *&v6 = 0;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  *(&v6 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  v5._object = " numeric but got " + 0x8000000000000000;
  v5._countAndFlagsBits = 0xD000000000000038;
  String.append(_:)(v5);
  v5._countAndFlagsBits = countAndFlagsBits;
  v5._object = object;
  String.append(_:)(v5);
  *v4 = v6;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  *(v4 + 48) = 2;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVySSSaySdG_G_SSs5NeverOTg5101_s8CreateML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE4save2toy10Foundation3URLV_tKFS2SXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = specialized _NativeDictionary.startIndex.getter(a1);
    v5 = a1 + 64;
    v6 = v1 - 1;
    v21 = a1 + 64;
    while (1)
    {
      if (v3 < 0 || v3 >= 1 << *(v2 + 32))
      {
        BUG();
      }

      v18 = v6;
      v7 = v3 >> 6;
      v8 = *(v5 + 8 * (v3 >> 6));
      v9 = 1 << v3;
      if (!_bittest64(&v8, v3))
      {
        BUG();
      }

      if (v4 != *(v2 + 36))
      {
        BUG();
      }

      v19 = v4;
      v10 = *(v2 + 48);
      v16 = *(v10 + 16 * v3);
      v11 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      v23 = v11 + 1;
      v15 = v3;
      v17 = *(v10 + 16 * v3 + 8);

      if (v22 >> 1 <= v11)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 >= 2, v23, 1);
      }

      _swiftEmptyArrayStorage[2] = v23;
      v12 = 2 * v11;
      _swiftEmptyArrayStorage[v12 + 4] = v16;
      _swiftEmptyArrayStorage[v12 + 5] = v17;
      v2 = a1;
      v13 = *(a1 + 32);
      if (v15 >= -(-1 << v13))
      {
        BUG();
      }

      if ((v9 & *(v21 + 8 * v7)) == 0)
      {
        BUG();
      }

      v5 = v21;
      if (v19 != *(a1 + 36))
      {
        BUG();
      }

      v3 = _HashTable.occupiedBucket(after:)(v15, v21, ~(-1 << v13));
      v6 = v18 - 1;
      if (!v18)
      {
        break;
      }

      v4 = *(a1 + 36);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySSSaySdG_G_AHs5NeverOTg5107_s8CreateML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE4save2toy10Foundation3URLV_tKFSaySdGAMXEfU0_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = a1;
    v3 = specialized Dictionary.startIndex.getter(a1);
    v5 = v4;
    v17 = v2 + 64;
    v6 = v1 - 1;
    for (i = v2; ; v5 = *(i + 36))
    {
      if (v3 < 0 || v3 >= 1 << *(v2 + 32))
      {
        BUG();
      }

      v13 = v6;
      v7 = *(v17 + 8 * (v3 >> 6));
      if (!_bittest64(&v7, v3))
      {
        BUG();
      }

      if (v5 != *(v2 + 36))
      {
        BUG();
      }

      v8 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      v16 = v8 + 1;
      v12 = *(*(v2 + 56) + 8 * v3);

      if (v15 >> 1 <= v8)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v16, 1);
      }

      _swiftEmptyArrayStorage[2] = v16;
      _swiftEmptyArrayStorage[v8 + 4] = v12;
      v2 = i;
      v9 = *(i + 32);
      if (v3 >= -(-1 << v9))
      {
        BUG();
      }

      if (((1 << v3) & *(v17 + 8 * (v3 >> 6))) == 0)
      {
        BUG();
      }

      if (v5 != *(i + 36))
      {
        BUG();
      }

      v10 = _HashTable.occupiedBucket(after:)(v3, v17, ~(-1 << v9));
      --v6;
      if (!v13)
      {
        break;
      }

      v3 = v10;
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t *specialized _ModelCheckpoint<>.save(to:)(uint64_t a1)
{
  return specialized _ModelCheckpoint<>.save(to:)(a1, MLHandActionClassifier.GraphCNN.getCheckpointStatesDictionary());
}

{
  return specialized _ModelCheckpoint<>.save(to:)(a1, MLActivityClassifier.Trainer.ModelContainer.getCheckpointStatesDictionary());
}

uint64_t *specialized _ModelCheckpoint<>.save(to:)(uint64_t a1, uint64_t (*a2)(void))
{
  v25 = a2;
  v22 = a1;
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v21 = v18;
  result = a2();
  if (!v2)
  {
    v24 = v3;
    v23 = v4;
    v9 = result;
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLDataValueConvertible)>);
    inited = swift_initStackObject(v10, v18);
    inited[2] = 2;
    inited[3] = 4;
    inited[4] = 1937335659;
    inited[5] = 0xE400000000000000;

    ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE4save2toy10Foundation3URLV_tKFS2SXEfU_Tf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVySSSaySdG_G_SSs5NeverOTg5101_s8CreateML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE4save2toy10Foundation3URLV_tKFS2SXEfU_Tf1cn_n(v9);
    v25 = 0;
    v9;
    inited[9] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
    inited[10] = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &demangling cache variable for type metadata for [String]);
    inited[6] = ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE4save2toy10Foundation3URLV_tKFS2SXEfU_Tf1cn_n;
    inited[11] = 0x7365756C6176;
    inited[12] = 0xE600000000000000;
    v13 = v25;
    ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE4save2toy10Foundation3URLV_tKFSaySdGAMXEfU0_Tf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySSSaySdG_G_AHs5NeverOTg5107_s8CreateML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE4save2toy10Foundation3URLV_tKFSaySdGAMXEfU0_Tf1cn_n(v9);
    v9;
    inited[16] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [[Double]]);
    inited[17] = lazy protocol witness table accessor for type [[Double]] and conformance <A> [A]();
    inited[13] = ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE4save2toy10Foundation3URLV_tKFSaySdGAMXEfU0_Tf1cn_n;
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataValueConvertible);
    v16 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v15, &protocol witness table for String);
    result = MLDataTable.init(dictionary:)(v16);
    if (!v13)
    {
      v25 = v19;
      v26 = v20;
      v17 = v21;
      URL.appendingPathComponent(_:)(0x7461446C65646F6DLL, 0xE900000000000061);
      MLDataTable.write(to:)(v17);
      (*(v23 + 8))(v17, v24);
      return outlined consume of Result<_DataTable, Error>(v25, v26);
    }
  }

  return result;
}

uint64_t HandActionClassifierTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  v3 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
  *(v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable) = 0;
  *(v1 + v4 + 8) = -1;
  *(v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  static MLHandActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  static MLHandActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = 0;
  *(v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels) = 0;
  *(v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary) = _swiftEmptyDictionarySingleton;
  outlined init with take of MLClassifierMetrics(a1, v1 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  return v1;
}

uint64_t HandActionClassifierTrainingSessionDelegate.init(trainingData:modelParameters:sessionParameters:)(void *a1, uint64_t a2, uint64_t a3)
{
  v152 = v3;
  v147 = a3;
  v145 = a2;
  v144 = a1;
  v122 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v5 = *(*(v122 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v121 = v116;
  v133 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v132 = *(v133 - 8);
  v8 = *(v132 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v136 = v116;
  v118 = type metadata accessor for AnyColumn(0);
  v135 = *(v118 - 8);
  v11 = v135[8];
  v12 = alloca(v11);
  v13 = alloca(v11);
  v131 = v116;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v119 = v116;
  v143 = type metadata accessor for DataFrame(0);
  v149 = *(v143 - 8);
  v16 = v149[8];
  v17 = alloca(v16);
  v18 = alloca(v16);
  v120 = v116;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v142 = v116;
  v141 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v21 = *(*(v141 - 1) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v134 = v116;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v153 = v116;
  v128 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v26 = *(*(v128 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v151 = v116;
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v32 = v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  v140 = v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  v33 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
  *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable) = 0;
  *(v4 + v34 + 8) = -1;
  *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  v129 = v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
  static MLHandActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  v123 = v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
  static MLHandActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
  *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = 0;
  v130 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels;
  *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels) = 0;
  v146 = v4;
  *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary) = _swiftEmptyDictionarySingleton;
  outlined init with copy of MLTrainingSessionParameters(v144, v116, type metadata accessor for MLHandActionClassifier.DataSource);
  v35 = v151;
  outlined init with copy of MLTrainingSessionParameters(v145, v151, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v36 = v33[6];
  v150 = v33[7];
  v148 = v33[8];
  v137 = v33[9];
  outlined init with copy of MLTrainingSessionParameters(v35, &v116[v33[5]], type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  v37 = v128;
  *&v116[v36] = *&v35[*(v128 + 20)];
  *&v116[v148] = *&v35[v37[7]];
  *&v116[v150] = *&v35[v37[6]];
  *&v116[v33[10]] = *&v35[v37[8]];
  v38 = v141;
  v150 = *&v35[v37[10]];
  outlined destroy of MLHandActionClassifier.DataSource(v35, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v39 = v150;
  *&v116[v137] = v150;
  v137 = v33;
  __swift_storeEnumTagSinglePayload(v116, 0, 1, v33);
  v40 = v140;
  swift_beginAccess(v140, &v138, 33, 0);
  v41 = v144;
  outlined assign with take of MLHandActionClassifier.PersistentParameters?(v116, v40);
  v42 = v153;
  swift_endAccess(&v138);
  outlined init with copy of MLTrainingSessionParameters(v41, v42, type metadata accessor for MLHandActionClassifier.DataSource);
  if (swift_getEnumCaseMultiPayload(v42, v38) == 3)
  {
    v43 = *v42;
    v44 = v42;
    v45 = *(v42 + 2);
    v135 = v44[2];
    v151 = v44[3];
    v134 = v44[4];
    v149 = v44[5];
    v143 = v44[6];
    v153 = v44[7];
    v46 = v129;
    swift_beginAccess(v129, v117, 1, 0);
    v142 = *v46;
    *v46 = v43;
    v47 = *(v46 + 8);
    *(v46 + 8) = v45 & 1;
    v150 = v43;
    LODWORD(v148) = v45;
    outlined copy of Result<_DataTable, Error>(v43, v45);
    v48 = v153;
    outlined consume of Result<_DataTable, Error>(v142, v47);
    swift_beginAccess(v46, &v138, 33, 0);
    v49 = v143;
    v50 = v152;
    static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(v46, v143, v48);
    if (v50)
    {
      v51 = 0;
      swift_endAccess(&v138);
      v48;
      v149;
      v151;
      outlined consume of Result<_DataTable, Error>(v150, v148);
      v71 = v146;
      goto LABEL_11;
    }

    swift_endAccess(&v138);
    swift_beginAccess(v46, &v138, 33, 0);
    v69 = v48;
    v70 = v149;
    static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v46, v135, v151, v49, v69, v134, v149);
    v152 = 0;
    swift_endAccess(&v138);
    v153;
    v70;
    v151;
    swift_beginAccess(v46, &v138, 32, 0);
    v82._countAndFlagsBits = 0x6C6562616CLL;
    v82._object = 0xE500000000000000;
    specialized MLDataTable.subscript.getter(v82, *v46, *(v46 + 8));
    v83 = v126;
    v84 = v127;
    swift_endAccess(&v138);
    specialized MLDataColumn.dropDuplicates()(v83, v84);
    outlined consume of Result<_DataTable, Error>(v83, v84);
    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v138, v139, *v39.i64);
    outlined consume of Result<_DataTable, Error>(v150, v148);
    v71 = v146;
  }

  else
  {
    outlined destroy of MLHandActionClassifier.DataSource(v42, type metadata accessor for MLHandActionClassifier.DataSource);
    v52 = v134;
    outlined init with copy of MLTrainingSessionParameters(v41, v134, type metadata accessor for MLHandActionClassifier.DataSource);
    if (swift_getEnumCaseMultiPayload(v52, v38) == 5)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v54 = v53[12];
      v125 = *(v52 + v54);
      v151 = *(v52 + v54 + 8);
      v55 = v53[16];
      v124 = *(v52 + v55);
      v150 = *(v52 + v55 + 8);
      v56 = v53[20];
      v57 = *(v52 + v56);
      v58 = *(v52 + v56 + 8);
      v59 = v52;
      v60 = v142;
      (v149[4])(v142, v59, v143);
      v61 = v119;
      v148 = v57;
      v153 = v58;
      DataFrame.subscript.getter(v57, v58);
      v62 = AnyColumn.wrappedElementType.getter(v57);
      (v135[1])(v61, v118);
      v71 = v146;
      if (v62 == &type metadata for String)
      {
        DataFrame.subscript.getter(v148, v153, &type metadata for String);
        v72 = v152;
        Column<A>.parseAsJSONArrays()();
        if (v72)
        {
          v153;
          v150;
          v151;
          outlined destroy of MLHandActionClassifier.DataSource(v147, type metadata accessor for MLTrainingSessionParameters);
          outlined destroy of MLHandActionClassifier.DataSource(v145, type metadata accessor for MLHandActionClassifier.ModelParameters);
          outlined destroy of MLHandActionClassifier.DataSource(v144, type metadata accessor for MLHandActionClassifier.DataSource);
          (*(v132 + 8))(v136, v133);
          (v149[1])(v60, v143);
          goto LABEL_31;
        }

        v152 = 0;
        (*(v132 + 8))(v136, v133);
        v102 = v153;

        DataFrame.subscript.setter(v131, v148, v102);
      }

      v63 = v120;
      v64 = v142;
      v65 = v143;
      *v39.i64 = (v149[2])(v120, v142, v143);
      v66 = v152;
      MLDataTable.init(_:convertArraysToShapedArrays:)(v63, 0, v39);
      if (v66)
      {
        v153;
        v150;
        v151;
        outlined destroy of MLHandActionClassifier.DataSource(v147, type metadata accessor for MLTrainingSessionParameters);
        outlined destroy of MLHandActionClassifier.DataSource(v145, type metadata accessor for MLHandActionClassifier.ModelParameters);
        outlined destroy of MLHandActionClassifier.DataSource(v144, type metadata accessor for MLHandActionClassifier.DataSource);
        (v149[1])(v64, v65);
        goto LABEL_31;
      }

      v74 = v138;
      v152 = 0;
      v75 = v139;
      v76 = v129;
      swift_beginAccess(v129, v117, 1, 0);
      v77 = *v76;
      *v76 = v74;
      v78 = *(v76 + 8);
      *(v76 + 8) = v75;
      outlined consume of Result<_DataTable, Error>(v77, v78);
      swift_beginAccess(v76, &v138, 33, 0);
      v79 = v148;
      v80 = v153;
      v81 = v152;
      static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(v76, v148, v153);
      if (v81)
      {
        swift_endAccess(&v138);
        v80;
        v150;
        v151;
        outlined destroy of MLHandActionClassifier.DataSource(v147, type metadata accessor for MLTrainingSessionParameters);
        outlined destroy of MLHandActionClassifier.DataSource(v145, type metadata accessor for MLHandActionClassifier.ModelParameters);
        outlined destroy of MLHandActionClassifier.DataSource(v144, type metadata accessor for MLHandActionClassifier.DataSource);
        (v149[1])(v142, v143);
        v71 = v146;
        goto LABEL_31;
      }

      swift_endAccess(&v138);
      swift_beginAccess(v76, &v138, 33, 0);
      v108 = v79;
      v109 = v150;
      static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v76, v125, v151, v108, v80, v124, v150);
      v152 = 0;
      swift_endAccess(&v138);
      v153;
      v109;
      v151;
      swift_beginAccess(v76, &v138, 32, 0);
      v112._countAndFlagsBits = 0x6C6562616CLL;
      v112._object = 0xE500000000000000;
      specialized MLDataTable.subscript.getter(v112, *v76, *(v76 + 8));
      v113 = v126;
      v114 = v127;
      swift_endAccess(&v138);
      specialized MLDataColumn.dropDuplicates()(v113, v114);
      v112._countAndFlagsBits = v113;
      v71 = v146;
      outlined consume of Result<_DataTable, Error>(v112._countAndFlagsBits, v114);
      MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v138, v139, *v39.i64);
      (v149[1])(v142, v143);
    }

    else
    {
      outlined destroy of MLHandActionClassifier.DataSource(v52, type metadata accessor for MLHandActionClassifier.DataSource);
      v67 = v152;
      v68 = static _VideoUtilities.videoURLsPerClass(from:)(v41, v39);
      v71 = v146;
      if (v67)
      {
        v51 = 0;
        goto LABEL_11;
      }

      v73 = v68;
      v152 = 0;
      MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = specialized _copyCollectionToContiguousArray<A>(_:)(v68);
      v73;
    }
  }

  v86 = *(v71 + v130);
  *(v71 + v130) = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v86;
  v87 = v140;
  v88 = v137;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v140, 1, v137);
  v90 = v121;
  if (EnumTagSinglePayload)
  {
    v91 = v147;
  }

  else
  {
    outlined init with copy of MLTrainingSessionParameters(*(v88 + 20) + v87, v121, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v90, v122);
    v91 = v147;
    if (EnumCaseMultiPayload == 1)
    {
      if (swift_getEnumCaseMultiPayload(v90, v141) == 3)
      {
        v93 = *v90;
        LODWORD(v140) = *(v90 + 8);
        v149 = *(v90 + 16);
        v141 = *(v90 + 24);
        v148 = *(v90 + 32);
        v151 = *(v90 + 40);
        v150 = *(v90 + 48);
        v137 = *(v90 + 56);
        v94 = v123;
        swift_beginAccess(v123, &v138, 1, 0);
        v95 = *v94;
        *v94 = v93;
        v96 = v140;
        v97 = *(v94 + 8);
        *(v94 + 8) = v140 & 1;
        v153 = v93;
        outlined copy of Result<_DataTable, Error>(v93, v96);
        v98 = v97;
        v99 = v150;
        outlined consume of Result<_DataTable, Error>(v95, v98);
        swift_beginAccess(v94, &v126, 33, 0);
        v100 = v137;
        v101 = v152;
        static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(v94, v99, v137);
        if (v101)
        {
          swift_endAccess(&v126);
          v141;
          v151;
          v100;
          outlined consume of Result<_DataTable, Error>(v153, v140);
          outlined destroy of MLHandActionClassifier.DataSource(v147, type metadata accessor for MLTrainingSessionParameters);
          outlined destroy of MLHandActionClassifier.DataSource(v145, type metadata accessor for MLHandActionClassifier.ModelParameters);
          outlined destroy of MLHandActionClassifier.DataSource(v144, type metadata accessor for MLHandActionClassifier.DataSource);
          v71 = v146;
          goto LABEL_31;
        }

        swift_endAccess(&v126);
        swift_beginAccess(v94, &v126, 33, 0);
        v115 = v151;
        static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(v94, v149, v141, v99, v100, v148, v151);
        v71 = v146;
        swift_endAccess(&v126);
        v141;
        v115;
        v100;
        outlined consume of Result<_DataTable, Error>(v153, v140);
        v91 = v147;
      }

      else
      {
        outlined destroy of MLHandActionClassifier.DataSource(v90, type metadata accessor for MLHandActionClassifier.DataSource);
      }
    }

    else
    {
      outlined destroy of MLHandActionClassifier.DataSource(v90, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    }
  }

  outlined init with copy of MLTrainingSessionParameters(v91, v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  v103 = *(v71 + v130);
  if (!v103)
  {
    v106 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v106, 0, 0);
    *v107 = 0xD00000000000003DLL;
    *(v107 + 8) = "ng a feature checkpoint." + 0x8000000000000000;
    *(v107 + 16) = 0;
    *(v107 + 32) = 0;
    *(v107 + 48) = 0;
    swift_willThrow();
    v51 = 1;
LABEL_11:
    outlined destroy of MLHandActionClassifier.DataSource(v147, type metadata accessor for MLTrainingSessionParameters);
    outlined destroy of MLHandActionClassifier.DataSource(v145, type metadata accessor for MLHandActionClassifier.ModelParameters);
    outlined destroy of MLHandActionClassifier.DataSource(v144, type metadata accessor for MLHandActionClassifier.DataSource);
    if (v51)
    {
      goto LABEL_28;
    }

LABEL_31:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
    outlined consume of MLDataTable?(*(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable), *(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable + 8));
    outlined consume of Result<_DataTable, Error>(*(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures), *(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures + 8));
    outlined consume of Result<_DataTable, Error>(*(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures), *(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures + 8));

    *(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);
    *(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary);
    v110 = type metadata accessor for HandActionClassifierTrainingSessionDelegate(0);
    swift_deallocPartialClassInstance(v71, v110, *(*v71 + 48), *(*v71 + 52));
    return v71;
  }

  v152 = *(v145 + *(v128 + 28));
  v104 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
  swift_allocObject(v104, *(v104 + 48), *(v104 + 52));

  v105 = MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(v103, 0, 21, 3, v152);
  outlined destroy of MLHandActionClassifier.DataSource(v147, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of MLHandActionClassifier.DataSource(v145, type metadata accessor for MLHandActionClassifier.ModelParameters);
  outlined destroy of MLHandActionClassifier.DataSource(v144, type metadata accessor for MLHandActionClassifier.DataSource);
  *(v71 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = v105;
LABEL_28:

  return v71;
}

char HandActionClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(__m128 a1)
{
  v3 = v2;
  type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  result = MLHandActionClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(&v27, &v25, a1);
  if (!v1)
  {
    v34 = v27;
    v5 = v25;
    v6 = v26;
    v37 = v28;
    v29 = 0;
    if (v28 == 0xFF)
    {
      if (v26 != -1)
      {
        v15 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
        swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable, &v27, 1, 0);
        v36 = *(v3 + v15);
        *(v3 + v15) = v5;
        LODWORD(v35) = *(v3 + v15 + 8);
        *(v3 + v15 + 8) = v6;
        v16 = v6;
        outlined copy of Result<_DataTable, Error>(v5, v6);
        outlined consume of MLDataTable?(v36, v35);
        *(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
LABEL_13:
        v30 = v5;
        v31 = v16 & 1;
        v24 = MLDataTable.size.getter();
        outlined consume of MLDataTable?(v34, v37);
        outlined consume of Result<_DataTable, Error>(v30, v31);
LABEL_16:
        result = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount;
        *(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount) = v24;
        return result;
      }

      *(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
    }

    else
    {
      v39 = v28;
      v35 = v25;
      LOBYTE(v36) = v26;
      if (v26 == -1)
      {
        v17 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
        v18 = v28;
        swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable, &v27, 1, 0);
        v19 = *(v3 + v17);
        v20 = v34;
        *(v3 + v17) = v34;
        v38 = *(v3 + v17 + 8);
        *(v3 + v17 + 8) = v18;
        v11 = v20;
        outlined copy of MLDataTable?(v20, v18);
        outlined copy of Result<_DataTable, Error>(v11, v18);
        outlined consume of MLDataTable?(v19, v38);
      }

      else
      {
        v7 = v28 & 1;
        v8 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
        v9 = v28;
        swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable, &v25, 1, 0);
        v33 = *(v3 + v8);
        v10 = v34;
        *(v3 + v8) = v34;
        v32 = *(v3 + v8 + 8);
        *(v3 + v8 + 8) = v7;
        v11 = v10;
        outlined copy of Result<_DataTable, Error>(v10, v9);
        outlined copy of MLDataTable?(v11, v9);
        v12 = v35;
        v38 = v36;
        outlined copy of MLDataTable?(v35, v36);
        outlined consume of MLDataTable?(v33, v32);
        v13 = HandActionClassifierTrainingSessionDelegate.sourceTable.modify(&v27);
        if (*(v14 + 8) == 0xFF)
        {
          (v13)(&v27, 0);
        }

        else
        {
          v30 = v12;
          v33 = v13;
          v31 = v36 & 1;
          MLDataTable.append(contentsOf:)(&v30);
          (v33)(&v27, 0);
        }

        v21 = v12;
        v22 = v37;
        outlined consume of MLDataTable?(v11, v37);
        outlined consume of MLDataTable?(v21, v38);
        outlined copy of Result<_DataTable, Error>(v11, v22);
      }

      v30 = v11;
      v31 = v39 & 1;
      v23 = MLDataTable.size.getter();
      outlined consume of Result<_DataTable, Error>(v30, v31);
      *(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount) = v23;
      v16 = v36;
      if (v36 != 0xFF)
      {
        v5 = v35;
        goto LABEL_13;
      }
    }

    outlined consume of MLDataTable?(v34, v37);
    v24 = 0;
    goto LABEL_16;
  }

  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandActionClassifierTrainingSessionDelegate.setUp()()
{
  v12 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, v11, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, &v10, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v10, 1, v5) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v10, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(&v10, &v10, type metadata accessor for MLHandActionClassifier.PersistentParameters);
  HandActionClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(v1);
  outlined destroy of MLHandActionClassifier.DataSource(&v10, type metadata accessor for MLHandActionClassifier.PersistentParameters);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandActionClassifierTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v183 = v1;
  v178 = v2;
  rawValue = from._rawValue;
  v4 = *(*(type metadata accessor for URL(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v169 = v123;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v168 = v123;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v167 = v123;
  v11 = alloca(v4);
  v12 = alloca(v4);
  v172 = v123;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v164 = v123;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v179 = v123;
  v182 = type metadata accessor for MLCheckpoint(0);
  v165 = *(v182 - 8);
  v18 = *(v165 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v170 = v123;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v180 = v123;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v184 = v123;
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v28 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v32 = v123;
  v33 = v178 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v178 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, v161, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v33, v123, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  v166 = v28;
  if (__swift_getEnumTagSinglePayload(v123, 1, v28) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v123, v123, type metadata accessor for MLHandActionClassifier.PersistentParameters);
  v34 = v179;
  specialized BidirectionalCollection.last.getter(rawValue);
  v35 = v182;
  if (__swift_getEnumTagSinglePayload(v34, 1, v182) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v34, &demangling cache variable for type metadata for MLCheckpoint?);
    v36 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v36, 0, 0);
    *v37 = 0xD00000000000001DLL;
    *(v37 + 8) = "reated." + 0x8000000000000000;
    *(v37 + 16) = 0;
    *(v37 + 32) = 0;
    *(v37 + 48) = 0;
    swift_willThrow();
LABEL_20:
    v52 = v32;
    goto LABEL_21;
  }

  v38 = 0xEB0000000064657ALL;
  v173 = 0x6974636172747865;
  v181 = v123;
  v39 = v34;
  v40 = v184;
  outlined init with take of MLClassifierMetrics(v39, v184, type metadata accessor for MLCheckpoint);
  v179 = *(v35 + 20);
  v41 = 0x696C616974696E69;
  v32 = v181;
  v42 = 110;
  switch(*(v40 + v179))
  {
    case 0:
      goto LABEL_8;
    case 1:
LABEL_10:
      v42;
      goto LABEL_14;
    case 2:
      v41 = 0x676E696E69617274;
      v38 = 0xE800000000000000;
      goto LABEL_8;
    case 3:
      v41 = 0x697461756C617665;
      v38 = 0xEA0000000000676ELL;
      goto LABEL_8;
    case 4:
      v41 = 0x636E657265666E69;
      v38 = &loc_308EF - 0x14FFFFFFFF9B9A86;
LABEL_8:
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)(v41, v38, 0x6974636172747865, 0xEA0000000000676ELL, 0);
      v38;
      if ((v43 & 1) == 0)
      {
        v42 = 0;
        switch(*(v40 + v179))
        {
          case 0:
            JUMPOUT(0x26DBD0);
          case 1:
            v44 = 0x6974636172747865;
            goto LABEL_13;
          case 2:
            goto LABEL_10;
          case 3:
            v44 = 0x697461756C617665;
LABEL_13:
            v45 = _stringCompareWithSmolCheck(_:_:expecting:)(v44, 0xEA0000000000676ELL, 0x676E696E69617274, 0xE800000000000000, 0);
            110;
            if (v45)
            {
              goto LABEL_14;
            }

            v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
            *v51 = 0xD00000000000003FLL;
            *(v51 + 8) = "not been properly initialized." + 0x8000000000000000;
            *(v51 + 16) = 0;
            *(v51 + 32) = 0;
            *(v51 + 48) = 0;
            swift_willThrow();
            v47 = v40;
            break;
          case 4:
            JUMPOUT(0x26DBF0);
        }

        goto LABEL_19;
      }

LABEL_14:
      v46 = v183;
      HandActionClassifierTrainingSessionDelegate.populateSourceTable(parameters:)(v3);
      if (v46)
      {
LABEL_15:
        v47 = v184;
LABEL_19:
        outlined destroy of MLHandActionClassifier.DataSource(v47, type metadata accessor for MLCheckpoint);
        goto LABEL_20;
      }

      v183 = 0;
      v48 = 0x676E696E69617274;
      switch(*(v184 + v179))
      {
        case 0:
          v49 = 0xEB0000000064657ALL;
          v48 = 0x696C616974696E69;
          goto LABEL_26;
        case 1:
          110;
          goto LABEL_38;
        case 2:
          v49 = 0xE800000000000000;
          goto LABEL_26;
        case 3:
          v48 = 0x697461756C617665;
          v49 = 0xEA0000000000676ELL;
          goto LABEL_26;
        case 4:
          v48 = 0x636E657265666E69;
          v49 = &loc_308EF - 0x14FFFFFFFF9B9A86;
LABEL_26:
          v53 = _stringCompareWithSmolCheck(_:_:expecting:)(v48, v49, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          v49;
          if (v53)
          {
LABEL_38:
            URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
            LOBYTE(__src[0]) = 1;
            *(&__src[0] + 1) = 44;
            __src[1] = 0xE100000000000000;
            *&__src[2] = 0xE000000000000000;
            *(&__src[2] + 1) = 92;
            *&__src[3] = 0xE100000000000000;
            BYTE8(__src[3]) = 1;
            *&__src[4] = 34;
            *(&__src[4] + 1) = 0xE100000000000000;
            LOBYTE(__src[5]) = 1;
            *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            *&__src[6] = 10;
            *(&__src[6] + 1) = 0xE100000000000000;
            __src[7] = 0;
            LOBYTE(__src[8]) = 1;
            *(&__src[8] + 1) = 0;
            LOBYTE(__dst[0]) = 1;
            LOBYTE(v144) = 1;
            v145 = 44;
            v146 = 0xE100000000000000;
            v147 = 0;
            v148 = 0xE000000000000000;
            v149 = 92;
            v150 = 0xE100000000000000;
            v151 = 1;
            v152 = 34;
            v153 = 0xE100000000000000;
            v154 = 1;
            v155 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            v156 = 10;
            v157 = 0xE100000000000000;
            v158 = 0;
            v159 = 1;
            v160 = 0;
            outlined retain of MLDataTable.ParsingOptions(__src);
            outlined release of MLDataTable.ParsingOptions(&v144);
            memcpy(__dst, __src, sizeof(__dst));
            v65 = v183;
            MLDataTable.init(contentsOf:options:)(v172, __dst);
            if (v65)
            {
              goto LABEL_64;
            }

            v66 = v174;
            v67 = v175;
            v183 = 0;
            v68 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
            v69 = v178;
            swift_beginAccess(v178 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures, v162, 1, 0);
            v70 = *(v69 + v68);
            *(v69 + v68) = v66;
            v71 = *(v69 + v68 + 8);
            *(v69 + v68 + 8) = v67;
            outlined consume of Result<_DataTable, Error>(v70, v71);
            URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
            LOBYTE(v123[0]) = 1;
            *(&v123[0] + 1) = 44;
            v123[1] = 0xE100000000000000;
            *&v123[2] = 0xE000000000000000;
            *(&v123[2] + 1) = 92;
            *&v123[3] = 0xE100000000000000;
            BYTE8(v123[3]) = 1;
            *&v123[4] = 34;
            *(&v123[4] + 1) = 0xE100000000000000;
            LOBYTE(v123[5]) = 1;
            *(&v123[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            *&v123[6] = 10;
            *(&v123[6] + 1) = 0xE100000000000000;
            v3.i64[0] = 0;
            v123[7] = 0;
            LOBYTE(v123[8]) = 1;
            *(&v123[8] + 1) = 0;
            v143[0] = 1;
            LOBYTE(v125) = 1;
            v126 = 44;
            v127 = 0xE100000000000000;
            v128 = 0;
            v129 = 0xE000000000000000;
            v130 = 92;
            v131 = 0xE100000000000000;
            v132 = 1;
            v133 = 34;
            v134 = 0xE100000000000000;
            v135 = 1;
            v136 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            v137 = 10;
            v138 = 0xE100000000000000;
            v139 = 0;
            v140 = 1;
            v141 = 0;
            outlined retain of MLDataTable.ParsingOptions(v123);
            outlined release of MLDataTable.ParsingOptions(&v125);
            memcpy(v143, v123, sizeof(v143));
            v72 = v183;
            MLDataTable.init(contentsOf:options:)(v167, v143);
            v73 = v72;
            if (v72)
            {
              goto LABEL_64;
            }

            v74 = v176;
            LOBYTE(v182) = v177;
            v75 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
            swift_beginAccess(v69 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures, v143, 1, 0);
            v76 = *(v69 + v75);
            *(v69 + v75) = v74;
            v77 = *(v69 + v75 + 8);
            *(v69 + v75 + 8) = v182;
            outlined consume of Result<_DataTable, Error>(v76, v77);
            v78 = v184;
            v79 = 0xEA0000000000676ELL;
            switch(*(v184 + v179))
            {
              case 0:
LABEL_47:
                v173 = 0x696C616974696E69;
                v79 = 0xEB0000000064657ALL;
                goto LABEL_57;
              case 1:
                goto LABEL_57;
              case 2:
LABEL_54:
                0;
                goto LABEL_58;
              case 3:
LABEL_56:
                v173 = 0x697461756C617665;
                goto LABEL_57;
              case 4:
LABEL_55:
                v173 = 0x636E657265666E69;
                v79 = 0xEB00000000676E69;
LABEL_57:
                v106 = v79;
                v107 = _stringCompareWithSmolCheck(_:_:expecting:)(v173, v79, 0x676E696E69617274, 0xE800000000000000, 0);
                v106;
                v32 = v181;
                if ((v107 & 1) == 0)
                {
                  goto LABEL_68;
                }

LABEL_58:
                v183 = v73;
                v108 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
                v109 = v178;
                swift_beginAccess(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures + v178, __src, 0, 0);
                v110 = *(v109 + v108);
                LOBYTE(v108) = *(v109 + v108 + 8);
                outlined copy of Result<_DataTable, Error>(v110, v108);
                v111._countAndFlagsBits = 0x6C6562616CLL;
                v111._object = 0xE500000000000000;
                specialized MLDataTable.subscript.getter(v111, v110, v108);
                outlined consume of Result<_DataTable, Error>(v110, v108);
                v112 = v125;
                LOBYTE(v108) = v126;
                specialized MLDataColumn.dropDuplicates()(v125, v126);
                outlined consume of Result<_DataTable, Error>(v112, v108);
                MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(__dst[0], __dst[1], *v3.i64);
                v114 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels;
                v111._countAndFlagsBits = *(v109 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);
                *(v109 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels) = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
                v111._countAndFlagsBits;
                v115 = *(v109 + v114);
                if (!v115)
                {
                  v97 = "re not properly constructed." + 0x8000000000000000;
                  v120 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                  swift_allocError(&type metadata for MLCreateError, v120, 0, 0);
                  v100 = 0xD00000000000002ELL;
                  goto LABEL_63;
                }

                v32 = v181;
                v182 = *(v181 + *(v166 + 32));
                v116 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
                swift_allocObject(v116, *(v116 + 48), *(v116 + 52));

                v117 = MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(v115, 0, 21, 3, v182);
                v118 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model;
                *(v109 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = v117;

                if (!*(v109 + v118))
                {
                  v121 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                  swift_allocError(&type metadata for MLCreateError, v121, 0, 0);
                  *v122 = 0xD000000000000031;
                  *(v122 + 8) = "ning checkpoints are supported." + 0x8000000000000000;
                  *(v122 + 16) = 0;
                  *(v122 + 32) = 0;
                  *(v122 + 48) = 0;
                  swift_willThrow();
                  goto LABEL_15;
                }

                v78 = v184;
                v119 = v183;
                MLHandActionClassifier.GraphCNN.updateGraphCNN(from:)(v184);
                if (v119)
                {

                  outlined destroy of MLHandActionClassifier.DataSource(v78, type metadata accessor for MLCheckpoint);
                  outlined destroy of MLHandActionClassifier.DataSource(v32, type metadata accessor for MLHandActionClassifier.PersistentParameters);
                  return;
                }

                MLHandActionClassifier.GraphCNN.initDevice()();

LABEL_68:
                v47 = v78;
                break;
            }

            goto LABEL_19;
          }

          v144 = rawValue;
          v54 = *(rawValue + 16);
          v55 = 1;
          if (!v54)
          {
            v56 = 0;
            goto LABEL_43;
          }

          v56 = v54 - 1;
          v57 = v56 * *(v165 + 72) + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + rawValue;
          rawValue = -*(v165 + 72);
          v172 = 0xEB00000000676E69;
          v58 = v180;
          break;
      }

      break;
  }

  while (2)
  {
    v59 = v170;
    outlined init with copy of MLTrainingSessionParameters(v57, v170, type metadata accessor for MLCheckpoint);
    switch(*(v59 + *(v182 + 20)))
    {
      case 0:
        v60 = v57;
        v61 = 0xEB0000000064657ALL;
        v62 = 0x696C616974696E69;
        goto LABEL_34;
      case 1:
        110;
        outlined destroy of MLHandActionClassifier.DataSource(v170, type metadata accessor for MLCheckpoint);
        v55 = 0;
        goto LABEL_44;
      case 2:
        v60 = v57;
        v61 = 0xE800000000000000;
        v62 = 0x676E696E69617274;
        goto LABEL_34;
      case 3:
        v60 = v57;
        v61 = 0xEA0000000000676ELL;
        v62 = 0x697461756C617665;
        goto LABEL_34;
      case 4:
        v60 = v57;
        v61 = v172;
        v62 = 0x636E657265666E69;
LABEL_34:
        v63 = _stringCompareWithSmolCheck(_:_:expecting:)(v62, v61, 0x6974636172747865, 0xEA0000000000676ELL, 0);
        v61;
        outlined destroy of MLHandActionClassifier.DataSource(v170, type metadata accessor for MLCheckpoint);
        if ((v63 & 1) == 0)
        {
          v57 = rawValue + v60;
          v64 = v56-- != 0;
          v58 = v180;
          if (!v64)
          {
            v56 = 0;
            v55 = 1;
            goto LABEL_44;
          }

          continue;
        }

        v55 = 0;
LABEL_43:
        v58 = v180;
LABEL_44:
        v80 = alloca(24);
        v81 = alloca(32);
        *&v123[1] = &v144;
        v82 = v164;
        v83 = v183;
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), v123, v56, v55, v163);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v82, 1, v182);
        v183 = v83;
        if (EnumTagSinglePayload == 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v82, &demangling cache variable for type metadata for MLCheckpoint?);
          v85 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
          v86 = v178;
          swift_beginAccess(v178 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures, &v144, 0, 0);
          v87 = *(v86 + v85 + 8);
          *&__src[0] = *(v86 + v85);
          BYTE8(__src[0]) = v87;
          outlined copy of Result<_DataTable, Error>(*&__src[0], v87);
          v88 = MLDataTable.size.getter();
          outlined consume of Result<_DataTable, Error>(*&__src[0], SBYTE8(__src[0]));
          if (v88)
          {
            v78 = v184;
            v73 = v183;
            v79 = 0xEA0000000000676ELL;
            switch(*(v184 + v179))
            {
              case 0:
                goto LABEL_47;
              case 1:
                goto LABEL_57;
              case 2:
                goto LABEL_54;
              case 3:
                goto LABEL_56;
              case 4:
                goto LABEL_55;
            }
          }

          v97 = "erly initialized." + 0x8000000000000000;
          v98 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v98, 0, 0);
          v100 = 0xD000000000000028;
LABEL_63:
          *v99 = v100;
          *(v99 + 8) = v97;
          *(v99 + 16) = 0;
          *(v99 + 32) = 0;
          *(v99 + 48) = 0;
          swift_willThrow();
LABEL_64:
          v96 = v184;
        }

        else
        {
          outlined init with take of MLClassifierMetrics(v82, v58, type metadata accessor for MLCheckpoint);
          URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
          LOBYTE(__src[0]) = 1;
          *(&__src[0] + 1) = 44;
          __src[1] = 0xE100000000000000;
          *&__src[2] = 0xE000000000000000;
          *(&__src[2] + 1) = 92;
          *&__src[3] = 0xE100000000000000;
          BYTE8(__src[3]) = 1;
          *&__src[4] = 34;
          *(&__src[4] + 1) = 0xE100000000000000;
          LOBYTE(__src[5]) = 1;
          *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
          *&__src[6] = 10;
          *(&__src[6] + 1) = 0xE100000000000000;
          __src[7] = 0;
          LOBYTE(__src[8]) = 1;
          *(&__src[8] + 1) = 0;
          LOBYTE(__dst[0]) = 1;
          LOBYTE(v144) = 1;
          v145 = 44;
          v146 = 0xE100000000000000;
          v147 = 0;
          v148 = 0xE000000000000000;
          v149 = 92;
          v150 = 0xE100000000000000;
          v151 = 1;
          v152 = 34;
          v153 = 0xE100000000000000;
          v154 = 1;
          v155 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
          v156 = 10;
          v157 = 0xE100000000000000;
          v158 = 0;
          v159 = 1;
          v160 = 0;
          outlined retain of MLDataTable.ParsingOptions(__src);
          outlined release of MLDataTable.ParsingOptions(&v144);
          memcpy(__dst, __src, sizeof(__dst));
          v89 = v183;
          MLDataTable.init(contentsOf:options:)(v168, __dst);
          if (!v89)
          {
            v90 = v174;
            LOBYTE(v182) = v175;
            v183 = 0;
            v91 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
            v92 = v178;
            swift_beginAccess(v178 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures, v162, 1, 0);
            v93 = *(v92 + v91);
            *(v92 + v91) = v90;
            v94 = *(v92 + v91 + 8);
            *(v92 + v91 + 8) = v182;
            outlined consume of Result<_DataTable, Error>(v93, v94);
            URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
            LOBYTE(v123[0]) = 1;
            *(&v123[0] + 1) = 44;
            v123[1] = 0xE100000000000000;
            *&v123[2] = 0xE000000000000000;
            *(&v123[2] + 1) = 92;
            *&v123[3] = 0xE100000000000000;
            BYTE8(v123[3]) = 1;
            *&v123[4] = 34;
            *(&v123[4] + 1) = 0xE100000000000000;
            LOBYTE(v123[5]) = 1;
            *(&v123[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            *&v123[6] = 10;
            *(&v123[6] + 1) = 0xE100000000000000;
            v3.i64[0] = 0;
            v123[7] = 0;
            LOBYTE(v123[8]) = 1;
            *(&v123[8] + 1) = 0;
            v143[0] = 1;
            LOBYTE(v125) = 1;
            v126 = 44;
            v127 = 0xE100000000000000;
            v128 = 0;
            v129 = 0xE000000000000000;
            v130 = 92;
            v131 = 0xE100000000000000;
            v132 = 1;
            v133 = 34;
            v134 = 0xE100000000000000;
            v135 = 1;
            v136 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
            v137 = 10;
            v138 = 0xE100000000000000;
            v139 = 0;
            v140 = 1;
            v141 = 0;
            outlined retain of MLDataTable.ParsingOptions(v123);
            outlined release of MLDataTable.ParsingOptions(&v125);
            memcpy(v143, v123, sizeof(v143));
            v95 = v183;
            MLDataTable.init(contentsOf:options:)(v169, v143);
            v73 = v95;
            if (!v95)
            {
              outlined destroy of MLHandActionClassifier.DataSource(v180, type metadata accessor for MLCheckpoint);
              v101 = v176;
              LOBYTE(v182) = v177;
              v102 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
              v103 = v178;
              swift_beginAccess(v178 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures, v143, 1, 0);
              v104 = *(v103 + v102);
              *(v103 + v102) = v101;
              v105 = *(v103 + v102 + 8);
              *(v103 + v102 + 8) = v182;
              outlined consume of Result<_DataTable, Error>(v104, v105);
              v78 = v184;
              v79 = 0xEA0000000000676ELL;
              switch(*(v184 + v179))
              {
                case 0:
                  goto LABEL_47;
                case 1:
                  goto LABEL_57;
                case 2:
                  goto LABEL_54;
                case 3:
                  goto LABEL_56;
                case 4:
                  goto LABEL_55;
              }
            }
          }

          outlined destroy of MLHandActionClassifier.DataSource(v180, type metadata accessor for MLCheckpoint);
          v96 = v184;
        }

        outlined destroy of MLHandActionClassifier.DataSource(v96, type metadata accessor for MLCheckpoint);
        v52 = v181;
LABEL_21:
        outlined destroy of MLHandActionClassifier.DataSource(v52, type metadata accessor for MLHandActionClassifier.PersistentParameters);
        return;
    }
  }
}

Swift::Int_optional __swiftcall HandActionClassifierTrainingSessionDelegate.itemCount(phase:)(CreateML::MLPhase phase)
{
  switch(*phase)
  {
    case 0:
    case 3:
    case 4:
      v2 = 1;
      v3 = 0;
      break;
    case 1:
      v5 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
      v6 = (OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable + v1);
      v3 = 0;
      swift_beginAccess(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable + v1, v9, 0, 0);
      v7 = *(v1 + v5 + 8);
      if (v7 != -1)
      {
        v10 = *v6;
        v11 = v7 & 1;
        outlined copy of Result<_DataTable, Error>(v10, v7);
        v3 = MLDataTable.size.getter();
        outlined consume of Result<_DataTable, Error>(v10, v11);
      }

      v2 = 0;
      break;
    case 2:
      v4 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters + v1;
      v2 = 0;
      v3 = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 28) + v4);
      break;
  }

  v8.value = v3;
  v8.is_nil = v2;
  return v8;
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandActionClassifierTrainingSessionDelegate.extractFeatures(from:)(Swift::Int from)
{
  v50 = v1;
  v49 = from;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v48 = v35;
  v10 = v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, v35, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v35, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  v43 = v6;
  if (__swift_getEnumTagSinglePayload(v35, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
    BUG();
  }

  v11 = v48;
  outlined init with take of MLClassifierMetrics(v35, v48, type metadata accessor for MLHandActionClassifier.PersistentParameters);
  v12 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable + v2, v36, 0, 0);
  v13 = *(v2 + v12 + 8);
  if (v13 == 0xFF)
  {
    outlined destroy of MLHandActionClassifier.DataSource(v11, type metadata accessor for MLHandActionClassifier.PersistentParameters);
LABEL_11:
    v25.finished = 1;
    v25._0 = 1;
    return v25;
  }

  v14 = *(v2 + v12);
  v44 = v2;
  v39 = v14;
  v15 = v13;
  v16 = v13 & 1;
  v40 = v16;
  outlined copy of Result<_DataTable, Error>(v14, v15);
  outlined copy of Result<_DataTable, Error>(v14, v15);
  MLDataTable.size.getter();
  v42 = v17;
  outlined consume of Result<_DataTable, Error>(v39, v40);
  if (v42 <= 0)
  {
    outlined destroy of MLHandActionClassifier.DataSource(v48, type metadata accessor for MLHandActionClassifier.PersistentParameters);
    outlined consume of MLDataTable?(v14, v15);
    goto LABEL_11;
  }

  v47 = v14;
  v51 = v15;
  v18 = *(v44 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount);
  v19 = *(v44 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount);
  v23 = __OFADD__(v18, v19);
  v20 = v18 + v19;
  if (v23)
  {
    BUG();
  }

  if (v20 <= v49)
  {
    outlined destroy of MLHandActionClassifier.DataSource(v48, type metadata accessor for MLHandActionClassifier.PersistentParameters);
    outlined consume of MLDataTable?(v47, v51);
    v25.finished = 1;
    v25._0 = 0;
  }

  else
  {
    v38 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount;
    v37 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount;
    v21 = v44 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters;
    v42 = v18;
    v22 = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 20) + v21);
    v23 = __OFADD__(v49, v22);
    v24 = v49 + v22;
    if (v42 <= v49)
    {
      if (v23)
      {
        BUG();
      }
    }

    else
    {
      v20 = v42;
      if (v23)
      {
        BUG();
      }
    }

    if (v20 < v24)
    {
      v24 = v20;
    }

    if (v24 < v49)
    {
      BUG();
    }

    v45 = v47;
    v46 = v16;
    outlined copy of Result<_DataTable, Error>(v47, v51);
    MLDataTable.subscript.getter(v49, v24);
    outlined consume of Result<_DataTable, Error>(v45, v46);
    v26 = v39;
    v27 = v40;
    type metadata accessor for MLHandActionClassifier.FeatureExtractor();
    v41 = v26;
    v45 = v26;
    v46 = v27;
    v28 = *(v43 + 36);
    v43 = v24;
    v29 = v48;
    v30 = v50;
    static MLHandActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:startingSessionId:)(&v45, v49, *&v48[v28]);
    if (v30)
    {
      outlined destroy of MLHandActionClassifier.DataSource(v29, type metadata accessor for MLHandActionClassifier.PersistentParameters);
      outlined consume of MLDataTable?(v47, v51);
      v25._0 = outlined consume of Result<_DataTable, Error>(v41, v27);
    }

    else
    {
      v31 = v39;
      LOBYTE(v50) = v40;
      v45 = v39;
      v46 = v40 & 1;
      if (v42 <= v49)
      {
        v32 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
      }

      else
      {
        v32 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
      }

      swift_beginAccess(v44 + v32, &v39, 33, 0);
      MLDataTable.append(contentsOf:)(&v45);
      swift_endAccess(&v39);
      outlined consume of Result<_DataTable, Error>(v41, v27);
      outlined consume of MLDataTable?(v47, v51);
      outlined destroy of MLHandActionClassifier.DataSource(v48, type metadata accessor for MLHandActionClassifier.PersistentParameters);
      outlined consume of Result<_DataTable, Error>(v31, v50);
      v25._0 = v43 - v49;
      if (__OFSUB__(v43, v49))
      {
        BUG();
      }

      v33 = *(v44 + v37);
      v23 = __OFADD__(*(v44 + v38), v33);
      v34 = *(v44 + v38) + v33;
      if (v23)
      {
        BUG();
      }

      v25.finished = v43 == v34;
    }
  }

  return v25;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandActionClassifierTrainingSessionDelegate.transitionTo(phase:)(CreateML::MLPhase phase)
{
  v4 = v2;
  v50 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v5 = *(*(v50 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v51 = &v43;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  if (*phase != 2)
  {
    return;
  }

  v56 = &v43;
  v53 = v1;
  v15 = v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  v16 = v11;
  swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, v44, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v15, &v43, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  v52 = v16;
  if (__swift_getEnumTagSinglePayload(&v43, 1, v16) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v43, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(&v43, v56, type metadata accessor for MLHandActionClassifier.PersistentParameters);
  v17 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
  swift_beginAccess(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures, v45, 0, 0);
  v18 = *(v4 + v17);
  v19 = *(v4 + v17 + 8);
  outlined copy of Result<_DataTable, Error>(v18, v19);
  v20._countAndFlagsBits = 0x6C6562616CLL;
  v20._object = 0xE500000000000000;
  specialized MLDataTable.subscript.getter(v20, v18, v19);
  outlined consume of Result<_DataTable, Error>(v18, v19);
  v21 = v48;
  LOBYTE(v17) = v49;
  specialized MLDataColumn.dropDuplicates()(v48, v49);
  outlined consume of Result<_DataTable, Error>(v21, v17);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v46, v47, v3);
  v23 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels;
  v20._countAndFlagsBits = *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);
  *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels) = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v20._countAndFlagsBits;
  v24 = *(v4 + v23);
  if (!v24)
  {
    v38 = "re not properly constructed." + 0x8000000000000000;
    v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
    v41 = 0xD00000000000002ELL;
LABEL_10:
    *v40 = v41;
    *(v40 + 8) = v38;
    *(v40 + 16) = 0;
    *(v40 + 32) = 0;
    *(v40 + 48) = 0;
    swift_willThrow();
    outlined destroy of MLHandActionClassifier.DataSource(v56, type metadata accessor for MLHandActionClassifier.PersistentParameters);
    return;
  }

  v25 = v52;
  v26 = *(v56 + v52[8]);
  v27 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
  v55 = swift_allocObject(v27, *(v27 + 48), *(v27 + 52));
  swift_bridgeObjectRetain_n(v24, 2);
  v54 = v26;
  v28 = MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(v24, 0, 21, 3, v26);
  v29 = v24;
  v30 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model;
  *(v4 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model) = v28;

  if (!*(v4 + v30))
  {
    v29;
    v38 = "ve training parameters" + 0x8000000000000000;
    v42 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v42, 0, 0);
    v41 = 0xD00000000000003CLL;
    goto LABEL_10;
  }

  v55 = v29;
  v31 = v56;
  v32 = v51;
  outlined init with copy of MLTrainingSessionParameters(v56 + v25[5], v51, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  v33 = *(v31 + v25[7]);
  v34 = *(v31 + v25[10]);
  v35 = *(v31 + v25[9]);
  v36 = v50;
  *(v32 + *(v50 + 20)) = *(v31 + v25[6]);
  *(v32 + v36[6]) = v33;
  *(v32 + v36[7]) = v54;
  *(v32 + v36[8]) = v34;
  *(v32 + v36[10]) = v35;

  outlined destroy of MLHandActionClassifier.DataSource(v32, type metadata accessor for MLHandActionClassifier.ModelParameters);
  MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel()();
  if (!v37)
  {
    MLHandActionClassifier.GraphCNN.initDevice()();
  }

  outlined destroy of MLHandActionClassifier.DataSource(v56, type metadata accessor for MLHandActionClassifier.PersistentParameters);
  v55;
}

Swift::tuple_Int_metrics_OpaquePointer_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandActionClassifierTrainingSessionDelegate.train(from:)(Swift::Int from)
{
  v84 = v1;
  v88 = type metadata accessor for Tensor(0);
  v89 = *(v88 - 8);
  v3 = *(v89 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v90 = &v80;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v95 = &v80;
  v87 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>);
  v86 = *(v87 - 8);
  v9 = *(v86 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v94 = &v80;
  v100 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v12 = *(*(v100 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v102 = &v80;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v106 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v18 = *(*(v106 - 1) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v91 = &v80;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v96 = &v80;
  v103 = v2;
  v23 = v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters;
  v24 = type metadata accessor for MLTrainingSessionParameters(0);
  v25 = *(*(v24 + 20) + v23);
  if (__OFADD__(v25, from))
  {
    BUG();
  }

  v26 = *(v23 + *(v24 + 28));
  v27 = v26 - from;
  if (__OFSUB__(v26, from))
  {
    BUG();
  }

  v101 = *&from;
  v92 = v26;
  v85 = v25 + from;
  if (v25 < v27)
  {
    v27 = v25;
  }

  v28 = v103;
  v29 = v103 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v103 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, v81, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, &v80, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  v30 = v100;
  if (__swift_getEnumTagSinglePayload(&v80, 1, v100))
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v80, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
    v31 = "Augmentation options" + 0x8000000000000000;
    v32 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v32, 0, 0);
    *v33 = 0xD000000000000026;
    *(v33 + 8) = "Augmentation options" + 0x8000000000000000;
    *(v33 + 16) = 0;
    *(v33 + 32) = 0;
    *(v33 + 48) = 0;
    v34 = swift_willThrow();
    goto LABEL_13;
  }

  v93 = v27;
  v35 = v30;
  v36 = v102;
  outlined init with copy of MLTrainingSessionParameters(&v80, v102, type metadata accessor for MLHandActionClassifier.PersistentParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v80, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  v37 = v91;
  outlined init with copy of MLTrainingSessionParameters(v36 + v35[5], v91, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  v38 = *(v36 + v35[7]);
  v39 = *(v36 + v35[8]);
  v40 = *(v36 + v35[10]);
  v41 = *(v36 + v35[9]);
  v42 = v106;
  *(v37 + v106[5]) = *(v36 + v35[6]);
  *(v37 + v42[6]) = v38;
  *(v37 + v42[7]) = v39;
  *(v37 + v42[8]) = v40;
  *(v37 + v42[10]) = v41;
  outlined destroy of MLHandActionClassifier.DataSource(v36, type metadata accessor for MLHandActionClassifier.PersistentParameters);
  v43 = v96;
  outlined init with take of MLClassifierMetrics(v37, v96, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v44 = *(v28 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);
  if (!v44 || !*(v28 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels))
  {
    v31 = "ve training parameters" + 0x8000000000000000;
    v54 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v54, 0, 0);
    *v55 = 0xD00000000000003CLL;
    *(v55 + 8) = "ve training parameters" + 0x8000000000000000;
    *(v55 + 16) = 0;
    *(v55 + 32) = 0;
    *(v55 + 48) = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  v102 = *(v28 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);
  v45 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
  v100 = v44;
  swift_beginAccess(v28 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures, v82, 0, 0);
  v47 = *(v28 + v45 + 8);
  v97 = *(v28 + v45);
  v46 = v97;
  LOBYTE(v98) = v47;
  v48 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
  swift_beginAccess(v28 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures, v83, 0, 0);
  v49 = v28;
  v50 = *(v28 + v48);
  LODWORD(v48) = *(v49 + v48 + 8);
  v104 = v50;
  LOBYTE(v105) = v48 & 1;

  v51 = v46;
  v43 = v96;
  outlined copy of Result<_DataTable, Error>(v51, v47);
  v52 = v48;
  v31 = v102;
  outlined copy of Result<_DataTable, Error>(v50, v52);
  v28 = v95;
  v53 = v84;
  static MLHandActionClassifier.prepareDataset(classLabels:trainingFeatures:validationFeatures:parameters:)(v94, v95, v31, &v97, &v104, v43, v41);
  if (v53)
  {
    v31;

    outlined consume of MLDataTable?(v104, v105);
    outlined consume of Result<_DataTable, Error>(v97, v98);
LABEL_12:
    v34 = outlined destroy of MLHandActionClassifier.DataSource(v43, type metadata accessor for MLHandActionClassifier.ModelParameters);
    goto LABEL_13;
  }

  outlined consume of MLDataTable?(v104, v105);
  outlined consume of Result<_DataTable, Error>(v97, v98);
  if (v93 < 0)
  {
    BUG();
  }

  if (v93)
  {
    v58 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary;
    v59 = 0;
    do
    {
      if (__OFADD__(v59, *&v101))
      {
        BUG();
      }

      v60 = MLHandActionClassifier.GraphCNN.iterateTraining(trainingData:validationData:epochCount:)(v94, v28, v59 + *&v101, v41);
      ++v59;
      v61 = *(v103 + v58);
      *(v103 + v58) = v60;
      v61;
      v28 = v95;
    }

    while (v93 != v59);
  }

  v62 = v103;
  v101 = *&OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary;
  v63 = *(v103 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary);

  specialized Dictionary.subscript.getter(0x676E696E69617274, 0xED000073736F6C5FLL, v63);
  v63;
  if (!v99)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v97, &demangling cache variable for type metadata for Any?);
    goto LABEL_23;
  }

  if (!swift_dynamicCast(&v104, &v97, &type metadata for Any + 8, &type metadata for Double, 6))
  {
LABEL_23:
    v65 = _swiftEmptyDictionarySingleton;
    goto LABEL_24;
  }

  v106 = v104;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
  v97 = _swiftEmptyDictionarySingleton;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, isUniquelyReferenced_nonNull_native, *&v106);
  v65 = v97;
  v62 = v103;
LABEL_24:
  v66 = *(v62 + *&v101);

  specialized Dictionary.subscript.getter(0x69746164696C6176, 0xEF73736F6C5F6E6FLL, v66);
  v66;
  if (v99)
  {
    if (swift_dynamicCast(&v104, &v97, &type metadata for Any + 8, &type metadata for Double, 6))
    {
      v106 = v104;
      v67 = swift_isUniquelyReferenced_nonNull_native(v65);
      v97 = v65;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(4, v67, *&v106);
      v106 = v97;
    }

    else
    {
      v106 = v65;
    }
  }

  else
  {
    v106 = v65;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v97, &demangling cache variable for type metadata for Any?);
  }

  v68 = *(v103 + *&v101);

  specialized Dictionary.subscript.getter(0xD000000000000012, ("oseClassifier.swift" + 0x8000000000000000), v68);
  v68;
  if (v99)
  {
    v69 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
    if (swift_dynamicCast(&v104, &v97, &type metadata for Any + 8, v69, 6))
    {
      v70 = v90;
      _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0);
      v91 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v70, *(v102 + 2));
      (*(v89 + 8))(v70, v88);
      v71 = v106;
      v72 = swift_isUniquelyReferenced_nonNull_native(v106);
      v97 = v71;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(3, v72, *&v91);

      v106 = v97;
    }
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v97, &demangling cache variable for type metadata for Any?);
  }

  v73 = *(v103 + *&v101);

  specialized Dictionary.subscript.getter(0xD000000000000014, ("ve training confusion matrix" + 0x8000000000000000), v73);
  v73;
  if (v99)
  {
    v74 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
    if (swift_dynamicCast(&v104, &v97, &type metadata for Any + 8, v74, 6))
    {
      v103 = v104;
      v75 = v90;
      _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0);
      v76 = *(v102 + 2);
      v102;
      v101 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v75, v76);
      (*(v89 + 8))(v75, v88);
      v77 = v106;
      v78 = swift_isUniquelyReferenced_nonNull_native(v106);
      v97 = v77;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(5, v78, v101);

      v106 = v97;
    }

    else
    {
      v102;
    }
  }

  else
  {
    v102;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v97, &demangling cache variable for type metadata for Any?);
  }

  LOBYTE(v31) = v85 >= v92;
  v79 = v106;
  v28 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v106);
  v79;

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v95, &demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>?);
  (*(v86 + 8))(v94, v87);
  outlined destroy of MLHandActionClassifier.DataSource(v96, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v34 = v93;
LABEL_13:
  v56 = v28;
  v57 = v31;
  result.metrics._rawValue = v56;
  result._0 = v34;
  result.finished = v57;
  return result;
}

uint64_t HandActionClassifierTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
{
  v81 = v2;
  v80 = a1;
  LODWORD(v4) = 0;
  v5 = type metadata accessor for URL(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = alloca(v6);
  v10 = alloca(v6);
  v11 = alloca(v6);
  v12 = alloca(v6);
  v13 = alloca(v6);
  v14 = alloca(v6);
  v15 = *a2;
  if (v15 == 2)
  {
    LOBYTE(v4) = 1;
    if (*(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model))
    {

      specialized _ModelCheckpoint<>.save(to:)(v80, MLHandActionClassifier.GraphCNN.getCheckpointStatesDictionary());
    }
  }

  else if (v15 == 1)
  {
    v79 = *(v5 - 8);
    v68 = __src;
    v78 = v5;
    v75 = __src;
    v69 = __src;
    v16 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
    v70 = (v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures);
    swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures, v49, 1, 0);
    v17 = *(v3 + v16);
    v18 = *(v3 + v16 + 8);
    v4 = &v51;
    v51 = v17;
    LOBYTE(v52) = v18;
    outlined copy of Result<_DataTable, Error>(v17, v18);
    URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
    v19 = v81;
    MLDataTable.write(to:)(__src);
    if (v19)
    {
      (*(v79 + 8))(__src, v78);
      outlined consume of Result<_DataTable, Error>(v51, v52);
    }

    else
    {
      v81 = *(v79 + 8);
      v81(__src, v78);
      outlined consume of Result<_DataTable, Error>(v51, v52);
      v20 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
      v79 = v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
      swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures, v50, 1, 0);
      v21 = *(v3 + v20 + 8);
      v76 = *(v3 + v20);
      LOBYTE(v77) = v21;
      outlined copy of Result<_DataTable, Error>(v76, v21);
      v22 = v68;
      URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
      MLDataTable.write(to:)(v22);
      LODWORD(v4) = 0;
      v81(v22, v78);
      outlined consume of Result<_DataTable, Error>(v76, v77);
      v81 = 0;
      URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
      LOBYTE(__src[0]) = 1;
      *(&__src[0] + 1) = 44;
      __src[1] = 0xE100000000000000;
      *&__src[2] = 0xE000000000000000;
      *(&__src[2] + 1) = 92;
      *&__src[3] = 0xE100000000000000;
      BYTE8(__src[3]) = 1;
      *&__src[4] = 34;
      *(&__src[4] + 1) = 0xE100000000000000;
      LOBYTE(__src[5]) = 1;
      *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      *&__src[6] = 10;
      *(&__src[6] + 1) = 0xE100000000000000;
      __src[7] = 0;
      LOBYTE(__src[8]) = 1;
      *(&__src[8] + 1) = 0;
      __dst[0] = 1;
      LOBYTE(v51) = 1;
      v52 = 44;
      v53 = 0xE100000000000000;
      v54 = 0;
      v55 = 0xE000000000000000;
      v56 = 92;
      v57 = 0xE100000000000000;
      v58 = 1;
      v59 = 34;
      v60 = 0xE100000000000000;
      v61 = 1;
      v62 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v63 = 10;
      v64 = 0xE100000000000000;
      v65 = 0;
      v66 = 1;
      v67 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v51);
      memcpy(__dst, __src, sizeof(__dst));
      v24 = v81;
      MLDataTable.init(contentsOf:options:)(v75, __dst);
      if (!v24)
      {
        v25 = v72;
        v26 = v70;
        v27 = *v70;
        *v70 = v71;
        v28 = *(v26 + 2);
        *(v26 + 8) = v25;
        outlined consume of Result<_DataTable, Error>(v27, v28);
        v4 = v69;
        v81 = 0;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
        LOBYTE(v47[0]) = 1;
        *(&v47[0] + 1) = 44;
        v47[1] = 0xE100000000000000;
        *&v47[2] = 0xE000000000000000;
        *(&v47[2] + 1) = 92;
        *&v47[3] = 0xE100000000000000;
        BYTE8(v47[3]) = 1;
        *&v47[4] = 34;
        *(&v47[4] + 1) = 0xE100000000000000;
        LOBYTE(v47[5]) = 1;
        *(&v47[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
        *&v47[6] = 10;
        *(&v47[6] + 1) = 0xE100000000000000;
        v47[7] = 0;
        LOBYTE(v47[8]) = 1;
        *(&v47[8] + 1) = 0;
        v48[0] = 1;
        LOBYTE(v36[0]) = 1;
        v36[1] = 44;
        v36[2] = 0xE100000000000000;
        v36[3] = 0;
        v36[4] = 0xE000000000000000;
        v36[5] = 92;
        v36[6] = 0xE100000000000000;
        v37 = 1;
        v38 = 34;
        v39 = 0xE100000000000000;
        v40 = 1;
        v41 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
        v42 = 10;
        v43 = 0xE100000000000000;
        v44 = 0;
        v45 = 1;
        v46 = 0;
        outlined retain of MLDataTable.ParsingOptions(v47);
        outlined release of MLDataTable.ParsingOptions(v36);
        memcpy(v48, v47, sizeof(v48));
        v29 = v81;
        MLDataTable.init(contentsOf:options:)(v4, v48);
        if (!v29)
        {
          v30 = v74;
          v31 = v79;
          v32 = *v79;
          *v79 = v73;
          v33 = *(v31 + 8);
          *(v31 + 8) = v30;
          outlined consume of Result<_DataTable, Error>(v32, v33);
          LOBYTE(v4) = 1;
        }
      }
    }
  }

  return v4;
}

uint64_t HandActionClassifierTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v14, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
    v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
    *v12 = 0xD000000000000030;
    *(v12 + 8) = "Feature Extractor" + 0x8000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 32) = 0;
    *(v12 + 48) = 2;
    return swift_willThrow();
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for MLHandActionClassifier.PersistentParameters);
    MLHandActionClassifier.PersistentParameters.save(toSessionDirectory:)(v17);
    return outlined destroy of MLHandActionClassifier.DataSource(&v14, type metadata accessor for MLHandActionClassifier.PersistentParameters);
  }
}

NSURL *HandActionClassifierTrainingSessionDelegate.restore(from:phase:)(uint64_t a1)
{
  v36 = v1;
  v34 = v2;
  v30 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v32 = &v27;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v35 = &v27;
  v8 = type metadata accessor for URL(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v31 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v13 = *(*(v31 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v33 = &v27;
  v16 = alloca(v13);
  v17 = alloca(v13);
  (*(v9 + 16))(&v27, v30, v8);
  v18 = v36;
  result = MLHandActionClassifier.PersistentParameters.init(sessionDirectory:)(&v27);
  if (!v18)
  {
    v36 = &v27;
    v20 = v34 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
    swift_beginAccess(v34 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, v28, 0, 0);
    v21 = v35;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v20, v35, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
    v22 = v21;
    v23 = v31;
    if (__swift_getEnumTagSinglePayload(v22, 1, v31) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
      v24 = v32;
      outlined init with take of MLClassifierMetrics(v36, v32, type metadata accessor for MLHandActionClassifier.PersistentParameters);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
      swift_beginAccess(v20, v29, 33, 0);
      outlined assign with take of MLHandActionClassifier.PersistentParameters?(v24, v20);
      return swift_endAccess(v29);
    }

    else
    {
      v25 = v33;
      outlined init with take of MLClassifierMetrics(v35, v33, type metadata accessor for MLHandActionClassifier.PersistentParameters);
      v26 = v36;
      HandActionClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(v36, v25);
      outlined destroy of MLHandActionClassifier.DataSource(v25, type metadata accessor for MLHandActionClassifier.PersistentParameters);
      return outlined destroy of MLHandActionClassifier.DataSource(v26, type metadata accessor for MLHandActionClassifier.PersistentParameters);
    }
  }

  return result;
}

uint64_t HandActionClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(uint64_t a1, uint64_t a2)
{
  v180 = v2;
  v162 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
  v3 = *(*(v162 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v161 = &v160;
  v179 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v6 = *(*(v179 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v160 = &v160;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v167 = &v160;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v164._object = &v160;
  v13 = alloca(v6);
  v14 = alloca(v6);
  v164._countAndFlagsBits = &v160;
  v181 = type metadata accessor for DataFrame(0);
  v178 = *(v181 - 8);
  v15 = *(v178 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v165._countAndFlagsBits = &v160;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v171 = &v160;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v166 = &v160;
  v22 = alloca(v15);
  v23 = alloca(v15);
  v174 = &v160;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v165._object = &v160;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v170 = &v160;
  v29 = alloca(v24);
  v30 = alloca(v24);
  v31 = alloca(v24);
  v32 = alloca(v24);
  v33 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v34 = v33[6];
  v35 = *(a2 + v34);
  if (*(a1 + v34) != v35)
  {
    v172 = *(a1 + v34);
    v47 = lazy protocol witness table accessor for type Int and conformance Int();
    v180 = BinaryInteger.description.getter(&type metadata for Int, v47);
    v181 = v48;
    v172 = v35;
    v49 = BinaryInteger.description.getter(&type metadata for Int, v47);
    v51 = v50;
    v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
    *v53 = 0x6953206863746142;
    *(v53 + 8) = 0xEA0000000000657ALL;
LABEL_14:
    *(v53 + 16) = v180;
    *(v53 + 24) = v181;
    *(v53 + 32) = v49;
    *(v53 + 40) = v51;
    *(v53 + 48) = 3;
    return swift_willThrow();
  }

  v175 = &v160;
  v36 = v33[7];
  v37 = *(a2 + v36);
  if (*(a1 + v36) != v37)
  {
    v54 = "metricsAttributesDictionary" + 0x8000000000000000;
    v172 = *(a1 + v36);
    v55 = lazy protocol witness table accessor for type Int and conformance Int();
    v180 = BinaryInteger.description.getter(&type metadata for Int, v55);
    v181 = v56;
    v172 = v37;
    v49 = BinaryInteger.description.getter(&type metadata for Int, v55);
    v51 = v57;
    v58 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v58, 0, 0);
    v59 = 0xD000000000000012;
LABEL_13:
    *v53 = v59;
    *(v53 + 8) = v54;
    goto LABEL_14;
  }

  v38 = v33[8];
  v39 = *(a2 + v38);
  if (*(a1 + v38) != v39)
  {
    v54 = "Number of Labels" + 0x8000000000000000;
    v172 = *(a1 + v38);
    v60 = lazy protocol witness table accessor for type Int and conformance Int();
    v180 = BinaryInteger.description.getter(&type metadata for Int, v60);
    v181 = v61;
    v172 = v39;
    v49 = BinaryInteger.description.getter(&type metadata for Int, v60);
    v51 = v62;
    v63 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v63, 0, 0);
    v59 = 0xD000000000000016;
    goto LABEL_13;
  }

  v40 = v33[9];
  v41 = *(a1 + v40);
  if (v41 != *(a2 + v40))
  {
    v181 = *(a2 + v40);
    v180 = Double.description.getter(v41);
    v65 = v64;
    v66 = Double.description.getter(*&v181);
    v68 = v67;
    v69 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v69, 0, 0);
    *v70 = 0xD000000000000011;
    *(v70 + 8) = "lassification algorithm." + 0x8000000000000000;
    *(v70 + 16) = v180;
    *(v70 + 24) = v65;
    *(v70 + 32) = v66;
    *(v70 + 40) = v68;
    *(v70 + 48) = 3;
    return swift_willThrow();
  }

  v42 = v33[10];
  v43 = *(a2 + v42);
  if (*(a1 + v42) != v43)
  {
    v54 = "Maximum Iterations" + 0x8000000000000000;
    v172 = *(a1 + v42);
    v71 = lazy protocol witness table accessor for type Int and conformance Int();
    v180 = BinaryInteger.description.getter(&type metadata for Int, v71);
    v181 = v72;
    v172 = v43;
    v49 = BinaryInteger.description.getter(&type metadata for Int, v71);
    v51 = v73;
    v74 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v74, 0, 0);
    v59 = 0xD000000000000014;
    goto LABEL_13;
  }

  v163 = a2;
  v44 = v180;
  result = MLHandActionClassifier.DataSource.gatherAnnotatedFileNames()();
  if (!v44)
  {
    v180 = a1;
    v177 = &v160;
    v46 = v175;
    MLHandActionClassifier.DataSource.gatherAnnotatedFileNames()();
    v176 = 0;
    v75 = v177;
    v76 = v170;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v177, v170, &demangling cache variable for type metadata for DataFrame?);
    v77 = v181;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v76, 1, v181);
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v76, &demangling cache variable for type metadata for DataFrame?);
    }

    else
    {
      v79 = v174;
      v80 = v174;
      v81 = v76;
      v82 = v77;
      v83 = *(v178 + 32);
      v83(v174, v81, v82);
      if (DataFrame.shape.getter(v80) > 0)
      {
        object = v165._object;
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v46, v165._object, &demangling cache variable for type metadata for DataFrame?);
        v85 = __swift_getEnumTagSinglePayload(object, 1, v82);
        v86 = v179;
        if (v85 == 1)
        {
          (*(v178 + 8))(v174, v82);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(object, &demangling cache variable for type metadata for DataFrame?);
        }

        else
        {
          v87 = v166;
          v88 = v166;
          v83(v166, object, v82);
          if (DataFrame.shape.getter(v88) > 0)
          {
            v89 = v174;
            v90 = v176;
            v91 = HandActionClassifierTrainingSessionDelegate.pathsByLabel(for:)();
            v176 = v90;
            v92 = v177;
            if (v90)
            {
              v93 = *(v178 + 8);
              v94 = v87;
              v95 = v181;
              v93(v94, v181);
              v93(v89, v95);
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v175, &demangling cache variable for type metadata for DataFrame?);
              v96 = v92;
              return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v96, &demangling cache variable for type metadata for DataFrame?);
            }

            v149 = v91;
            v150 = HandActionClassifierTrainingSessionDelegate.pathsByLabel(for:)();
            v151 = v150;
            v176 = 0;
            v152 = v87;
            v153 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SaySSGTt1g5(v149, v150);
            v149;
            v151;
            if ((v153 & 1) == 0)
            {
              v156 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v156, 0, 0);
              *v157 = 1;
              *(v157 + 8) = 0;
              *(v157 + 24) = 0;
              *(v157 + 40) = 0;
              *(v157 + 48) = 4;
              swift_willThrow();
              v158 = *(v178 + 8);
              v159 = v181;
              v158(v152, v181);
              v158(v174, v159);
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v175, &demangling cache variable for type metadata for DataFrame?);
              v96 = v177;
              return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v96, &demangling cache variable for type metadata for DataFrame?);
            }

            v154 = *(v178 + 8);
            v155 = v181;
            v154(v152, v181);
            v154(v174, v155);
LABEL_48:
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v175, &demangling cache variable for type metadata for DataFrame?);
            v96 = v177;
            return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v96, &demangling cache variable for type metadata for DataFrame?);
          }

          v97 = v87;
          v98 = *(v178 + 8);
          v98(v97, v82);
          v98(v174, v82);
          v86 = v179;
        }

        v75 = v177;
LABEL_29:
        countAndFlagsBits = v164._countAndFlagsBits;
        outlined init with copy of MLTrainingSessionParameters(v180, v164._countAndFlagsBits, type metadata accessor for MLHandActionClassifier.DataSource);
        if (swift_getEnumCaseMultiPayload(countAndFlagsBits, v86) == 3)
        {
          v179 = *countAndFlagsBits;
          LOBYTE(v170) = *(countAndFlagsBits + 8);
          v166 = *(countAndFlagsBits + 16);
          v174 = *(countAndFlagsBits + 24);
          v165._object = *(countAndFlagsBits + 32);
          v100 = *(countAndFlagsBits + 40);
          *(countAndFlagsBits + 56);
          countAndFlagsBits = v164._object;
          outlined init with copy of MLTrainingSessionParameters(v163, v164._object, type metadata accessor for MLHandActionClassifier.DataSource);
          if (swift_getEnumCaseMultiPayload(countAndFlagsBits, v86) == 3)
          {
            v180 = *countAndFlagsBits;
            LODWORD(v181) = *(countAndFlagsBits + 8);
            v165._countAndFlagsBits = *(countAndFlagsBits + 16);
            v171 = *(countAndFlagsBits + 24);
            v164._countAndFlagsBits = *(countAndFlagsBits + 32);
            v167 = *(countAndFlagsBits + 40);
            *(countAndFlagsBits + 56);
            v168 = v179;
            v101 = v170;
            LOBYTE(v170) = v170 & 1;
            v169 = v170;
            LODWORD(v178) = v101;
            outlined copy of Result<_DataTable, Error>(v179, v101);
            v102._countAndFlagsBits = v165._object;
            v102._object = v100;
            MLDataTable.subscript.getter(v102);
            v100;
            outlined consume of Result<_DataTable, Error>(v168, v169);
            v168 = v172;
            v169 = v173;
            v103 = Array<A>.init(_:)(&v168, v41);
            v168 = v180;
            LOBYTE(v164._object) = v181 & 1;
            v169 = v181 & 1;
            outlined copy of Result<_DataTable, Error>(v180, v181);
            v102._countAndFlagsBits = v164._countAndFlagsBits;
            v104 = v167;
            v102._object = v167;
            MLDataTable.subscript.getter(v102);
            v104;
            outlined consume of Result<_DataTable, Error>(v168, v169);
            v168 = v172;
            v169 = v173;
            v105 = Array<A>.init(_:)(&v168, v41);
            v106 = v105;
            ML11MLDataValueO_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v103, v105);
            v103;
            v106;
            if (ML11MLDataValueO_Tt1g5)
            {
              v168 = v179;
              v169 = v170;
              outlined copy of Result<_DataTable, Error>(v179, v178);
              v108._countAndFlagsBits = v166;
              v109 = v174;
              v108._object = v174;
              MLDataTable.subscript.getter(v108);
              v109;
              outlined consume of Result<_DataTable, Error>(v168, v169);
              v168 = v172;
              v169 = v173;
              v110 = Array<A>.init(_:)(&v168, v41);
              v168 = v180;
              v169 = v164._object;
              LODWORD(v181) = v181;
              outlined copy of Result<_DataTable, Error>(v180, v181);
              v108._countAndFlagsBits = v165._countAndFlagsBits;
              v111 = v171;
              v108._object = v171;
              MLDataTable.subscript.getter(v108);
              v111;
              outlined consume of Result<_DataTable, Error>(v168, v169);
              v168 = v172;
              v169 = v173;
              v112 = Array<A>.init(_:)(&v168, v41);
              v113 = v112;
              v114 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v110, v112);
              v110;
              v113;
              if (v114)
              {
                outlined consume of Result<_DataTable, Error>(v180, v181);
                outlined consume of Result<_DataTable, Error>(v179, v178);
                goto LABEL_48;
              }

              v145 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v145, 0, 0);
              *v146 = 1;
              *(v146 + 8) = 0;
              *(v146 + 24) = 0;
              *(v146 + 40) = 0;
              *(v146 + 48) = 4;
              swift_willThrow();
              v140 = v180;
              v139 = v181;
            }

            else
            {
              v171;
              v174;
              v137 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v137, 0, 0);
              *v138 = 1;
              *(v138 + 8) = 0;
              *(v138 + 24) = 0;
              *(v138 + 40) = 0;
              *(v138 + 48) = 4;
              swift_willThrow();
              v139 = v181;
              v140 = v180;
            }

            outlined consume of Result<_DataTable, Error>(v140, v139);
            outlined consume of Result<_DataTable, Error>(v179, v178);
            goto LABEL_48;
          }

          outlined consume of Result<_DataTable, Error>(v179, v170);
          v100;
          v174;
        }

        outlined destroy of MLHandActionClassifier.DataSource(countAndFlagsBits, type metadata accessor for MLHandActionClassifier.DataSource);
        v115 = v167;
        outlined init with copy of MLTrainingSessionParameters(v180, v167, type metadata accessor for MLHandActionClassifier.DataSource);
        if (swift_getEnumCaseMultiPayload(v115, v86) == 5)
        {
          v116 = v86;
          v117 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v118 = v117[12];
          v174 = *(v115 + v118);
          v180 = *(v115 + v118 + 8);
          v119 = v117[16];
          v170 = *(v115 + v119);
          v179 = *(v115 + v119 + 8);
          *(v115 + v117[20] + 8);
          v120 = v178;
          v164._countAndFlagsBits = *(v178 + 32);
          (v164._countAndFlagsBits)(v171, v115, v181);
          v115 = v160;
          outlined init with copy of MLTrainingSessionParameters(v163, v160, type metadata accessor for MLHandActionClassifier.DataSource);
          if (swift_getEnumCaseMultiPayload(v115, v116) == 5)
          {
            v121 = v117[12];
            v166 = *(v115 + v121);
            v167 = *(v115 + v121 + 8);
            v122 = v117[16];
            v164._object = *(v115 + v122);
            v165._object = *(v115 + v122 + 8);
            *(v115 + v117[20] + 8);
            (v164._countAndFlagsBits)(v165._countAndFlagsBits, v115, v181);
            v123 = v161;
            v124 = v179;
            DataFrame.subscript.getter(v170, v179);
            v124;
            v125 = v165._object;
            DataFrame.subscript.getter(v164._object, v165._object);
            v125;
            v126 = v176;
            v127 = specialized Sequence.allSatisfy(_:)(v123);
            v179 = v126;
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, &demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
            if (v127)
            {
              v128 = v180;
              DataFrame.subscript.getter(v174, v180);
              v128;
              v129 = v167;
              v130 = v165._countAndFlagsBits;
              DataFrame.subscript.getter(v166, v167);
              v129;
              v131 = v179;
              v132 = specialized Sequence.allSatisfy(_:)(v123);
              v176 = v131;
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, &demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
              v133 = v171;
              if ((v132 & 1) == 0)
              {
                v147 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                swift_allocError(&type metadata for MLCreateError, v147, 0, 0);
                *v148 = 1;
                *(v148 + 8) = 0;
                *(v148 + 24) = 0;
                *(v148 + 40) = 0;
                *(v148 + 48) = 4;
                swift_willThrow();
              }

              v134 = *(v178 + 8);
              v135 = v181;
              v134(v130, v181);
              v134(v133, v135);
            }

            else
            {
              v167;
              v180;
              v141 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v141, 0, 0);
              *v142 = 1;
              *(v142 + 8) = 0;
              *(v142 + 24) = 0;
              *(v142 + 40) = 0;
              *(v142 + 48) = 4;
              swift_willThrow();
              v143 = *(v178 + 8);
              v144 = v181;
              v143(v165._countAndFlagsBits, v181);
              v143(v171, v144);
            }

            goto LABEL_48;
          }

          v179;
          v180;
          (*(v120 + 8))(v171, v181);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v175, &demangling cache variable for type metadata for DataFrame?);
          v136 = v177;
        }

        else
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v175, &demangling cache variable for type metadata for DataFrame?);
          v136 = v75;
        }

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v136, &demangling cache variable for type metadata for DataFrame?);
        return outlined destroy of MLHandActionClassifier.DataSource(v115, type metadata accessor for MLHandActionClassifier.DataSource);
      }

      (*(v178 + 8))(v79, v82);
      v75 = v177;
    }

    v86 = v179;
    goto LABEL_29;
  }

  return result;
}

void *HandActionClassifierTrainingSessionDelegate.pathsByLabel(for:)()
{
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v79 = *(v70 - 8);
  v0 = *(v79 + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v77 = &v64;
  v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>);
  v3 = *(*(v72 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v81 = &v64;
  v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>.Iterator);
  v6 = *(*(v71 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v76 = &v64;
  v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<String>);
  v69 = *(v68 - 8);
  v9 = *(v69 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = alloca(v9);
  v13 = alloca(v9);
  ColumnID.init(_:_:)(0x7461506F65646976, 0xE900000000000068, &type metadata for String, &type metadata for String);
  ColumnID.init(_:_:)(0x6C6562616CLL, 0xE500000000000000, &type metadata for String, &type metadata for String);
  v74 = &v64;
  if (specialized DataFrame.containsColumn<A>(_:)() && specialized DataFrame.containsColumn<A>(_:)())
  {
    v14 = v81;
    DataFrame.subscript.getter(v74, &type metadata for String);
    v15 = v14 + *(v72 + 52);
    v66 = &v64;
    DataFrame.subscript.getter(&v64, &type metadata for String);
    v79 = *(v79 + 32);
    v16 = v77;
    v17 = v14;
    v18 = v70;
    (v79)(v77, v17, v70);
    v81 = lazy protocol witness table accessor for type Column<String> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &protocol conformance descriptor for Column<A>);
    v19 = v76;
    dispatch thunk of Sequence.makeIterator()(v18, v81);
    (v79)(v16, v15, v18);
    v72 = v19 + *(v71 + 52);
    dispatch thunk of Sequence.makeIterator()(v18, v81);
    v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>);
    v20 = (v19 + *(v64 + 36));
    v77 = lazy protocol witness table accessor for type Column<String> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &protocol conformance descriptor for Column<A>);
    v75 = _swiftEmptyDictionarySingleton;
    v80 = 0;
    v73 = v20;
LABEL_4:
    v21 = v70;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter(v21, v77);
      if (*v20 == v67[0])
      {
        break;
      }

      v22 = dispatch thunk of Collection.subscript.read(v67, v20, v21, v77);
      v65 = *v23;
      v79 = v23[1];

      v22(v67, 0);
      v24 = v77;
      dispatch thunk of Collection.formIndex(after:)(v20, v21, v77);
      v25 = *(v64 + 36);
      v26 = v72;
      dispatch thunk of Collection.endIndex.getter(v21, v24);
      if (*(v26 + v25) == v67[0])
      {
        v79;
        v19 = v76;
        break;
      }

      v27 = v26 + v25;
      v81 = dispatch thunk of Collection.subscript.read(v67, v27, v21, v24);
      v78 = *v28;
      v29 = v28[1];

      (v81)(v67, 0);
      dispatch thunk of Collection.formIndex(after:)(v27, v21, v77);
      if (v79)
      {
        v20 = v73;
        if (v29)
        {
          _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v80, 0);
          v30 = v75;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v75);
          v67[0] = v30;
          v81 = v29;
          v80 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v29);
          v33 = (v32 & 1) == 0;
          v34 = __OFADD__(v30[2], v33);
          v35 = v30[2] + v33;
          if (v34)
          {
            BUG();
          }

          v36 = v32;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [String]>);
          v37 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v35);
          v38 = v67[0];
          if (v37)
          {
            v39 = v81;
            v80 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v81);
            LOBYTE(v41) = v41 & 1;
            if ((v36 & 1) != v41)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v39, v41, v40);
              BUG();
            }
          }

          v42 = v81;
          if (v36)
          {

            v43 = v80;
          }

          else
          {
            v43 = v80;
            v38[(v80 >> 6) + 8] |= 1 << v80;
            v44 = v38[6];
            v45 = 16 * v43;
            *(v44 + v45) = v78;
            *(v44 + v45 + 8) = v42;
            *(v38[7] + 8 * v43) = _swiftEmptyArrayStorage;
            v46 = v38[2];

            v34 = __OFADD__(1, v46);
            v47 = v46 + 1;
            if (v34)
            {
              BUG();
            }

            v38[2] = v47;
          }

          v48 = v38[7];
          v75 = v38;
          v49 = v48;

          v50 = *(v49 + 8 * v43);
          v51 = swift_isUniquelyReferenced_nonNull_native(v50);
          *(v49 + 8 * v43) = v50;
          if (!v51)
          {
            v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50);
            *(v49 + 8 * v43) = v50;
          }

          v52 = v50[2];
          v53 = v50[3];
          v54 = v52 + 1;
          if (v53 >> 1 <= v52)
          {
            v78 = v52 + 1;
            v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v53 >= 2, v52 + 1, 1, v50);
            v54 = v78;
            v50 = v56;
            *(v49 + 8 * v43) = v56;
          }

          v50[2] = v54;
          v55 = 2 * v52;
          v50[v55 + 4] = v65;
          v50[v55 + 5] = v79;
          v81;
          v80 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
          v19 = v76;
          v20 = v73;
          goto LABEL_4;
        }

        v79;
        v19 = v76;
      }

      else
      {
        v29;
        v19 = v76;
        v20 = v73;
      }
    }

    *(v19 + *(v71 + 56)) = 1;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>.Iterator);
    v61 = *(v69 + 8);
    v62 = v68;
    v61(v66, v68);
    v61(v74, v62);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v80, 0);
    return v75;
  }

  else
  {
    v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
    v58 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v57, &protocol witness table for String);
    v59 = *(v69 + 8);
    v60 = v68;
    v59(&v64, v68);
    v59(v74, v60);
  }

  return v58;
}

BOOL specialized DataFrame.containsColumn<A>(_:)()
{
  v18 = type metadata accessor for AnyColumn(0);
  v0 = *(v18 - 8);
  v1 = *(v0 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v19 = &v17;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<String>);
  v5._countAndFlagsBits = ColumnID.name.getter(v4);
  object = v5._object;
  v7 = DataFrame.indexOfColumn(_:)(v5);
  value = v7.value;
  is_nil = v7.is_nil;
  object;
  result = 0;
  if (!is_nil)
  {
    v11 = DataFrame.columns.getter(object);
    if (value < 0)
    {
      BUG();
    }

    v12 = v11;
    if (value >= *(v11 + 16))
    {
      BUG();
    }

    v13 = v19;
    v14 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + v11 + *(v0 + 72) * value;
    v15 = v18;
    (*(v0 + 16))(v19, v14, v18);
    v12;
    v16 = AnyColumn.wrappedElementType.getter(v12);
    (*(v0 + 8))(v13, v15);
    return v16 == &type metadata for String;
  }

  return result;
}

uint64_t HandActionClassifierTrainingSessionDelegate.deinit()
{
  outlined destroy of MLHandActionClassifier.DataSource(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  outlined consume of MLDataTable?(*(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable), *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable + 8));
  outlined consume of Result<_DataTable, Error>(*(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures), *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures + 8));
  outlined consume of Result<_DataTable, Error>(*(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures), *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures + 8));

  *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);
  *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary);
  return v0;
}

uint64_t type metadata accessor for HandActionClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for HandActionClassifierTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for HandActionClassifierTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for HandActionClassifierTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for HandActionClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for MLHandActionClassifier.PersistentParameters?(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      v4[2] = "\t";
      v4[3] = &value witness table for Builtin.Int64 + 64;
      v4[4] = &value witness table for Builtin.Int64 + 64;
      v4[5] = &unk_347CA8;
      v4[6] = &unk_347CA8;
      v4[7] = &unk_347CC0;
      v4[8] = &unk_347CC0;
      v4[9] = &value witness table for Builtin.BridgeObject + 64;
      result = swift_updateClassMetadata2(a1, 256, 10, v4, a1 + 80);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for MLHandActionClassifier.PersistentParameters?(uint64_t a1)
{
  result = lazy cache variable for type metadata for MLHandActionClassifier.PersistentParameters?;
  if (!lazy cache variable for type metadata for MLHandActionClassifier.PersistentParameters?)
  {
    v2 = type metadata accessor for MLHandActionClassifier.PersistentParameters(255);
    result = type metadata accessor for Optional(a1, v2);
    if (!v3)
    {
      lazy cache variable for type metadata for MLHandActionClassifier.PersistentParameters? = result;
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance HandActionClassifierTrainingSessionDelegate(Swift::Int a1)
{
  *&v2 = HandActionClassifierTrainingSessionDelegate.extractFeatures(from:)(a1);
  if (v5)
  {
    return (*(v1 + 8))(v3, v4, *(&v2 + 1));
  }

  else
  {
    return (*(v1 + 8))(v2, BYTE8(v2));
  }
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance HandActionClassifierTrainingSessionDelegate(Swift::Int a1)
{
  v7 = HandActionClassifierTrainingSessionDelegate.train(from:)(a1);
  if (v5)
  {
    return (*(v1 + 8))(v3, v4, v7.metrics._rawValue, *&v7.finished);
  }

  else
  {
    return (*(v1 + 8))(v7._0, v7.metrics._rawValue, v7.finished);
  }
}

uint64_t outlined assign with take of MLHandActionClassifier.PersistentParameters?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [[Double]] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [[Double]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[Double]] and conformance <A> [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [[Double]]);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [Double] and conformance <A> [A], &demangling cache variable for type metadata for [Double]);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v1);
    lazy protocol witness table cache variable for type [[Double]] and conformance <A> [A] = result;
  }

  return result;
}

unint64_t specialized _NativeDictionary.startIndex.getter(uint64_t a1)
{
  return specialized _NativeDictionary.startIndex.getter(a1);
}

{
  v1 = *(a1 + 32);
  result = 1 << v1;
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = 0;
LABEL_3:
    _BitScanForward64(&v5, v3);
    return v4 | v5;
  }

  v6 = v1 & 0x3F;
  if (v6 >= 7u)
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v4 = 64;
      goto LABEL_3;
    }

    if (v6 != 7)
    {
      v3 = *(a1 + 80);
      v4 = 128;
      if (v3)
      {
        goto LABEL_3;
      }

      v3 = *(a1 + 88);
      v4 = 192;
      if (v3)
      {
        goto LABEL_3;
      }

      v7 = 12;
      while (v7 - 8 < (result + 63) >> 6)
      {
        v3 = *(a1 + 8 * v7);
        v4 += 64;
        ++v7;
        if (v3)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

uint64_t outlined destroy of MLHandActionClassifier.DataSource(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *assignWithCopy for MLLogisticRegressionClassifier.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *__src;
    v6 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v6);
    *__dst = v5;
    __dst[8] = v6;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLogisticRegressionClassifier.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLLogisticRegressionClassifier.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
  }

  return result;
}

void *assignWithTake for MLLogisticRegressionClassifier.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLLogisticRegressionClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_347D20;
  v5[1] = &unk_347D38;
  result = type metadata accessor for DataFrame(319);
  if (v4 <= 0x3F)
  {
    v5[2] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.ValidationData.asTable()(__m128 a1)
{
  v3 = v1;
  v4 = type metadata accessor for DataFrame(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v29 = &v25;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v28 = &v25;
  v10 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v2, &v25);
  result = swift_getEnumCaseMultiPayload(&v25, v10);
  switch(result)
  {
    case 0:
      *v3 = 0;
      *(v3 + 8) = -1;
      break;
    case 1:
      result = v25;
      v15 = v26;
      goto LABEL_7;
    case 2:
      v16 = v28;
      v17 = v27;
      (*(v27 + 32))(v28, &v25, v4);
      v18 = v29;
      *a1.i64 = (*(v17 + 16))(v29, v16, v4);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v18, 1, a1);
      (*(v17 + 8))(v16, v4);
      result = v30;
      v15 = v31;
LABEL_7:
      *v3 = result;
      *(v3 + 8) = v15;
      break;
    case 3:
      v19 = v3;
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v21 = empty;
      v22 = type metadata accessor for CMLTable();
      v23 = swift_allocObject(v22, 24, 7);
      *(v23 + 16) = v21;
      v24 = type metadata accessor for _DataTable();
      swift_allocObject(v24, 40, 7);
      result = _DataTable.init(impl:)(v23);
      *v19 = result;
      *(v19 + 8) = 0;
      break;
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
{
  v56 = a3;
  v55 = a2;
  v54 = a1;
  v4 = type metadata accessor for DataFrame(0);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v53 = &v44;
  v47 = type metadata accessor for DataFrame.Slice(0);
  v46 = *(v47 - 8);
  v8 = *(v46 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v49 = &v44;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v52 = &v44;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v50 = &v44;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v48 = &v44;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v51 = &v44;
  v20 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v3, &v44);
  switch(swift_getEnumCaseMultiPayload(&v44, v20))
  {
    case 0u:
      v57 = v4;
      v24 = v51;
      v25 = v50;
      DataFrame.randomSplit(strategy:)(v51, v50, &v44);
      v26 = v46;
      v27 = v52;
      v28 = v25;
      v29 = v47;
      v56 = *(v46 + 16);
      v56(v52, v28, v47);
      DataFrame.init(_:)(v27);
      v30 = v48;
      outlined init with copy of DataFrame.Slice?(v24, v48);
      v31 = v29;
      if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
      {
        __swift_storeEnumTagSinglePayload(v55, 1, 1, v57);
        (*(v26 + 8))(v50, v29);
      }

      else
      {
        v41 = v52;
        (*(v26 + 32))(v52, v30, v31);
        v42 = v49;
        v56(v49, v41, v31);
        DataFrame.init(_:)(v42);
        v43 = *(v26 + 8);
        v43(v41, v31);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
        v43(v50, v31);
      }

      return outlined destroy of DataFrame.Slice?(v51);
    case 1u:
      v36 = v44;
      v37 = v45;
      (*(v57 + 16))(v54, v56, v4);
      v44 = v36;
      v45 = v37;
      v38 = v55;
      DataFrame.init(_:)(&v44);
      v34 = v38;
      goto LABEL_10;
    case 2u:
      v32 = *(v57 + 32);
      v32(v53, &v44, v4);
      if (DataFrameProtocol.isEmpty.getter(v4, &protocol witness table for DataFrame))
      {
        v33 = v57;
        (*(v57 + 8))(v53, v4);
        (*(v33 + 16))(v54, v56, v4);
LABEL_7:
        v34 = v55;
        v35 = 1;
      }

      else
      {
        (*(v57 + 16))(v54, v56, v4);
        v39 = v55;
        v32(v55, v53, v4);
        v34 = v39;
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v4);
    case 3u:
      (*(v57 + 16))(v54, v56, v4);
      goto LABEL_7;
  }
}

void MLBoostedTreeClassifier.predictions(from:)(uint64_t a1)
{
  v20 = v2;
  v19 = v1;
  v5 = type metadata accessor for DataFrame(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v17 = &v15;
  v10 = *(type metadata accessor for MLBoostedTreeClassifier(0) + 28);
  v16 = v3;
  v11._rawValue = *(v3 + v10);
  v18 = a1;
  DataFrame.validateContainsColumns(_:context:)(v11, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (!v12)
  {
    v20 = v6;
    v13 = v17;
    v14 = v16;
    AnyTreeClassifierModel.applied(to:eventHandler:)(v18, 0, 0);
    DataFrame.subscript.getter(*v14, v14[1]);
    (*(v20 + 8))(v13, v5);
  }
}

uint64_t type metadata accessor for MLBoostedTreeClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLBoostedTreeClassifier;
  if (!type metadata singleton initialization cache for MLBoostedTreeClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLBoostedTreeClassifier);
  }

  return result;
}

uint64_t *MLBoostedTreeClassifier.predictions(from:)(uint64_t a1, __m128 a2)
{
  v15 = v3;
  v16 = v2;
  v17 = type metadata accessor for DataFrame(0);
  v18 = *(v17 - 8);
  v4 = *(v18 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(a1 + 8);
  v13 = *a1;
  v14 = v10;
  outlined copy of Result<_DataTable, Error>(v13, v10);
  DataFrame.init(_:)(&v13);
  v11 = v15;
  MLBoostedTreeClassifier.predictions(from:)(&v13);
  if (v11)
  {
    return (*(v18 + 8))(&v13, v17);
  }

  *a2.i64 = (*(v18 + 8))(&v13, v17);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(&v13, 1, a2);
}

uint64_t MLBoostedTreeClassifier.evaluation(on:)(uint64_t a1)
{
  v4 = v1;
  v5 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLBoostedTreeClassifier(0);
  v9 = *(v8 + 28);
  v28 = v2;
  v10._rawValue = *(v2 + v9);
  v27 = a1;
  DataFrame.validateContainsColumns(_:context:)(v10, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (v11)
  {
    goto LABEL_6;
  }

  v29 = &v25;
  v30 = v4;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v12, v26);
  inited[2] = 1;
  inited[3] = 2;
  v14 = *(v8 + 24);
  v15 = *(v28 + v14 + 8);
  inited[4] = *(v28 + v14);
  inited[5] = v15;

  v16 = v27;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
  if (v11)
  {
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v4 = v30;
LABEL_6:
    *v4 = v11;
    v18 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v19 = 2;
    v20 = v4;
    v21 = v18;
    return swift_storeEnumTagMultiPayload(v20, v21, v19);
  }

  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v17 = v29;
  AnyTreeClassifierModel.computeMetrics(on:)(v16);
  v23 = v17;
  v24 = v30;
  outlined init with take of MLClassifierMetrics(v23, v30, type metadata accessor for AnyClassificationMetrics);
  v20 = v24;
  v21 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v19 = 0;
  return swift_storeEnumTagMultiPayload(v20, v21, v19);
}

{
  v11 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(a1 + 8);
  v9 = *a1;
  v10 = v7;
  outlined copy of Result<_DataTable, Error>(v9, v7);
  DataFrame.init(_:)(&v9);
  MLBoostedTreeClassifier.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

NSURL *MLBoostedTreeClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v43 = v3;
  v48 = a2;
  v49 = a1;
  v4 = *(*(type metadata accessor for AnyTreeClassifierModel(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v45 = &v33;
  v46 = type metadata accessor for Model(0);
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v42 = &v33;
  v11 = type metadata accessor for URL(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  qmemcpy(v41, v48, sizeof(v41));
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v49, 0xD000000000000015, ("ierTrainingSessionDelegate" + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v44 = 0;
    v50 = &v33;
    v47 = v7;
    v48 = v11;
    v49 = v12;
    outlined init with copy of MLTrainingSessionParameters(v43, v45, type metadata accessor for AnyTreeClassifierModel);
    v17 = *&v41[8];
    if (*&v41[8])
    {
      v18 = *v41;
      v19 = *&v41[16];
      v20 = *&v41[24];
      v21 = *&v41[32];
      v22 = *&v41[48];
      v23 = *&v41[56];
      v24 = *&v41[64];
    }

    else
    {
      v25 = NSFullUserName();
      v26 = v25;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)(v26);
      v17 = v27;

      v20 = "RandomForestRegressor" + 0x8000000000000000;
      v35[0] = v18;
      v35[1] = v17;
      v35[2] = 0xD000000000000033;
      v35[3] = "RandomForestRegressor" + 0x8000000000000000;
      v36 = 0;
      v37 = 49;
      v38 = 0xE100000000000000;
      v39 = 0;
      *v40 = v18;
      *&v40[8] = v17;
      *&v40[16] = 0xD000000000000033;
      *&v40[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v40[32] = 0;
      *&v40[48] = 49;
      *&v40[56] = 0xE100000000000000;
      *&v40[64] = 0;
      outlined retain of MLModelMetadata(v35);
      outlined release of MLModelMetadata(v40);
      v23 = 0xE100000000000000;
      v22 = 49;
      v21 = 0;
      v19 = 0xD000000000000033;
      v24 = 0;
    }

    *v40 = v18;
    *&v40[8] = v17;
    *&v40[16] = v19;
    *&v40[24] = v20;
    *&v40[32] = v21;
    *&v40[48] = v22;
    *&v40[56] = v23;
    *&v40[64] = v24;
    qmemcpy(v34, v40, sizeof(v34));
    outlined retain of MLModelMetadata?(v41);
    v28 = v42;
    v29 = v45;
    v30 = v44;
    specialized CoreMLExportable.export(metadata:)(v34);
    v31 = v48;
    outlined release of MLModelMetadata(v40);
    outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for AnyTreeClassifierModel);
    if (v30)
    {
      return (*(v49 + 8))(v50, v31);
    }

    else
    {
      Model.write(to:)(v50);
      v32 = v49;
      (*(v47 + 8))(v28, v46);
      return (*(v32 + 8))(v50, v31);
    }
  }

  return result;
}

uint64_t MLBoostedTreeClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v17 = v3;
  v21 = a3;
  v19 = a2;
  v18 = a1;
  v22 = type metadata accessor for URL.DirectoryHint(0);
  v20 = *(v22 - 8);
  v4 = *(v20 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v23 = v16;
  v10 = type metadata accessor for URL(0);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  qmemcpy(v16, v21, sizeof(v16));
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v10);
  (*(v20 + 104))(v16, enum case for URL.DirectoryHint.inferFromPath(_:), v22);
  v14 = v19;

  URL.init(filePath:directoryHint:relativeTo:)(v18, v14, v16, v23);
  MLBoostedTreeClassifier.write(to:metadata:)(v16, v16);
  return (*(v24 + 8))(v16, v10);
}

unint64_t MLBoostedTreeClassifier.debugDescription.getter()
{
  v1 = v0;
  v25._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v25._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLBoostedTreeClassifier(0);
  v25._countAndFlagsBits = MLBoostedTreeClassifier.ModelParameters.description.getter();
  v7 = v6;
  v22._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v22._object = v8;
  v9 = *(v5 + 40);
  v10 = v7;
  outlined init with copy of MLTrainingSessionParameters(v1 + v9, &v20, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v7) = swift_getEnumCaseMultiPayload(&v20, v25._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v20, type metadata accessor for MLClassifierMetrics.Contents);
  v25._object = MLClassifierMetrics.description.getter();
  v12 = v11;
  v23 = 0xD000000000000022;
  v24 = "BoostedTreeClassifier" + 0x8000000000000000;
  v13._countAndFlagsBits = v25._countAndFlagsBits;
  v25._countAndFlagsBits = v10;
  v13._object = v10;
  String.append(_:)(v13);
  v21._countAndFlagsBits = 0xD00000000000001ELL;
  v21._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  object = v22._object;
  String.append(_:)(v22);
  v15 = v21._object;
  String.append(_:)(v21);
  v15;
  if (v7 > 1)
  {
    v18 = object;
  }

  else
  {
    v21._countAndFlagsBits = 0xD000000000000020;
    v21._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v16._countAndFlagsBits = v25._object;
    v16._object = v12;
    String.append(_:)(v16);
    v17 = v21._object;
    String.append(_:)(v21);
    object;
    v18 = v12;
    LOBYTE(v12) = v17;
  }

  v18;
  v12;
  v25._countAndFlagsBits;
  return v23;
}

NSAttributedString MLBoostedTreeClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSAttributedString();
  v3._countAndFlagsBits = MLBoostedTreeClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

void MLBoostedTreeClassifier.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLBoostedTreeClassifier(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLBoostedTreeClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLBoostedTreeClassifier(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLBoostedTreeClassifier.targetColumn.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLBoostedTreeClassifier(0) + 24));

  return v1;
}

uint64_t MLBoostedTreeClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLBoostedTreeClassifier(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLBoostedTreeClassifier.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLBoostedTreeClassifier(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLBoostedTreeClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLBoostedTreeClassifier(0);
  return outlined init with copy of MLBoostedTreeClassifier.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t MLBoostedTreeClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLBoostedTreeClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLBoostedTreeClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLBoostedTreeClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 40), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t static MLBoostedTreeClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLBoostedTreeClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLBoostedTreeClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[5] = a4;
  v6[4] = a3;
  v6[3] = a2;
  v6[2] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLBoostedTreeClassifier.init(_:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLBoostedTreeClassifier.init(_:targetColumn:featureColumns:parameters:)()
{
  v1 = *(v0 + 80);
  v13 = *(v0 + 72);
  v15 = *(v0 + 64);
  v11 = *(v0 + 48);
  v10 = *(v0 + 32);
  v2 = *(v0 + 16);
  v12 = type metadata accessor for MLBoostedTreeClassifier(0);
  *(v0 + 88) = v12;
  v3 = v12[9];
  *(v0 + 120) = v3;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v1);
  (*(v13 + 8))(v1, v15);
  *(v2 + v3) = 0;
  v14 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v2 + v3, v14, 1);
  v4 = v12[10];
  *(v0 + 124) = v4;
  v5 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v6 = swift_allocError(&type metadata for MLCreateError, v5, 0, 0);
  *v7 = 0xD0000000000000C0;
  *(v7 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v7 + 16) = 0;
  *(v7 + 32) = 0;
  *(v7 + 48) = 0;
  *(v2 + v4) = v6;
  swift_storeEnumTagMultiPayload(v2 + v4, v14, 2);
  *(v2 + v12[7]) = v11;
  *(v2 + v12[6]) = v10;
  v8 = swift_task_alloc(288);
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = MLBoostedTreeClassifier.init(_:targetColumn:featureColumns:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v4 + *(v1 + 20)) = *(v0 + 112);
  outlined init with take of MLClassifierMetrics(v5, v4, type metadata accessor for AnyTreeClassifierModel);
  qmemcpy((v4 + *(v1 + 32)), v3, 0x70uLL);
  v2;
  return (*(v0 + 8))();
}

{
  v7 = *(v0 + 80);
  v8 = *(v0 + 48);
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v2 + *(v0 + 124);
  v5 = v2 + *(v0 + 120);
  outlined destroy of MLBoostedTreeClassifier.ModelParameters(*(v0 + 56));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for AnyTreeClassifierModel);
  v1;
  v8;
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLClassifierMetrics);
  v7;
  return (*(v0 + 8))();
}

uint64_t MLBoostedTreeClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 96);
  v4 = *v2;
  *(*v2 + 104) = v1;
  v5;
  if (v1)
  {
    v6 = MLBoostedTreeClassifier.init(_:targetColumn:featureColumns:parameters:);
  }

  else
  {
    *(v4 + 112) = a1;
    v6 = MLBoostedTreeClassifier.init(_:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v205 = a4;
  _ = a3;
  v7 = v5;
  v203 = v5;
  v216._countAndFlagsBits = a2;
  v215 = v6;
  v221 = a5;
  v216._object = a1;
  v8 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v190 = &v165;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v187 = &v165;
  v13 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v191 = &v165;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v188 = &v165;
  v185 = *(type metadata accessor for AnyTreeClassifierModel(0) - 8);
  v18 = *(v185 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v183 = &v165;
  v184 = v18;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v214 = &v165;
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v181 = &v165;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v199 = &v165;
  v196 = type metadata accessor for AnyColumn(0);
  v29 = *(*(v196 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v201 = &v165;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v208 = &v165;
  v34 = alloca(v29);
  v35 = alloca(v29);
  v193 = &v165;
  v36 = *(*(type metadata accessor for AnyTreeClassifier(0) - 8) + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v213 = &v165;
  v223 = type metadata accessor for DataFrame(0);
  v211 = *(v223 - 8);
  v39 = *(v211 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v198 = &v165;
  v42 = alloca(v39);
  v43 = alloca(v39);
  v202 = &v165;
  v44 = alloca(v39);
  v45 = alloca(v39);
  v200 = &v165;
  v46 = alloca(v39);
  v47 = alloca(v39);
  v194 = &v165;
  v206 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v48 = *(*(v206 - 8) + 64);
  v49 = alloca(v48);
  v50 = alloca(v48);
  v224 = &v165;
  v212 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v51 = *(*(v212 - 8) + 64);
  v52 = alloca(v51);
  v53 = alloca(v51);
  v189 = &v165;
  v54 = alloca(v51);
  v55 = alloca(v51);
  v186 = &v165;
  v56 = alloca(v51);
  v57 = alloca(v51);
  v195 = &v165;
  v58 = alloca(v51);
  v59 = alloca(v51);
  v207 = &v165;
  v60 = alloca(v51);
  v61 = alloca(v51);
  v180 = &v165;
  v62 = alloca(v51);
  v63 = alloca(v51);
  v218 = &v165;
  v217 = type metadata accessor for BoostedTreeConfiguration(0);
  v219 = *(v217 - 8);
  v64 = *(v219 + 64);
  v65 = alloca(v64);
  v66 = alloca(v64);
  v182 = &v165;
  v67 = alloca(v64);
  v68 = alloca(v64);
  v209 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v225 = *(v209 - 1);
  v69 = *(v225 + 8);
  v70 = alloca(v69);
  v71 = alloca(v69);
  v210 = type metadata accessor for MLBoostedTreeClassifier(0);
  v204 = *(v210 + 9);
  v72 = v7 + v204;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v165);
  (*(v225 + 1))(&v165, v209);
  v73 = v203;
  *(v203 + v204) = 0;
  v74 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v204 = v72;
  swift_storeEnumTagMultiPayload(v72, v74, 1);
  v225 = *(v210 + 10);
  v209 = &v225[v73];
  v75 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v76 = swift_allocError(&type metadata for MLCreateError, v75, 0, 0);
  *v77 = 0xD0000000000000C0;
  *(v77 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v77 + 16) = 0;
  *(v77 + 32) = 0;
  *(v77 + 48) = 0;
  *&v225[v73] = v76;
  v78 = v221;
  v197 = v74;
  swift_storeEnumTagMultiPayload(v209, v74, 2);
  outlined init with copy of MLBoostedTreeClassifier.ModelParameters(v78, v166);
  BoostedTreeConfiguration.init()(v78);
  BoostedTreeConfiguration.maximumDepth.setter(v167);
  BoostedTreeConfiguration.maximumIterations.setter(v168);
  BoostedTreeConfiguration.minimumLossReduction.setter(v169);
  BoostedTreeConfiguration.minimumChildWeight.setter(v170);
  BoostedTreeConfiguration.randomSeed.setter(v171);
  BoostedTreeConfiguration.learningRate.setter(v172);
  BoostedTreeConfiguration.earlyStoppingIterationCount.setter(v173, v174);
  BoostedTreeConfiguration.rowSubsample.setter(v175);
  v220 = &v165;
  BoostedTreeConfiguration.columnSubsample.setter(v176);
  outlined destroy of MLBoostedTreeClassifier.ModelParameters(v166);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v78, &v178, &demangling cache variable for type metadata for Any?);
  if (!v179)
  {
    BUG();
  }

  v79 = v218;
  v80 = (v218 + *(v212 + 48));
  outlined init with take of Any(&v178, v166);
  swift_dynamicCast(v224, v166, &type metadata for Any + 8, v206, 7);
  object = v216._object;
  v82 = v215;
  MLBoostedTreeClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v79, v80, v216._object);
  v225 = v82;
  if (v82)
  {
    _;
    v205;
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v221);
    (*(v211 + 8))(object, v223);
    outlined destroy of MLActivityClassifier.ModelParameters(v224, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
    v83 = v220;
    v84 = v217;
LABEL_6:
    (*(v219 + 8))(v83, v84);
LABEL_7:
    outlined destroy of MLActivityClassifier.ModelParameters(v204, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v209, type metadata accessor for MLClassifierMetrics);
  }

  v85 = v79;
  v192 = v80;
  outlined destroy of MLActivityClassifier.ModelParameters(v224, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  v86 = v79;
  v87 = _;
  v88 = v205;
  v89 = v225;
  v90 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v86, v216._countAndFlagsBits, _, v205);
  v225 = v89;
  v91 = v217;
  if (v89)
  {
    v87;
    v88;
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v221);
    (*(v211 + 8))(v216._object, v223);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v85, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v83 = v220;
    v84 = v91;
    goto LABEL_6;
  }

  v215 = v90;
  v88;
  v93 = v180;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v85, v180, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v94 = v93 + *(v212 + 48);
  if (__swift_getEnumTagSinglePayload(v94, 1, v223) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v94, &demangling cache variable for type metadata for DataFrame?);
    v224 = *(v211 + 8);
    (v224)(v93, v223);
    goto LABEL_10;
  }

  v105 = v94;
  v106 = v223;
  v107 = v211;
  (*(v211 + 32))(v194, v105, v223);
  v224 = *(v107 + 8);
  (v224)(v93, v106);
  v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v108, v177);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = v216._countAndFlagsBits;
  inited[5] = v87;

  v110 = v194;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xEE00726569666973, 0x73616C4365657254));
  if (v111)
  {
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    _;
    v215;
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v221);
    v112 = v223;
    v113 = v224;
    (v224)(v216._object, v223);
    (v113)(v110, v112);
LABEL_20:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v218, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v219 + 8))(v220, v217);
    goto LABEL_7;
  }

  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
  v122 = swift_allocObject(v121, 48, 7);
  v122[2] = 2;
  v122[3] = 4;
  v122[4] = &type metadata for String;
  v122[5] = &type metadata for Int;
  v123._countAndFlagsBits = v216._countAndFlagsBits;
  v123._object = _;
  v124 = v110;
  DataFrame.validateColumnTypes(_:_:context:)(v123, v122, __PAIR128__(0xEE00726569666973, 0x73616C4365657254));
  if (v125)
  {
    _;
    v215;
    v122;
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v221);
    v126 = v223;
    v127 = v224;
    (v224)(v216._object, v223);
    (v127)(v124, v126);
    goto LABEL_20;
  }

  v225 = 0;
  (v224)(v110, v223);
  v122;
  v87 = _;
LABEL_10:
  v95 = v218;
  v96 = v207;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v218, v207, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  DataFrame.subscript.getter(v216._countAndFlagsBits, v87);
  v97 = v96;
  v98 = v223;
  v99 = v224;
  (v224)(v97, v223);
  v100 = v95;
  v101 = v195;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v100, v195, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v102 = v181;
  outlined init with take of DataFrame?(v101 + *(v212 + 48), v181);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v102, 1, v98);
  v104 = v99;
  if (EnumTagSinglePayload == 1)
  {
    (v99)(v101, v98);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v102, &demangling cache variable for type metadata for DataFrame?);
    __swift_storeEnumTagSinglePayload(v199, 1, 1, v196);
  }

  else
  {
    v114 = v199;
    v115 = v104;
    DataFrame.subscript.getter(v216._countAndFlagsBits, _);
    (v115)(v102, v98);
    __swift_storeEnumTagSinglePayload(v114, 0, 1, v196);
    (v115)(v195, v98);
  }

  v116 = _;
  v207 = (v207 + *(v212 + 48));
  v117 = v182;
  (*(v219 + 16))(v182, v220, v217);

  v118 = v215;

  v119 = v225;
  AnyTreeClassifier.init(trainingLabelsColumn:validationLabelsColumn:annotationColumnName:featureColumnNames:configuration:)(v193, v199, v216._countAndFlagsBits, v116, v118, v117);
  if (v119)
  {
    v116;
    v118;
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v221);
    (v224)(v216._object, v223);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v218, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v219 + 8))(v220, v217);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v207, &demangling cache variable for type metadata for DataFrame?);
    goto LABEL_7;
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v207, &demangling cache variable for type metadata for DataFrame?);
  v120 = v214;
  AnyTreeClassifier.fitted(to:validateOn:eventHandler:)(v218, v192, 0, 0);
  v225 = 0;
  if (!AnalyticsReporter.init()())
  {
    v128 = v218;
    v129 = v186;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v218, v186, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v130 = v129 + *(v212 + 48);
    v131 = DataFrame.shape.getter(v128);
    (v224)(v129, v223);
    v132 = v131;
    v120 = v214;
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_boostedTreeClassifier, __PAIR128__(("vectorized_features" + 0x8000000000000000), 0xD000000000000015), v132);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v130, &demangling cache variable for type metadata for DataFrame?);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_boostedTreeClassifier, __PAIR128__(("Number of Annotations" + 0x8000000000000000), 0xD000000000000010), *(v213[3] + 16));
  }

  v133 = v210;
  v134 = *(v210 + 6);
  v135 = v203;
  *(v203 + v134) = v216._countAndFlagsBits;
  *(v135 + v134 + 8) = _;
  v205 = v135 + v133[8];
  outlined init with copy of MLBoostedTreeClassifier.ModelParameters(v221, v205);
  *(v135 + v133[7]) = v215;
  v136 = v183;
  outlined init with copy of MLTrainingSessionParameters(v120, v183, type metadata accessor for AnyTreeClassifierModel);
  v137 = *(v185 + 80);
  v138 = ~*(v185 + 80) & (v137 + 16);
  v139 = swift_allocObject(&unk_394930, v138 + v184, v137 | 7);
  outlined init with take of MLClassifierMetrics(v136, v139 + v138, type metadata accessor for AnyTreeClassifierModel);
  v140 = v225;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:), v139);
  if (v140)
  {

    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v221);
    (v224)(v216._object, v223);
    outlined destroy of MLActivityClassifier.ModelParameters(v214, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v218, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v219 + 8))(v220, v217);
    outlined destroy of MLActivityClassifier.ModelParameters(v213, type metadata accessor for AnyTreeClassifier);
    v215;
    _;
LABEL_27:
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v205);
    goto LABEL_7;
  }

  v142 = v141;

  v143 = *(v210 + 5);
  v210 = v142;
  *(v135 + v143) = v142;
  outlined init with copy of MLTrainingSessionParameters(v214, v135, type metadata accessor for AnyTreeClassifierModel);
  v144 = v218;
  AnyTreeClassifierModel.applied(to:eventHandler:)(v218, 0, 0);
  v225 = 0;
  v145 = v135;
  v146 = *v135;
  v147 = v145[1];
  DataFrame.subscript.getter(v146, v147);
  v216._countAndFlagsBits = v146;
  v206 = v147;
  DataFrame.subscript.getter(v146, v147);
  v148 = v187;
  AnyClassificationMetrics.init(_:_:)(v208, v201);
  v149 = v144;
  v150 = v223;
  (v224)(v200, v223);
  v151 = v188;
  outlined init with take of MLClassifierMetrics(v148, v188, type metadata accessor for AnyClassificationMetrics);
  swift_storeEnumTagMultiPayload(v151, v197, 0);
  outlined assign with take of MLClassifierMetrics(v151, v204);
  v152 = v189;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v149, v189, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v153 = v152 + *(v212 + 48);
  if (__swift_getEnumTagSinglePayload(v153, 1, v150) == 1)
  {
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v221);
    v154 = v224;
    (v224)(v216._object, v150);
    outlined destroy of MLActivityClassifier.ModelParameters(v214, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v218, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v219 + 8))(v220, v217);
    outlined destroy of MLActivityClassifier.ModelParameters(v213, type metadata accessor for AnyTreeClassifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v153, &demangling cache variable for type metadata for DataFrame?);
    return (v154)(v152, v150);
  }

  else
  {
    v155 = v202;
    (*(v211 + 32))(v202, v153, v150);
    (v224)(v152, v150);
    v156 = v225;
    AnyTreeClassifierModel.applied(to:eventHandler:)(v155, 0, 0);
    v225 = v156;
    if (v156)
    {
      outlined destroy of MLBoostedTreeClassifier.ModelParameters(v221);
      v157 = v224;
      (v224)(v216._object, v150);
      (v157)(v155, v150);
      v158 = v203;
      v159 = v218;
      outlined destroy of MLActivityClassifier.ModelParameters(v214, type metadata accessor for AnyTreeClassifierModel);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v159, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      (*(v219 + 8))(v220, v217);
      outlined destroy of MLActivityClassifier.ModelParameters(v213, type metadata accessor for AnyTreeClassifier);
      outlined destroy of MLActivityClassifier.ModelParameters(v158, type metadata accessor for AnyTreeClassifierModel);
      v215;
      _;

      goto LABEL_27;
    }

    countAndFlagsBits = v216._countAndFlagsBits;
    DataFrame.subscript.getter(v216._countAndFlagsBits, v206);
    v161 = v201;
    DataFrame.subscript.getter(countAndFlagsBits, v206);
    v162 = v190;
    AnyClassificationMetrics.init(_:_:)(v208, v161);
    v163 = v224;
    (v224)(v198, v150);
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v221);
    (v163)(v216._object, v150);
    (v163)(v202, v150);
    outlined destroy of MLActivityClassifier.ModelParameters(v214, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v218, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v219 + 8))(v220, v217);
    v164 = v191;
    outlined init with take of MLClassifierMetrics(v162, v191, type metadata accessor for AnyClassificationMetrics);
    swift_storeEnumTagMultiPayload(v164, v197, 0);
    outlined destroy of MLActivityClassifier.ModelParameters(v213, type metadata accessor for AnyTreeClassifier);
    return outlined assign with take of MLClassifierMetrics(v164, v209);
  }
}

uint64_t closure #1 in MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

uint64_t MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v6 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(a1 + 8);
  v11 = *a1;
  v12 = v9;
  DataFrame.init(_:)(&v11);
  outlined init with copy of MLBoostedTreeClassifier.ModelParameters(a5, &v11);
  MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v15, v14, v13, &v11);
  return outlined destroy of MLBoostedTreeClassifier.ModelParameters(a5);
}

uint64_t MLBoostedTreeClassifier.init(checkpoint:)(uint64_t a1)
{
  v74 = v2;
  v92 = a1;
  v3 = v1;
  v86 = v1;
  v85 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v85 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v84 = v73;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v83 = v73;
  v9 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v75 = v73;
  v93 = type metadata accessor for AnyTreeClassifier(0);
  v12 = *(*(v93 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v78 = v73;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v89 = v73;
  v82 = *(type metadata accessor for AnyTreeClassifierModel(0) - 8);
  v17 = *(v82 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v79 = v73;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v81 = v73;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v76 = v73;
  v80 = v17;
  v24 = alloca(v17);
  v25 = alloca(v17);
  v90 = v73;
  v87 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v88 = *(v87 - 8);
  v26 = *(v88 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v29 = type metadata accessor for MLBoostedTreeClassifier(0);
  v91 = *(v29 + 36);
  v30 = v91 + v3;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5();
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v73);
  (*(v88 + 8))(v73, v87);
  v31 = v86;
  *(v86 + v91) = 0;
  v32 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v87 = v30;
  swift_storeEnumTagMultiPayload(v30, v32, 1);
  v91 = v29;
  v33 = *(v29 + 40);
  v34 = v33 + v31;
  v77 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v35 = swift_allocError(&type metadata for MLCreateError, v77, 0, 0);
  *v36 = 0xD0000000000000C0;
  *(v36 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v36 + 16) = 0;
  *(v36 + 32) = 0;
  *(v36 + 48) = 0;
  *(v86 + v33) = v35;
  v37 = v92;
  v88 = v34;
  swift_storeEnumTagMultiPayload(v34, v32, 2);
  switch(*(v37 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 0:
      v38 = 0x696C616974696E69;
      v39 = 0xEB0000000064657ALL;
      break;
    case 1:
      v38 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0;
      v40 = v93;
      v41 = v89;
      goto LABEL_9;
    case 3:
      v38 = 0x697461756C617665;
LABEL_7:
      v39 = 0xEA0000000000676ELL;
      break;
    case 4:
      v39 = 0xEB00000000676E69;
      v38 = 0x636E657265666E69;
      break;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)(v38, v39, 0x676E696E69617274, 0xE800000000000000, 0);
  v39;
  v40 = v93;
  v41 = v89;
  if ((v42 & 1) == 0)
  {
    swift_allocError(&type metadata for MLCreateError, v77, 0, 0);
    *v52 = 0xD000000000000042;
    *(v52 + 8) = "ifier\n\nParameters\n" + 0x8000000000000000;
    *(v52 + 16) = 0;
    *(v52 + 32) = 0;
    *(v52 + 48) = 0;
    swift_willThrow();
    v53 = type metadata accessor for MLCheckpoint;
    v54 = v92;
LABEL_15:
    outlined destroy of MLActivityClassifier.ModelParameters(v54, v53);
    outlined destroy of MLActivityClassifier.ModelParameters(v87, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v88, type metadata accessor for MLClassifierMetrics);
  }

LABEL_9:
  v43 = specialized _setUpCast<A, B>(_:)(&_swiftEmptySetSingleton);
  v44 = v75;
  BoostedTreeConfiguration.init()(&_swiftEmptySetSingleton);
  AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v43, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v44);
  v45 = lazy protocol witness table accessor for type AnyTreeClassifier and conformance AnyTreeClassifier();
  v46 = v76;
  v89 = v45;
  v47 = v74;
  UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v92, v40, v45);
  outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for AnyTreeClassifier);
  if (v47)
  {
    v48 = specialized _setUpCast<A, B>(_:)(&_swiftEmptySetSingleton);
    BoostedTreeConfiguration.init()(&_swiftEmptySetSingleton);
    v49 = v44;
    v50 = v78;
    AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v48, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v49);
    v51 = v79;
    UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v92, v93, v89);
    outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for AnyTreeClassifier);
    v47;
    v55 = v51;
  }

  else
  {
    v55 = v46;
  }

  v93 = 0;
  v56 = v90;
  outlined init with take of MLClassifierMetrics(v55, v90, type metadata accessor for AnyTreeClassifierModel);
  v57 = v81;
  outlined init with copy of MLTrainingSessionParameters(v56, v81, type metadata accessor for AnyTreeClassifierModel);
  v58 = *(v82 + 80);
  v59 = ~*(v82 + 80) & (v58 + 16);
  v60 = swift_allocObject(&unk_394958, v59 + v80, v58 | 7);
  outlined init with take of MLClassifierMetrics(v57, v60 + v59, type metadata accessor for AnyTreeClassifierModel);
  v61 = v93;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLBoostedTreeClassifier.init(checkpoint:), v60);
  v63 = v62;

  if (v61)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v92, type metadata accessor for MLCheckpoint);
    v53 = type metadata accessor for AnyTreeClassifierModel;
    v54 = v90;
    goto LABEL_15;
  }

  v65 = v86;
  *(v86 + *(v91 + 20)) = v63;
  outlined init with copy of MLTrainingSessionParameters(v90, v65, type metadata accessor for AnyTreeClassifierModel);
  v66 = v83;
  *v83 = 0;
  *(v66 + 16) = 256;
  swift_storeEnumTagMultiPayload(v66, v85, 0);
  v67 = *(v91 + 32);
  *(v65 + v67 + 16) = 0;
  *(v65 + v67) = 0;
  *(v65 + v67 + 32) = 6;
  v68 = _mm_loadh_ps(&qword_33D880);
  *(v65 + v67 + 40) = 10;
  *(v65 + v67 + 48) = v68;
  *(v65 + v67 + 64) = 42;
  *(v65 + v67 + 72) = 0x3FD3333333333333;
  *(v65 + v67 + 80) = 0;
  v93 = v65 + v67;
  *(v65 + v67 + 88) = 1;
  *(v65 + v67 + 96) = xmmword_343970;
  v69 = v84;
  outlined init with copy of MLTrainingSessionParameters(v66, v84, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  v73[3] = v85;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v73);
  outlined init with take of MLClassifierMetrics(v69, boxed_opaque_existential_0, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  outlined assign with take of Any?(v73, v93);
  outlined destroy of MLActivityClassifier.ModelParameters(v66, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  v71 = v91;
  v72 = *(v91 + 24);
  *(v65 + v72) = 0;
  *(v65 + v72 + 8) = 0xE000000000000000;
  outlined destroy of MLActivityClassifier.ModelParameters(v92, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for AnyTreeClassifierModel);
  result = *(v71 + 28);
  *(v65 + result) = _swiftEmptyArrayStorage;
  return result;
}

void *static MLBoostedTreeClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = a2;
  v7 = type metadata accessor for DataFrame(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = *(a1 + 8);
  v19 = *a1;
  v20 = v12;
  outlined copy of Result<_DataTable, Error>(v19, v12);
  DataFrame.init(_:)(&v19);
  v13 = static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v19, v25, v24, v23, v22, v21);
  v14 = v7;
  if (v6)
  {
    return (*(v8 + 8))(&v19, v7);
  }

  v16 = v13;
  (*(v8 + 8))(&v19, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLBoostedTreeClassifier>);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  return specialized MLJob.init(_:)(v18, v16);
}

__int128 *static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v7 = type metadata accessor for DataFrame(0);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(a1 + 8);
  v14 = *a1;
  v15 = v11;
  outlined copy of Result<_DataTable, Error>(v14, v11);
  DataFrame.init(_:)(&v14);
  v12 = static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v14, a2, v19, v18, v17, v16);
  (*(v20 + 8))(&v14, v7);
  return v12;
}

void *static MLBoostedTreeClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLBoostedTreeClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

__int128 *static MLBoostedTreeClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t *, uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  result = static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLBoostedTreeClassifier>);
    v10 = swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
    return specialized MLJob.init(_:)(v10, v8);
  }

  return result;
}

__int128 *static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t *, uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v72 = v6;
  v67 = a6;
  v64 = a5;
  v65 = a4;
  v59 = a3;
  v60 = a2;
  v69 = a1;
  v7 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v63 = &v45;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v61 = &v45;
  v12 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v62 = &v45;
  v15 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v19 = *(*(v71 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v70 = &v45;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v66 = &v45;
  v24 = alloca(v19);
  v25 = alloca(v19);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v64, &v57, &demangling cache variable for type metadata for Any?);
  if (!v58)
  {
    BUG();
  }

  v26 = (&v45 + *(v71 + 48));
  v68 = &v45;
  outlined init with take of Any(&v57, &v45);
  v27 = v68;
  swift_dynamicCast(&v45, &v45, &type metadata for Any + 8, v15, 7);
  v28 = v72;
  MLBoostedTreeClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v27, v26, v69);
  outlined destroy of MLActivityClassifier.ModelParameters(&v45, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  if (!v28)
  {
    v69 = 0;
    v29 = v66;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, v66, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v30 = v71;
    v72 = v29 + *(v71 + 48);
    v31 = v27;
    v32 = v70;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v70, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v71 = v32 + *(v30 + 48);
    outlined init with copy of MLBoostedTreeClassifier.ModelParameters(v64, &v45);

    v33 = v59;
    v34 = v59;

    v35 = v62;
    BoostedTreeConfiguration.init()(v34);
    BoostedTreeConfiguration.maximumDepth.setter(v47);
    BoostedTreeConfiguration.maximumIterations.setter(v48);
    BoostedTreeConfiguration.minimumLossReduction.setter(v49);
    BoostedTreeConfiguration.minimumChildWeight.setter(v50);
    BoostedTreeConfiguration.randomSeed.setter(v51);
    BoostedTreeConfiguration.learningRate.setter(v52);
    BoostedTreeConfiguration.earlyStoppingIterationCount.setter(v53, v54);
    BoostedTreeConfiguration.rowSubsample.setter(v55);
    BoostedTreeConfiguration.columnSubsample.setter(v56);
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(&v45);
    v36 = v61;
    outlined init with copy of MLTrainingSessionParameters(v67, v61, type metadata accessor for MLTrainingSessionParameters);
    v27 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
    swift_allocObject(v27, *(v27 + 12), *(v27 + 26));
    v37 = v69;
    v38 = TreeClassifierTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:configuration:sessionParameters:)(v66, v71, v60, v33, v65, v35, v36);
    if (v37)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v68, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      v39 = type metadata accessor for DataFrame(0);
      (*(*(v39 - 8) + 8))(v70, v39);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v72, &demangling cache variable for type metadata for DataFrame?);
    }

    else
    {
      v40 = v38;
      v41 = type metadata accessor for DataFrame(0);
      (*(*(v41 - 8) + 8))(v70, v41);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v72, &demangling cache variable for type metadata for DataFrame?);
      v46 = v27;
      v47 = &protocol witness table for TreeClassifierTrainingSessionDelegate;
      *&v45 = v40;
      v42 = v63;
      outlined init with copy of MLTrainingSessionParameters(v67, v63, type metadata accessor for MLTrainingSessionParameters);
      v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>);
      swift_allocObject(v43, *(v43 + 48), *(v43 + 52));

      v27 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v45, v42, 5);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v68, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    }
  }

  return v27;
}

uint64_t static MLBoostedTreeClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = TreeClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for TreeClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 5);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLBoostedTreeClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLBoostedTreeClassifier, Error>);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  if (a2)
  {
    v19 = a1;
    swift_storeEnumTagMultiPayload(&v19, v6, 1);
    swift_errorRetain(a1);
    v23(&v19);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLBoostedTreeClassifier, Error>);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v20);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v15 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
    swift_dynamicCast(&v21, v20, v14, v15, 7);
    v16 = v21;
    v17 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(&v19, 1, 1, v17);
    v18 = swift_allocObject(&unk_394990, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in static MLBoostedTreeClassifier.handleResult(_:session:fulfill:), v18);
  }
}

uint64_t closure #1 in static MLBoostedTreeClassifier.handleResult(_:session:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLBoostedTreeClassifier, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in static MLBoostedTreeClassifier.handleResult(_:session:fulfill:), 0, 0);
}

uint64_t closure #1 in static MLBoostedTreeClassifier.handleResult(_:session:fulfill:)()
{

  v1 = swift_task_alloc(80);
  v0[6] = v1;
  *v1 = v0;
  v1[1] = closure #1 in static MLBoostedTreeClassifier.handleResult(_:session:fulfill:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLBoostedTreeClassifierV_Tt1g503_s8b4ML23fgh80V12handleResult33_CD9A6EBB503908D6C1216C5F49822BDBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLBoostedTreeClassifierV_Tt1g503_s8b4ML23fgh80V12handleResult33_CD9A6EBB503908D6C1216C5F49822BDBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  *(*v0 + 48);
  return swift_task_switch(closure #1 in static MLBoostedTreeClassifier.handleResult(_:session:fulfill:), 0, 0);
}

{
  v1 = *(v0 + 40);
  (*(v0 + 24))(v1);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for Result<MLBoostedTreeClassifier, Error>);
  v1;
  return (*(v0 + 8))();
}

uint64_t MLBoostedTreeClassifier.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[43] = a2;
  v2[42] = a1;
  v3 = type metadata accessor for AnyClassificationMetrics(0);
  v2[44] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[45] = swift_task_alloc(v4);
  v2[46] = swift_task_alloc(v4);
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyClassificationMetrics?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[47] = swift_task_alloc(v5);
  v2[48] = swift_task_alloc(v5);
  v6 = type metadata accessor for MLClassifierMetrics(0);
  v2[49] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v2[50] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLBoostedTreeClassifier(0);
  v2[51] = v8;
  v2[52] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v2[53] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BoostedTreeConfiguration(0);
  v2[54] = v10;
  v11 = *(v10 - 8);
  v2[55] = v11;
  v2[56] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v2[57] = swift_task_alloc((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v2[58] = v13;
  v2[59] = swift_task_alloc((*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLBoostedTreeClassifier.init(delegate:), 0, 0);
}

uint64_t MLBoostedTreeClassifier.init(delegate:)()
{
  v1 = v0[58];
  v2 = v0[57];
  v3 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters + v0[43];
  swift_beginAccess(v3, (v0 + 30), 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    BUG();
  }

  v4 = v0[59];
  v5 = v0[58];
  v6 = v0[56];
  v18 = v0[55];
  v15 = v0[54];
  v16 = v0[53];
  v7 = v0[43];
  v14 = v0[50];
  outlined init with take of MLClassifierMetrics(v0[57], v4, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v18 + 16))(v6, v4 + v5[8], v15);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4 + v5[5], v16, &demangling cache variable for type metadata for DataFrame?);
  MLBoostedTreeClassifier.ModelParameters.init(configuration:validation:)(v6, v16);
  v8 = v5[6];
  v17 = *(v4 + v8);
  v19 = *(v4 + v8 + 8);
  v9 = *(v4 + v5[7]);
  v10 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model + v7;
  swift_beginAccess(v10, (v0 + 33), 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v14, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v11 = type metadata accessor for AnyTreeClassifierModel(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v11) == 1)
  {
    BUG();
  }

  outlined init with copy of MLBoostedTreeClassifier.ModelParameters((v0 + 2), (v0 + 16));

  v12 = swift_task_alloc(128);
  v0[60] = v12;
  *v12 = v0;
  v12[1] = MLBoostedTreeClassifier.init(delegate:);
  return MLBoostedTreeClassifier.init(_:targetColumn:featureColumns:parameters:)(v0[52], v0[50], v17, v19, v9, (v0 + 16));
}

{
  v2 = *(*v1 + 480);
  *(*v1 + 488) = v0;
  v2;
  if (v0)
  {
    v3 = MLBoostedTreeClassifier.init(delegate:);
  }

  else
  {
    v3 = MLBoostedTreeClassifier.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 384);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  outlined init with take of MLClassifierMetrics(*(v0 + 416), *(v0 + 336), type metadata accessor for MLBoostedTreeClassifier);
  v4 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics + v3;
  swift_beginAccess(v4, v0 + 288, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, v1, &demangling cache variable for type metadata for AnyClassificationMetrics?);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    BUG();
  }

  v5 = *(v0 + 472);
  v22 = *(v0 + 408);
  v6 = *(v0 + 392);
  v7 = *(v0 + 384);
  v29 = *(v0 + 376);
  v26 = *(v0 + 352);
  v24 = *(v0 + 336);
  v8 = *(v0 + 344);
  outlined destroy of MLBoostedTreeClassifier.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for PersistentParametersForTreeBasedMethods);
  outlined init with take of MLClassifierMetrics(v7, v6, type metadata accessor for AnyClassificationMetrics);
  v9 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v6, v9, 0);
  outlined assign with take of MLClassifierMetrics(v6, v24 + *(v22 + 36));
  v10 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics;
  swift_beginAccess(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics, v0 + 312, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v29, &demangling cache variable for type metadata for AnyClassificationMetrics?);

  if (__swift_getEnumTagSinglePayload(v29, 1, v26) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 376), &demangling cache variable for type metadata for AnyClassificationMetrics?);
  }

  else
  {
    v30 = *(v0 + 408);
    v11 = *(v0 + 368);
    v12 = *(v0 + 336);
    v27 = v9;
    v13 = *(v0 + 360);
    outlined init with take of MLClassifierMetrics(*(v0 + 376), v11, type metadata accessor for AnyClassificationMetrics);
    outlined init with take of MLClassifierMetrics(v11, v13, type metadata accessor for AnyClassificationMetrics);
    v14 = v12 + *(v30 + 40);
    outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLClassifierMetrics);
    outlined init with take of MLClassifierMetrics(v13, v14, type metadata accessor for AnyClassificationMetrics);
    swift_storeEnumTagMultiPayload(v14, v27, 0);
  }

  v15 = *(v0 + 456);
  v16 = *(v0 + 448);
  v17 = *(v0 + 424);
  v18 = *(v0 + 416);
  v20 = *(v0 + 400);
  v25 = *(v0 + 392);
  v23 = *(v0 + 384);
  v21 = *(v0 + 376);
  v28 = *(v0 + 360);
  v31 = *(v0 + 368);
  *(v0 + 472);
  v15;
  v16;
  v17;
  v18;
  v20;
  v25;
  v23;
  v21;
  v31;
  v28;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 472);
  v2 = *(v0 + 456);
  v3 = *(v0 + 448);
  v12 = *(v0 + 424);
  v11 = *(v0 + 416);
  v10 = *(v0 + 400);
  v9 = *(v0 + 392);
  v8 = *(v0 + 384);
  v7 = *(v0 + 376);
  v6 = *(v0 + 368);
  v5 = *(v0 + 360);

  outlined destroy of MLBoostedTreeClassifier.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v1;
  v2;
  v3;
  v12;
  v11;
  v10;
  v9;
  v8;
  v7;
  v6;
  v5;
  return (*(v0 + 8))();
}

uint64_t partial apply for closure #1 in MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  type metadata accessor for AnyTreeClassifierModel(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t partial apply for closure #1 in MLBoostedTreeClassifier.init(checkpoint:)(uint64_t a1)
{
  type metadata accessor for AnyTreeClassifierModel(0);
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRandomForestClassifier.init(checkpoint:)(a1);
}

id sub_276717()
{
  v1 = v0;
  result = MLBoostedTreeClassifier.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLBoostedTreeClassifier(void *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) == 0)
  {
    *a1 = *a2;
    a1[1] = a2[1];
    v5 = a2[2];

    if (v5)
    {
      a1[2] = v5;
      a1[3] = a2[3];
      a1[4] = a2[4];
    }

    else
    {
      a1[4] = a2[4];
      *(a1 + 1) = *(a2 + 1);
    }

    v7 = type metadata accessor for AnyTreeClassifierModel(0);
    v8 = *(v7 + 24);
    v9 = type metadata accessor for BaseTreeClassifierModel(0);
    (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
    v10 = *(v7 + 28);
    v11 = *(a2 + v10 + 8);
    *(a1 + v10) = *(a2 + v10);
    *(a1 + v10 + 8) = v11;
    v12 = a3[5];
    v13 = *(a2 + v12);
    *(a1 + v12) = v13;
    v14 = a3[6];
    *(a1 + v14) = *(a2 + v14);
    *(a1 + v14 + 8) = *(a2 + v14 + 8);
    *(a1 + a3[7]) = *(a2 + a3[7]);
    v15 = a3[8];
    v16 = a1 + v15;
    v17 = a2 + v15;
    v18 = *(a2 + v15 + 24);

    v13;

    if (v18)
    {
      *(v16 + 3) = v18;
      (**(v18 - 8))(v16, v17, v18);
    }

    else
    {
      v19 = *v17;
      *(v16 + 1) = *(v17 + 1);
      *v16 = v19;
    }

    *(v16 + 2) = *(v17 + 2);
    *(v16 + 3) = *(v17 + 3);
    *(v16 + 4) = *(v17 + 4);
    *(v16 + 10) = *(v17 + 10);
    v16[88] = v17[88];
    *(v16 + 6) = *(v17 + 6);
    v20 = a3;
    v21 = a3[9];
    v22 = (a1 + v21);
    v23 = (a2 + v21);
    v63 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v23, v63);
    if (EnumCaseMultiPayload == 2)
    {
      v30 = v22;
      v31 = *v23;
      swift_errorRetain(*v23);
      *v30 = v31;
      v22 = v30;
      EnumCaseMultiPayload = 2;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v22 = *v23;
      v57 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v25 = *(v57 + 20);
      v55 = v22 + v25;
      v26 = type metadata accessor for DataFrame(0);
      v64 = v22;
      v27 = *(*(v26 - 8) + 16);
      v28 = v23 + v25;
      v3 = a1;
      v27(v55, v28, v26);
      v29 = v26;
      v20 = a3;
      v27(v64 + *(v57 + 24), v23 + *(v57 + 24), v29);
      v22 = v64;
    }

    else
    {
      v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v32 = swift_getEnumCaseMultiPayload(v23, v65);
      v58 = v32 == 1;
      v33 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v32 == 1)
      {
        v33 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v34 = __swift_instantiateConcreteTypeFromMangledName(v33);
      (*(*(v34 - 8) + 16))(v22, v23, v34);
      swift_storeEnumTagMultiPayload(v22, v65, v58);
    }

    swift_storeEnumTagMultiPayload(v22, v63, EnumCaseMultiPayload);
    v35 = v20[10];
    v36 = (v3 + v35);
    v37 = (a2 + v35);
    v38 = swift_getEnumCaseMultiPayload(a2 + v35, v63);
    if (v38 == 2)
    {
      v43 = *v37;
      swift_errorRetain(v43);
      *v36 = v43;
      v54 = 2;
    }

    else
    {
      if (v38 != 1)
      {
        v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v48 = swift_getEnumCaseMultiPayload(v37, v47);
        v49 = v37;
        v50 = v48 == 1;
        v51 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v48 == 1)
        {
          v51 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v52 = __swift_instantiateConcreteTypeFromMangledName(v51);
        (*(*(v52 - 8) + 16))(v36, v49, v52);
        swift_storeEnumTagMultiPayload(v36, v47, v50);
        v45 = v36;
        v46 = v63;
        v44 = 0;
        goto LABEL_24;
      }

      *v36 = *v37;
      v62 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v39 = *(v62 + 20);
      v60 = v36 + v39;
      v40 = type metadata accessor for DataFrame(0);
      v41 = *(*(v40 - 8) + 16);
      v42 = v37 + v39;
      v3 = a1;
      v41(v60, v42, v40);
      v41(v36 + *(v62 + 24), v37 + *(v62 + 24), v40);
      v54 = 1;
    }

    v44 = v54;
    v45 = v36;
    v46 = v63;
LABEL_24:
    swift_storeEnumTagMultiPayload(v45, v46, v44);
    return v3;
  }

  v6 = *a2;
  *v3 = *a2;
  v3 = (v6 + ((v4 + 16) & ~v4));

  return v3;
}

void *initializeWithCopy for MLBoostedTreeClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a2[2];

  if (v3)
  {
    a1[2] = v3;
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    a1[4] = a2[4];
    *(a1 + 1) = *(a2 + 1);
  }

  v4 = type metadata accessor for AnyTreeClassifierModel(0);
  v5 = *(v4 + 24);
  v6 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v6 - 8) + 16))(a1 + v5, a2 + v5, v6);
  v7 = *(v4 + 28);
  v8 = *(a2 + v7 + 8);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + v7 + 8) = v8;
  v9 = a3[5];
  v10 = *(a2 + v9);
  *(a1 + v9) = v10;
  v11 = a3[6];
  *(a1 + v11) = *(a2 + v11);
  *(a1 + v11 + 8) = *(a2 + v11 + 8);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v12 = a3[8];
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(a2 + v12 + 24);

  v10;

  if (v15)
  {
    *(v13 + 3) = v15;
    (**(v15 - 8))(v13, v14, v15);
  }

  else
  {
    v16 = *v14;
    *(v13 + 1) = *(v14 + 1);
    *v13 = v16;
  }

  *(v13 + 2) = *(v14 + 2);
  *(v13 + 3) = *(v14 + 3);
  *(v13 + 4) = *(v14 + 4);
  *(v13 + 10) = *(v14 + 10);
  v13[88] = v14[88];
  *(v13 + 6) = *(v14 + 6);
  v17 = a3[9];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v49 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v19, v49);
  if (EnumCaseMultiPayload == 2)
  {
    v25 = *v19;
    swift_errorRetain(*v19);
    *v18 = v25;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *v18 = *v19;
    v47 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v21 = *(v47 + 20);
    v45 = v18 + v21;
    v22 = type metadata accessor for DataFrame(0);
    v23 = v19 + v21;
    v24 = *(*(v22 - 8) + 16);
    v24(v45, v23, v22);
    v24(v18 + *(v47 + 24), v19 + *(v47 + 24), v22);
  }

  else
  {
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v26 = swift_getEnumCaseMultiPayload(v19, v48);
    v27 = v26 == 1;
    v28 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v26 == 1)
    {
      v28 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledName(v28);
    (*(*(v29 - 8) + 16))(v18, v19, v29);
    swift_storeEnumTagMultiPayload(v18, v48, v27);
  }

  swift_storeEnumTagMultiPayload(v18, v49, EnumCaseMultiPayload);
  v30 = a3[10];
  v31 = (a1 + v30);
  v32 = (a2 + v30);
  v33 = swift_getEnumCaseMultiPayload(a2 + v30, v49);
  if (v33 == 2)
  {
    v38 = *v32;
    swift_errorRetain(v38);
    *v31 = v38;
  }

  else if (v33 == 1)
  {
    *v31 = *v32;
    v51 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v34 = *(v51 + 20);
    v53 = v31 + v34;
    v35 = type metadata accessor for DataFrame(0);
    v36 = v32 + v34;
    v37 = *(*(v35 - 8) + 16);
    v37(v53, v36, v35);
    v37(v31 + *(v51 + 24), v32 + *(v51 + 24), v35);
  }

  else
  {
    v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v40 = swift_getEnumCaseMultiPayload(v32, v39);
    v54 = v32;
    v41 = v40 == 1;
    v42 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v40 == 1)
    {
      v42 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledName(v42);
    (*(*(v43 - 8) + 16))(v31, v54, v43);
    swift_storeEnumTagMultiPayload(v31, v39, v41);
  }

  swift_storeEnumTagMultiPayload(v31, v49, v33);
  return a1;
}

void *assignWithCopy for MLBoostedTreeClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v5 = a1[1];
  a1[1] = a2[1];

  v5;
  v6 = a1 + 2;
  v7 = a2 + 2;
  v8 = a1[2];
  v9 = a2[2];
  if (v8)
  {
    if (v9)
    {
      a1[2] = v9;

      v8;
      a1[3] = a2[3];
      v10 = a1[4];
      a1[4] = a2[4];

      v10;
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
      *v6 = *v7;
      a1[4] = a2[4];
    }
  }

  else if (v9)
  {
    a1[2] = v9;
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    a1[4] = a2[4];
    *v6 = *v7;
  }

  v11 = type metadata accessor for AnyTreeClassifierModel(0);
  v12 = *(v11 + 24);
  v13 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v13 - 8) + 24))(a1 + v12, a2 + v12, v13);
  v14 = *(v11 + 28);
  v15 = *(a2 + v14 + 8);
  v16 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);
  *(a1 + v14 + 8) = v15;

  v16;
  v17 = a3[5];
  v18 = *(a2 + v17);
  v19 = *(a1 + v17);
  *(a1 + v17) = v18;
  v18;

  v20 = a3[6];
  *(a1 + v20) = *(a2 + v20);
  v21 = *(a1 + v20 + 8);
  *(a1 + v20 + 8) = *(a2 + v20 + 8);

  v21;
  v22 = a3[7];
  v23 = *(a1 + v22);
  *(a1 + v22) = *(a2 + v22);

  v23;
  v24 = a3[8];
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = *(a2 + v24 + 24);
  if (*(a1 + v24 + 24))
  {
    v28 = (a1 + v24);
    if (v27)
    {
      __swift_assign_boxed_opaque_existential_0(v28, (a2 + v24));
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else if (v27)
  {
    *(v25 + 3) = v27;
    (**(v27 - 8))(v25, v26);
    goto LABEL_15;
  }

  v29 = *v26;
  *(v25 + 1) = *(v26 + 1);
  *v25 = v29;
LABEL_15:
  *(v25 + 4) = *(v26 + 4);
  *(v25 + 5) = *(v26 + 5);
  *(v25 + 6) = *(v26 + 6);
  *(v25 + 7) = *(v26 + 7);
  *(v25 + 8) = *(v26 + 8);
  *(v25 + 9) = *(v26 + 9);
  *(v25 + 10) = *(v26 + 10);
  v25[88] = v26[88];
  *(v25 + 12) = *(v26 + 12);
  *(v25 + 13) = *(v26 + 13);
  if (a1 != a2)
  {
    v30 = a3[9];
    v31 = (a1 + v30);
    v32 = (a2 + v30);
    outlined destroy of MLActivityClassifier.ModelParameters(v31, type metadata accessor for MLClassifierMetrics.Contents);
    v33 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v32, v33);
    v64 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v37 = *v32;
      swift_errorRetain(v37);
      *v31 = v37;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v31 = *v32;
      v57 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v59 = v33;
      v35 = *(v57 + 20);
      v55 = v31 + v35;
      v56 = type metadata accessor for DataFrame(0);
      v67 = *(*(v56 - 8) + 16);
      v36 = v32 + v35;
      v33 = v59;
      v67(v55, v36, v56);
      v67(v31 + *(v57 + 24), v32 + *(v57 + 24), v56);
    }

    else
    {
      v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v38 = swift_getEnumCaseMultiPayload(v32, v60);
      v68 = v38 == 1;
      v39 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v38 == 1)
      {
        v39 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v40 = __swift_instantiateConcreteTypeFromMangledName(v39);
      (*(*(v40 - 8) + 16))(v31, v32, v40);
      swift_storeEnumTagMultiPayload(v31, v60, v68);
    }

    swift_storeEnumTagMultiPayload(v31, v33, v64);
    v41 = a3[10];
    v42 = (a1 + v41);
    v43 = (a2 + v41);
    outlined destroy of MLActivityClassifier.ModelParameters(a1 + v41, type metadata accessor for MLClassifierMetrics.Contents);
    v44 = swift_getEnumCaseMultiPayload(v43, v33);
    if (v44 == 2)
    {
      v49 = *v43;
      swift_errorRetain(v49);
      *v42 = v49;
    }

    else
    {
      v63 = v44;
      if (v44 == 1)
      {
        *v42 = *v43;
        v69 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v45 = *(v69 + 20);
        v58 = v42 + v45;
        v61 = v33;
        v46 = type metadata accessor for DataFrame(0);
        v65 = *(*(v46 - 8) + 16);
        v47 = v43 + v45;
        v44 = 1;
        v65(v58, v47, v46);
        v48 = v46;
        v33 = v61;
        v65(v42 + *(v69 + 24), v43 + *(v69 + 24), v48);
      }

      else
      {
        v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v50 = swift_getEnumCaseMultiPayload(v43, v66);
        v51 = v50 == 1;
        v52 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v50 == 1)
        {
          v52 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v53 = __swift_instantiateConcreteTypeFromMangledName(v52);
        (*(*(v53 - 8) + 16))(v42, v43, v53);
        swift_storeEnumTagMultiPayload(v42, v66, v51);
        v44 = v63;
      }
    }

    swift_storeEnumTagMultiPayload(v42, v33, v44);
  }

  return a1;
}
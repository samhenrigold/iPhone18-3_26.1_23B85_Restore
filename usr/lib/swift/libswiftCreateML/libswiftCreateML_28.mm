uint64_t lazy protocol witness table accessor for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for LazyMapSequence<MLDataValue.SequenceType, String>);
    lazy protocol witness table accessor for type MLDataValue.SequenceType and conformance MLDataValue.SequenceType();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> LazyMapSequence<A, B>, v1);
    lazy protocol witness table cache variable for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B> = result;
  }

  return result;
}

uint64_t MLDataValue.isValid.getter()
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  switch(v4)
  {
    case 0:
    case 1:
      goto LABEL_5;
    case 2:
    case 4:

      goto LABEL_5;
    case 3:

      goto LABEL_5;
    case 5:
      *v1;
LABEL_5:
      LOBYTE(v0) = 1;
      break;
    case 6:
      v0 = 0;
      break;
  }

  outlined consume of MLDataValue(v2, v3, v4);
  outlined consume of MLDataValue(0, 0, 6);
  return v0;
}

Swift::Int MLDataValue.ValueType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

id MLDataValue.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 0:
      v3 = lazy protocol witness table accessor for type Int and conformance Int();
      v4 = BinaryInteger.description.getter(&type metadata for Int, v3);
      goto LABEL_7;
    case 1:
      v4 = Double.description.getter(*&v1);
LABEL_7:
      v1 = v4;
      break;
    case 2:

      break;
    case 3:
      outlined copy of MLDataValue(v1, v2, 3u);
      swift_retain_n(v1, 2);
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<MLDataValue.SequenceType, String>);
      v8 = lazy protocol witness table accessor for type LazyMapSequence<MLDataValue.SequenceType, String> and conformance <> LazyMapSequence<A, B>();
      v18 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v7, v8);
      v10 = v9;

      v11._countAndFlagsBits = v18;
      v11._object = v10;
      String.append(_:)(v11);
      v10;

      v11._countAndFlagsBits = 93;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);
      0;
      outlined consume of MLDataValue(v1, v2, 3);
      outlined consume of MLDataValue(v1, v2, 3);
      v1 = &stru_20 + 59;
      break;
    case 4:
      v5 = lazy protocol witness table accessor for type MLDataValue and conformance MLDataValue();

      v6 = Dictionary.debugDescription.getter(v1, &type metadata for MLDataValue, &type metadata for MLDataValue, v5);
      outlined consume of MLDataValue(v1, v2, 4);
      v1 = v6;
      break;
    case 5:
      v12 = *v0;
      v13 = v12;
      v14 = [v13 debugDescription];
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)(v15);

      outlined consume of MLDataValue(v1, v2, 5);
      outlined consume of MLDataValue(v1, v2, 5);
      v1 = v16;
      break;
    case 6:
      v1 = 0xD000000000000012;
      break;
  }

  return v1;
}

__int8 static MLDataValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a1 + 16);
  v29 = v3;
  switch(v7)
  {
    case 0:
      v8 = v4;
      v9 = v5;
      v10 = v2;
      if (v6)
      {
        goto LABEL_25;
      }

      outlined consume of MLDataValue(v2, v29, 0);
      outlined consume of MLDataValue(v8, v9, 0);
      return v10 == v8;
    case 1:
      v8 = v4;
      v9 = v5;
      v10 = v2;
      if (v6 != 1)
      {
        goto LABEL_25;
      }

      v30[0].i64[0] = *&_mm_cmpeq_sd(v8, v2);
      outlined consume of MLDataValue(v2, v29, 1);
      outlined consume of MLDataValue(v8, v9, 1);
      return _mm_loadl_epi64(v30).u8[0] & 1;
    case 2:
      if (v6 != 2)
      {
        v8 = v4;
        v9 = v5;
        v10 = v2;
        goto LABEL_22;
      }

      v11 = 1;
      v17 = v3;
      v18 = v2;
      if (v4 ^ v2 | v5 ^ v3)
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)(v2, v3, v4, v5, 0);
      }

      outlined copy of MLDataValue(v4, v5, 2u);
      outlined copy of MLDataValue(v18, v17, 2u);
      outlined consume of MLDataValue(v18, v17, 2);
      v19 = v4;
      v20 = v5;
      v21 = 2;
      goto LABEL_12;
    case 3:
      if (v6 != 3)
      {
        v8 = v4;
        v9 = v5;
        v10 = v2;

        goto LABEL_25;
      }

      v27 = v2;
      v28 = v4;
      v22 = v2;
      outlined copy of MLDataValue(v4, v5, 3u);
      v23 = v29;
      outlined copy of MLDataValue(v22, v29, 3u);
      outlined copy of MLDataValue(v4, v5, 3u);
      outlined copy of MLDataValue(v22, v29, 3u);
      v11 = static MLDataValue.SequenceType.== infix(_:_:)(&v27, &v28);
      outlined consume of MLDataValue(v22, v23, 3);
      outlined consume of MLDataValue(v4, v5, 3);
      outlined consume of MLDataValue(v4, v5, 3);
      v19 = v22;
      v20 = v23;
      v21 = 3;
LABEL_12:
      outlined consume of MLDataValue(v19, v20, v21);
      return v11;
    case 4:
      if (v6 == 4)
      {
        v12 = 4;
        v13 = v2;
        outlined copy of MLDataValue(v4, v5, 4u);
        v14 = v29;
        outlined copy of MLDataValue(v13, v29, 4u);
        outlined copy of MLDataValue(v4, v5, 4u);
        outlined copy of MLDataValue(v13, v29, 4u);
        v30[0].i8[0] = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ8CreateML11MLDataValueO_AETt1g5(v13, v4);
        v15 = v13;
        v16 = v29;
        goto LABEL_17;
      }

      v8 = v4;
      v9 = v5;
      v10 = v2;
LABEL_22:

      goto LABEL_25;
    case 5:
      if (v6 == 5)
      {
        v13 = v2;
        v30[0].i64[0] = type metadata accessor for NSObject();
        outlined copy of MLDataValue(v4, v5, 5u);
        v14 = v29;
        outlined copy of MLDataValue(v13, v29, 5u);
        outlined copy of MLDataValue(v4, v5, 5u);
        outlined copy of MLDataValue(v13, v29, 5u);
        v30[0].i8[0] = static NSObject.== infix(_:_:)(v13, v4);
        v15 = v13;
        v16 = v29;
        v12 = 5;
LABEL_17:
        outlined consume of MLDataValue(v15, v16, v12);
        outlined consume of MLDataValue(v4, v5, v12);
        outlined consume of MLDataValue(v4, v5, v12);
        outlined consume of MLDataValue(v13, v14, v12);
        return v30[0].i8[0];
      }

      else
      {
        v8 = v4;
        v9 = v5;
        v10 = v2;
        v2;
LABEL_25:
        outlined copy of MLDataValue(v8, v9, v6);
        outlined consume of MLDataValue(v10, v29, v7);
        outlined consume of MLDataValue(v8, v9, v6);
        return 0;
      }

    case 6:
      v25 = v5;
      v10 = v2;
      v26 = v4;
      v9 = v25;
      v8 = v26;
      if (((v6 == 6) & (__PAIR128__(v25, v26) == 0)) != 1)
      {
        goto LABEL_25;
      }

      outlined consume of MLDataValue(v2, v29, 6);
      outlined consume of MLDataValue(0, 0, 6);
      return 1;
  }
}

void MLDataValue.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 0:
      v3 = *v1;
      goto LABEL_8;
    case 1:
      v4 = v2 & 0x7FFFFFFFFFFFFFFFLL;
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = *v1;
      }

      Hasher._combine(_:)(v4);
      return;
    case 2:
      String.hash(into:)(a1, v2);
      return;
    case 3:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000026, ("t be used as dictionary key" + 0x8000000000000000), "CreateML/MLDataValue.swift", 26, 2, 381, 0);
      goto LABEL_13;
    case 4:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002BLL, ("t be used as dictionary key" + 0x8000000000000000), "CreateML/MLDataValue.swift", 26, 2, 383, 0);
      goto LABEL_13;
    case 5:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002BLL, ("CreateML/MLDataValue.swift" + 0x8000000000000000), "CreateML/MLDataValue.swift", 26, 2, 385, 0);
LABEL_13:
      BUG();
    case 6:
      v3 = 1;
LABEL_8:
      Hasher._combine(_:)(v3);
      return;
  }
}

Swift::Int MLDataValue.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)(0);
  MLDataValue.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLDataValue(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  Hasher.init(_seed:)(a1);
  MLDataValue.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ8CreateML11MLDataValueO_AETt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    LOBYTE(v2) = 1;
    return v2;
  }

  LODWORD(v2) = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    LODWORD(v2) = 0;
    return v2;
  }

  specialized _NativeDictionary.makeIterator()(a1);
  v53 = v50[0];
  v58 = v50[1];
  v3 = v50[3];
  v4 = v50[4];
  v57 = (v50[2] + 64) >> 6;

  v54 = a2;
  while (2)
  {
    if (v4)
    {
      _BitScanForward64(&v5, v4);
      v60 = (v4 - 1) & v4;
      v59 = v3;
      v6 = v5 | (v3 << 6);
    }

    else
    {
      v7 = v3 + 1;
      if (__OFADD__(1, v3))
      {
        BUG();
      }

      LOBYTE(v2) = 1;
      if (v7 >= v57)
      {
        goto LABEL_62;
      }

      v8 = *(v58 + 8 * v7);
      if (v8)
      {
        v9 = v3 + 1;
      }

      else
      {
        v9 = v3 + 2;
        if (v3 + 2 >= v57)
        {
          goto LABEL_62;
        }

        v8 = *(v58 + 8 * v7 + 8);
        if (!v8)
        {
          v9 = v3 + 3;
          if (v3 + 3 >= v57)
          {
            goto LABEL_62;
          }

          v8 = *(v58 + 8 * v7 + 16);
          if (!v8)
          {
            v9 = v3 + 4;
            if (v3 + 4 >= v57)
            {
              goto LABEL_62;
            }

            v8 = *(v58 + 8 * v7 + 24);
            if (!v8)
            {
              v9 = v3 + 5;
              if (v3 + 5 >= v57)
              {
                goto LABEL_62;
              }

              v8 = *(v58 + 8 * v7 + 32);
              if (!v8)
              {
                v9 = v3 + 6;
                if (v3 + 6 >= v57)
                {
                  goto LABEL_62;
                }

                v8 = *(v58 + 8 * v7 + 40);
                if (!v8)
                {
                  v10 = v3 + 7;
                  do
                  {
                    if (v10 >= v57)
                    {
                      goto LABEL_62;
                    }

                    v8 = *(v58 + 8 * v10++);
                  }

                  while (!v8);
                  v9 = v10 - 1;
                }
              }
            }
          }
        }
      }

      _BitScanForward64(&v11, v8);
      v60 = v8 & (v8 - 1);
      v6 = v11 | (v9 << 6);
      v59 = v9;
    }

    v12 = 24 * v6;
    v13 = *(v53 + 48);
    v14 = *(v53 + 56);
    v15 = *(v13 + v12);
    v16 = *(v13 + v12 + 8);
    LOBYTE(v13) = *(v13 + v12 + 16);
    v17 = *(v14 + v12);
    *&v61 = *(v14 + v12 + 8);
    v18 = *(v14 + v12 + 16);
    v19 = v13;
    outlined copy of MLDataValue(v15, v16, v13);
    LOBYTE(v62) = v18;
    *(&v61 + 1) = v17;
    v56 = v18;
    outlined copy of MLDataValue(v17, v61, v18);
    if (v19 == 0xFF)
    {
      LOBYTE(v2) = 1;
      goto LABEL_62;
    }

    v20 = v54;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16, v19);
    LOBYTE(v55) = v22;
    outlined consume of MLDataValue(v15, v16, v19);
    if ((LOBYTE(v55) & 1) == 0)
    {
      goto LABEL_60;
    }

    v23 = *(v20 + 56);
    v24 = 24 * v21;
    v25 = *(v23 + 24 * v21);
    v2 = *(v23 + 24 * v21 + 8);
    v26 = *(v23 + v24 + 16);
    switch(v26)
    {
      case 0:
        if (LOBYTE(v62))
        {
          goto LABEL_59;
        }

        outlined consume of MLDataValue(v25, v2, 0);
        v2 = *(&v61 + 1);
        outlined consume of MLDataValue(*(&v61 + 1), v61, 0);
        v42 = v25 == v2;
        v3 = v59;
        v4 = v60;
        if (!v42)
        {
          goto LABEL_61;
        }

        continue;
      case 1:
        if (LOBYTE(v62) != 1)
        {
          goto LABEL_59;
        }

        v62 = *&v25;
        v38 = *(&v61 + 1);
        v55 = *(&v61 + 1);
        v39 = v2;
        LODWORD(v2) = 1;
        outlined consume of MLDataValue(v25, v39, 1);
        outlined consume of MLDataValue(v38, v61, 1);
        v3 = v59;
        v4 = v60;
        if (v62 == v55)
        {
          continue;
        }

        goto LABEL_61;
      case 2:
        if (LOBYTE(v62) != 2)
        {
          outlined copy of MLDataValue(v25, v2, 2u);

          goto LABEL_59;
        }

        v31 = v61;
        if (__PAIR128__(v25, v2) != v61)
        {
          v44 = *(&v61 + 1);
          v45 = v2;
          LODWORD(v2) = _stringCompareWithSmolCheck(_:_:expecting:)(v25, v2, *(&v61 + 1), v61, 0);

          outlined consume of MLDataValue(v25, v45, 2);
          outlined consume of MLDataValue(v44, v31, 2);
          v42 = (v2 & 1) == 0;
          goto LABEL_45;
        }

        v32 = *(&v61 + 1);
        LODWORD(v2) = 2;
        outlined consume of MLDataValue(*(&v61 + 1), v31, 2);
        v33 = v32;
        v34 = v31;
LABEL_50:
        outlined consume of MLDataValue(v33, v34, v2);
        v3 = v59;
        v4 = v60;
        continue;
      case 3:
        if (LOBYTE(v62) != 3)
        {
          swift_retain_n(v25, 2);
          goto LABEL_59;
        }

        v51 = v25;
        v28 = *(&v61 + 1);
        v52 = *(&v61 + 1);
        v27 = 3;
        outlined copy of MLDataValue(v25, v2, 3u);
        v29 = v61;
        outlined copy of MLDataValue(v28, v61, 3u);
        outlined copy of MLDataValue(v25, v2, 3u);
        outlined copy of MLDataValue(v28, v29, 3u);
        outlined copy of MLDataValue(v25, v2, 3u);
        ML11MLDataValueO_AETt1g5 = static MLDataValue.SequenceType.== infix(_:_:)(&v51, &v52);
LABEL_38:
        LOBYTE(v62) = ML11MLDataValueO_AETt1g5;
        outlined consume of MLDataValue(v25, v2, v27);
        outlined consume of MLDataValue(v28, v29, v27);
        outlined consume of MLDataValue(v28, v29, v27);
        outlined consume of MLDataValue(v25, v2, v27);
        outlined consume of MLDataValue(v25, v2, v27);
        v35 = v28;
        v36 = v29;
        v37 = v27;
        goto LABEL_44;
      case 4:
        if (LOBYTE(v62) != 4)
        {
          swift_bridgeObjectRetain_n(v25, 2);
          goto LABEL_59;
        }

        v27 = 4;
        outlined copy of MLDataValue(v25, v2, 4u);
        v28 = *(&v61 + 1);
        v29 = v61;
        outlined copy of MLDataValue(*(&v61 + 1), v61, 4u);
        outlined copy of MLDataValue(v25, v2, 4u);
        outlined copy of MLDataValue(v28, v29, 4u);
        outlined copy of MLDataValue(v25, v2, 4u);
        ML11MLDataValueO_AETt1g5 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ8CreateML11MLDataValueO_AETt1g5(v25, v28);
        goto LABEL_38;
      case 5:
        if (LOBYTE(v62) == 5)
        {
          v62 = COERCE_DOUBLE(type metadata accessor for NSObject());
          outlined copy of MLDataValue(v25, v2, 5u);
          v40 = *(&v61 + 1);
          v41 = v61;
          outlined copy of MLDataValue(*(&v61 + 1), v61, 5u);
          outlined copy of MLDataValue(v25, v2, 5u);
          outlined copy of MLDataValue(v40, v41, 5u);
          outlined copy of MLDataValue(v25, v2, 5u);
          LOBYTE(v62) = static NSObject.== infix(_:_:)(v25, v40);
          outlined consume of MLDataValue(v25, v2, 5);
          outlined consume of MLDataValue(v40, v41, 5);
          outlined consume of MLDataValue(v40, v41, 5);
          outlined consume of MLDataValue(v25, v2, 5);
          outlined consume of MLDataValue(v25, v2, 5);
          v35 = v40;
          v36 = v41;
          v37 = 5;
LABEL_44:
          outlined consume of MLDataValue(v35, v36, v37);
          v42 = (LOBYTE(v62) & 1) == 0;
LABEL_45:
          v3 = v59;
          v4 = v60;
          if (v42)
          {
            goto LABEL_61;
          }

          continue;
        }

        v46 = v25;
        v46;
LABEL_59:
        v47 = *(&v61 + 1);
        v48 = v56;
        outlined copy of MLDataValue(*(&v61 + 1), v61, v56);
        outlined consume of MLDataValue(v25, v2, v26);
        outlined consume of MLDataValue(v47, v61, v48);
        outlined consume of MLDataValue(v25, v2, v26);
LABEL_60:
        outlined consume of MLDataValue(*(&v61 + 1), v61, v56);
LABEL_61:
        LODWORD(v2) = 0;
LABEL_62:
        outlined release of _NativeDictionary<String?, Int>.Iterator(v50);
        return v2;
      case 6:
        if (LOBYTE(v62) != 6 || v61 != 0)
        {
          goto LABEL_59;
        }

        v43 = v2;
        LODWORD(v2) = 6;
        outlined consume of MLDataValue(v25, v43, 6);
        v33 = 0;
        v34 = 0;
        goto LABEL_50;
    }
  }
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_Say10Foundation3URLVGTt1g5(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  LODWORD(v3) = a1;
  v43 = type metadata accessor for URL(0);
  v52 = *(v43 - 8);
  v4 = *(v52 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v45 = v41;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v44 = v41;
  if (a1 == a2)
  {
    LOBYTE(v3) = 1;
    return v3;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    LODWORD(v3) = 0;
    return v3;
  }

  specialized _NativeDictionary.makeIterator()(a1);
  v49 = v41[0];
  v58 = v41[1];
  v9 = v41[3];
  v55 = v41[4];
  v57 = (v41[2] + 64) >> 6;

  v50 = a2;
LABEL_4:
  while (v55)
  {
    _BitScanForward64(&v10, v55);
    v55 &= v55 - 1;
    v56 = v9;
    v11 = v10 | (v9 << 6);
LABEL_25:
    v17 = *(v49 + 48);
    v18 = *(v17 + 16 * v11);
    v19 = *(v17 + 16 * v11 + 8);
    v20 = *(*(v49 + 56) + 8 * v11);

    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
    LODWORD(v3) = v22;
    v19;
    if ((v3 & 1) == 0 || (v23 = *(*(v2 + 56) + 8 * v21), v24 = *(v23 + 16), v24 != *(v20 + 16)))
    {
      v39 = v20;
LABEL_39:
      v39;
      LODWORD(v3) = 0;
      goto LABEL_40;
    }

    if (v24 && v23 != v20)
    {
      v46 = *(v23 + 16);
      v25 = v52;
      v26 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v27 = v23 + v26;
      v28 = v20 + v26;
      v54 = v23;

      v29 = v27;
      v30 = *(v25 + 16);
      v48 = *(v25 + 72);
      v31 = 0;
      v53 = v20;
      v47 = v30;
      while (1)
      {
        v51 = v31;
        v32 = v44;
        v42 = v29;
        v33 = v43;
        v30(v44, v29, v43);
        if (v51 >= *(v20 + 16))
        {
          BUG();
        }

        v34 = v45;
        v30(v45, v28, v33);
        v35 = lazy protocol witness table accessor for type URL and conformance URL();
        v36 = v32;
        v37 = v32;
        v38 = v33;
        v59 = dispatch thunk of static Equatable.== infix(_:_:)(v36, v34, v33, v35);
        v3 = *(v52 + 8);
        v3(v34, v38);
        v3(v37, v38);
        if ((v59 & 1) == 0)
        {
          break;
        }

        v31 = v51 + 1;
        v28 += v48;
        v29 = v48 + v42;
        v20 = v53;
        v30 = v47;
        if (v46 == v51 + 1)
        {
          v53;
          v54;
          v2 = v50;
          v9 = v56;
          goto LABEL_4;
        }
      }

      v53;
      v39 = v54;
      goto LABEL_39;
    }

    v20;
    v9 = v56;
  }

  v12 = v9 + 1;
  if (__OFADD__(1, v9))
  {
    BUG();
  }

  LOBYTE(v3) = 1;
  if (v12 >= v57)
  {
    goto LABEL_40;
  }

  v13 = *(v58 + 8 * v12);
  if (v13)
  {
    v14 = v9 + 1;
LABEL_24:
    _BitScanForward64(&v16, v13);
    v55 = v13 & (v13 - 1);
    v11 = v16 | (v14 << 6);
    v56 = v14;
    goto LABEL_25;
  }

  v14 = v9 + 2;
  if (v9 + 2 >= v57)
  {
    goto LABEL_40;
  }

  v13 = *(v58 + 8 * v12 + 8);
  if (v13)
  {
    goto LABEL_24;
  }

  v14 = v9 + 3;
  if (v9 + 3 >= v57)
  {
    goto LABEL_40;
  }

  v13 = *(v58 + 8 * v12 + 16);
  if (v13)
  {
    goto LABEL_24;
  }

  v14 = v9 + 4;
  if (v9 + 4 >= v57)
  {
    goto LABEL_40;
  }

  v13 = *(v58 + 8 * v12 + 24);
  if (v13)
  {
    goto LABEL_24;
  }

  v14 = v9 + 5;
  if (v9 + 5 >= v57)
  {
    goto LABEL_40;
  }

  v13 = *(v58 + 8 * v12 + 32);
  if (v13)
  {
    goto LABEL_24;
  }

  v14 = v9 + 6;
  if (v9 + 6 >= v57)
  {
    goto LABEL_40;
  }

  v13 = *(v58 + 8 * v12 + 40);
  if (v13)
  {
    goto LABEL_24;
  }

  v15 = v9 + 7;
  while (v15 < v57)
  {
    v13 = *(v58 + 8 * v15++);
    if (v13)
    {
      v14 = v15 - 1;
      goto LABEL_24;
    }
  }

LABEL_40:
  outlined release of _NativeDictionary<String?, Int>.Iterator(v41);
  return v3;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SaySSGTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    LOBYTE(v2) = 1;
    return v2;
  }

  v3 = a2;
  LODWORD(v2) = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    LODWORD(v2) = 0;
    return v2;
  }

  specialized _NativeDictionary.makeIterator()(a1);
  v41 = v40[0];
  v46 = v40[1];
  v4 = v40[3];
  v5 = v40[4];
  v45 = (v40[2] + 64) >> 6;

  for (i = a2; ; v3 = i)
  {
    if (v5)
    {
      _BitScanForward64(&v6, v5);
      v44 = (v5 - 1) & v5;
      v43 = v4;
      v7 = v6 | (v4 << 6);
      goto LABEL_25;
    }

    v8 = v4 + 1;
    if (__OFADD__(1, v4))
    {
      BUG();
    }

    LOBYTE(v2) = 1;
    if (v8 >= v45)
    {
      goto LABEL_49;
    }

    v9 = *(v46 + 8 * v8);
    if (!v9)
    {
      break;
    }

    v10 = v4 + 1;
LABEL_24:
    _BitScanForward64(&v12, v9);
    v44 = v9 & (v9 - 1);
    v7 = v12 | (v10 << 6);
    v43 = v10;
LABEL_25:
    v13 = *(v41 + 48);
    v14 = *(v13 + 16 * v7);
    v15 = *(v13 + 16 * v7 + 8);
    v2 = *(*(v41 + 56) + 8 * v7);

    v16 = v3;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v19 = v18;
    v15;
    if ((v19 & 1) == 0)
    {
      v38 = v2;
      goto LABEL_48;
    }

    v20 = *(*(v16 + 56) + 8 * v17);
    v21 = v20[2];
    v22 = v2;
    if (v21 != v2[2])
    {
      goto LABEL_46;
    }

    if (v21 && v20 != v2)
    {
      v23 = v20[4];
      v24 = v20[5];
      v25 = v2[4];
      v26 = v2[5];
      v27 = v2;
      if (v23 != v25 || v24 != v26)
      {
        v28 = (_stringCompareWithSmolCheck(_:_:expecting:)(v23, v24, v25, v26, 0) & 1) == 0;
        v22 = v2;
        if (v28)
        {
          goto LABEL_46;
        }
      }

      if (v21 != (&dword_0 + 1))
      {
        v29 = v20[6];
        v30 = v20[7];
        v31 = v22[6];
        v32 = v22[7];
        if (v29 != v31 || v30 != v32)
        {
          v28 = (_stringCompareWithSmolCheck(_:_:expecting:)(v29, v30, v31, v32, 0) & 1) == 0;
          v22 = v2;
          if (v28)
          {
            goto LABEL_46;
          }
        }

        if (v21 != (&dword_0 + 2))
        {
          v33 = 9;
          v2 = (&dword_0 + 2);
          while (1)
          {
            if (v2 >= v21)
            {
              BUG();
            }

            v34 = v20[v33 - 1];
            v35 = v20[v33];
            v36 = v22[v33 - 1];
            v37 = v22[v33];
            if (v34 != v36 || v35 != v37)
            {
              v28 = (_stringCompareWithSmolCheck(_:_:expecting:)(v34, v35, v36, v37, 0) & 1) == 0;
              v22 = v27;
              if (v28)
              {
                break;
              }
            }

            v2 = (v2 + 1);
            v33 += 2;
            if (v21 == v2)
            {
              goto LABEL_43;
            }
          }

LABEL_46:
          v38 = v22;
LABEL_48:
          v38;
          LODWORD(v2) = 0;
          goto LABEL_49;
        }
      }
    }

LABEL_43:
    v22;
    v4 = v43;
    v5 = v44;
  }

  v10 = v4 + 2;
  if (v4 + 2 >= v45)
  {
    goto LABEL_49;
  }

  v9 = *(v46 + 8 * v8 + 8);
  if (v9)
  {
    goto LABEL_24;
  }

  v10 = v4 + 3;
  if (v4 + 3 >= v45)
  {
    goto LABEL_49;
  }

  v9 = *(v46 + 8 * v8 + 16);
  if (v9)
  {
    goto LABEL_24;
  }

  v10 = v4 + 4;
  if (v4 + 4 >= v45)
  {
    goto LABEL_49;
  }

  v9 = *(v46 + 8 * v8 + 24);
  if (v9)
  {
    goto LABEL_24;
  }

  v10 = v4 + 5;
  if (v4 + 5 >= v45)
  {
    goto LABEL_49;
  }

  v9 = *(v46 + 8 * v8 + 32);
  if (v9)
  {
    goto LABEL_24;
  }

  v10 = v4 + 6;
  if (v4 + 6 >= v45)
  {
    goto LABEL_49;
  }

  v9 = *(v46 + 8 * v8 + 40);
  if (v9)
  {
    goto LABEL_24;
  }

  v11 = v4 + 7;
  while (v11 < v45)
  {
    v9 = *(v46 + 8 * v11++);
    if (v9)
    {
      v10 = v11 - 1;
      goto LABEL_24;
    }
  }

LABEL_49:
  outlined release of _NativeDictionary<String?, Int>.Iterator(v40);
  return v2;
}

uint64_t lazy protocol witness table accessor for type MLDataValue.ValueType and conformance MLDataValue.ValueType()
{
  result = lazy protocol witness table cache variable for type MLDataValue.ValueType and conformance MLDataValue.ValueType;
  if (!lazy protocol witness table cache variable for type MLDataValue.ValueType and conformance MLDataValue.ValueType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue.ValueType, &type metadata for MLDataValue.ValueType);
    lazy protocol witness table cache variable for type MLDataValue.ValueType and conformance MLDataValue.ValueType = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLDataValue and conformance MLDataValue()
{
  result = lazy protocol witness table cache variable for type MLDataValue and conformance MLDataValue;
  if (!lazy protocol witness table cache variable for type MLDataValue and conformance MLDataValue)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue, &type metadata for MLDataValue);
    lazy protocol witness table cache variable for type MLDataValue and conformance MLDataValue = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataValue and conformance MLDataValue;
  if (!lazy protocol witness table cache variable for type MLDataValue and conformance MLDataValue)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue, &type metadata for MLDataValue);
    lazy protocol witness table cache variable for type MLDataValue and conformance MLDataValue = result;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLDataValue(uint64_t a1, uint64_t a2)
{
  return initializeBufferWithCopyOfBuffer for MLDataValue(a1, a2);
}

{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  outlined copy of MLDataValue(*a2, v3, v4);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithCopy for MLDataValue(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of MLDataValue(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of MLDataValue(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for MLDataValue(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of MLDataValue(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLDataValue(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v2 = -1;
      if (*(a1 + 16) >= 7u)
      {
        v2 = *(a1 + 16) ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLDataValue(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(a1 + 8) = 0;
    *a1 = a2 - 250;
    *(a1 + 16) = 0;
    if (a3 >= 0xFA)
    {
      *(a1 + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(a1 + 17) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = -a2;
    }
  }
}

uint64_t getEnumTag for MLDataValue(uint64_t a1)
{
  result = (*a1 + 6);
  if (*(a1 + 16) < 6u)
  {
    return *(a1 + 16);
  }

  return result;
}

void destructiveInjectEnumTag for MLDataValue(uint64_t a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    *a1 = a2 - 6;
    *(a1 + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(a1 + 16) = a2;
}

uint64_t storeEnumTagSinglePayload for MLDataValue.ValueType(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFA)
  {
    v4 = a3 + 6;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xF9)
  {
    v5 = a2 - 250;
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
          *a1 = a2 + 6;
        }

        break;
      case 5:
        JUMPOUT(0x1DFAF8);
    }
  }

  return result;
}

uint64_t outlined destroy of (key: AnyHashable, value: Any)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: AnyHashable, value: Any));
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined init with copy of (key: AnyHashable, value: Any)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: AnyHashable, value: Any));
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t ActivityClassifierTrainingSessionDelegate.model.getter()
{
  v19 = v0;
  v2 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActivityClassifier.Trainer?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer + v1;
  swift_beginAccess(v9, v17, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, v17, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
  v10 = 1;
  if (__swift_getEnumTagSinglePayload(v17, 1, v2))
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
    v11 = type metadata accessor for MLActivityClassifier.Model(0);
    return __swift_storeEnumTagSinglePayload(v19, 1, 1, v11);
  }

  else
  {
    outlined init with copy of MLTrainingSessionParameters(v17, v17, type metadata accessor for MLActivityClassifier.Trainer);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
    v13 = *&v17[*(v2 + 24)];
    v14 = v19;
    if (v13)
    {
      v15 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v13;
      v10 = 0;
      swift_beginAccess(v15, v18, 0, 0);
      outlined init with copy of MLTrainingSessionParameters(v15, v14, type metadata accessor for MLActivityClassifier.Model);
    }

    v16 = type metadata accessor for MLActivityClassifier.Model(0);
    __swift_storeEnumTagSinglePayload(v14, v10, 1, v16);
    return outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for MLActivityClassifier.Trainer);
  }
}

uint64_t ActivityClassifierTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = "ot found in Configuration" + 0x8000000000000000;
  v2 = OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters;
  *(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 48) = 0;
  *(v1 + v2 + 32) = 0;
  *(v1 + v2 + 16) = 0;
  *(v1 + v2) = 0;
  v3 = v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer;
  v4 = type metadata accessor for MLActivityClassifier.Trainer(0);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter;
  v6 = type metadata accessor for TrainingTablePrinter(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingDataSamples) = 0;
  *(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_validationDataSamples) = 0;
  *(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_classLabels) = 0;
  outlined init with take of MLClassifierMetrics(a1, v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  return v1;
}

void *ActivityClassifierTrainingSessionDelegate.init(trainingData:featureColumnNames:labelColumnName:recordingFileColumn:modelParameters:sessionParameters:)(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v54 = v8;
  v10 = v9;
  v51 = a6;
  v49 = a5;
  v52 = a4;
  v50 = a3;
  v43 = a2;
  v11 = *(*(type metadata accessor for MLActivityClassifier.ModelParameters(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v44 = v34;
  v53 = *a1;
  v55 = *(a1 + 8);
  v9[2] = 0xD000000000000013;
  v9[3] = "ot found in Configuration" + 0x8000000000000000;
  v14 = OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters;
  *(v9 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 48) = 0;
  *(v9 + v14 + 32) = 0;
  *(v9 + v14 + 16) = 0;
  *(v9 + v14) = 0;
  v15 = v9 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer;
  v16 = type metadata accessor for MLActivityClassifier.Trainer(0);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v17 = v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter;
  v18 = type metadata accessor for TrainingTablePrinter(0);
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingDataSamples) = 0;
  *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_validationDataSamples) = 0;
  *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_classLabels) = 0;
  v39 = v53;
  v40 = v55;
  v19 = v43;
  v20 = v54;
  MLActivityClassifier.ModelParameters.generateTables(trainingData:featureColumns:labelColumn:recordingFileColumn:)(&v45, &v47, &v39, v43, v50, v52, 0, v49, v51);
  v54 = v20;
  if (v20)
  {
    v19;
    v52;
    v51;
    outlined destroy of MLActivityClassifier.ModelParameters(a8, type metadata accessor for MLTrainingSessionParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLActivityClassifier.ModelParameters);
    outlined consume of Result<_DataTable, Error>(v53, v55);
    v10[3];
    v21 = *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 16);
    v22 = *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 32);
    v23 = *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 48);
    v35 = *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters);
    v36 = v21;
    v37 = v22;
    v38 = v23;
    outlined release of MLActivityClassifier.PersistentParameters?(&v35, outlined consume of MLActivityClassifier.PersistentParameters?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter, &demangling cache variable for type metadata for TrainingTablePrinter?);
    *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingDataSamples);
    *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_validationDataSamples);
    *(v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_classLabels);
    v24 = type metadata accessor for ActivityClassifierTrainingSessionDelegate(0);
    swift_deallocPartialClassInstance(v10, v24, *(*v10 + 48), *(*v10 + 52));
  }

  else
  {
    v25 = (v10 + v14);
    outlined consume of Result<_DataTable, Error>(v53, v55);
    *&v35 = v45;
    BYTE8(v35) = v46;
    v41 = v47;
    v42 = v48;
    v26 = v44;
    outlined init with copy of MLTrainingSessionParameters(a7, v44, type metadata accessor for MLActivityClassifier.ModelParameters);
    MLActivityClassifier.PersistentParameters.init(trainingData:validationData:featureColumnNames:labelColumnName:recordingFileColumn:modelParameters:)(&v35, &v41, v19, v50, v52, v49, v51, v26);
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLActivityClassifier.ModelParameters);
    v27 = *v25;
    v28 = v25[1];
    v29 = v25[2];
    v38 = v25[3];
    v37 = v29;
    v36 = v28;
    v35 = v27;
    v30 = v34[0];
    v31 = v34[1];
    v32 = v34[3];
    v25[2] = v34[2];
    v25[1] = v31;
    *v25 = v30;
    v25[3] = v32;
    outlined release of MLActivityClassifier.PersistentParameters?(&v35, outlined consume of MLActivityClassifier.PersistentParameters?);
    outlined init with take of MLClassifierMetrics(a8, v10 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  }

  return v10;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActivityClassifierTrainingSessionDelegate.setUp()()
{
  v69 = v0;
  v79 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v2 = *(*(v79 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v82 = &v65;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v89 = &v65;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = alloca(v8);
  v12 = alloca(v8);
  v78 = &v65;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActivityClassifier.Trainer?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v80 = &v65;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v81 = &v65;
  v18 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v19 = *(*(v18 - 1) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v22 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = alloca(v23);
  v27 = alloca(v23);
  v28 = *(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters);
  v29 = *(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 16);
  v30 = *(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 48);
  v67 = *(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 32);
  v65 = v28;
  v66 = v29;
  v68 = v30;
  if (v67)
  {
    v85 = v22;
    v84 = &v65;
    v83 = &v65;
    v93 = v1;
    v71 = *(&v68 + 1);
    v74 = v68;
    v73 = *(&v67 + 1);
    v91 = DWORD2(v66);
    v72 = v65;
    *&v65 = 0;
    v31 = v66;
    v90 = BYTE8(v65);
    BYTE8(v65) = -1;
    v75 = v18[6];
    v77 = v18[7];
    v76 = v18[8];
    v32 = &v65 + v18[5];
    v88 = &v65;
    v70 = v67;
    v33 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
    swift_storeEnumTagMultiPayload(v32, v33, 2);
    v34 = v65;
    v92 = DWORD2(v65);
    outlined release of MLActivityClassifier.PersistentParameters?(&v65, outlined copy of MLActivityClassifier.PersistentParameters?);
    v35 = v91;
    outlined copy of MLDataTable?(v31, v91);
    outlined consume of MLDataTable?(v34, v92);
    *&v65 = v31;
    BYTE8(v65) = v35;
    v36 = v35;
    v37 = v77;
    *(&v65 + v77) = v74;
    *(&v65 + v37 + 8) = 0;
    v38 = v75;
    *(&v65 + v75) = v73;
    *(&v65 + v38 + 8) = 0;
    v39 = v76;
    *(&v65 + v76) = v71;
    *(&v65 + v39 + 8) = 0;
    v40 = v72;
    v86 = v72;
    v41 = v90;
    LOBYTE(v87) = v90 & 1;
    v94 = v31;
    LOBYTE(v95) = v36;
    outlined copy of MLDataTable?(v31, v36);
    outlined copy of Result<_DataTable, Error>(v40, v41);
    v42 = v88;
    v43 = v69;
    static MLActivityClassifier.validateAndConvertParameters(parameters:featureColumns:trainingTable:validationTable:)(&v65, v70, &v86, &v94);
    if (v43)
    {
      outlined release of MLActivityClassifier.PersistentParameters?(&v65, outlined consume of MLActivityClassifier.PersistentParameters?);
      outlined consume of MLDataTable?(v94, v95);
      outlined consume of Result<_DataTable, Error>(v86, v87);
      outlined destroy of MLActivityClassifier.ModelParameters(&v65, type metadata accessor for MLActivityClassifier.ModelParameters);
    }

    else
    {
      outlined consume of MLDataTable?(v94, v95);
      outlined consume of Result<_DataTable, Error>(v86, v87);
      outlined destroy of MLActivityClassifier.ModelParameters(&v65, type metadata accessor for MLActivityClassifier.ModelParameters);
      v46 = v79;
      v47 = v81;
      outlined init with copy of MLTrainingSessionParameters(v42, v81 + *(v79 + 20), type metadata accessor for MLActivityClassifier.Configuration);
      *v47 = 0xD00000000000001BLL;
      *(v47 + 1) = "missed_predicting_this" + 0x8000000000000000;
      *(v47 + *(v46 + 24)) = 0;
      __swift_storeEnumTagSinglePayload(v47, 0, 1, v46);
      v48 = v93 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer;
      swift_beginAccess(v93 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer, &v86, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v47, v48, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
      swift_endAccess(&v86);
      v49 = v48;
      v50 = v80;
      v51 = v46;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v49, v80, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
      if (__swift_getEnumTagSinglePayload(v50, 1, v46))
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
        v52 = 0;
        v53 = type metadata accessor for DataFrame(0);
        v54 = v89;
        __swift_storeEnumTagSinglePayload(v89, 1, 1, v53);
      }

      else
      {
        v55 = v50;
        v56 = v50;
        v57 = v82;
        outlined init with copy of MLTrainingSessionParameters(v55, v82, type metadata accessor for MLActivityClassifier.Trainer);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v56, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
        v58 = v84;
        outlined init with copy of MLTrainingSessionParameters(v57 + *(v51 + 20), v84, type metadata accessor for MLActivityClassifier.Configuration);
        outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for MLActivityClassifier.Trainer);
        v54 = v89;
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v58 + *(v85 + 48), v89, &demangling cache variable for type metadata for DataFrame?);
        outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLActivityClassifier.Configuration);
        v59 = type metadata accessor for DataFrame(0);
        v52 = __swift_getEnumTagSinglePayload(v54, 1, v59) != 1;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &demangling cache variable for type metadata for DataFrame?);
      v60 = v78;
      static MLActivityClassifier.makeTablePrinter(hasValidation:)(v52);
      v61 = type metadata accessor for TrainingTablePrinter(0);
      __swift_storeEnumTagSinglePayload(v60, 0, 1, v61);
      v62 = v93 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter;
      swift_beginAccess(v93 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter, &v86, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v60, v62, &demangling cache variable for type metadata for TrainingTablePrinter?);
      swift_endAccess(&v86);
      v63 = v62;
      v64 = v83;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v63, v83, &demangling cache variable for type metadata for TrainingTablePrinter?);
      if (__swift_getEnumTagSinglePayload(v64, 1, v61) == 1)
      {
        BUG();
      }

      TrainingTablePrinter.beginTable()();
      outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for TrainingTablePrinter);
      ActivityClassifierTrainingSessionDelegate.setupCachedSamples()();
      outlined destroy of MLActivityClassifier.ModelParameters(v88, type metadata accessor for MLActivityClassifier.Configuration);
      outlined release of MLActivityClassifier.PersistentParameters?(&v65, outlined consume of MLActivityClassifier.PersistentParameters?);
    }
  }

  else
  {
    v44 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v44, 0, 0);
    *v45 = 0xD000000000000061;
    *(v45 + 8) = "tylized validation result" + 0x8000000000000000;
    *(v45 + 16) = 0;
    *(v45 + 32) = 0;
    *(v45 + 48) = 0;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActivityClassifierTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v85 = v1;
  v113 = v2;
  rawValue = from._rawValue;
  v92 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v3 = *(*(v92 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v94 = &v81;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v106 = &v81;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v90 = &v81;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v91 = &v81;
  v87 = type metadata accessor for URL(0);
  v88 = *(v87 - 8);
  v14 = *(v88 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v86 = &v81;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActivityClassifier.Trainer?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v93 = &v81;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v105 = &v81;
  v112 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v22 = *(*(v112 - 1) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v96 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v25 = *(*(v96 - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v95 = &v81;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v89 = &v81;
  v30 = alloca(v25);
  v31 = alloca(v25);
  v104 = &v81;
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v35 = type metadata accessor for MLCheckpoint(0);
  v36 = *(*(v35 - 8) + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  specialized BidirectionalCollection.last.getter(rawValue);
  if (__swift_getEnumTagSinglePayload(&v81, 1, v35) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v81, &demangling cache variable for type metadata for MLCheckpoint?);
    v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
    *v40 = 0xD00000000000001DLL;
    *(v40 + 8) = "reated." + 0x8000000000000000;
    *(v40 + 16) = 0;
    *(v40 + 32) = 0;
    *(v40 + 48) = 0;
    swift_willThrow();
    return;
  }

  outlined init with take of MLClassifierMetrics(&v81, &v81, type metadata accessor for MLCheckpoint);
  v41 = *(v113 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters);
  v42 = *(v113 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 16);
  v43 = *(v113 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 48);
  v83 = *(v113 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 32);
  v81 = v41;
  v82 = v42;
  v84 = v43;
  if (!v83)
  {
    v57 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v57, 0, 0);
    *v58 = 0xD000000000000061;
    *(v58 + 8) = "tylized validation result" + 0x8000000000000000;
    *(v58 + 16) = 0;
    *(v58 + 32) = 0;
    *(v58 + 48) = 0;
    swift_willThrow();
    v61 = &v81;
    goto LABEL_8;
  }

  rawValue = &v81;
  v97 = *(&v84 + 1);
  v100 = v84;
  v99 = *(&v83 + 1);
  v110 = DWORD2(v82);
  v98 = v81;
  *&v81 = 0;
  v44 = v82;
  v109 = BYTE8(v81);
  BYTE8(v81) = -1;
  v101 = v112[6];
  v103 = v112[7];
  v102 = v112[8];
  v45 = &v81 + v112[5];
  v112 = v83;
  v46 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  swift_storeEnumTagMultiPayload(v45, v46, 2);
  v47 = v81;
  v111 = DWORD2(v81);
  outlined release of MLActivityClassifier.PersistentParameters?(&v81, outlined copy of MLActivityClassifier.PersistentParameters?);
  v48 = v110;
  outlined copy of MLDataTable?(v44, v110);
  outlined consume of MLDataTable?(v47, v111);
  *&v81 = v44;
  BYTE8(v81) = v48;
  v49 = v48;
  v50 = v103;
  *(&v81 + v103) = v100;
  *(&v81 + v50 + 8) = 0;
  v51 = v101;
  *(&v81 + v101) = v99;
  *(&v81 + v51 + 8) = 0;
  v52 = v102;
  *(&v81 + v102) = v97;
  *(&v81 + v52 + 8) = 0;
  v53 = v98;
  v107 = v98;
  v54 = v109;
  LOBYTE(v108) = v109 & 1;
  v114 = v44;
  LOBYTE(v115) = v49;
  outlined copy of MLDataTable?(v44, v49);
  outlined copy of Result<_DataTable, Error>(v53, v54);
  v55 = v104;
  v56 = v85;
  static MLActivityClassifier.validateAndConvertParameters(parameters:featureColumns:trainingTable:validationTable:)(&v81, v112, &v107, &v114);
  if (v56)
  {
    outlined release of MLActivityClassifier.PersistentParameters?(&v81, outlined consume of MLActivityClassifier.PersistentParameters?);
    outlined consume of MLDataTable?(v114, v115);
    outlined consume of Result<_DataTable, Error>(v107, v108);
    outlined destroy of MLActivityClassifier.ModelParameters(&v81, type metadata accessor for MLActivityClassifier.ModelParameters);
    v61 = rawValue;
LABEL_8:
    outlined destroy of MLActivityClassifier.ModelParameters(v61, type metadata accessor for MLCheckpoint);
    return;
  }

  outlined consume of MLDataTable?(v114, v115);
  outlined consume of Result<_DataTable, Error>(v107, v108);
  outlined destroy of MLActivityClassifier.ModelParameters(&v81, type metadata accessor for MLActivityClassifier.ModelParameters);
  v59 = v86;
  (*(v88 + 16))(v86, rawValue, v87);
  v60 = v89;
  outlined init with copy of MLTrainingSessionParameters(v55, v89, type metadata accessor for MLActivityClassifier.Configuration);
  MLActivityClassifier.Trainer.init(checkpoint:configuration:)(v59, v60);
  v62 = v105;
  v63 = v92;
  __swift_storeEnumTagSinglePayload(v105, 0, 1, v92);
  v64 = v113 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer;
  swift_beginAccess(v113 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer, &v107, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v62, v64, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
  swift_endAccess(&v107);
  v65 = v64;
  v66 = v63;
  v67 = v93;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, v93, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
  if (__swift_getEnumTagSinglePayload(v67, 1, v66))
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
    v68 = 0;
    v69 = type metadata accessor for DataFrame(0);
    v70 = v106;
    __swift_storeEnumTagSinglePayload(v106, 1, 1, v69);
  }

  else
  {
    v71 = v67;
    v72 = v67;
    v73 = v94;
    outlined init with copy of MLTrainingSessionParameters(v71, v94, type metadata accessor for MLActivityClassifier.Trainer);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v72, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
    v74 = v95;
    outlined init with copy of MLTrainingSessionParameters(v73 + *(v66 + 20), v95, type metadata accessor for MLActivityClassifier.Configuration);
    outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLActivityClassifier.Trainer);
    v70 = v106;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74 + *(v96 + 48), v106, &demangling cache variable for type metadata for DataFrame?);
    outlined destroy of MLActivityClassifier.ModelParameters(v74, type metadata accessor for MLActivityClassifier.Configuration);
    v75 = type metadata accessor for DataFrame(0);
    v68 = __swift_getEnumTagSinglePayload(v70, 1, v75) != 1;
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v70, &demangling cache variable for type metadata for DataFrame?);
  v76 = v91;
  static MLActivityClassifier.makeTablePrinter(hasValidation:)(v68);
  v77 = type metadata accessor for TrainingTablePrinter(0);
  __swift_storeEnumTagSinglePayload(v76, 0, 1, v77);
  v78 = v113 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter;
  swift_beginAccess(v113 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter, &v107, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v76, v78, &demangling cache variable for type metadata for TrainingTablePrinter?);
  swift_endAccess(&v107);
  v79 = v78;
  v80 = v90;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v79, v90, &demangling cache variable for type metadata for TrainingTablePrinter?);
  if (__swift_getEnumTagSinglePayload(v80, 1, v77) == 1)
  {
    BUG();
  }

  TrainingTablePrinter.beginTable()();
  outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for TrainingTablePrinter);
  ActivityClassifierTrainingSessionDelegate.setupCachedSamples()();
  outlined release of MLActivityClassifier.PersistentParameters?(&v81, outlined consume of MLActivityClassifier.PersistentParameters?);
  outlined destroy of MLActivityClassifier.ModelParameters(v104, type metadata accessor for MLActivityClassifier.Configuration);
  outlined destroy of MLActivityClassifier.ModelParameters(rawValue, type metadata accessor for MLCheckpoint);
}

uint64_t ActivityClassifierTrainingSessionDelegate.setupCachedSamples()()
{
  v136 = v0;
  v122 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  v2 = *(*(v122 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v114 = v106;
  v135 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v115 = *(v135 - 8);
  v5 = *(v115 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v123 = v106;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v116 = v106;
  v10 = *(*(type metadata accessor for MLActivityClassifier.DataBatcher(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v118 = v106;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v131 = v106;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v108 = v106;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v128 = v106;
  v129 = type metadata accessor for DataFrame(0);
  v132 = *(v129 - 8);
  v20 = *(v132 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v117 = v106;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v127 = v106;
  v25 = alloca(v20);
  v26 = alloca(v20);
  v124 = v106;
  v27 = alloca(v20);
  v28 = alloca(v20);
  v133 = v106;
  v29 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v134 = v106;
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActivityClassifier.Trainer?) - 8) + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v113 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v36 = *(*(v113 - 8) + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v125 = v106;
  v39 = alloca(v36);
  v40 = alloca(v36);
  v130 = v106;
  v126 = v1;
  v41 = v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer;
  swift_beginAccess(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer, v106, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, v106, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
  if (__swift_getEnumTagSinglePayload(v106, 1, v29))
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v106, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
    v42 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v42, 0, 0);
    *v43 = 0xD00000000000001ELL;
    *(v43 + 8) = "Training samples are missing" + 0x8000000000000000;
    *(v43 + 16) = 0;
    *(v43 + 32) = 0;
    *(v43 + 48) = 0;
    return swift_willThrow();
  }

  v45 = v134;
  outlined init with copy of MLTrainingSessionParameters(v106, v134, type metadata accessor for MLActivityClassifier.Trainer);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v106, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
  v46 = v125;
  outlined init with copy of MLTrainingSessionParameters(v45 + *(v29 + 20), v125, type metadata accessor for MLActivityClassifier.Configuration);
  outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLActivityClassifier.Trainer);
  v47 = v46;
  v48 = v130;
  outlined init with take of MLClassifierMetrics(v47, v130, type metadata accessor for MLActivityClassifier.Configuration);
  v49 = v128;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v48 + *(v113 + 44), v128, &demangling cache variable for type metadata for DataFrame?);
  v50 = v129;
  v51 = v48;
  if (__swift_getEnumTagSinglePayload(v49, 1, v129) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v49, &demangling cache variable for type metadata for DataFrame?);
    v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
    *v53 = 0xD000000000000039;
    *(v53 + 8) = "Model configuration is not set" + 0x8000000000000000;
    *(v53 + 16) = 0;
    *(v53 + 32) = 0;
    *(v53 + 48) = 0;
    swift_willThrow();
    v54 = v48;
    return outlined destroy of MLActivityClassifier.ModelParameters(v54, type metadata accessor for MLActivityClassifier.Configuration);
  }

  v55 = v50;
  v56 = v132;
  v57 = v133;
  v58 = v49;
  v59 = v55;
  v110 = *(v132 + 32);
  v110(v133, v58, v55);
  v111 = *(v56 + 16);
  v111(v124, v57, v59);
  v120 = v51[8];
  v60 = v51[9];
  v119 = v51[6];
  v61 = v51[7];
  v125 = v51[4];
  v62 = v51[5];

  v121 = v61;
  v63 = v61;
  v64 = v119;
  v109 = v62;
  v65 = v136;
  MLActivityClassifier.DataBatcher.init(input:sessionIdColumn:labelColumn:featureColumns:windowSize:sortSessions:mode:)(v124, v120, v60, v119, v63, v62, v125, 0, 0);
  v134 = v65;
  if (v65)
  {
    goto LABEL_19;
  }

  v112 = v60;
  v66 = v116;
  DataFrame.subscript.getter(v64, v121, &type metadata for String);
  v67 = v135;
  (*(v115 + 16))(v123, v66, v135);
  v68 = lazy protocol witness table accessor for type Column<String> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &protocol conformance descriptor for Column<A>);
  v69 = v114;
  dispatch thunk of Sequence.makeIterator()(v67, v68);
  v122 = &v69[*(v122 + 36)];
  v123 = lazy protocol witness table accessor for type Column<String> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &protocol conformance descriptor for Column<A>);
  v136 = _swiftEmptyArrayStorage;
LABEL_8:
  v70 = v114;
  v71 = v122;
  v72 = v123;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v135, v72);
    if (*v71 == v107[0])
    {
      break;
    }

    v128 = dispatch thunk of Collection.subscript.read(v107, v71, v135, v72);
    v124 = *v73;
    v74 = v73[1];

    (v128)(v107, 0);
    dispatch thunk of Collection.formIndex(after:)(v71, v135, v72);
    if (v74)
    {
      v75 = v124;
      if (!swift_isUniquelyReferenced_nonNull_native(v136))
      {
        v136 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v136[2] + 1, 1, v136);
      }

      v76 = v136[2];
      v77 = v136[3];
      v78 = v76 + 1;
      if (v77 >> 1 <= v76)
      {
        v128 = (v76 + 1);
        v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v77 >= 2, v76 + 1, 1, v136);
        v78 = v128;
        v136 = v81;
      }

      v79 = v136;
      v136[2] = v78;
      v80 = 2 * v76;
      v79[v80 + 4] = v75;
      v79[v80 + 5] = v74;
      goto LABEL_8;
    }
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v70, &demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  (*(v115 + 8))(v116, v135);
  v82 = v136;
  v83 = v134;
  v84 = specialized Sequence.sorted(by:)(v136, specialized closure #1 in Sequence<>.uniqued(), 0);
  v82;
  v85 = OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_classLabels;
  v86 = v126;
  v87 = *(v126 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_classLabels);
  *(v126 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_classLabels) = v84;
  v87;
  v135 = v85;
  v88 = *(v86 + v85);
  if (!v88)
  {
    BUG();
  }

  v51 = v130;
  v89 = v131;
  v90 = MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(v130, v88);
  v134 = v83;
  if (v83)
  {
    v88;
    outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLActivityClassifier.DataBatcher);
LABEL_19:
    (*(v132 + 8))(v133, v129);
    return outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLActivityClassifier.Configuration);
  }

  v91 = v90;
  v88;
  v92 = *(v126 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingDataSamples);
  *(v126 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingDataSamples) = v91;
  v92;
  v93 = v108;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v51 + *(v113 + 48), v108, &demangling cache variable for type metadata for DataFrame?);
  v94 = v129;
  if (__swift_getEnumTagSinglePayload(v93, 1, v129) != 1)
  {
    v95 = v127;
    v110(v127, v93, v94);
    v111(v117, v95, v94);
    v96 = v112;

    v97 = v121;

    v98 = v109;

    v99 = v134;
    MLActivityClassifier.DataBatcher.init(input:sessionIdColumn:labelColumn:featureColumns:windowSize:sortSessions:mode:)(v117, v120, v96, v119, v97, v98, v125, 0, 1);
    if (v99)
    {
      v100 = *(v132 + 8);
      v100(v127, v94);
      outlined destroy of MLActivityClassifier.ModelParameters(v131, type metadata accessor for MLActivityClassifier.DataBatcher);
      v100(v133, v94);
    }

    else
    {
      v101 = v118;
      v102 = *(v126 + v135);
      if (!v102)
      {
        BUG();
      }

      v135 = MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(v130, v102);
      v102;
      outlined destroy of MLActivityClassifier.ModelParameters(v101, type metadata accessor for MLActivityClassifier.DataBatcher);
      v103 = *(v132 + 8);
      v104 = v129;
      v103(v127, v129);
      outlined destroy of MLActivityClassifier.ModelParameters(v131, type metadata accessor for MLActivityClassifier.DataBatcher);
      v103(v133, v104);
      v105 = *(v126 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_validationDataSamples);
      *(v126 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_validationDataSamples) = v135;
      v105;
    }

    v54 = v130;
    return outlined destroy of MLActivityClassifier.ModelParameters(v54, type metadata accessor for MLActivityClassifier.Configuration);
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v131, type metadata accessor for MLActivityClassifier.DataBatcher);
  (*(v132 + 8))(v133, v94);
  outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLActivityClassifier.Configuration);
  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v93, &demangling cache variable for type metadata for DataFrame?);
}

Swift::Int_optional __swiftcall ActivityClassifierTrainingSessionDelegate.itemCount(phase:)(CreateML::MLPhase phase)
{
  switch(*phase)
  {
    case 0:
    case 3:
    case 4:
      v2 = 1;
      v3.value = 0;
      break;
    case 1:
      v3.value = 0;
      v2 = 0;
      break;
    case 2:
      v4 = OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_sessionParameters + v1;
      v2 = 0;
      v3.value = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 28) + v4);
      break;
  }

  v3.is_nil = v2;
  return v3;
}

Swift::tuple_Int_metrics_OpaquePointer_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActivityClassifierTrainingSessionDelegate.train(from:)(Swift::Int from)
{
  v33 = type metadata accessor for TrainingTablePrinter(0);
  v3 = *(*(v33 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v39 = &v29;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v34 = &v29;
  v9 = v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_sessionParameters;
  v10 = type metadata accessor for MLTrainingSessionParameters(0);
  v11 = *(*(v10 + 20) + v9);
  if (__OFADD__(v11, from))
  {
    BUG();
  }

  v12 = *(v9 + *(v10 + 28));
  v13 = v12 - from;
  if (__OFSUB__(v12, from))
  {
    BUG();
  }

  if (v11 < v13)
  {
    v13 = v11;
  }

  if (v13 <= 0)
  {
    LOBYTE(v15) = 1;
    v14 = _swiftEmptyDictionarySingleton;
    v23 = 0;
  }

  else
  {
    v42 = v12;
    v41 = v11 + from;
    v44 = v13;
    v40 = from;
    v46 = v1;
    v32 = OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingDataSamples;
    v35 = OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_validationDataSamples;
    v36 = v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer;
    v37 = v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter;
    swift_beginAccess(v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter, v30, 0, 0);
    v14 = (&dword_0 + 1);
    v38 = v2;
    while (1)
    {
      v15 = *(v2 + v32);
      if (!v15)
      {
        v15 = "Model has not been trained" + 0x8000000000000000;
        v24 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v24, 0, 0);
        *v25 = 0xD00000000000001CLL;
        *(v25 + 8) = "Model has not been trained" + 0x8000000000000000;
        *(v25 + 16) = 0;
        *(v25 + 32) = 0;
        *(v25 + 48) = 0;
        v23 = swift_willThrow();
        goto LABEL_21;
      }

      v43 = v14;
      v14 = *(v2 + v35);
      v16 = v36;
      swift_beginAccess(v36, v31, 33, 0);
      v17 = type metadata accessor for MLActivityClassifier.Trainer(0);
      if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
      {
        BUG();
      }

      v18 = v46;
      metrics._rawValue = MLActivityClassifier.Trainer.iterateTraining(using:validationSamples:)(v15, v14);
      swift_endAccess(v31);
      v46 = v18;
      if (v18)
      {
        v15;
        v23 = v14;
        goto LABEL_21;
      }

      v14;
      v15;
      v19 = v34;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, v34, &demangling cache variable for type metadata for TrainingTablePrinter?);
      if (__swift_getEnumTagSinglePayload(v19, 1, v33))
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for TrainingTablePrinter?);
        v20 = v43;
      }

      else
      {
        v21 = v39;
        outlined init with copy of MLTrainingSessionParameters(v19, v39, type metadata accessor for TrainingTablePrinter);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for TrainingTablePrinter?);
        v20 = v43;
        if (__OFADD__(v43, v40))
        {
          BUG();
        }

        TrainingTablePrinter.print(iteration:metrics:)(v43 + v40, metrics);
        outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for TrainingTablePrinter);
      }

      v2 = v38;
      if (v44 == v20)
      {
        break;
      }

      metrics._rawValue;
      v22 = __OFADD__(1, v20);
      v14 = (v20 + 1);
      if (v22)
      {
        BUG();
      }
    }

    LOBYTE(v15) = v41 >= v42;
    rawValue = metrics._rawValue;
    v14 = specialized _dictionaryUpCast<A, B, C, D>(_:)(metrics._rawValue);
    rawValue;
    v23 = v44;
  }

LABEL_21:
  v27 = v14;
  v28 = v15;
  result.metrics._rawValue = v27;
  result._0 = v23;
  result.finished = v28;
  return result;
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ActivityClassifierTrainingSessionDelegate.evaluate(from:)(Swift::Int from)
{
  v25 = v1;
  v3 = type metadata accessor for TrainingTablePrinter(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v24 = v21;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v23 = v2;
  v10 = v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter;
  swift_beginAccess(v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter, v21, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v21, &demangling cache variable for type metadata for TrainingTablePrinter?);
  if (__swift_getEnumTagSinglePayload(v21, 1, v3))
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for TrainingTablePrinter?);
  }

  else
  {
    v11 = v24;
    outlined init with copy of MLTrainingSessionParameters(v21, v24, type metadata accessor for TrainingTablePrinter);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for TrainingTablePrinter?);
    static os_log_type_t.info.getter(v21);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v13 = swift_allocObject(v12, 72, 7);
    v14 = v13;
    v13[2] = 1;
    v13[3] = 2;
    v13[7] = &type metadata for Int;
    v13[8] = &protocol witness table for Int;
    v13[4] = 3;
    os_log(_:dso:log:type:_:)("event: %lu");
    v14;
    outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for TrainingTablePrinter);
  }

  v15 = ActivityClassifierTrainingSessionDelegate.trainer.modify(v22);
  v17 = v16;
  v18 = type metadata accessor for MLActivityClassifier.Trainer(0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18))
  {
    (v15)(v22, 0);
  }

  else
  {
    if (!*(v17 + *(v18 + 24)))
    {
      BUG();
    }

    MLActivityClassifier.Trainer.ModelContainer.compileModel()();
    (v15)(v22, v19 != 0);
  }

  v20._0 = 1;
  v20.finished = 1;
  return v20;
}

uint64_t ActivityClassifierTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, _BYTE *a2)
{
  v4 = v2;
  v20 = a1;
  v5 = 0xEB0000000064657ALL;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActivityClassifier.Trainer?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v19 = v18;
  switch(*a2)
  {
    case 0:
      v21 = v2;
      v9 = 0x696C616974696E69;
      break;
    case 1:
      v21 = v2;
      v9 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0;
      goto LABEL_9;
    case 3:
      v21 = v2;
      v9 = 0x697461756C617665;
LABEL_7:
      v5 = 0xEA0000000000676ELL;
      break;
    case 4:
      v21 = v2;
      v5 = 0xEB00000000676E69;
      v9 = 0x636E657265666E69;
      break;
  }

  LODWORD(v10) = 0;
  v11 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v5, 0x676E696E69617274, 0xE800000000000000, 0);
  v5;
  v12 = (v11 & 1) == 0;
  v4 = v21;
  if (!v12)
  {
LABEL_9:
    v13 = OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer + v3;
    swift_beginAccess(v13, v18, 0, 0);
    v14 = v19;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v13, v19, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
    v10 = type metadata accessor for MLActivityClassifier.Trainer(0);
    if (__swift_getEnumTagSinglePayload(v14, 1, v10) == 1)
    {
      BUG();
    }

    if (*(v14 + *(v10 + 24)))
    {

      specialized _ModelCheckpoint<>.save(to:)(v20);

      if (!v4)
      {
        outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLActivityClassifier.Trainer);
        LOBYTE(v10) = 1;
        return v10;
      }
    }

    else
    {
      v15 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v15, 0, 0);
      *v16 = 0xD00000000000001ALL;
      *(v16 + 8) = "validationDataSamples" + 0x8000000000000000;
      *(v16 + 16) = 0;
      *(v16 + 32) = 0;
      *(v16 + 48) = 0;
      swift_willThrow();
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLActivityClassifier.Trainer);
  }

  return v10;
}

NSURL *ActivityClassifierTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 32))
  {
    return MLActivityClassifier.PersistentParameters.save(toSessionDirectory:)(a1);
  }

  v3 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v3, 0, 0);
  *v4 = 0xD000000000000030;
  *(v4 + 8) = "Feature Extractor" + 0x8000000000000000;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

NSURL *ActivityClassifierTrainingSessionDelegate.restore(from:phase:)(uint64_t a1)
{
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  (*(v4 + 16))(v23, a1, v3);
  result = MLActivityClassifier.PersistentParameters.init(sessionDirectory:)(v23);
  if (!v1)
  {
    v31[3] = v38;
    v31[2] = v37;
    v31[1] = v36;
    v31[0] = v35;
    v9 = (v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters);
    v10 = *(v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters);
    v11 = *(v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 16);
    v12 = *(v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 48);
    v33 = *(v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 32);
    v32[0] = v10;
    v32[1] = v11;
    v34 = v12;
    v13 = *(v2 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters);
    if (v33)
    {
      v23[1] = v9[1];
      v23[0] = v13;
      v24 = v33;
      v25 = *(v9 + 40);
      v26 = *(v9 + 7);
      v15 = v9[1];
      v16 = v9[2];
      v17 = v9[3];
      v27 = *v9;
      v14 = *&v27;
      v28 = v15;
      v29 = v16;
      v30 = v17;
      outlined retain of MLActivityClassifier.PersistentParameters(&v27);
      ActivityClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:phase:)(&v35, v23, v14);
      outlined release of MLActivityClassifier.PersistentParameters?(v32, outlined consume of MLActivityClassifier.PersistentParameters?);
      return outlined release of MLActivityClassifier.PersistentParameters(v31);
    }

    else
    {
      v18 = v9[1];
      v19 = v9[2];
      v30 = v9[3];
      v29 = v19;
      v28 = v18;
      v27 = v13;
      v20 = v36;
      v21 = v37;
      v22 = v38;
      *v9 = v35;
      v9[1] = v20;
      v9[2] = v21;
      v9[3] = v22;
      return outlined release of MLActivityClassifier.PersistentParameters?(&v27, outlined consume of MLActivityClassifier.PersistentParameters?);
    }
  }

  return result;
}

uint64_t ActivityClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:phase:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a2 + 48);
  if (*(a1 + 48) != v4)
  {
    v199 = lazy protocol witness table accessor for type Int and conformance Int();
    v271[1] = BinaryInteger.description.getter(&type metadata for Int, v199);
    *&v274 = v200;
    *&v275 = v4;
    v201 = BinaryInteger.description.getter(&type metadata for Int, v199);
    v203 = v202;
    v204 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v204, 0, 0);
    *v205 = 0x6953206863746142;
    *(v205 + 8) = 0xEA0000000000657ALL;
LABEL_149:
    *(v205 + 16) = v271[1];
    v206 = v274;
LABEL_151:
    *(v205 + 24) = v206;
    *(v205 + 32) = v201;
    *(v205 + 40) = v203;
    *(v205 + 48) = 3;
    return swift_willThrow();
  }

  v5 = *(a2 + 40);
  if (*(a1 + 40) != v5)
  {
    v271[1] = "metricsAttributesDictionary" + 0x8000000000000000;
    v207 = lazy protocol witness table accessor for type Int and conformance Int();
    *&v274 = BinaryInteger.description.getter(&type metadata for Int, v207);
    v278 = v208;
    *&v275 = v5;
    v201 = BinaryInteger.description.getter(&type metadata for Int, v207);
    v203 = v209;
    v210 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v210, 0, 0);
    *v205 = 0xD000000000000012;
    *(v205 + 8) = v271[1];
    *(v205 + 16) = v274;
    v206 = v278;
    goto LABEL_151;
  }

  v6 = *(a2 + 56);
  if (*(a1 + 56) != v6)
  {
    v211 = lazy protocol witness table accessor for type Int and conformance Int();
    v271[1] = BinaryInteger.description.getter(&type metadata for Int, v211);
    *&v274 = v212;
    *&v275 = v6;
    v201 = BinaryInteger.description.getter(&type metadata for Int, v211);
    v203 = v213;
    v214 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v214, 0, 0);
    *v205 = 0xD000000000000016;
    *(v205 + 8) = "Number of Labels" + 0x8000000000000000;
    goto LABEL_149;
  }

  v271[1] = v3;
  v7 = *a1;
  v8 = *(a1 + 8);
  v271[0] = *(a1 + 32);
  v9 = *a2;
  v10 = *(a2 + 8);
  v258 = *(a2 + 32);
  v263 = v7;
  LOBYTE(v274) = v8 & 1;
  LOBYTE(v264) = v8 & 1;
  v267 = v8;
  v256 = v7;
  v260 = v8;
  outlined copy of Result<_DataTable, Error>(v7, v8);
  v11._countAndFlagsBits = 0x6C6562616CLL;
  v11._object = 0xE500000000000000;
  MLDataTable.subscript.getter(v11);
  outlined consume of Result<_DataTable, Error>(v263, v264);
  v263 = v275;
  LOBYTE(v264) = BYTE8(v275);
  v12 = Array<A>.init(_:)(&v263, a3);
  v263 = v9;
  LOBYTE(v278) = v10 & 1;
  LOBYTE(v264) = v10 & 1;
  v268 = v10;
  v257 = v9;
  v261 = v10;
  outlined copy of Result<_DataTable, Error>(v9, v10);
  v11._countAndFlagsBits = 0x6C6562616CLL;
  v11._object = 0xE500000000000000;
  MLDataTable.subscript.getter(v11);
  outlined consume of Result<_DataTable, Error>(v263, v264);
  v263 = v275;
  LOBYTE(v264) = BYTE8(v275);
  v13 = Array<A>.init(_:)(&v263, a3);
  v14 = v13;
  LOBYTE(v9) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v12, v13);
  v12;
  v14;
  if ((v9 & 1) == 0)
  {
    goto LABEL_167;
  }

  v263 = v256;
  LOBYTE(v264) = v274;
  outlined copy of Result<_DataTable, Error>(v256, v260);
  v15._countAndFlagsBits = 0x5F6E6F6973736573;
  v15._object = 0xEA00000000006469;
  MLDataTable.subscript.getter(v15);
  outlined consume of Result<_DataTable, Error>(v263, v264);
  v263 = v275;
  LOBYTE(v264) = BYTE8(v275);
  v16 = Array<A>.init(_:)(&v263, a3);
  v263 = v257;
  LOBYTE(v264) = v278;
  outlined copy of Result<_DataTable, Error>(v257, v261);
  v15._countAndFlagsBits = 0x5F6E6F6973736573;
  v15._object = 0xEA00000000006469;
  MLDataTable.subscript.getter(v15);
  outlined consume of Result<_DataTable, Error>(v263, v264);
  v263 = v275;
  LOBYTE(v264) = BYTE8(v275);
  v17 = Array<A>.init(_:)(&v263, a3);
  v18 = v17;
  ML11MLDataValueO_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v16, v17);
  v16;
  v18;
  if ((ML11MLDataValueO_Tt1g5 & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v271[0], v258) & 1) == 0)
  {
    goto LABEL_167;
  }

  result = v258[2];
  v245 = result;
  if (!result)
  {
    return result;
  }

  v244 = v258 + 4;
  v249 = "ml.activityclassifier" + 0x8000000000000000;

  v21 = v258;
  v22 = 0;
  v250 = 0xD00000000000001FLL;
  v23 = v271[1];
  while (1)
  {
    if (v22 >= v21[2])
    {
      BUG();
    }

    v243 = v22;
    v24 = v244[2 * v22];
    v25 = v244[2 * v22 + 1];
    v273 = *&v25;
    v271[0] = v24;
    if (v267)
    {
      swift_willThrow();
      outlined copy of Result<_DataTable, Error>(v256, 1);

      object = 0;
LABEL_14:
      *&v275 = 0;
      *(&v275 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      SBYTE8(v275);
      *&v275 = v250;
      *(&v275 + 1) = v249;
      v28._countAndFlagsBits = v271[0];
      v28._object = v25;
      String.append(_:)(v28);
      v28._countAndFlagsBits = 34;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      *&v271[1] = v275;
      v29 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v30 = swift_allocError(&type metadata for MLCreateError, v29, 0, 0);
      *v31 = *&v271[1];
      a3 = 0.0;
      *(v31 + 16) = 0;
      *(v31 + 32) = 0;
      *(v31 + 48) = 1;
      outlined consume of Result<_DataTable, Error>(v256, v260);
      v32 = v30;
      v33 = 1;
LABEL_15:
      outlined consume of Result<_DataTable, Error>(v32, v33);
      v262 = _swiftEmptyArrayStorage;
      goto LABEL_16;
    }

    v26 = *(v256 + 16);
    outlined copy of Result<_DataTable, Error>(v256, 0);

    v27 = specialized String.withCString<A>(_:)(closure #1 in CMLTable.column(name:)partial apply, v26, v24, v25);
    if (v23)
    {
      v23;

      object = 0;
      goto LABEL_14;
    }

    v177 = v27;
    object = 0;

    outlined consume of Result<_DataTable, Error>(v256, 0);
    v178 = type metadata accessor for _UntypedColumn();
    v179 = swift_allocObject(v178, 24, 7);
    *(v179 + 16) = v177;
    outlined copy of Result<_DataTable, Error>(v179, 0);
    v180 = CMLColumn.size.getter();
    *&v274 = v179;
    outlined consume of Result<_DataTable, Error>(v179, 0);
    v278 = v180;
    if (v180 < 0)
    {
      BUG();
    }

    if (!v180)
    {
      v32 = v274;
      v33 = 0;
      goto LABEL_15;
    }

    v181 = 0;
    v182 = _swiftEmptyArrayStorage;
    do
    {
      v183 = v274;
      outlined copy of Result<_DataTable, Error>(v274, 0);
      _UntypedColumn.valueAtIndex(index:)(v181, a3);
      outlined consume of Result<_DataTable, Error>(v183, 0);
      *&v271[1] = v275;
      v184 = v276;
      v185 = v182;
      if (!swift_isUniquelyReferenced_nonNull_native(v182))
      {
        v185 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v182[2] + 1, 1, v182);
      }

      v186 = v185;
      v187 = v185[2];
      if (v185[3] >> 1 <= v187)
      {
        v186 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v185[3] >= 2uLL, v187 + 1, 1, v185);
      }

      ++v181;
      v186[2] = v187 + 1;
      v188 = 3 * v187;
      a3 = *&v271[1];
      *&v186[v188 + 4] = *&v271[1];
      LOBYTE(v186[v188 + 6]) = v184;
      v182 = v186;
    }

    while (v278 != v181);
    v262 = v186;
    outlined consume of Result<_DataTable, Error>(v274, 0);
LABEL_16:
    if (v268)
    {
      swift_willThrow();
      outlined copy of Result<_DataTable, Error>(v257, 1);
      v271[1] = 0;
      v34 = v271[0];
LABEL_20:
      *&v275 = 0;
      *(&v275 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      SBYTE8(v275);
      *&v275 = v250;
      *(&v275 + 1) = v249;
      v39._countAndFlagsBits = v34;
      v40 = LOBYTE(v273);
      *&v39._object = v273;
      String.append(_:)(v39);
      v39._countAndFlagsBits = 34;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);
      v274 = v275;
      v41 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v42 = swift_allocError(&type metadata for MLCreateError, v41, 0, 0);
      *v43 = v274;
      a3 = 0.0;
      *(v43 + 16) = 0;
      *(v43 + 32) = 0;
      *(v43 + 48) = 1;
      v40;
      outlined consume of Result<_DataTable, Error>(v257, v261);
      v44 = v42;
      v45 = 1;
LABEL_21:
      outlined consume of Result<_DataTable, Error>(v44, v45);
      v46 = _swiftEmptyArrayStorage;
      goto LABEL_22;
    }

    v35 = *(v257 + 16);
    outlined copy of Result<_DataTable, Error>(v257, 0);

    v34 = v271[0];
    v36 = LOBYTE(v273);
    v37 = object;
    v38 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v35, v271[0], *&v273);
    if (v37)
    {
      v37;

      v271[1] = 0;
      goto LABEL_20;
    }

    v189 = v38;
    v271[1] = 0;
    v36;

    outlined consume of Result<_DataTable, Error>(v257, 0);
    v190 = type metadata accessor for _UntypedColumn();
    v191 = swift_allocObject(v190, 24, 7);
    v191[2] = v189;
    outlined copy of Result<_DataTable, Error>(v191, 0);
    v192 = CMLColumn.size.getter();
    v278 = v191;
    outlined consume of Result<_DataTable, Error>(v191, 0);
    v271[0] = v192;
    if (v192 < 0)
    {
      BUG();
    }

    if (!v192)
    {
      v44 = v278;
      v45 = 0;
      goto LABEL_21;
    }

    v193 = 0;
    v46 = _swiftEmptyArrayStorage;
    do
    {
      v194 = v278;
      outlined copy of Result<_DataTable, Error>(v278, 0);
      _UntypedColumn.valueAtIndex(index:)(v193, a3);
      outlined consume of Result<_DataTable, Error>(v194, 0);
      v274 = v275;
      v195 = v276;
      if (!swift_isUniquelyReferenced_nonNull_native(v46))
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46[2] + 1, 1, v46);
      }

      v196 = v46[2];
      v197 = v46;
      if (v46[3] >> 1 <= v196)
      {
        v197 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46[3] >= 2uLL, v196 + 1, 1, v46);
      }

      v193 = (v193 + 1);
      v197[2] = v196 + 1;
      v46 = v197;
      v198 = 3 * v196;
      a3 = *&v274;
      *&v46[v198 + 4] = v274;
      LOBYTE(v46[v198 + 6]) = v195;
    }

    while (v271[0] != v193);
    outlined consume of Result<_DataTable, Error>(v278, 0);
LABEL_22:
    v47 = v262;
    v48 = v262[2];
    if (v48 != v46[2])
    {
      v262;
      v215 = v46;
      goto LABEL_166;
    }

    if (v48 && v262 != v46)
    {
      break;
    }

LABEL_126:
    v47;
    v46;
    v22 = v243 + 1;
    v21 = v258;
    v23 = v271[1];
    if (v243 + 1 == v245)
    {
      return v258;
    }
  }

  v49 = 0;
  v259 = v262[2];
  v252 = v46;
  while (2)
  {
    if (v49 >= v46[2])
    {
      BUG();
    }

    v50 = v47[3 * v49 + 4];
    v51 = v47[3 * v49 + 5];
    v271[0] = v46[3 * v49 + 4];
    v278 = v46[3 * v49 + 5];
    v52 = v46[3 * v49 + 6];
    v53 = LOBYTE(v47[3 * v49 + 6]);
    v242 = v49;
    switch(v53)
    {
      case 0:
        if (v52)
        {
          goto LABEL_162;
        }

        outlined consume of MLDataValue(v50, v51, 0);
        v54 = v271[0];
        outlined consume of MLDataValue(v271[0], v278, 0);
        if (v50 != v54)
        {
          goto LABEL_165;
        }

        goto LABEL_125;
      case 1:
        if (v52 != 1)
        {
          goto LABEL_162;
        }

        *&v274 = v50;
        v169 = v271[0];
        v273 = *v271;
        outlined consume of MLDataValue(v50, v51, 1);
        outlined consume of MLDataValue(v169, v278, 1);
        a3 = *&v274;
        if (*&v274 == v273)
        {
          goto LABEL_125;
        }

        goto LABEL_165;
      case 2:
        if (v52 == 2)
        {
          v61 = v271[0];
          if (v50 == v271[0] && v51 == v278)
          {
            v62 = 2;
            v63 = v51;
            outlined copy of MLDataValue(v50, v51, 2u);
            outlined copy of MLDataValue(v50, v63, 2u);
            outlined consume of MLDataValue(v50, v63, 2);
            v64 = v50;
            v65 = v63;
LABEL_123:
            outlined consume of MLDataValue(v64, v65, v62);
          }

          else
          {
            v174 = v278;
            v175 = v51;
            LOBYTE(v274) = _stringCompareWithSmolCheck(_:_:expecting:)(v50, v51, v271[0], v278, 0);
            outlined copy of MLDataValue(v61, v174, 2u);
            outlined copy of MLDataValue(v50, v175, 2u);
            v176 = v175;
            v48 = v259;
            outlined consume of MLDataValue(v50, v176, 2);
            outlined consume of MLDataValue(v271[0], v174, 2);
            if ((v274 & 1) == 0)
            {
              goto LABEL_165;
            }
          }

          goto LABEL_125;
        }

        v216 = v51;
        v55 = v51;
        goto LABEL_160;
      case 3:
        if (v52 != 3)
        {
          v55 = v51;
          swift_retain_n(v50, 2);
LABEL_161:
          v51 = v55;
LABEL_162:
          v218 = v52;
          LODWORD(v271[1]) = v52;
          v219 = v278;
          v220 = v51;
          outlined copy of MLDataValue(v271[0], v278, v218);
          outlined consume of MLDataValue(v50, v220, v53);
          outlined consume of MLDataValue(v271[0], v219, v271[1]);
          v221 = v50;
          v222 = v220;
          v223 = v53;
          goto LABEL_164;
        }

        v66 = v50;
        v67 = v50;
        v68 = v51;
        outlined copy of MLDataValue(v66, v51, 3u);
        v69 = v271[0];
        v70 = v278;
        outlined copy of MLDataValue(v271[0], v278, 3u);
        outlined copy of MLDataValue(v67, v68, 3u);
        outlined copy of MLDataValue(v69, v70, 3u);
        outlined copy of MLDataValue(v67, v68, 3u);
        outlined copy of MLDataValue(v69, v70, 3u);
        outlined copy of MLDataValue(v67, v68, 3u);
        v71 = CMLSequence.size.getter();
        if (CMLSequence.size.getter() < 0)
        {
          BUG();
        }

        v72 = CMLSequence.size.getter();
        v269 = v67;
        v266 = v68;
        outlined consume of MLDataValue(v67, v68, 3);
        if (v71 < 0 || v72 < v71)
        {
          BUG();
        }

        v73 = v271[0];

        v74 = CMLSequence.size.getter();
        if (CMLSequence.size.getter() < 0)
        {
          BUG();
        }

        v75 = CMLSequence.size.getter();
        outlined consume of MLDataValue(v73, v278, 3);
        if (v74 < 0 || v75 < v74)
        {
          BUG();
        }

        v76 = v269;
        if (v71 != v74)
        {
          goto LABEL_163;
        }

        v77 = CMLSequence.size.getter();
        if (CMLSequence.size.getter() < 0)
        {
          BUG();
        }

        v78 = CMLSequence.size.getter();
        outlined consume of MLDataValue(v76, v266, 3);
        if (v77 < 0 || v78 < v77)
        {
          BUG();
        }

        if (!v77)
        {
          v166 = v266;
          outlined consume of MLDataValue(v76, v266, 3);
          v167 = v271[0];
          v168 = v278;
          outlined consume of MLDataValue(v271[0], v278, 3);
          outlined consume of MLDataValue(v167, v168, 3);
          outlined consume of MLDataValue(v76, v166, 3);
          outlined consume of MLDataValue(v167, v168, 3);
          outlined consume of MLDataValue(v76, v166, 3);
          v48 = v259;
LABEL_125:
          v49 = v242 + 1;
          v47 = v262;
          v46 = v252;
          if (v242 + 1 == v48)
          {
            goto LABEL_126;
          }

          continue;
        }

        v265 = v77;

        v79 = v271[1];
        v80 = CMLSequence.value(at:)(0);
        v81 = v79;
        if (v79)
        {
          v229 = "CreateML/SequenceType.swift";
          v230 = 27;
          v239 = 36;
LABEL_196:
          v231 = v239;
          v232 = v81;
          goto LABEL_197;
        }

        v82 = v80;
        v83 = CMLFeatureValue.type.getter();
        v84 = v271[0];
        v248 = 0;
        switch(v83)
        {
          case 0:
            v85 = v82[2];

            v273 = COERCE_DOUBLE(specialized handling<A, B>(_:_:)(v85));
            v82;
            JUMPOUT(0x1E2E92);
          case 1:
            v121 = v82[2];

            specialized handling<A, B>(_:_:)(v121);
            v271[1] = *&a3;
            v82;
            JUMPOUT(0x1E31EDLL);
          case 2:

            v114 = CMLFeatureValue.stringValue()();
            v273 = *&v114._countAndFlagsBits;
            object = v114._object;
            if (!v115)
            {
              v82;
              JUMPOUT(0x1E311ELL);
            }

            v115;

            BUG();
          case 3:
            v116 = v82[2];

            v117 = specialized handling<A, B>(_:_:)(v116);
            if (!v117)
            {
              BUG();
            }

            v82;
            outlined consume of MLDataValue(v269, v266, 3);
            v118 = type metadata accessor for CMLSequence();
            *&v119 = COERCE_DOUBLE(swift_allocObject(v118, 25, 7));
            *(v119 + 16) = v117;
            v273 = *&v119;
            *(v119 + 24) = 1;
            v120 = 3;
            goto LABEL_77;
          case 4:
            v86 = v82[2];

            v87 = specialized handling<A, B>(_:_:)(v86);
            object = 0;
            v272 = v82;
            if (!v87)
            {
              BUG();
            }

            v88 = type metadata accessor for CMLDictionary();
            inited = swift_initStackObject(v88, v241);
            *(inited + 16) = v87;
            v254 = _swiftEmptyDictionarySingleton;
            swift_retain_n(inited, 2);
            v90 = 0;
            v273 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
            if (CMLDictionary.size.getter())
            {
              v91 = object;
              while (1)
              {
                v271[1] = CMLDictionary.keyAndValue(at:)(v90);
                *&v274 = v92;
                if (v91)
                {
                  v229 = "CreateML/DictionaryType.swift";
                  v230 = 29;
                  v231 = 75;
                  v232 = v91;
                  goto LABEL_197;
                }

                v90 = specialized RandomAccessCollection<>.index(after:)(v90);
                v93 = CMLFeatureValue.stringValue()();
                if (!v94)
                {
                  break;
                }

                v94;

                v95 = CMLDictionary.size.getter();
                v91 = 0;
                v96 = 0;
                if (v90 == v95)
                {
                  goto LABEL_108;
                }
              }

              countAndFlagsBits = v93._countAndFlagsBits;
              v98 = v93._object;
              object = 0;
              v253 = v90;
              v99 = v274;

              MLDataValue.init(_:)(v99, a3);

              v271[1] = *(&v275 + 1);
              *&v274 = v275;
              LOBYTE(v270) = v276;
              v275 = __PAIR128__(v98, countAndFlagsBits);
              LOBYTE(v276) = 2;
              v100 = __PAIR128__(v98, countAndFlagsBits);
              v101 = v273;
              specialized __RawDictionaryStorage.find<A>(_:)(v100, 2, a3);
              *&v100 = (v103 & 1) == 0;
              v104 = __OFADD__(*(*&v101 + 16), v100);
              v105 = *(*&v101 + 16) + v100;
              if (v104)
              {
                BUG();
              }

              v106 = v103;
              if (*(*&v101 + 24) < v105)
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v105, 1u);
                v101 = *&v254;
                v107 = *(&v275 + 1);
                specialized __RawDictionaryStorage.find<A>(_:)(v275, v276, a3);
                LOBYTE(v108) = v108 & 1;
                v109 = v106;
                LOBYTE(v109) = v106 & 1;
                if ((v106 & 1) != v108)
                {
                  goto LABEL_200;
                }
              }

              if ((v106 & 1) == 0)
              {
                *(*&v101 + 8 * (v102 >> 6) + 64) |= 1 << v102;
                v110 = *(*&v101 + 48);
                v111 = 24 * v102;
                v112 = v276;
                *(v110 + v111) = v275;
                *(v110 + v111 + 16) = v112;
                v113 = *(*&v101 + 56);
                *(v113 + v111) = v274;
                *(v113 + v111 + 8) = v271[1];
                *(v113 + v111 + 16) = v270;
                JUMPOUT(0x1E30D2);
              }

              v233 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
              swift_willThrow();
              v255[0] = v233;
              swift_errorRetain(v233);
              v234 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
              if (swift_dynamicCast(&demangling cache variable for type metadata for Error, v255, v234, &type metadata for _MergeError, 0))
              {
LABEL_202:
                v263 = static String._createEmpty(withInitialCapacity:)(30);
                v264 = v237;
                v238._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
                v238._countAndFlagsBits = 0xD00000000000001BLL;
                String.append(_:)(v238);
                _print_unlocked<A, B>(_:_:)(&v275, &v263, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
                v238._countAndFlagsBits = 39;
                v238._object = 0xE100000000000000;
                String.append(_:)(v238);
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v263, v264, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
                BUG();
              }

              v235 = v270;
LABEL_204:
              outlined consume of MLDataValue(v274, v271[1], v235);
              outlined consume of MLDataValue(v275, *(&v275 + 1), v276);

              v255[0];
              v229 = "Swift/Dictionary.swift";
              v230 = 22;
              v231 = 489;
              v232 = v233;
LABEL_197:
              swift_unexpectedError(v232, v229, v230, 1, v231);
              BUG();
            }

            v96 = object;
LABEL_108:
            v81 = v96;
            v272;
            inited;
            outlined consume of MLDataValue(v269, v266, 3);
            v120 = 4;
            object = 0;
            v84 = v271[0];
LABEL_78:

            v122 = CMLSequence.value(at:)(v248);
            v271[1] = v81;
            if (v81)
            {
              v229 = "CreateML/SequenceType.swift";
              v230 = 27;
              v231 = 36;
              v232 = v271[1];
              goto LABEL_197;
            }

            break;
          case 5:

            JUMPOUT(0x1E3212);
          case 6:

            MLDataValue.MultiArrayType.init(from:)(v82);
            v273 = *&v275;
            if (!v275)
            {
              BUG();
            }

            outlined consume of MLDataValue(v269, v266, 3);
            v120 = 5;
LABEL_77:
            object = 0;
            goto LABEL_78;
        }

        v123 = v122;
        v124 = v120;
        switch(CMLFeatureValue.type.getter())
        {
          case 0u:
            v125 = *(v123 + 16);

            v126 = v271[1];
            v272 = specialized handling<A, B>(_:_:)(v125);
            v271[1] = v126;
            if (!v126)
            {
              JUMPOUT(0x1E32F9);
            }

            v271[1];

            BUG();
          case 1u:
            v164 = *(v123 + 16);

            v165 = v271[1];
            specialized handling<A, B>(_:_:)(v164);
            *&v274 = a3;
            v271[1] = v165;
            if (v165)
            {
              v271[1];

              BUG();
            }

            v123;
            outlined consume of MLDataValue(v84, v278, 3);
            v272 = v274;
            LOBYTE(v157) = 1;
            v156 = 0;
            goto LABEL_111;
          case 2u:

            v154 = CMLFeatureValue.stringValue()();
            v272 = v154._countAndFlagsBits;
            v271[1] = v155;
            if (v155)
            {
              v271[1];

              BUG();
            }

            v156 = v154._object;
            v123;
            outlined consume of MLDataValue(v84, v278, 3);
            LOBYTE(v157) = 2;
            goto LABEL_111;
          case 3u:
            v158 = *(v123 + 16);

            v159 = v271[1];
            v160 = specialized handling<A, B>(_:_:)(v158);
            if (v159)
            {
              v159;

              BUG();
            }

            v161 = v160;
            v271[1] = 0;
            if (!v160)
            {
              BUG();
            }

            v123;
            outlined consume of MLDataValue(v84, v278, 3);
            v162 = type metadata accessor for CMLSequence();
            v163 = swift_allocObject(v162, 25, 7);
            *(v163 + 16) = v161;
            v272 = v163;
            *(v163 + 24) = 1;
            LOBYTE(v157) = 3;
            v156 = 0;
            goto LABEL_111;
          case 4u:
            v127 = *(v123 + 16);

            v128 = v271[1];
            v129 = specialized handling<A, B>(_:_:)(v127);
            if (v128)
            {
              v128;

              BUG();
            }

            v130 = v129;
            v270 = 0;
            v253 = v123;
            if (!v129)
            {
              BUG();
            }

            v131 = type metadata accessor for CMLDictionary();
            v132 = swift_initStackObject(v131, v240);
            *(v132 + 16) = v130;
            v254 = _swiftEmptyDictionarySingleton;
            swift_retain_n(v132, 2);
            v133 = 0;
            v246 = v124;
            v272 = _swiftEmptyDictionarySingleton;
            if (CMLDictionary.size.getter())
            {
              v134 = v270;
              while (1)
              {
                v271[1] = CMLDictionary.keyAndValue(at:)(v133);
                *&v274 = v135;
                v81 = v134;
                if (v134)
                {
                  break;
                }

                v133 = specialized RandomAccessCollection<>.index(after:)(v133);
                v136 = CMLFeatureValue.stringValue()();
                if (!v137)
                {
                  v141 = v136._countAndFlagsBits;
                  v142 = v136._object;
                  v270 = 0;
                  v247 = v133;
                  v251 = v132;
                  v143 = v274;

                  MLDataValue.init(_:)(v143, v138);

                  v271[1] = *(&v275 + 1);
                  *&v274 = v275;
                  v144 = v276;
                  v275 = __PAIR128__(v142, v141);
                  LOBYTE(v276) = 2;
                  v145 = __PAIR128__(v142, v141);
                  v146 = v272;
                  specialized __RawDictionaryStorage.find<A>(_:)(v145, 2, v138);
                  *&v145 = (v148 & 1) == 0;
                  v104 = __OFADD__(v146[2], v145);
                  v149 = v146[2] + v145;
                  if (v104)
                  {
                    BUG();
                  }

                  v150 = v148;
                  if (v146[3] >= v149 || (specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v149, 1u), v146 = v254, v107 = *(&v275 + 1), specialized __RawDictionaryStorage.find<A>(_:)(v275, v276, v138), LOBYTE(v108) = v108 & 1, v109 = v150, LOBYTE(v109) = v150 & 1, (v150 & 1) == v108))
                  {
                    if ((v150 & 1) == 0)
                    {
                      v146[(v147 >> 6) + 8] |= 1 << v147;
                      v151 = v146[6];
                      v152 = 24 * v147;
                      v153 = v276;
                      *(v151 + v152) = v275;
                      *(v151 + v152 + 16) = v153;
                      JUMPOUT(0x1E3540);
                    }

                    v233 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
                    swift_willThrow();
                    v255[0] = v233;
                    swift_errorRetain(v233);
                    v236 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
                    if (swift_dynamicCast(&demangling cache variable for type metadata for Error, v255, v236, &type metadata for _MergeError, 0))
                    {
                      goto LABEL_202;
                    }

                    v235 = v144;
                    goto LABEL_204;
                  }

LABEL_200:
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v107, v108, v109);
                  BUG();
                }

                v137;

                v139 = CMLDictionary.size.getter();
                v134 = 0;
                v140 = 0;
                if (v133 == v139)
                {
                  goto LABEL_110;
                }
              }

              v229 = "CreateML/DictionaryType.swift";
              v230 = 29;
              v239 = 75;
              goto LABEL_196;
            }

            v140 = v270;
LABEL_110:
            v271[1] = v140;
            v253;
            v132;
            outlined consume of MLDataValue(v271[0], v278, 3);
            LOBYTE(v157) = 4;
            v156 = 0;
LABEL_111:
            *&v274 = v157;
            outlined consume of MLDataValue(*&v273, object, 0);
            outlined consume of MLDataValue(v272, v156, v274);
            v76 = v269;
LABEL_163:
            v224 = v266;
            outlined consume of MLDataValue(v76, v266, 3);
            v225 = v271[0];
            v226 = v278;
            outlined consume of MLDataValue(v271[0], v278, 3);
            outlined consume of MLDataValue(v225, v226, 3);
            outlined consume of MLDataValue(v76, v224, 3);
            outlined consume of MLDataValue(v225, v226, 3);
            v221 = v76;
            v222 = v224;
            v223 = 3;
            break;
          case 5u:

            JUMPOUT(0x1E36EELL);
          case 6u:

            MLDataValue.MultiArrayType.init(from:)(v123);
            v272 = v275;
            if (!v275)
            {
              BUG();
            }

            outlined consume of MLDataValue(v84, v278, 3);
            LOBYTE(v157) = 5;
            v156 = 0;
            goto LABEL_111;
        }

LABEL_164:
        outlined consume of MLDataValue(v221, v222, v223);
LABEL_165:
        v262;
        v215 = v252;
LABEL_166:
        v215;
        v258;
LABEL_167:
        v227 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v227, 0, 0);
        *v228 = 1;
        *(v228 + 8) = 0;
        *(v228 + 24) = 0;
        *(v228 + 40) = 0;
        *(v228 + 48) = 4;
        return swift_willThrow();
      case 4:
        v55 = v51;
        if (v52 != 4)
        {
          v216 = v50;
LABEL_160:
          swift_bridgeObjectRetain_n(v216, 2);
          goto LABEL_161;
        }

        v56 = v271[0];
        outlined copy of MLDataValue(v271[0], v278, 4u);
        outlined copy of MLDataValue(v50, v55, 4u);
        v57 = v278;
        outlined copy of MLDataValue(v56, v278, 4u);
        outlined copy of MLDataValue(v50, v55, 4u);
        outlined copy of MLDataValue(v56, v57, 4u);
        outlined copy of MLDataValue(v50, v55, 4u);
        LOBYTE(v274) = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ8CreateML11MLDataValueO_AETt1g5(v50, v56);
        outlined consume of MLDataValue(v50, v55, 4);
        outlined consume of MLDataValue(v56, v57, 4);
        outlined consume of MLDataValue(v56, v57, 4);
        outlined consume of MLDataValue(v50, v55, 4);
        outlined consume of MLDataValue(v56, v57, 4);
        v58 = v50;
        v59 = v55;
        v60 = 4;
        goto LABEL_118;
      case 5:
        v55 = v51;
        if (v52 == 5)
        {
          *&v274 = type metadata accessor for NSObject();
          v170 = v271[0];
          outlined copy of MLDataValue(v271[0], v278, 5u);
          v171 = v55;
          outlined copy of MLDataValue(v50, v55, 5u);
          v172 = v278;
          outlined copy of MLDataValue(v170, v278, 5u);
          outlined copy of MLDataValue(v50, v171, 5u);
          outlined copy of MLDataValue(v170, v172, 5u);
          outlined copy of MLDataValue(v50, v171, 5u);
          LOBYTE(v274) = static NSObject.== infix(_:_:)(v50, v170);
          outlined consume of MLDataValue(v50, v171, 5);
          v173 = v278;
          outlined consume of MLDataValue(v170, v278, 5);
          outlined consume of MLDataValue(v170, v173, 5);
          outlined consume of MLDataValue(v50, v171, 5);
          outlined consume of MLDataValue(v170, v278, 5);
          v58 = v50;
          v59 = v171;
          v60 = 5;
LABEL_118:
          outlined consume of MLDataValue(v58, v59, v60);
          v48 = v259;
          if ((v274 & 1) == 0)
          {
            goto LABEL_165;
          }

          goto LABEL_125;
        }

        v217 = v50;
        v217;
        goto LABEL_161;
      case 6:
        if (v52 != 6 || v271[0] | v278)
        {
          goto LABEL_162;
        }

        v62 = 6;
        outlined consume of MLDataValue(v50, v51, 6);
        v64 = 0;
        v65 = 0;
        goto LABEL_123;
    }
  }
}

uint64_t ActivityClassifierTrainingSessionDelegate.deinit()
{
  *(v0 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined consume of MLActivityClassifier.PersistentParameters?(*(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters), *(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 8), *(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 16), *(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 24), *(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 32));
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainer, &demangling cache variable for type metadata for MLActivityClassifier.Trainer?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_tablePrinter, &demangling cache variable for type metadata for TrainingTablePrinter?);
  *(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingDataSamples);
  *(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_validationDataSamples);
  *(v0 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_classLabels);
  return v0;
}

uint64_t type metadata accessor for ActivityClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for ActivityClassifierTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for ActivityClassifierTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for ActivityClassifierTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for ActivityClassifierTrainingSessionDelegate(uint64_t a1)
{
  v5[0] = &unk_345510;
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    v5[2] = &unk_345528;
    result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLActivityClassifier.Trainer?, type metadata accessor for MLActivityClassifier.Trainer);
    if (v3 <= 0x3F)
    {
      v5[3] = *(result - 8) + 64;
      result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for TrainingTablePrinter?, type metadata accessor for TrainingTablePrinter);
      if (v4 <= 0x3F)
      {
        v5[4] = *(result - 8) + 64;
        v5[5] = &unk_345540;
        v5[6] = &unk_345540;
        v5[7] = &unk_345540;
        result = swift_updateClassMetadata2(a1, 256, 8, v5, a1 + 80);
        if (!result)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance ActivityClassifierTrainingSessionDelegate(Swift::Int a1)
{
  v7 = ActivityClassifierTrainingSessionDelegate.train(from:)(a1);
  if (v5)
  {
    return (*(v1 + 8))(v3, v4, v7.metrics._rawValue, *&v7.finished);
  }

  else
  {
    return (*(v1 + 8))(v7._0, v7.metrics._rawValue, v7.finished);
  }
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance ActivityClassifierTrainingSessionDelegate(Swift::Int a1)
{
  *&v2 = ActivityClassifierTrainingSessionDelegate.evaluate(from:)(a1);
  if (!v5)
  {
    v3 = 1;
    v4 = 1;
  }

  return (*(v1 + 8))(v3, v4, *(&v2 + 1));
}

uint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    v1 = objc_opt_self(NSObject);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for NSObject = result;
  }

  return result;
}

uint64_t outlined consume of MLActivityClassifier.PersistentParameters?(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a5)
  {
    v5 = a5;
    outlined consume of Result<_DataTable, Error>(a1, a2);
    outlined consume of MLDataTable?(a3, a4);
    return v5;
  }

  return result;
}

uint64_t outlined retain of MLActivityClassifier.PersistentParameters(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  outlined copy of Result<_DataTable, Error>(*a1, *(a1 + 8));
  outlined copy of MLDataTable?(v1, v2);

  return a1;
}

uint64_t lazy protocol witness table accessor for type Column<String> and conformance Column<A>(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Column<String>);
    result = swift_getWitnessTable(a2, v3);
    *a1 = result;
  }

  return result;
}

uint64_t outlined copy of MLActivityClassifier.PersistentParameters?(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a5)
  {
    outlined copy of Result<_DataTable, Error>(a1, a2);
    outlined copy of MLDataTable?(a3, a4);
  }

  return result;
}

void MLDataValue.DictionaryType.subscript.getter(uint64_t a1, double a2)
{
  v4 = v2;
  v5 = *v3;
  if (*(v5 + 16))
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    outlined copy of MLDataValue(*a1, v7, v8);
    *&v9 = v6;
    *(&v9 + 1) = v7;
    specialized __RawDictionaryStorage.find<A>(_:)(v9, v8, a2);
    if (v11)
    {
      v12 = *(v5 + 56);
      v13 = 24 * v10;
      v14 = *(v12 + v13);
      v15 = *(v12 + v13 + 8);
      v16 = *(v12 + v13 + 16);
      *v4 = v14;
      *(v4 + 8) = v15;
      *(v4 + 16) = v16;
      outlined copy of MLDataValue(v14, v15, v16);
      outlined consume of MLDataValue(v6, v7, v8);
      return;
    }

    outlined consume of MLDataValue(v6, v7, v8);
  }

  *v4 = 0;
  *(v4 + 16) = -1;
}

uint64_t MLDataValue.DictionaryType.description.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = lazy protocol witness table accessor for type MLDataValue and conformance MLDataValue();
  return Dictionary.description.getter(v2, &type metadata for MLDataValue, &type metadata for MLDataValue, v3);
}

uint64_t _s8CreateML22MLDataValueConvertiblePAAE12makeInstance07featureD0xSgAA010CMLFeatureD0C_tFZSS_Tt1g5(uint64_t a1)
{
  v1 = dynamic_cast_existential_1_unconditional(&type metadata for String, &type metadata for String, &protocol descriptor for FeatureValueConvertible);
  v3 = v2;
  v15 = *(v2 + 16);
  v4 = type metadata accessor for Optional(0, v1);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);

  v15(a1, v1, v3);
  if (__swift_getEnumTagSinglePayload(&v11, 1, v1) == 1)
  {
    (*(v16 + 8))(&v11, v4);
    v12 = 0;
    v11 = 0;
    v13 = 0;
  }

  else
  {
    *(&v12 + 1) = v1;
    v13 = v3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v11);
    (*(*(v1 - 8) + 32))(boxed_opaque_existential_0, &v11, v1);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureValueConvertible?);
  if (swift_dynamicCast(&v14, &v11, v9, &type metadata for String, 6))
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized Collection<>.indices.getter(uint64_t a1)
{
  v2 = v1;
  *v1 = a1;

  v2[1] = specialized Dictionary.startIndex.getter(a1);
  v2[2] = v3;
  *(v2 + 24) = v4 & 1;
  result = 1 << *(a1 + 32);
  v6 = *(a1 + 36);
  v2[4] = result;
  v2[5] = v6;
  *(v2 + 48) = 0;
  return result;
}

uint64_t specialized Collection<>.indices.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  v3[3] = 0;
  swift_retain_n(a1, 2);
  swift_bridgeObjectRetain_n(a2, 2);
  swift_retain_n(a3, 3);
  v6 = CMLSequence.size.getter();
  v7 = specialized RandomAccessCollection<>.distance(from:to:)(0, v6);

  v8 = CMLSequence.size.getter();
  v9 = specialized RandomAccessCollection<>.distance(from:to:)(0, v8);

  if (v9 < 0)
  {
    BUG();
  }

  v10 = CMLSequence.size.getter();
  v11 = specialized RandomAccessCollection<>.distance(from:to:)(0, v10);
  a2;

  result = a3;
  if (v7 < 0 || v11 < v7)
  {
    BUG();
  }

  v5[4] = v7;
  return result;
}

uint64_t specialized Collection.index(_:offsetBy:)(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (a2)
  {
    if ((a1 ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
    {
      BUG();
    }

    a1 += a2;
  }

  return a1;
}

uint64_t specialized Collection.index(_:offsetBy:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
    BUG();
  }

  v6 = a3;
  v7 = a1;
  v17 = v5;
  if (a4)
  {
    v9 = a4;
    outlined copy of [A : B].Index._Variant<A, B>(a1, a2, a3);
    v16 = a5;
    v18 = a5 + 64;
    do
    {
      if (v6)
      {
        BUG();
      }

      v10 = -1 << *(v16 + 32);
      if (v7 < 0 || v7 >= -v10)
      {
        BUG();
      }

      v11 = *(v18 + 8 * (v7 >> 6));
      if (!_bittest64(&v11, v7))
      {
        BUG();
      }

      if (*(v16 + 36) != a2)
      {
        BUG();
      }

      v15 = v9;
      v12 = _HashTable.occupiedBucket(after:)(v7, v18, ~v10);
      v13 = *(v16 + 36);
      v6 = 0;
      outlined consume of [MLDataValue : MLDataValue].Index._Variant(v7, a2, 0);
      v7 = v12;
      a2 = v13;
      --v9;
    }

    while (v15 != 1);
  }

  else
  {
    v13 = a2;
    outlined copy of [A : B].Index._Variant<A, B>(a1, a2, a3);
    v12 = a1;
  }

  result = v17;
  *v17 = v12;
  *(v17 + 8) = v13;
  *(v17 + 16) = v6 & 1;
  return result;
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  v23 = v8;
  if (a4 < 0)
  {
    BUG();
  }

  v9 = a4;
  v12 = a1;
  v13 = a2;
  outlined copy of [A : B].Index._Variant<A, B>(a1, a2, a3);
  if (v9)
  {
    v20 = a6;
    v21 = a8 + 64;
    v14 = a7 | a3;
    while (1)
    {
      if (v14)
      {
        BUG();
      }

      if (a2 != v20)
      {
        BUG();
      }

      if (v12 == a5)
      {
        break;
      }

      v15 = -1 << *(a8 + 32);
      if (v12 < 0 || v12 >= -v15)
      {
        BUG();
      }

      v16 = *(v21 + 8 * (v12 >> 6));
      if (!_bittest64(&v16, v12))
      {
        BUG();
      }

      if (*(a8 + 36) != v20)
      {
        BUG();
      }

      v17 = _HashTable.occupiedBucket(after:)(v12, v21, ~v15);
      v13 = *(a8 + 36);
      outlined consume of [MLDataValue : MLDataValue].Index._Variant(v12, a2, 0);
      v12 = v17;
      a2 = v13;
      v14 = a7;
      if (!--v9)
      {
        v12 = v17;
        v18 = 0;
        goto LABEL_14;
      }
    }

    outlined consume of [MLDataValue : MLDataValue].Index._Variant(a5, a2, 0);
    result = v23;
    *v23 = 0;
    *(v23 + 16) = -1;
  }

  else
  {
    v18 = a3 & 1;
LABEL_14:
    result = v23;
    *v23 = v12;
    *(v23 + 8) = v13;
    *(v23 + 16) = v18;
  }

  return result;
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (a2)
  {
    while (a3 != a1)
    {
      if (__OFADD__(1, a1++))
      {
        BUG();
      }

      if (!--a2)
      {
        return a1;
      }
    }

    return 0;
  }

  return a1;
}

uint64_t specialized Collection.distance(from:to:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unsigned int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    BUG();
  }

  if (a4 < a1)
  {
    BUG();
  }

  if (a5 != a2)
  {
    BUG();
  }

  if (a1 == a4)
  {
    v7 = 0;
    outlined consume of [MLDataValue : MLDataValue].Index._Variant(a4, a2, 0);
  }

  else
  {
    v8 = a7;
    v9 = a7 + 64;
    v10 = 0;
    do
    {
      v7 = v10 + 1;
      if (__OFADD__(1, v10))
      {
        BUG();
      }

      v11 = -1 << *(v8 + 32);
      if (a1 < 0 || a1 >= -v11)
      {
        BUG();
      }

      v12 = *(v9 + 8 * (a1 >> 6));
      if (!_bittest64(&v12, a1))
      {
        BUG();
      }

      if (*(v8 + 36) != a2)
      {
        BUG();
      }

      v13 = _HashTable.occupiedBucket(after:)(a1, v9, ~v11);
      v14 = v8;
      v15 = *(v8 + 36);
      outlined consume of [MLDataValue : MLDataValue].Index._Variant(a1, a2, 0);
      if (v15 != a5)
      {
        BUG();
      }

      ++v10;
      a1 = v13;
      a2 = a5;
      v8 = v14;
      v9 = a7 + 64;
    }

    while (v13 != a4);
  }

  return v7;
}

uint64_t specialized Collection.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  result = a2 - a1;
  if (a2 < a1)
  {
    BUG();
  }

  v3 = __OFSUB__(a1, a2);
  v4 = a1 - a2;
  if (!v4)
  {
    return 0;
  }

  if (v4 < 0 == v3)
  {
    BUG();
  }

  if (v4 < 0x8000000000000001)
  {
    BUG();
  }

  return result;
}

uint64_t MLDataValue.DictionaryType.init(from:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized handling<A, B>(_:_:)(*(a1 + 16));
  if (!v3)
  {
    BUG();
  }

  v4 = type metadata accessor for CMLDictionary();
  v7[0] = swift_allocObject(v4, 24, 7);
  v7[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
  v7[2] = 0;
  *(v7[0] + 16) = v3;
  v7[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  v7[4] = 0;
  v7[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
  v7[6] = 0;
  ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(v7);

  *v2 = ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5;
  return result;
}

uint64_t MLDataValue.DictionaryType.init<A>(uniqueKeysWithValues:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = v3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  (*(v5 + 16))(v12, a1, a2);
  v9 = lazy protocol witness table accessor for type MLDataValue and conformance MLDataValue();
  v10 = Dictionary.init<A>(uniqueKeysWithValues:)(v12, &type metadata for MLDataValue, &type metadata for MLDataValue, a2, v9, a3);
  (*(v5 + 8))(a1, a2);
  result = v12[0];
  *v12[0] = v10;
  return result;
}

uint64_t MLDataValue.DictionaryType.debugDescription.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = lazy protocol witness table accessor for type MLDataValue and conformance MLDataValue();
  return Dictionary.debugDescription.getter(v2, &type metadata for MLDataValue, &type metadata for MLDataValue, v3);
}

BOOL static MLDataValue.DictionaryType.Index.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) || *(a2 + 16))
  {
    BUG();
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    BUG();
  }

  return *a1 == *a2;
}

BOOL static MLDataValue.DictionaryType.Index.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) || *(a2 + 16))
  {
    BUG();
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    BUG();
  }

  return *a1 < *a2;
}

uint64_t MLDataValue.DictionaryType.startIndex.getter()
{
  v2 = v0;
  result = specialized Dictionary.startIndex.getter(*v1);
  *v2 = result;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5 & 1;
  return result;
}

uint64_t specialized Dictionary.startIndex.getter(uint64_t a1)
{
  return specialized Dictionary.startIndex.getter(a1);
}

{
  return _HashTable.startBucket.getter(a1 + 64, ~(-1 << *(a1 + 32)));
}

{
  return specialized Dictionary.startIndex.getter(a1);
}

uint64_t MLDataValue.DictionaryType.endIndex.getter()
{
  v2 = *(*v1 + 36);
  *result = 1 << *(*v1 + 32);
  *(result + 8) = v2;
  *(result + 16) = 0;
  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, int64_t a3, int a4, char a5, uint64_t a6)
{
  if (a5)
  {
    BUG();
  }

  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    BUG();
  }

  v7 = *(a6 + 8 * (a3 >> 6) + 64);
  if (!_bittest64(&v7, a3))
  {
    BUG();
  }

  if (*(a6 + 36) != a4)
  {
    BUG();
  }

  v8 = *(a6 + 48);
  v9 = 24 * a3;
  v10 = *(v8 + 24 * a3);
  v11 = *(v8 + 24 * a3 + 8);
  v12 = *(v8 + 24 * a3 + 16);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  v13 = *(a6 + 56);
  v14 = *(v13 + v9);
  v15 = *(v13 + v9 + 8);
  v16 = *(v13 + v9 + 16);
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  outlined copy of MLDataValue(v10, v11, v12);
  return outlined copy of MLDataValue(v14, v15, v16);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return specialized Dictionary.subscript.getter(a1, a2, a3, a4, a5, &type metadata accessor for MLProgram.Block);
}

{
  return specialized Dictionary.subscript.getter(a1, a2, a3, a4, a5, &type metadata accessor for Tensor);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, int64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    BUG();
  }

  v6 = *(a5 + 8 * (a2 >> 6) + 64);
  if (!_bittest64(&v6, a2))
  {
    BUG();
  }

  if (*(a5 + 36) != a3)
  {
    BUG();
  }

  v7 = *(a5 + 56);
  v8 = *(*(a5 + 48) + 16 * a2);
  v9 = a6(0);
  (*(*(v9 - 8) + 16))(a1, v7 + *(*(v9 - 8) + 72) * a2, v9);

  return v8;
}

uint64_t MLDataValue.DictionaryType.index(after:)(uint64_t a1)
{
  v3 = v1;
  result = specialized _NativeDictionary.index(after:)(*a1, *(a1 + 8), *(a1 + 16), *v2);
  *v3 = result;
  *(v3 + 8) = v5;
  *(v3 + 16) = v6 & 1;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance MLDataValue.DictionaryType(void *a1, uint64_t a2))(uint64_t *a1)
{
  v2 = malloc(0x80uLL);
  *a1 = v2;
  MLDataValue.DictionaryType.subscript.getter(v2, (v2 + 3), a2);
  v3 = *v2;
  v4 = v2[1];
  v2[12] = *v2;
  v2[13] = v4;
  v5 = *(v2 + 4);
  *(v2 + 41) = v5;
  v2[6] = v3;
  v2[7] = v4;
  *(v2 + 64) = v5;
  v6 = v2[3];
  v2[14] = v6;
  v7 = v2[4];
  v2[15] = v7;
  v8 = *(v2 + 10);
  *(v2 + 42) = v8;
  v2[9] = v6;
  v2[10] = v7;
  *(v2 + 88) = v8;
  outlined copy of MLDataValue(v3, v4, v5);
  outlined copy of MLDataValue(v6, v7, v8);
  return protocol witness for Collection.subscript.read in conformance MLDataValue.DictionaryType;
}

void protocol witness for Collection.subscript.read in conformance MLDataValue.DictionaryType(uint64_t *a1)
{
  v1 = *a1;
  v6 = *(*a1 + 120);
  v7 = *(*a1 + 112);
  v8 = *(*a1 + 104);
  v9 = *(*a1 + 96);
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 41);
  v10 = *(*a1 + 42);
  outlined consume of MLDataValue(*(*a1 + 48), *(v1 + 56), *(v1 + 64));
  outlined consume of MLDataValue(v2, v3, v4);
  outlined consume of MLDataValue(v9, v8, v5);
  outlined consume of MLDataValue(v7, v6, v10);
  free(v1);
}

uint64_t protocol witness for Collection.subscript.getter in conformance MLDataValue.DictionaryType(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  *(v6 + 9) = *(a1 + 25);
  v6[0] = v3;
  v5 = v2;
  return specialized Collection<>.subscript.getter(&v5, *v1);
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance MLDataValue.DictionaryType()
{
  *result = 0;
  *(result + 16) = -2;
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataValue.DictionaryType(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataValue.DictionaryType(a1, a2, a3, a4, specialized Collection._failEarlyRangeCheck(_:bounds:));
}

{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataValue.DictionaryType(a1, a2, a3, a4, specialized Collection._failEarlyRangeCheck(_:bounds:));
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataValue.DictionaryType(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, __int128 *, void))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = a2[1];
  *(v13 + 9) = *(a2 + 25);
  v13[0] = v10;
  v12 = v9;
  return a5(v6, v7, v8, &v12, *v5);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance MLDataValue.DictionaryType(__int128 *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(v10 + 9) = *(a1 + 25);
  v10[0] = v3;
  v9 = v2;
  v4 = a2[1];
  v5 = *(a2 + 25);
  v7 = *a2;
  v8[0] = v4;
  *(v8 + 9) = v5;
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(&v9, &v7);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance MLDataValue.DictionaryType(uint64_t a1)
{
  v3 = specialized _NativeDictionary.index(after:)(*a1, *(a1 + 8), *(a1 + 16), *v1);
  v5 = v4;
  v7 = v6;
  result = outlined consume of [MLDataValue : MLDataValue].Index._Variant(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance MLDataValue.DictionaryType()
{
  v2 = v0;
  v3 = *v1;
  *v0 = *v1;

  v4 = specialized Dictionary.startIndex.getter(v3);
  v6 = v5;
  v8 = v7;
  result = v3;
  v2[1] = v4;
  v2[2] = v6;
  *(v2 + 24) = v8 & 1;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance CMLDictionary(uint64_t *a1)
{
  v2 = v1;
  result = specialized RandomAccessCollection<>.index(before:)(*a1);
  *v2 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance CMLDictionary(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance CMLDictionary(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2);
  *v3 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance CMLDictionary()
{
  v1 = v0;
  result = CMLDictionary.endIndex.getter();
  *v1 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CMLDictionary(uint64_t *a1, uint64_t *a2))()
{
  v2 = CMLDictionary.keyAndValue(at:)(*a2);
  a1[2] = v3;
  a1[3] = v2;
  *a1 = v2;
  a1[1] = v3;

  return protocol witness for Collection.subscript.read in conformance CMLDictionary;
}

uint64_t protocol witness for Collection.subscript.read in conformance CMLDictionary()
{
}

uint64_t protocol witness for Collection.subscript.getter in conformance CMLDictionary(uint64_t *a1)
{
  v2 = v1;
  result = specialized Collection<>.subscript.getter(*a1, a1[1]);
  *v2 = result;
  v2[1] = v4;
  v2[2] = v5;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance CMLDictionary()
{
  v1 = v0;
  result = specialized RandomAccessCollection<>.indices.getter();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance CMLDictionary(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *v4 = result;
  *(v4 + 8) = v6 & 1;
  return result;
}

{
  return protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance CMLDictionary(a1, a2, a3);
}

void protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance CMLDictionary(uint64_t *a1, uint64_t *a2)
{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, *a2, a2[1]);
}

{
  specialized Collection._failEarlyRangeCheck(_:bounds:)(*a1, a1[1], *a2, a2[1]);
}

uint64_t protocol witness for Collection.index(after:) in conformance CMLDictionary(uint64_t *a1)
{
  v2 = v1;
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *v2 = result;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance CMLDictionary(uint64_t *a1)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1);
  *a1 = result;
  return result;
}

void MLDataValue.DictionaryType.init(from:)(uint64_t a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 16);
  if (v5 != 4)
  {
    outlined consume of MLDataValue(v4, *(a1 + 8), v5);
    v4 = 0;
  }

  *v3 = v4;
}

uint64_t MLDataValue.DictionaryType.dataValue.getter()
{
  *v0 = *v1;
  *(v0 + 8) = 0;
  *(v0 + 16) = 4;
}

uint64_t closure #1 in MLDataValue.DictionaryType.init(from:)(uint64_t a1)
{
  v2 = v1;
  v13 = *(a1 + 8);
  v3 = CMLFeatureValue.stringValue()();
  if (v4)
  {
    v4;
    v6 = 0;
    result = 255;
    countAndFlagsBits = 0;
    object = 0;
    v10 = 0;
  }

  else
  {
    countAndFlagsBits = v3._countAndFlagsBits;
    object = v3._object;

    MLDataValue.init(_:)(v13, v5);
    v6 = v11;
    v10 = v12;
    result = 2;
  }

  *v2 = countAndFlagsBits;
  *(v2 + 8) = object;
  *(v2 + 16) = result;
  *(v2 + 24) = v6;
  *(v2 + 40) = v10;
  return result;
}

uint64_t Dictionary<>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  if (v8 == 4)
  {
    v10 = v7;
    result = Dictionary<>.init(from:)(&v10, a2, a3, a4, a5, a6);
    if (result)
    {
      return result;
    }
  }

  else
  {
    outlined consume of MLDataValue(v7, *(a1 + 8), v8);
  }

  return 0;
}

uint64_t Dictionary<>.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v83 = a6;
  v80 = a4;
  v90 = type metadata accessor for Optional(0, a3);
  v91 = *(v90 - 8);
  v8 = *(v91 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v86 = &v78;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v82 = &v78;
  v92 = *(a3 - 8);
  v13 = *(v92 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v96 = &v78;
  v88 = type metadata accessor for Optional(0, a2);
  v89 = *(v88 - 8);
  v16 = *(v89 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v81 = &v78;
  v19 = *(a2 - 8);
  v20 = *(v19 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v87 = &v78;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v25 = *a1;
  v26 = v19;
  v79 = a2;
  v27 = v25;
  v85 = a5;
  v99 = Dictionary.init()(a2, a3, a5);

  v28 = specialized Dictionary.startIndex.getter(v27);
  v107 = v29;
  v109 = v30;
  v27;
  v31 = v107;
  v100 = v26;
  v102 = v27;
  v84 = a3;
  v101 = &v78;
  while (1)
  {
    if (v109)
    {
      BUG();
    }

    v32 = 1 << *(v27 + 32);
    if (*(v27 + 36) != v31)
    {
      BUG();
    }

    if (v28 == v32)
    {
      v73 = v31;
      v27;
      outlined consume of [MLDataValue : MLDataValue].Index._Variant(v28, v73, 0);
      return v99;
    }

    if (v28 < 0 || v28 >= v32)
    {
      BUG();
    }

    v33 = *(v27 + 8 * (v28 >> 6) + 64);
    if (!_bittest64(&v33, v28))
    {
      BUG();
    }

    v34 = 24 * v28;
    v35 = *(v27 + 48);
    v36 = *(v27 + 56);
    v106 = *(v35 + 24 * v28);
    v78 = v28;
    v37 = *(v35 + 24 * v28 + 8);
    LOBYTE(v35) = *(v35 + 24 * v28 + 16);
    v38 = *(v36 + 24 * v28);
    v39 = *(v36 + 24 * v28 + 8);
    v104 = v39;
    v40 = *(v36 + v34 + 16);
    v41 = v35;
    v107 = v31;
    v105 = v37;
    outlined copy of MLDataValue(v106, v37, v35);
    outlined copy of MLDataValue(v38, v39, v40);
    v42 = v106;
    outlined copy of MLDataValue(v106, v37, v41);
    v103 = v38;
    v43 = v104;
    outlined copy of MLDataValue(v38, v104, v40);
    v44 = v42;
    v45 = v105;
    outlined copy of MLDataValue(v44, v105, v41);
    outlined copy of MLDataValue(v38, v43, v40);
    v46 = v106;
    v108 = v41;
    outlined consume of MLDataValue(v106, v45, v41);
    v47 = v103;
    outlined consume of MLDataValue(v103, v104, v40);
    outlined consume of MLDataValue(v46, v45, v41);
    v48 = v47;
    v49 = v47;
    v50 = v104;
    outlined consume of MLDataValue(v49, v104, v40);
    v51 = v78;
    v52 = v107;
    v98 = specialized _NativeDictionary.index(after:)(v78, v107, 0, v102);
    v97 = v53;
    v109 = v54;
    v55 = v52;
    v56 = v108;
    outlined consume of [MLDataValue : MLDataValue].Index._Variant(v51, v55, 0);
    v57 = v106;
    outlined copy of MLDataValue(v106, v105, v56);
    outlined copy of MLDataValue(v48, v50, v40);
    LODWORD(v107) = v40;
    outlined consume of MLDataValue(v48, v50, v40);
    v93 = v57;
    v94 = v105;
    v95 = v56;
    v58 = v81;
    v59 = v79;
    (*(v80 + 16))(&v93, v79);
    if (__swift_getEnumTagSinglePayload(v58, 1, v59) == 1)
    {
      outlined consume of MLDataValue(v106, v105, v56);
      outlined consume of MLDataValue(v103, v104, v107);
      v102;
      outlined consume of [MLDataValue : MLDataValue].Index._Variant(v98, v97, v109);
      v99;
      v75 = v58;
      v76 = v88;
      v77 = v89;
      goto LABEL_14;
    }

    (*(v100 + 32))(v101, v58, v59);
    v60 = v105;
    outlined copy of MLDataValue(v106, v105, v108);
    v61 = v103;
    v62 = v104;
    v63 = v107;
    outlined copy of MLDataValue(v103, v104, v107);
    v64 = v60;
    v65 = v108;
    outlined consume of MLDataValue(v106, v64, v108);
    v93 = v61;
    v94 = v62;
    v95 = v63;
    v66 = v82;
    v67 = v59;
    v68 = v84;
    (*(v83 + 16))(&v93, v84);
    if (__swift_getEnumTagSinglePayload(v66, 1, v68) == 1)
    {
      break;
    }

    v69 = v92;
    (*(v92 + 32))(v96, v66, v68);
    v70 = v87;
    (*(v100 + 16))(v87, v101, v67);
    v71 = v86;
    (*(v69 + 16))(v86, v96, v68);
    __swift_storeEnumTagSinglePayload(v71, 0, 1, v68);
    v72 = type metadata accessor for Dictionary(0, v67, v68, v85);
    Dictionary.subscript.setter(v71, v70, v72);
    outlined consume of MLDataValue(v106, v105, v108);
    outlined consume of MLDataValue(v103, v104, v107);
    (*(v92 + 8))(v96, v68);
    (*(v100 + 8))(v101, v67);
    v28 = v98;
    v31 = v97;
    v27 = v102;
  }

  outlined consume of MLDataValue(v106, v105, v65);
  outlined consume of MLDataValue(v103, v104, v107);
  (*(v100 + 8))(v101, v59);
  v102;
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v98, v97, v109);
  v99;
  v75 = v66;
  v76 = v90;
  v77 = v91;
LABEL_14:
  (*(v77 + 8))(v75, v76);
  return 0;
}

uint64_t Dictionary<>.dataValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a4;
  v26 = a3;
  v19 = v6;
  v22 = a6;
  v25 = a5;
  v17[0] = a1;
  v7 = type metadata accessor for Dictionary(0, a2, a3, a5);
  v24 = v7;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A : B], v7);
  v23 = WitnessTable;
  Sequence.lazy.getter(v7, WitnessTable);
  v21 = v18;
  v9 = swift_allocObject(&unk_393380, 56, 7);
  v9[2] = a2;
  v9[3] = v26;
  v9[4] = v20;
  v9[5] = v25;
  v9[6] = v22;
  v10 = type metadata accessor for LazySequence(0, v7, WitnessTable);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLDataValue, MLDataValue));
  v12 = swift_getWitnessTable(&protocol conformance descriptor for LazySequence<A>, v10);
  LazySequenceProtocol.map<A>(_:)(partial apply for closure #1 in Dictionary<>.dataValue.getter, v9, v10, v11, v12);
  v21;

  v13 = type metadata accessor for LazyMapSequence(0, v24, v11, v23);
  v14 = swift_getWitnessTable(&protocol conformance descriptor for LazyMapSequence<A, B>, v13);
  MLDataValue.DictionaryType.init<A>(uniqueKeysWithValues:)(v17, v13, v14);
  result = v18;
  v16 = v19;
  *v19 = v18;
  v16[1] = 0;
  *(v16 + 16) = 4;
  return result;
}

uint64_t closure #1 in Dictionary<>.dataValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a4 + 32))(a2, a4, v6 + 24, a4, a5);
  swift_getTupleTypeMetadata2(0, a2, a3, "key value ", 0);
  return (*(a6 + 32))(a3, a6);
}

uint64_t Dictionary<>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v65 = a3;
  v59 = type metadata accessor for Optional(0, a2);
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v56 = v48;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v54 = v48;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v57 = v48;
  v14 = 0;
  v15 = specialized handling<A, B>(_:_:)(*(a1 + 16));
  v71 = a1;
  v58 = v10;
  v66 = a2;
  v60 = v4;
  if (!v15)
  {
    BUG();
  }

  v18 = v15;
  v19 = type metadata accessor for CMLDictionary();
  inited = swift_initStackObject(v19, v49);
  *(inited + 16) = v18;
  v16 = Dictionary.init()(&type metadata for String, v66, &protocol witness table for String);
  v69 = v16;

  if (!CMLDictionary.size.getter())
  {
    inited;
    goto LABEL_17;
  }

  v21 = 0;
  v68 = inited;
  do
  {
    v22 = CMLDictionary.keyAndValue(at:)(v21);
    v70 = v23;
    v64 = v14;
    if (v14)
    {
      swift_unexpectedError(v64, "CreateML/DictionaryType.swift", 29, 1, 75);
      BUG();
    }

    v24 = v22;
    v53 = specialized RandomAccessCollection<>.index(after:)(v21);
    v25 = dynamic_cast_existential_1_unconditional(&type metadata for String, &type metadata for String, &protocol descriptor for FeatureValueConvertible);
    v27 = v26;
    v52 = *(v26 + 16);
    v28 = type metadata accessor for Optional(0, v25);
    v72 = v48;
    v55 = v28;
    v29 = *(v28 - 8);
    v30 = *(v29 + 64);
    v31 = alloca(v30);
    v32 = alloca(v30);

    v67 = v24;
    v52(v24, v25, v27);
    if (__swift_getEnumTagSinglePayload(v48, 1, v25) == 1)
    {
      (*(v29 + 8))(v48, v55);
      a4 = 0.0;
      v62 = 0;
      v61 = 0;
      v63 = 0;
    }

    else
    {
      *(&v62 + 1) = v25;
      v63 = v27;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v61);
      (*(*(v25 - 8) + 32))(boxed_opaque_existential_0, v48, v25);
    }

    v33 = v65;
    v35 = v70;
    v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureValueConvertible?);
    v37 = swift_dynamicCast(&v50, &v61, v36, &type metadata for String, 6);
    v38 = v54;
    if (!v37 || !v51)
    {
      v68;

      v69;
      return 0;
    }

    v72 = v51;
    v39 = v50;
    v40 = v33;
    v41 = v66;
    static MLDataValueConvertible.makeInstance(featureValue:)(v35, v66, v40, a4);
    if (__swift_getEnumTagSinglePayload(v38, 1, v41) == 1)
    {
      v68;

      v72;
      v69;
      (*(v60 + 8))(v38, v59);
      return 0;
    }

    v42 = v57;
    v43 = v58;
    (*(v58 + 32))(v57, v38, v41);
    v44 = v56;
    (*(v43 + 16))(v56, v42, v41);
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v41);
    *&v61 = v39;
    *(&v61 + 1) = v72;
    v45 = type metadata accessor for Dictionary(0, &type metadata for String, v41, &protocol witness table for String);
    Dictionary.subscript.setter(v44, &v61, v45);

    (*(v43 + 8))(v42, v41);
    v46 = v68;
    v47 = CMLDictionary.size.getter();
    v21 = v53;
    v14 = v64;
  }

  while (v53 != v47);
  v46;
  v16 = v69;
LABEL_17:

  return v16;
}

uint64_t Dictionary<>.featureValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v62 = a1;
  v56 = *(a2 - 8);
  v3 = *(v56 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v59 = v45;
  v55 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2(255, &type metadata for String, a2, "key value ", 0);
  v48 = type metadata accessor for Optional(0, TupleTypeMetadata2);
  v49 = *(v48 - 8);
  v6 = *(v49 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v61 = v45;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v11 = tc_v1_flex_dict_create(0);
  if (!v11)
  {
    BUG();
  }

  v12 = v11;
  v13 = 0;
  v14 = type metadata accessor for CMLDictionary();
  inited = swift_initStackObject(v14, v46);
  *(inited + 16) = v12;
  v15 = 1 << *(v62 + 32);
  v16 = ~(-1 << v15);
  if (v15 >= 64)
  {
    v16 = -1;
  }

  v17 = *(v62 + 64) & v16;
  v57 = (v15 + 63) >> 6;
  v52 = v57 - 1;

  v50 = v45;
  while (1)
  {
    if (v17)
    {
      v18 = v56;
LABEL_7:
      _BitScanForward64(&v19, v17);
      v53 = (v17 - 1) & v17;
      v58 = v13;
      v20 = v19 | (v13 << 6);
      v21 = v62;
      v22 = *(v62 + 48);
      v23 = *(v22 + 16 * v20 + 8);
      v24 = v61;
      *v61 = *(v22 + 16 * v20);
      *(v24 + 8) = v23;
      v25 = TupleTypeMetadata2;
      (*(v18 + 16))(v24 + *(TupleTypeMetadata2 + 48), *(v21 + 56) + *(v18 + 72) * v20, v55);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);

      v26 = v59;
      goto LABEL_15;
    }

    v27 = v13 + 1;
    v18 = v56;
    if (__OFADD__(1, v13))
    {
      BUG();
    }

    if (v27 >= v57)
    {
      v58 = v13;
LABEL_13:
      v26 = v59;
      v25 = TupleTypeMetadata2;
      v28 = v61;
      goto LABEL_14;
    }

    v17 = *(v62 + 8 * v27 + 64);
    if (v17)
    {
      ++v13;
      goto LABEL_7;
    }

    v40 = v13 + 2;
    if (v13 + 2 >= v57)
    {
      v58 = v13 + 1;
      goto LABEL_13;
    }

    v17 = *(v62 + 8 * v27 + 72);
    if (v17)
    {
      goto LABEL_20;
    }

    v41 = v13 + 3;
    if (v13 + 3 >= v57)
    {
      goto LABEL_33;
    }

    v17 = *(v62 + 8 * v27 + 80);
    if (v17)
    {
      goto LABEL_24;
    }

    v40 = v13 + 4;
    if (v13 + 4 >= v57)
    {
      v58 = v13 + 3;
      goto LABEL_13;
    }

    v17 = *(v62 + 8 * v27 + 88);
    if (v17)
    {
LABEL_20:
      v13 = v40;
      goto LABEL_7;
    }

    v41 = v13 + 5;
    if (v13 + 5 >= v57)
    {
LABEL_33:
      v58 = v40;
      goto LABEL_13;
    }

    v17 = *(v62 + 8 * v27 + 96);
    if (v17)
    {
LABEL_24:
      v13 = v41;
      goto LABEL_7;
    }

    v26 = v59;
    v25 = TupleTypeMetadata2;
    v28 = v61;
    while (v13 + 6 < v57)
    {
      v17 = *(v62 + 8 * v13++ + 112);
      if (v17)
      {
        v13 += 5;
        goto LABEL_7;
      }
    }

    v58 = v52;
LABEL_14:
    v24 = v28;
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v25);
    v53 = 0;
LABEL_15:
    v29 = v24;
    v30 = v50;
    (*(v49 + 32))(v50, v29, v48);
    if (__swift_getEnumTagSinglePayload(v30, 1, v25) == 1)
    {
      break;
    }

    v47 = 0;
    v31 = *v30;
    v32 = v30[1];
    v33 = v30 + *(v25 + 48);
    v34 = v55;
    (*(v56 + 32))(v26, v33, v55);
    v35 = MLDataValueConvertible.featureValue.getter(v34, v51);
    v36 = v31;
    v37 = v32;
    v38 = v32;
    v39 = v47;
    CMLDictionary.add(key:value:)(v36, v38, v35);
    if (v39)
    {
      v37;

      swift_unexpectedError(v39, "CreateML/DictionaryType.swift", 29, 1, 166);
      BUG();
    }

    (*(v56 + 8))(v26, v55);
    v37;

    v13 = v58;
    v17 = v53;
  }

  type metadata accessor for CMLFeatureValue();
  v42 = inited;

  v43 = CMLFeatureValue.__allocating_init(_:)(v42);
  swift_setDeallocating(v42);
  tc_v1_release(*(v42 + 16));
  return v43;
}

uint64_t specialized _NativeDictionary.index(after:)(int64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    BUG();
  }

  v5 = -1 << *(a4 + 32);
  if (a1 < 0 || -v5 <= a1)
  {
    BUG();
  }

  v6 = *(a4 + 64 + 8 * (a1 >> 6));
  if (!_bittest64(&v6, a1))
  {
    BUG();
  }

  if (*(a4 + 36) != a2)
  {
    BUG();
  }

  return _HashTable.occupiedBucket(after:)(a1, a4 + 64, ~v5);
}

uint64_t lazy protocol witness table accessor for type MLDataValue.DictionaryType.Index and conformance MLDataValue.DictionaryType.Index()
{
  result = lazy protocol witness table cache variable for type MLDataValue.DictionaryType.Index and conformance MLDataValue.DictionaryType.Index;
  if (!lazy protocol witness table cache variable for type MLDataValue.DictionaryType.Index and conformance MLDataValue.DictionaryType.Index)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue.DictionaryType.Index, &type metadata for MLDataValue.DictionaryType.Index);
    lazy protocol witness table cache variable for type MLDataValue.DictionaryType.Index and conformance MLDataValue.DictionaryType.Index = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataValue.DictionaryType.Index and conformance MLDataValue.DictionaryType.Index;
  if (!lazy protocol witness table cache variable for type MLDataValue.DictionaryType.Index and conformance MLDataValue.DictionaryType.Index)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue.DictionaryType.Index, &type metadata for MLDataValue.DictionaryType.Index);
    lazy protocol witness table cache variable for type MLDataValue.DictionaryType.Index and conformance MLDataValue.DictionaryType.Index = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLDataValue.DictionaryType and conformance MLDataValue.DictionaryType()
{
  result = lazy protocol witness table cache variable for type MLDataValue.DictionaryType and conformance MLDataValue.DictionaryType;
  if (!lazy protocol witness table cache variable for type MLDataValue.DictionaryType and conformance MLDataValue.DictionaryType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue.DictionaryType, &type metadata for MLDataValue.DictionaryType);
    lazy protocol witness table cache variable for type MLDataValue.DictionaryType and conformance MLDataValue.DictionaryType = result;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLDataValue.DictionaryType.Index(uint64_t a1, uint64_t a2)
{
  return initializeBufferWithCopyOfBuffer for MLDataValue.DictionaryType.Index(a1, a2);
}

{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  outlined copy of [A : B].Index._Variant<A, B>(*a2, v3, v4);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithCopy for MLDataValue.DictionaryType.Index(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of [A : B].Index._Variant<A, B>(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for MLDataValue.DictionaryType.Index(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v4, v5, v6);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Slice<CMLDictionary> and conformance <> Slice<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!*a1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Slice<CMLDictionary>);
    lazy protocol witness table accessor for type CMLDictionary and conformance CMLDictionary(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CMLDictionary and conformance CMLDictionary(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = type metadata accessor for CMLDictionary();
    result = swift_getWitnessTable(a2, v3);
    *a1 = result;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySdG_Sis5NeverOTg5058_s8CreateML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n(uint64_t a1, uint64_t a2, __m128d a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v21 = *(a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v5 = v21;
    v6 = a1;
    v7 = a2;
    v8 = _swiftEmptyArrayStorage;
    v9 = xmmword_33DFE0;
    v10 = xmmword_345A50;
    v11 = 0x7FEFFFFFFFFFFFFFLL;
    do
    {
      a3.f64[0] = *(v7 + 16) * *(v6 + 8 * v4 + 32);
      v12 = _mm_or_pd(_mm_and_pd(a3, v9), v10);
      v12.f64[0] = v12.f64[0] + a3.f64[0];
      a3 = _mm_round_sd(a3, v12, 11);
      if ((*&a3.f64[0] & 0x7FFFFFFFFFFFFFFFLL) > v11)
      {
        BUG();
      }

      if (a3.f64[0] <= -9.223372036854778e18)
      {
        BUG();
      }

      if (a3.f64[0] >= 9.223372036854776e18)
      {
        BUG();
      }

      v18 = v8;
      v13 = v8[2];
      v14 = v8[3];
      v15 = v13 + 1;
      if (v14 >> 1 <= v13)
      {
        v16 = v11;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 >= 2, v15, 1);
        v15 = v13 + 1;
        a3 = *&a3.f64[0];
        v11 = v16;
        v10 = xmmword_345A50;
        v9 = xmmword_33DFE0;
        v5 = v21;
        v6 = a1;
        v7 = a2;
        v8 = v18;
      }

      ++v4;
      v8[2] = v15;
      v8[v13 + 4] = a3.f64[0];
    }

    while (v5 != v4);
    v7;
  }

  else
  {
    a2;
    return _swiftEmptyArrayStorage;
  }

  return v8;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 56);
  do
  {
    v4 = *v3;
    v7 = result;
    v5 = result[2];
    v6 = v5 + 1;
    if (result[3] >> 1 <= v5)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v6, 1);
      v6 = v5 + 1;
      result = v7;
    }

    result[2] = v6;
    result[v5 + 4] = v4;
    v3 += 4;
    --v1;
  }

  while (v1);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11MLDataValueOG_AHs5NeverOTg503_s8d81ML34stratifiedSplitBySequenceGenerator11proportions9generator9dataTable2by2onAA06f30K0VSaySdG_xzAIS2StKSGRzlFAA0N5G8OALXEfU_AF0F5TableVS2STf1cn_n(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v10 = *(a1 + 16);
  if (v10)
  {
    v26 = *(a1 + 16);
    v32 = a3;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = (a1 + 48);
    v28 = v32 & 1;
    v27 = a2;
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      *&v30 = *(v11 - 2);
      *(&v30 + 1) = v12;
      LOBYTE(v31) = v13;
      outlined copy of MLDataValue(v30, v12, v13);
      closure #1 in stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(&v30, a2, v28, a4, a5, a6, a7);
      if (v8)
      {
        outlined consume of MLDataValue(v30, *(&v30 + 1), v31);

        outlined consume of Result<_DataTable, Error>(v27, v32);
        a7;
        a5;
        BUG();
      }

      outlined consume of MLDataValue(v30, *(&v30 + 1), v31);
      v14 = v22;
      v15 = v23;
      v16 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      v18 = v16 + 1;
      if (v17 >> 1 <= v16)
      {
        v33 = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 >= 2, v18, 1);
        v18 = v16 + 1;
        v15 = v33;
        v14 = v22;
      }

      _swiftEmptyArrayStorage[2] = v18;
      v19 = 3 * v16;
      *&_swiftEmptyArrayStorage[v19 + 4] = v14;
      LOBYTE(_swiftEmptyArrayStorage[v19 + 6]) = v15;
      v11 += 24;
      v20 = v26-- == 1;
      v8 = 0;
      a2 = v27;
    }

    while (!v20);
    outlined consume of Result<_DataTable, Error>(v27, v32);
  }

  else
  {
    outlined consume of Result<_DataTable, Error>(a2, a3);
  }

  a7;
  a5;
  return _swiftEmptyArrayStorage;
}

Swift::Int __swiftcall timestampSeed()()
{
  v8[0] = v0;
  v1 = type metadata accessor for Date(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  Date.init()(0);
  v8[0] = Date.timeIntervalSince1970.getter(0);
  (*(v2 + 8))(v8, v1);
  v6 = v8[0] * 1000.0;
  if (COERCE__INT64(fabs(v8[0] * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v6 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v6 >= 9.223372036854776e18)
  {
    BUG();
  }

  return v6;
}

uint64_t specialized Sequence<>.min()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
    do
    {
      v3 = fmin(*(a1 + 8 * v5++ + 40), v2);
      v2 = v3;
    }

    while (v1 - 1 != v5);
  }

  return *&v3;
}

void *stratifiedSplitGenerator<A>(proportions:generator:fileURLAndLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a5;
  v73 = a4;
  v74 = a2;
  v75 = a1;
  v80 = type metadata accessor for URL(0);
  v7 = *(v80 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);

  v92[0] = specialized _copyCollectionToContiguousArray<A>(_:)(a3);
  specialized MutableCollection<>.sort(by:)(v92);
  v84 = v5;
  if (v5)
  {

    BUG();
  }

  a3;
  v11 = v92[0];
  v77 = *(v92[0] + 16);
  if (v77)
  {
    v76 = v92[0] + 32;
    v12 = 0;
    v91 = _swiftEmptyArrayStorage;
    v79 = a3;
    v70 = &v65;
    v87 = v7;
    v81 = v92[0];
    while (1)
    {
      if (v12 >= *(v11 + 16))
      {
        BUG();
      }

      v78 = v12;
      v13 = 16 * v12;
      v14 = *(v76 + v13);
      v15 = *(v76 + v13 + 8);
      swift_bridgeObjectRetain_n(v15, 2);
      v83 = v14;
      v16 = specialized Dictionary.subscript.getter(v14, v15, a3);
      v89 = v15;
      v15;
      if (!v16)
      {
        BUG();
      }

      v85 = v16;
      v17 = specialized _copyCollectionToContiguousArray<A>(_:)(0, *(v16 + 16));
      v18 = v75;
      v19 = v84;
      v20 = randomSplit<A>(indices:proportions:generator:)(v17, v75, v74, v73, v72);
      v84 = v19;
      if (v19)
      {
        break;
      }

      v88 = v20;

      v71 = *(v18 + 16);
      if (v71)
      {
        v21 = 0;
        v22 = v87;
        v23 = v91;
        v24 = v88;
        do
        {
          v25 = v23[2] <= v21;
          v26 = v23;
          v86 = v21;
          if (v25)
          {
            v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [URL]);
            v28 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v27, &protocol witness table for String);
            if (!swift_isUniquelyReferenced_nonNull_native(v26))
            {
              v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
            }

            v29 = v26[2];
            v21 = v86;
            if (v26[3] >> 1 <= v29)
            {
              v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26[3] >= 2uLL, v29 + 1, 1, v26);
              v21 = v86;
              v26 = v62;
            }

            v24 = v88;
            v26[2] = v29 + 1;
            v26[v29 + 4] = v28;
            v22 = v87;
          }

          if (v21 >= v24[2])
          {
            BUG();
          }

          v30 = v24[v21 + 4];
          v31 = *(v30 + 16);
          v90 = _swiftEmptyArrayStorage;
          if (v31)
          {
            v91 = v26;
            v92[0] = _swiftEmptyArrayStorage;

            v67 = v31;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
            v90 = v92[0];
            v68 = (*(v22 + 80) + 32) & ~*(v22 + 80);
            v69 = v68 + v85;
            v32 = 0;
            v33 = v80;
            v66 = v30;
            do
            {
              v34 = *(v30 + 8 * v32 + 32);
              if (v34 < 0)
              {
                BUG();
              }

              if (v34 >= *(v85 + 16))
              {
                BUG();
              }

              v82 = *(v22 + 72);
              v35 = v70;
              (*(v22 + 16))(v70, v69 + v82 * v34, v33);
              v36 = v90;
              v92[0] = v90;
              v37 = v22;
              v38 = v90[2];
              v39 = v90[3];
              v40 = v38 + 1;
              if (v39 >> 1 <= v38)
              {
                v90 = (v38 + 1);
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39 >= 2, v40, 1);
                v40 = v90;
                v37 = v87;
                v33 = v80;
                v36 = v92[0];
              }

              ++v32;
              *(v36 + 16) = v40;
              v90 = v36;
              v41 = v36 + v68 + v82 * v38;
              v22 = v37;
              (*(v37 + 32))(v41, v35, v33);
              v30 = v66;
            }

            while (v67 != v32);
            v66;
            v26 = v91;
          }

          if (!swift_isUniquelyReferenced_nonNull_native(v26))
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
          }

          if (v86 >= v26[2])
          {
            BUG();
          }

          v42 = v86;
          LOBYTE(v82) = swift_isUniquelyReferenced_nonNull_native(v26[v86 + 4]);
          v92[0] = v26[v42 + 4];
          v43 = v92[0];
          v91 = v26;
          v26[v42 + 4] = 0x8000000000000000;
          v45 = specialized __RawDictionaryStorage.find<A>(_:)(v83, v89);
          v46 = (v44 & 1) == 0;
          v47 = __OFADD__(*(v43 + 16), v46);
          v48 = *(v43 + 16) + v46;
          if (v47)
          {
            BUG();
          }

          v49 = v44;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [URL]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v82, v48))
          {
            v50 = v89;
            v45 = specialized __RawDictionaryStorage.find<A>(_:)(v83, v89);
            LOBYTE(v52) = v52 & 1;
            if ((v49 & 1) != v52)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v50, v52, v51);
              BUG();
            }
          }

          v53 = v49;
          a3 = v79;
          v54 = v92[0];
          if (v53)
          {
            v55 = *(v92[0] + 56);
            *(v55 + 8 * v45);
            *(v55 + 8 * v45) = v90;
            v89;
          }

          else
          {
            *(v92[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
            v56 = v54[6];
            v57 = 16 * v45;
            *(v56 + v57) = v83;
            *(v56 + v57 + 8) = v89;
            *(v54[7] + 8 * v45) = v90;
            v58 = v54[2];
            v47 = __OFADD__(1, v58);
            v59 = v58 + 1;
            if (v47)
            {
              BUG();
            }

            v54[2] = v59;
          }

          v23 = v91;
          v60 = v86;
          v91[v86 + 4] = v54;
          v21 = v60 + 1;
          v22 = v87;
          v61 = v78;
          v24 = v88;
        }

        while (v21 != v71);
      }

      else
      {
        v23 = v91;
        v61 = v78;
        LOBYTE(v24) = v88;
      }

      v91 = v23;
      v63 = v24;
      v89;
      v85;
      v63;
      v12 = v61 + 1;
      v11 = v81;
      if (v61 + 1 == v77)
      {

        return v91;
      }
    }

    v91;

    v85;
    v89;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

void *randomSplit<A>(indices:proportions:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0xD000000000000024;
  if (!*(a2 + 16))
  {
    v11 = "-zero proportion is required.";
    goto LABEL_16;
  }

  v65 = *(a2 + 16);
  v9 = COERCE_DOUBLE(specialized Sequence<>.min()(a2));
  if (v10)
  {
    BUG();
  }

  if (v9 < 0.0)
  {
    v5 = 0xD00000000000002ALL;
    v11 = "";
LABEL_16:
    v24 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v24, 0, 0);
    *v25 = v5;
    *(v25 + 8) = v11 | 0x8000000000000000;
    *(v25 + 16) = 0;
    *(v25 + 32) = 0;
    *(v25 + 48) = 0;
    return swift_willThrow();
  }

  v12 = COERCE_DOUBLE(specialized Sequence<>.max()(a2));
  if (v13)
  {
    BUG();
  }

  if (v12 <= 0.0)
  {
    v5 = 0xD00000000000002DLL;
    v11 = "e proportions are allowed.";
    goto LABEL_16;
  }

  v61 = *(a1 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v15 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v16 = 0.0;
  v62 = Sequence.shuffled<A>(using:)(a3, v14, a4, v15, a5);
  v17 = 0;
  do
  {
    v16 = v16 + *(a2 + 8 * v17++ + 32);
  }

  while (v65 != v17);
  v18 = 0;
  v68 = v16;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65, 0);
  v19 = a2;
  v20 = v65;
  v21 = _swiftEmptyArrayStorage[2];
  do
  {
    v22 = *(v19 + 8 * v18 + 32);
    v23 = v21 + 1;
    if (_swiftEmptyArrayStorage[3] >> 1 <= v21)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v23, 1);
      v16 = v68;
      v23 = v21 + 1;
      v19 = a2;
      v20 = v65;
    }

    ++v18;
    _swiftEmptyArrayStorage[2] = v23;
    *&_swiftEmptyArrayStorage[v21 + 4] = v22 / v16;
    v21 = v23;
  }

  while (v20 != v18);
  v66 = v23;

  v27 = 0;
  v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v29 = v28[2];
  v30 = 8 * v29;
  v31 = &_swiftEmptyArrayStorage[4];
  do
  {
    if (v27 + v29)
    {
      v32 = *(&v28[v27 + 3] + v30);
    }

    else
    {
      v32 = 0;
    }

    v33 = *&v31[v27];
    v34 = v29 + v27 + 1;
    if (v28[3] >> 1 <= (v27 + v29))
    {
      v35 = v28[3] >= 2uLL;
      v36 = v28;
      v69 = v29;
      v72 = v30;
      v37 = v31;
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35, v29 + v27 + 1, 1, v36);
      v32 = *&v32.f64[0];
      v31 = v37;
      v30 = v72;
      v29 = v69;
      v23 = v66;
      v28 = v38;
    }

    v28[2] = v34;
    *(&v28[v27++ + 4] + v30) = v33 + v32.f64[0];
  }

  while (v23 != v27);
  _swiftEmptyArrayStorage;

  ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySdG_Sis5NeverOTg5058_s8CreateML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n(v28, a1, v32);
  v28;
  v40 = ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n;
  v41 = 0;
  v42 = 0;
  v43 = _swiftEmptyArrayStorage;
  v64 = ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n;
  do
  {
    if (v42 >= v40[2])
    {
      BUG();
    }

    if (v41 >= v40[v42 + 4])
    {
      v44 = _swiftEmptyArrayStorage;
    }

    else
    {
      v73 = v43;
      v67 = v42;
      v70 = v41;
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
      v45 = v41;
      v42 = v67;
      v43 = v73;
      v46 = v64;
      v47 = a1;
      v48 = v61;
      v49 = v62;
      do
      {
        if (v45 < 0)
        {
          BUG();
        }

        if (v41 >= *(v49 + 16))
        {
          BUG();
        }

        v50 = *(v49 + 8 * v41 + 32);
        if (v50 >= v48)
        {
          BUG();
        }

        v51 = *(v47 + 8 * v50 + 32);
        v52 = v44[2];
        if (v44[3] >> 1 <= v52)
        {
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44[3] >= 2uLL, v52 + 1, 1, v44);
          v45 = v70;
          v42 = v67;
          v43 = v73;
          v46 = v64;
          v49 = v62;
          v48 = v61;
          v47 = a1;
        }

        v44[2] = v52 + 1;
        v44[v52 + 4] = v51;
        ++v41;
      }

      while (v41 < v46[v42 + 4]);
    }

    v74 = v44;
    v53 = v42;
    v54 = v43;
    if (swift_isUniquelyReferenced_nonNull_native(v43))
    {
      v43 = v54;
    }

    else
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 16) + 1, 1, v54);
    }

    v55 = v43[2];
    v56 = v65;
    v40 = v64;
    v57 = v74;
    if (v43[3] >> 1 <= v55)
    {
      v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43[3] >= 2uLL, v55 + 1, 1, v43);
      v57 = v74;
      v58 = v53;
      v40 = v64;
      v56 = v65;
      v43 = v59;
    }

    else
    {
      v58 = v53;
    }

    v42 = v58 + 1;
    v43[2] = v55 + 1;
    v43[v55 + 4] = v57;
  }

  while (v42 != v56);
  v60 = v43;
  v40;
  v62;
  return v60;
}

uint64_t *stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, double xmm0_8_0, uint64_t a7)
{
  v71 = a2;
  v10 = v9;
  v72 = a6;
  v89 = a5;
  v73 = a1;
  v11 = *a3;
  v103 = *(a3 + 8);
  v93._countAndFlagsBits = a4;
  v80 = v11;
  v74 = v8;
  if (v103)
  {
    countAndFlagsBits = a4;
    v98 = v9;
    outlined copy of Result<_DataTable, Error>(v11, 1);
    v13 = tc_v1_flex_list_create(0);
    if (!v13)
    {
      BUG();
    }

    v14 = v11;
    v15 = v13;
    v16 = type metadata accessor for CMLSequence();
    v17 = swift_allocObject(v16, 25, 7);
    *(v17 + 16) = v15;
    *(v17 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v14, 1);
    v10 = v98;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v11, 0);
    _DataTable.columnNames.getter();
    countAndFlagsBits = v93._countAndFlagsBits;
    outlined consume of Result<_DataTable, Error>(v11, 0);
    v17 = v99;
  }

  *&v101 = countAndFlagsBits;
  *(&v101 + 1) = v89;
  v18 = alloca(24);
  v19 = alloca(32);
  v73 = &v101;
  v20 = v10;
  v21 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v71, v17);

  if (v21)
  {
    v93._object = v20;
    v22 = v80;
    *&v101 = v80;
    v23 = v103;
    BYTE8(v101) = v103;
    v97 = v103;
    outlined copy of Result<_DataTable, Error>(v80, v103);
    v24._countAndFlagsBits = v93._countAndFlagsBits;
    v24._object = v89;
    MLDataTable.subscript.getter(v24);
    outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
    v84 = v99;
    v85 = v100;
    MLUntypedColumn.dropDuplicates()();
    outlined consume of Result<_DataTable, Error>(v84, v85);
    v99 = v101;
    LOBYTE(v100) = BYTE8(v101);
    v90 = Array<A>.init(_:)(&v99, xmm0_8_0);
    *&v101 = v22;
    BYTE8(v101) = v23;
    v25 = v23;
    outlined copy of Result<_DataTable, Error>(v22, v97);
    v26 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
    if (v26 < 0)
    {
      BUG();
    }

    v96 = specialized _copyCollectionToContiguousArray<A>(_:)(0, v26);
    v99 = v22;
    LOBYTE(v100) = v25;
    *&v101 = v22;
    BYTE8(v101) = v25;
    v27 = v97;
    outlined copy of Result<_DataTable, Error>(v22, v97);
    outlined copy of Result<_DataTable, Error>(v22, v27);
    v28 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
    v94 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v28);
    v29 = v90;
    v76 = v90[2];
    if (v76)
    {
      v30 = v27;
      v31 = 0;
      v32 = v93._countAndFlagsBits;
      while (1)
      {
        if (v31 >= v29[2])
        {
          BUG();
        }

        v75 = v31;
        v33 = 3 * v31;
        v34 = v29[3 * v31 + 4];
        v35 = v29[3 * v31 + 5];
        v36 = v29[v33 + 6];
        *&v101 = v80;
        BYTE8(v101) = v103;
        outlined copy of Result<_DataTable, Error>(v80, v30);
        outlined copy of MLDataValue(v34, v35, v36);
        v37._countAndFlagsBits = v32;
        v37._object = v89;
        MLDataTable.subscript.getter(v37);
        outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
        v91 = v78;
        LOBYTE(v92) = v79;
        v82 = v34;
        v81 = v35;
        *(&v101 + 1) = v35;
        v95 = v36;
        v102 = v36;
        static MLUntypedColumn.== infix(_:_:)(&v91, &v101);
        outlined consume of Result<_DataTable, Error>(v91, v92);
        *&v101 = v84;
        BYTE8(v101) = v85;
        v38 = Array<A>.init(_:)(&v101, xmm0_8_0);
        v39 = v38[2];
        if (v39)
        {
          v98 = v96[2];

          v77 = v38;
          v40 = v38 + 6;
          v41 = 0;
          v42 = _swiftEmptyArrayStorage;
          v88 = v39;
          do
          {
            if (v98 == v41)
            {
              break;
            }

            if (v41 >= v96[2])
            {
              BUG();
            }

            if (!*v40 && *(v40 - 2) == 1)
            {
              v87 = *(v40 - 1);
              v43 = v96[v41 + 4];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v42);
              *&v101 = v42;
              v86 = v43;
              if (!isUniquelyReferenced_nonNull_native)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1);
                v42 = v101;
              }

              v45 = v42[2];
              v46 = v42[3];
              v47 = v45 + 1;
              if (v46 >> 1 <= v45)
              {
                v83 = v45 + 1;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v46 >= 2, v45 + 1, 1);
                v47 = v83;
                v42 = v101;
              }

              v42[2] = v47;
              v48 = 4 * v45;
              v42[v48 + 4] = 1;
              v42[v48 + 5] = v87;
              LOBYTE(v42[v48 + 6]) = 0;
              v42[v48 + 7] = v86;
              v39 = v88;
            }

            ++v41;
            v40 += 24;
          }

          while (v39 != v41);

          LOBYTE(v38) = v77;
        }

        else
        {
          v42 = _swiftEmptyArrayStorage;
        }

        v38;
        object = v93._object;
        ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n(v42);

        v51 = specialized _copyCollectionToContiguousArray<A>(_:)(0, ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n[2]);
        v52 = v73;
        v53 = randomSplit<A>(indices:proportions:generator:)(v51, v73, v71, v72, a7);
        v93._object = object;
        if (object)
        {
          break;
        }

        v54 = v53;

        v88 = *(v52 + 16);
        if (v88)
        {
          v55 = 0;
          v56 = v94;
          v87 = ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n;
          do
          {
            if (v55 >= v54[2])
            {
              BUG();
            }

            v98 = *(v54[v55 + 4] + 16);
            if (v98)
            {
              v57 = 0;
              v86 = v55;
              do
              {
                v58 = v54[v55 + 4];
                if (v57 >= *(v58 + 16))
                {
                  BUG();
                }

                v59 = *(v58 + 8 * v57 + 32);
                if (v59 < 0)
                {
                  BUG();
                }

                if (v59 >= ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n[2])
                {
                  BUG();
                }

                v60 = ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n[v59 + 4];
                if (!swift_isUniquelyReferenced_nonNull_native(v56))
                {
                  v56 = specialized _ArrayBuffer._consumeAndCreateNew()(v56);
                }

                if (v60 < 0)
                {
                  BUG();
                }

                if (v60 >= v56[2])
                {
                  BUG();
                }

                ++v57;
                v55 = v86;
                v56[v60 + 4] = v86;
                ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n = v87;
              }

              while (v98 != v57);
            }

            ++v55;
          }

          while (v55 != v88);
          v94 = v56;
        }

        ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n;
        v54;
        v31 = v75 + 1;
        outlined consume of MLDataValue(v82, v81, v95);
        v32 = v93._countAndFlagsBits;
        v30 = v97;
        v29 = v90;
        if (v31 == v76)
        {
          goto LABEL_41;
        }
      }

      ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n;

      outlined consume of MLDataValue(v82, v81, v95);
      v94;
      v90;

      return outlined consume of Result<_DataTable, Error>(v99, v100);
    }

    else
    {
LABEL_41:

      v29;
      LOBYTE(v101) = v94;
      v61 = alloca(24);
      v62 = alloca(32);
      v104 = &v101;
      ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
      v65 = v64;
      v101;
      MLDataTable.willMutate()();
      *&v101 = ML14_UntypedColumnC_s5Error_pTt1g5;
      BYTE8(v101) = v65 & 1;
      LODWORD(v98) = v65;
      outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v65);
      MLDataTable.addImpl(newColumn:named:)(&v101, 0x6F69746974726170, 0xE90000000000006ELL);
      outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
      v66 = v100;
      if (v100)
      {
        outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v98);
        v67 = v99;
      }

      else
      {
        v67 = v99;
        outlined copy of Result<_DataTable, Error>(v99, 0);
        _DataTable.columnNamesDidChange()();
        outlined consume of Result<_DataTable, Error>(v67, 0);
        outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v98);
      }

      result = v74;
      *v74 = v67;
      *(result + 8) = v66;
    }
  }

  else
  {
    v68 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v68, 0, 0);
    *v69 = 0xD000000000000022;
    *(v69 + 8) = "lue from annotation." + 0x8000000000000000;
    *(v69 + 16) = 0;
    *(v69 + 32) = 0;
    *(v69 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t *stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, double xmm0_8_0, void *a7, uint64_t a8, uint64_t a9)
{
  v147 = a4;
  countAndFlagsBits = v11;
  v138._countAndFlagsBits = a6;
  v137 = a5;
  v133 = a1;
  v13 = *a3;
  v150 = *(a3 + 8);
  v139 = v13;
  v124 = v10;
  v132 = a2;
  if (v150)
  {
    v146._countAndFlagsBits = v11;
    outlined copy of Result<_DataTable, Error>(v13, 1);
    v14 = tc_v1_flex_list_create(0);
    if (!v14)
    {
      BUG();
    }

    v15 = v14;
    v16 = type metadata accessor for CMLSequence();
    v17 = swift_allocObject(v16, 25, 7);
    *(v17 + 16) = v15;
    *(v17 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v13, 1);
    countAndFlagsBits = v146._countAndFlagsBits;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v13, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v13, 0);
    v17 = v140;
  }

  v146._countAndFlagsBits = &v119;
  v18 = v147;
  v148._countAndFlagsBits = v147;
  v19 = v137;
  v148._object = v137;
  v20 = alloca(24);
  v21 = alloca(32);
  v121 = &v148;
  v22 = countAndFlagsBits;
  v23 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v119, v17);
  v144 = v22;

  if ((v23 & 1) == 0)
  {
    v148._countAndFlagsBits = 0x2064696C61766E49;
    v148._object = 0xE800000000000000;
    v29._countAndFlagsBits = v18;
    v29._object = v19;
    String.append(_:)(v29);
    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v30 = v148;
LABEL_27:
    v146 = v30;
    v62 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v62, 0, 0);
    *v63 = v146;
    *(v63 + 16) = 0;
    *(v63 + 32) = 0;
    *(v63 + 48) = 0;
    return swift_willThrow();
  }

  if (v150)
  {
    v24 = v139;
    outlined copy of Result<_DataTable, Error>(v139, 1);
    v25 = tc_v1_flex_list_create(0);
    if (!v25)
    {
      BUG();
    }

    v26 = v25;
    v27 = type metadata accessor for CMLSequence();
    v28 = swift_allocObject(v27, 25, 7);
    *(v28 + 16) = v26;
    *(v28 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v24, 1);
  }

  else
  {
    v31 = v139;
    outlined copy of Result<_DataTable, Error>(v139, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v31, 0);
    v28 = v140;
  }

  v32 = v138._countAndFlagsBits;
  v148._countAndFlagsBits = v138._countAndFlagsBits;
  v148._object = a7;
  v33 = alloca(24);
  v34 = alloca(32);
  v152 = &v148;
  v35 = v144;
  v36 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v151, v28);
  v146._countAndFlagsBits = v35;

  if ((v36 & 1) == 0)
  {
    v148._countAndFlagsBits = 0x2064696C61766E49;
    v148._object = 0xE800000000000000;
    v61._countAndFlagsBits = v32;
    v61._object = a7;
    String.append(_:)(v61);
    v61._countAndFlagsBits = 46;
    v61._object = 0xE100000000000000;
    String.append(_:)(v61);
    v30 = v148;
    goto LABEL_27;
  }

  v37 = v139;
  v140 = v139;
  LOBYTE(v141) = v150;
  v148._countAndFlagsBits = v139;
  LOBYTE(v148._object) = v150;
  v38 = v150;
  outlined copy of Result<_DataTable, Error>(v139, v150);
  outlined copy of Result<_DataTable, Error>(v37, v38);
  v39._countAndFlagsBits = v147;
  v39._object = v137;
  MLDataTable.subscript.getter(v39);
  outlined consume of Result<_DataTable, Error>(v148._countAndFlagsBits, v148._object);
  v122 = v142;
  v123 = object;
  MLUntypedColumn.dropDuplicates()();
  outlined consume of Result<_DataTable, Error>(v122, v123);
  v142 = v148._countAndFlagsBits;
  object = v148._object;
  v40 = Array<A>.init(_:)(&v142, xmm0_8_0);
  v39._countAndFlagsBits = v37;
  LODWORD(v37) = v38;
  v134 = v38;
  outlined copy of Result<_DataTable, Error>(v39._countAndFlagsBits, v38);
  v41 = v137;

  v42 = v146._countAndFlagsBits;
  ML11MLDataValueOG_AHs5NeverOTg503_s8d81ML34stratifiedSplitBySequenceGenerator11proportions9generator9dataTable2by2onAA06f30K0VSaySdG_xzAIS2StKSGRzlFAA0N5G8OALXEfU_AF0F5TableVS2STf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11MLDataValueOG_AHs5NeverOTg503_s8d81ML34stratifiedSplitBySequenceGenerator11proportions9generator9dataTable2by2onAA06f30K0VSaySdG_xzAIS2StKSGRzlFAA0N5G8OALXEfU_AF0F5TableVS2STf1cn_n(v40, v139, v37, v147, v41, v138._countAndFlagsBits, a7);
  v125 = v42;
  v43 = v40[2];

  v126 = v40;
  ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5(v40, 0, v43);
  v138._object = _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5(_swiftEmptyArrayStorage, v43);
  v142 = v139;
  object = v150;
  outlined copy of Result<_DataTable, Error>(v139, v134);
  v39._countAndFlagsBits = v147;
  v39._object = v41;
  MLDataTable.subscript.getter(v39);
  outlined consume of Result<_DataTable, Error>(v142, object);
  v142 = v148._countAndFlagsBits;
  object = v148._object;
  v45 = Array<A>.init(_:)(&v142, xmm0_8_0);
  v131 = v45[2];
  if (v131)
  {
    v145 = ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5;
    v128 = v45;
    v46 = (v45 + 6);
    v47 = 0;
    do
    {
      v146._countAndFlagsBits = v47;
      v48 = v145;
      if (!v145[2])
      {
        BUG();
      }

      v49 = *(v46 - 2);
      v50 = *(v46 - 1);
      v144 = v46;
      v51 = *v46;
      outlined copy of MLDataValue(v49, v50, *v46);
      outlined copy of MLDataValue(v49, v50, v51);
      *&v52 = v49;
      *(&v52 + 1) = v50;
      specialized __RawDictionaryStorage.find<A>(_:)(v52, v51, xmm0_8_0);
      if ((v54 & 1) == 0)
      {
        outlined consume of MLDataValue(v49, v50, v51);
        BUG();
      }

      v55 = *(*(v48 + 56) + 8 * v53);
      LODWORD(v129) = v51;
      outlined consume of MLDataValue(v49, v50, v51);
      v56 = v138._object;
      if (!swift_isUniquelyReferenced_nonNull_native(v138._object))
      {
        v56 = specialized _ArrayBuffer._consumeAndCreateNew()(v56);
      }

      if (v55 < 0)
      {
        BUG();
      }

      if (v55 >= v56[2])
      {
        BUG();
      }

      v135 = v49;
      v57 = v56[v55 + 4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v57);
      v136 = v55;
      v56[v55 + 4] = v57;
      v138._object = v56;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57);
        v56[v136 + 4] = v57;
      }

      v130 = v50;
      v59 = v57[2];
      if (v57[3] >> 1 <= v59)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57[3] >= 2uLL, v59 + 1, 1, v57);
        *(v138._object + v136 + 4) = v57;
      }

      v60 = v146._countAndFlagsBits;
      v57[2] = v59 + 1;
      v57[v59 + 4] = v60;
      v47 = (v60 + 1);
      outlined consume of MLDataValue(v135, v130, v129);
      v46 = (v144 + 3);
    }

    while (v131 != v47);
    v145;
    LOBYTE(v45) = v128;
  }

  else
  {
    ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5;
  }

  v45;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v65, v120);
  *(inited + 16) = 3;
  *(inited + 24) = 6;
  *(inited + 32) = 0x73656369646E69;
  *(inited + 40) = 0xE700000000000000;
  LOBYTE(v148._countAndFlagsBits) = v138._object;
  v67 = alloca(24);
  v68 = alloca(24);
  v152 = &v148;

  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(_s8CreateML15MLUntypedColumnVyACxcSTRzAA22MLDataValueConvertible7ElementRpzlufcAA08_UntypedD0CyKXEfU_SaySaySiGG_TG5TA_0);
  *(inited + 56) = v69 & 1;
  v148._countAndFlagsBits;
  *(inited + 64) = v138._countAndFlagsBits;
  *(inited + 72) = a7;
  LOBYTE(v148._countAndFlagsBits) = ML11MLDataValueOG_AHs5NeverOTg503_s8d81ML34stratifiedSplitBySequenceGenerator11proportions9generator9dataTable2by2onAA06f30K0VSaySdG_xzAIS2StKSGRzlFAA0N5G8OALXEfU_AF0F5TableVS2STf1cn_n;
  v70 = alloca(24);
  v71 = alloca(24);
  v152 = &v148;

  *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(_s8CreateML15MLUntypedColumnVyACxcSTRzAA11MLDataValueO7ElementRtzlufcAA08_UntypedD0CyKXEfU_SayAEG_TG5TA_0);
  *(inited + 88) = v72 & 1;
  v148._countAndFlagsBits;
  *(inited + 96) = v147;
  *(inited + 104) = v137;
  v148._countAndFlagsBits = v126;
  v73 = alloca(24);
  v74 = alloca(24);
  v152 = &v148;

  *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  *(inited + 120) = v75 & 1;
  v148._countAndFlagsBits;
  v76 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  v77 = v125;
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v76);
  if (v77)
  {
    v138._object;
    return outlined consume of Result<_DataTable, Error>(v140, v141);
  }

  v78 = v148._countAndFlagsBits;
  v79 = v148._object;
  MLDataTable.stratifiedSplit<A>(proportions:on:generator:)(v133, v138._countAndFlagsBits, a7, v132, a8, a9, xmm0_8_0);
  LOBYTE(v133) = v79;
  v132 = v78;
  v146._countAndFlagsBits = 0;
  v145 = v148._countAndFlagsBits;
  LOBYTE(v138._countAndFlagsBits) = v148._object;
  v142 = v139;
  object = v150;
  outlined copy of Result<_DataTable, Error>(v139, v134);
  v80._countAndFlagsBits = v147;
  v80._object = v137;
  MLDataTable.subscript.getter(v80);
  outlined consume of Result<_DataTable, Error>(v142, object);
  v81 = v148._countAndFlagsBits;
  v82 = v148._object;
  if (LOBYTE(v148._object))
  {
    v83 = -1;
  }

  else
  {

    v83 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v81, 0);
  }

  outlined consume of Result<_DataTable, Error>(v81, v82);
  v144 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v83);
  v142 = v145;
  object = v138._countAndFlagsBits;
  LODWORD(v136) = LOBYTE(v138._countAndFlagsBits);
  outlined copy of Result<_DataTable, Error>(v145, v138._countAndFlagsBits);
  v84._countAndFlagsBits = 0x73656369646E69;
  v84._object = 0xE700000000000000;
  MLDataTable.subscript.getter(v84);
  outlined consume of Result<_DataTable, Error>(v142, object);
  v85 = v148._countAndFlagsBits;
  if (LOBYTE(v148._object) == 1)
  {
    outlined consume of Result<_DataTable, Error>(v148._countAndFlagsBits, 1);
LABEL_78:
    BUG();
  }

  v86 = CMLColumn.size.getter();
  outlined consume of Result<_DataTable, Error>(v85, 0);
  outlined consume of Result<_DataTable, Error>(v85, 0);
  v139 = v86;
  if (v86 < 0)
  {
    goto LABEL_78;
  }

  v87 = v145;
  if (v86)
  {
    v147 = 0;
    while (!LOBYTE(v138._countAndFlagsBits))
    {
      v88 = *(v87 + 16);
      outlined copy of Result<_DataTable, Error>(v87, 0);

      v89 = v146._countAndFlagsBits;
      v90 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v88, 0x73656369646E69, 0xE700000000000000);
      v91 = v89;
      if (v89)
      {
        v89;

LABEL_74:
        LOBYTE(v148._object) = 0;
        _StringGuts.grow(_:)(34);
        v148._object;
        v148._countAndFlagsBits = 0xD00000000000001FLL;
        v148._object = "ml.activityclassifier" + 0x8000000000000000;
        v115._countAndFlagsBits = 0x73656369646E69;
        v115._object = 0xE700000000000000;
        String.append(_:)(v115);
        v115._object = 0xE100000000000000;
        v115._countAndFlagsBits = 34;
        String.append(_:)(v115);
        v146 = v148;
        v116 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        v117 = swift_allocError(&type metadata for MLCreateError, v116, 0, 0);
        *v118 = v146;
        *(v118 + 16) = 0;
        *(v118 + 32) = 0;
        *(v118 + 48) = 1;
        outlined consume of Result<_DataTable, Error>(v145, v136);
        outlined consume of Result<_DataTable, Error>(v117, 1);
LABEL_75:
        BUG();
      }

      v92 = v90;

      outlined consume of Result<_DataTable, Error>(v87, 0);
      v93 = type metadata accessor for _UntypedColumn();
      v94 = swift_allocObject(v93, 24, 7);
      *(v94 + 16) = v92;

      _UntypedColumn.valueAtIndex(index:)(v147, xmm0_8_0);
      outlined consume of Result<_DataTable, Error>(v94, 0);
      outlined consume of Result<_DataTable, Error>(v94, 0);
      if (v149 != 3)
      {
        goto LABEL_75;
      }

      v137 = v148._object;
      v95 = v148._countAndFlagsBits;

      if (CMLSequence.size.getter())
      {
        v96 = 0;
        v131 = v95;
        while (1)
        {
          v97 = CMLSequence.value(at:)(v96);
          v146._countAndFlagsBits = v91;
          if (v91)
          {
            swift_unexpectedError(v146._countAndFlagsBits, "CreateML/SequenceType.swift", 27, 1, 36);
            BUG();
          }

          MLDataValue.init(_:)(v97, xmm0_8_0);
          v129 = v148._object;
          v98 = v148._countAndFlagsBits;
          v99 = v149;
          LODWORD(v130) = v149;
          outlined copy of MLDataValue(v148._countAndFlagsBits, v148._object, v149);
          v135 = v98;
          outlined consume of MLDataValue(v98, v129, v130);
          if (v96 >= CMLSequence.size.getter())
          {
            BUG();
          }

          if (v99)
          {
            BUG();
          }

          v100 = v96;
          v101 = v145;
          outlined copy of Result<_DataTable, Error>(v145, 0);
          v102._countAndFlagsBits = 0x6F69746974726170;
          v102._object = 0xE90000000000006ELL;
          specialized MLDataTable.subscript.getter(v102, v101, v136);
          outlined consume of Result<_DataTable, Error>(v101, 0);
          v103 = v142;
          if (object)
          {
            break;
          }

          outlined copy of Result<_DataTable, Error>(v142, 0);
          _UntypedColumn.valueAtIndex(index:)(v147, xmm0_8_0);
          outlined consume of Result<_DataTable, Error>(v103, 0);
          v105 = v148._countAndFlagsBits;
          v104 = v144;
          if (v149)
          {
            outlined consume of MLDataValue(v148._countAndFlagsBits, v148._object, v149);
            outlined consume of Result<_DataTable, Error>(v103, 0);
            goto LABEL_50;
          }

          outlined consume of Result<_DataTable, Error>(v103, 0);
          if (!swift_isUniquelyReferenced_nonNull_native(v104))
          {
LABEL_57:
            v104 = specialized _ArrayBuffer._consumeAndCreateNew()(v104);
          }

LABEL_52:
          if (v135 < 0)
          {
            BUG();
          }

          if (v135 >= v104[2])
          {
            BUG();
          }

          v144 = v104;
          v104[v135 + 4] = v105;
          v96 = v100 + 1;
          v95 = v131;
          v106 = v100 + 1 == CMLSequence.size.getter();
          v91 = v146._countAndFlagsBits;
          if (v106)
          {
            goto LABEL_58;
          }
        }

        outlined consume of Result<_DataTable, Error>(v142, 1);
        v104 = v144;
LABEL_50:
        v105 = 0;
        if (!swift_isUniquelyReferenced_nonNull_native(v104))
        {
          goto LABEL_57;
        }

        v105 = 0;
        goto LABEL_52;
      }

LABEL_58:
      v146._countAndFlagsBits = v91;
      v107 = v147 + 1;

      outlined consume of MLDataValue(v95, v137, 3);
      v147 = v107;
      v87 = v145;
      if (v107 == v139)
      {
        goto LABEL_59;
      }
    }

    swift_willThrow();
    outlined copy of Result<_DataTable, Error>(v87, 1);
    goto LABEL_74;
  }

LABEL_59:
  v138._object;
  LOBYTE(v148._countAndFlagsBits) = v144;
  v108 = alloca(24);
  v109 = alloca(32);
  v152 = &v148;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  v112 = v111;
  v148._countAndFlagsBits;
  MLDataTable.willMutate()();
  v148._countAndFlagsBits = ML14_UntypedColumnC_s5Error_pTt1g5;
  LOBYTE(v148._object) = v112 & 1;
  LODWORD(v144) = v112;
  outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v112);
  MLDataTable.addImpl(newColumn:named:)(&v148, 0x6F69746974726170, 0xE90000000000006ELL);
  outlined consume of Result<_DataTable, Error>(v148._countAndFlagsBits, v148._object);
  v113 = v141;
  if (v141)
  {
    outlined consume of Result<_DataTable, Error>(v132, v133);
    outlined consume of Result<_DataTable, Error>(v145, v136);
    v114 = v140;
  }

  else
  {
    v114 = v140;
    outlined copy of Result<_DataTable, Error>(v140, 0);
    _DataTable.columnNamesDidChange()();
    outlined consume of Result<_DataTable, Error>(v114, 0);
    outlined consume of Result<_DataTable, Error>(v132, v133);
    outlined consume of Result<_DataTable, Error>(v145, v136);
  }

  outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v144);
  result = v124;
  *v124 = v114;
  *(result + 8) = v113;
  return result;
}

char closure #1 in stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(__int128 *a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v20._countAndFlagsBits = a4;
  v18 = v7;
  v20._object = a5;
  v26 = *(a1 + 16);
  *&v23 = a2;
  v25 = a3;
  v8 = a3 & 1;
  BYTE8(v23) = a3 & 1;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  MLDataTable.subscript.getter(v20);
  outlined consume of Result<_DataTable, Error>(a2, SBYTE8(v23));
  v21 = v16;
  v22 = v17;
  v9 = *a1;
  v23 = *a1;
  v24 = v26;
  static MLUntypedColumn.== infix(_:_:)(&v21, &v23);
  outlined consume of Result<_DataTable, Error>(v21, v22);
  *&v23 = a2;
  BYTE8(v23) = v8;
  v21 = v14;
  v22 = v15;
  outlined copy of Result<_DataTable, Error>(a2, v25);
  MLDataTable.subscript.getter(&v21);
  outlined consume of Result<_DataTable, Error>(v21, v22);
  outlined consume of Result<_DataTable, Error>(v23, SBYTE8(v23));
  *&v23 = v16;
  BYTE8(v23) = v17;
  v10._countAndFlagsBits = a6;
  v10._object = a7;
  MLDataTable.subscript.getter(v10);
  outlined consume of Result<_DataTable, Error>(v23, SBYTE8(v23));
  v11 = v21;
  if (v22)
  {
    outlined consume of Result<_DataTable, Error>(v21, 1);
    v12 = 0;
    result = 6;
  }

  else
  {

    _UntypedColumn.valueAtIndex(index:)(0, *&v9);
    outlined consume of Result<_DataTable, Error>(v11, 0);
    outlined consume of Result<_DataTable, Error>(v11, 0);
    v12 = v23;
    result = v24;
  }

  *v18 = v12;
  *(v18 + 16) = result;
  return result;
}

unint64_t MersenneTwisterGenerator.twist()()
{
  v1 = v0;
  v2 = *(v0 + 120);
  v3 = 156;
  v4 = 0;
  do
  {
    v5 = v2[2];
    if (v4 >= v5)
    {
      BUG();
    }

    v6 = v3 / 0x270;
    v7 = 0;
    if (v4 != 623)
    {
      v7 = v4 + 1;
    }

    if (v7 >= v5)
    {
      BUG();
    }

    v8 = v2[v7 + 4] % 0x270uLL;
    v9 = ((v8 | (HIDWORD(v2[v4 + 4]) << 32)) >> 1) ^ 0xB5026F5AA96619E9;
    if ((v8 & 1) == 0)
    {
      v9 = (v8 | (HIDWORD(v2[v4 + 4]) << 32)) >> 1;
    }

    if (v4 + 156 - 624 * v6 >= v5)
    {
      BUG();
    }

    v16 = v4 + 1;
    v15 = v3;
    v10 = *(&v2[v4] + 1280 - 4992 * v6);
    v11 = v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v2);
    *(v11 + 120) = v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      v1 = v11;
    }

    else
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v1 = v11;
      v2 = v14;
    }

    if (v4 >= v2[2])
    {
      BUG();
    }

    v2[v4 + 4] = v9 ^ v10;
    *(v1 + 120) = v2;
    *(v1 + 128) = 0;
    v3 = v15 + 1;
    result = ++v4;
  }

  while (v16 != 624);
  return result;
}

void *MersenneTwisterGenerator.init(seed:)(uint64_t a1)
{
  v1[2] = 32;
  v1[3] = 624;
  v1[4] = 156;
  v1[5] = 31;
  v1[6] = 0xB5026F5AA96619E9;
  v1[7] = 29;
  v1[8] = 0x5555555555555555;
  v1[9] = 17;
  v1[10] = 0x71D67FFFEDA60000;
  v1[11] = 37;
  v1[12] = 0xFFF7EEE000000000;
  v1[13] = 43;
  v1[14] = 0x5851F42D4C957F2DLL;
  v1[16] = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<UInt64>);
  v3 = swift_allocObject(v2, 40, 7);
  v3[2] = 1;
  v3[3] = 2;
  v3[4] = a1;
  v4 = 0;
  do
  {
    v5 = v4 + 1;
    if (v4 >= v4 + 1)
    {
      BUG();
    }

    v6 = 1284865837 * (LODWORD(v3[v4 + 4]) ^ (v3[v4 + 4] >> 30)) + 0x5851F42D00000000 * (v3[v4 + 4] ^ (v3[v4 + 4] >> 30)) + 0x4C957F2D00000000 * ((v3[v4 + 4] ^ (v3[v4 + 4] >> 30)) >> 32);
    v7 = __CFADD__(v5, v6);
    v8 = v5 + v6;
    if (v7)
    {
      BUG();
    }

    if (v3[3] >> 1 <= v5)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v4 + 2, 1, v3);
    }

    v3[2] = v4 + 2;
    v3[v4++ + 5] = v8;
  }

  while (v5 != 623);
  v1[15] = v3;
  return v1;
}

Swift::UInt64 __swiftcall MersenneTwisterGenerator.next()()
{
  v1 = *(v0 + 128);
  if (v1 == 624)
  {
    MersenneTwisterGenerator.twist()();
    v1 = *(v0 + 128);
  }

  if (v1 < 0)
  {
    BUG();
  }

  v2 = *(v0 + 120);
  if (v1 >= *(v2 + 16))
  {
    BUG();
  }

  v3 = *(v2 + 8 * v1 + 32);
  v4 = v3 ^ (v3 >> 29) & 0x555555555 ^ ((v3 ^ (v3 >> 29) & 0x555555555) << 17) & 0x71D67FFFEDA60000 ^ (((v3 ^ (v3 >> 29) & 0x55555555 ^ ((v3 ^ (v3 >> 29) & 0x55555555) << 17) & 0xEDA60000) & 0x7FFBF77) << 37);
  result = v4 ^ (v4 >> 43);
  *(v0 + 128) = v1 + 1;
  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Range<Int>);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Range<A>, v1);
    lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A> = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Range<Int>);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Range<A>, v1);
    lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A> = result;
  }

  return result;
}

void *MLTextClassifier.DataSource.stratifiedSplit(proportions:seed:labelColumn:textColumn:)(__int128 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, double a7)
{
  v18 = a4;
  v19 = a3;
  v20 = a6;
  result = static _TextUtilities.getTextLabeledDictionary(from:)(v8, a7);
  if (!v7)
  {
    v11 = result;
    specialized generateTextTable<A>(_:textColumn:labelColumn:using:)(result, a5, v20, v19, v18, v10);
    v11;
    if (a2 < 0)
    {
      BUG();
    }

    v20 = v16;
    v12 = v17;
    v13 = type metadata accessor for MersenneTwisterGenerator();
    swift_allocObject(v13, 136, 7);
    v16 = MersenneTwisterGenerator.init(seed:)(a2);
    v14 = v20;
    specialized stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(a1, &v16, v20, v17, v19, v18, a7);

    return outlined consume of Result<_DataTable, Error>(v14, v12);
  }

  return result;
}

uint64_t *specialized generateTextTable<A>(_:textColumn:labelColumn:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a4;
  v40 = a3;
  v42 = v6;
  v41 = a2;
  v38 = a5;
  v50 = unpackLabeledTexts(_:)(a1);
  specialized MutableCollection<>.shuffle<A>(using:)(a6, a2, v9);
  v10 = v50;
  v11 = v50[2];
  if (v11)
  {
    v50 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = _swiftEmptyArrayStorage;
    v44 = v10;
    v13 = v10 + 5;
    v43 = v11;
    do
    {
      v45 = v12;
      v46 = *(v13 - 1);
      v14 = *v13;
      v50 = v12;
      v15 = v12[2];
      v48 = v12[3];
      v49 = (v15 + 1);
      v47 = v14;

      v12 = v45;
      if (v48 >> 1 <= v15)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48 >= 2, v49, 1);
        v12 = v50;
      }

      v12[2] = v49;
      v16 = 2 * v15;
      v12[v16 + 4] = v46;
      v12[v16 + 5] = v47;
      v13 += 4;
      --v11;
    }

    while (v11);
    v45 = v12;
    v50 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
    v17 = _swiftEmptyArrayStorage;
    v18 = v44 + 7;
    do
    {
      v49 = *(v18 - 1);
      v19 = *v18;
      v50 = v17;
      v20 = v17[2];
      v48 = v17[3];
      v47 = v20 + 1;
      v46 = v19;
      v21 = v17;

      v17 = v21;
      if (v48 >> 1 <= v20)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48 >= 2, v47, 1);
        v17 = v50;
      }

      v17[2] = v20 + 1;
      v22 = 2 * v20;
      v17[v22 + 4] = v49;
      v17[v22 + 5] = v46;
      v18 += 4;
      --v43;
    }

    while (v43);
    v49 = v17;

    v23 = v45;
  }

  else
  {

    v23 = _swiftEmptyArrayStorage;
    v49 = _swiftEmptyArrayStorage;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v24, v36);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  *(inited + 32) = v41;
  *(inited + 40) = v40;
  v50 = v23;
  v26 = alloca(24);
  v27 = alloca(32);
  v37 = &v50;

  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 56) = v28 & 1;
  v50;
  *(inited + 64) = v39;
  *(inited + 72) = v38;
  v50 = v49;
  v29 = alloca(24);
  v30 = alloca(32);
  v37 = &v50;

  *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  *(inited + 88) = v31 & 1;
  v50;
  v32 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  result = _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v32);
  if (!v7)
  {
    result = v50;
    v34 = v51;
    v35 = v42;
    *v42 = v50;
    *(v35 + 8) = v34;
  }

  return result;
}

uint64_t type metadata accessor for MLTextClassifier.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLTextClassifier.DataSource;
  if (!type metadata singleton initialization cache for MLTextClassifier.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLTextClassifier.DataSource);
  }

  return result;
}

uint64_t LinearRegressorTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  v3 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  DataFrame.init()(v2);
  v4 = v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData;
  v5 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
  v7 = type metadata accessor for MLLinearRegressor.Regressor(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model;
  v9 = type metadata accessor for MLLinearRegressor.Model(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics;
  *(v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics) = 0;
  *(v1 + v10 + 16) = -1;
  v11 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics;
  *(v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics) = 0;
  *(v1 + v11 + 16) = -1;
  outlined init with take of MLClassifierMetrics(a1, v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  return v1;
}

uint64_t *LinearRegressorTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = v7;
  v48 = a6;
  v50 = a5;
  v45 = a4;
  v47 = a2;
  v52 = a1;
  v51 = *v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v46 = &v39;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v42 = &v39;
  v16 = v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  v17 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v41 = v16;
  v44 = v17;
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  DataFrame.init()(v16);
  v18 = v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData;
  v53 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v53);
  v19 = v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
  v20 = type metadata accessor for MLLinearRegressor.Regressor(0);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  v21 = v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model;
  v22 = type metadata accessor for MLLinearRegressor.Model(0);
  v23 = v45;
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  v24 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics;
  *(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics) = 0;
  *(v8 + v24 + 16) = -1;
  v25 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics;
  *(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics) = 0;
  *(v8 + v25 + 16) = -1;
  v43 = a3;
  v26 = a3;
  v27 = v50;
  v28 = v49;
  v29 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v52, v26, v23, v50);
  v49 = v28;
  if (v28)
  {
    v23;
    v27;
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
    outlined destroy of MLLinearRegressor.ModelParameters(v48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v47, &demangling cache variable for type metadata for DataFrame?);
    v30 = v53;
    v31 = *(*(v53 - 8) + 8);
    v31(v52, v53);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
    v31(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData, v30);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData, &demangling cache variable for type metadata for DataFrame?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor, &demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model, &demangling cache variable for type metadata for MLLinearRegressor.Model?);
    outlined consume of MLRegressorMetrics?(*(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics), *(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 8), *(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 16));
    outlined consume of MLRegressorMetrics?(*(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics), *(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 8), *(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 16));
    swift_deallocPartialClassInstance(v8, v51, *(*v8 + 48), *(*v8 + 52));
  }

  else
  {
    v51 = v29;
    v27;
    v50 = *(v53 - 8);
    v32 = v42;
    (*(v50 + 16))(v42, v52);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v47, v46, &demangling cache variable for type metadata for DataFrame?);
    v33 = v44;
    outlined init with copy of MLLinearRegressor.ModelParameters(v48, v32 + *(v44 + 32));
    v34 = v33;
    v35 = v32 + *(v33 + 20);
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v53);
    outlined assign with take of MLLinearRegressor.Regressor?(v46, v35, &demangling cache variable for type metadata for DataFrame?);
    v36 = *(v34 + 24);
    *(v32 + v36) = v43;
    *(v32 + v36 + 8) = v45;
    *(v32 + *(v34 + 28)) = v51;
    outlined destroy of MLLinearRegressor.ModelParameters(v48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v47, &demangling cache variable for type metadata for DataFrame?);
    (*(v50 + 8))(v52, v53);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v34);
    v37 = v41;
    swift_beginAccess(v41, v40, 33, 0);
    outlined assign with take of MLLinearRegressor.Regressor?(v32, v37, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
    swift_endAccess(v40);
    outlined init with take of MLClassifierMetrics(a7, v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  }

  return v8;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> LinearRegressorTrainingSessionDelegate.setUp()()
{
  v42 = v0;
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Model?) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v37 = v35;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Regressor?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v38 = v35;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v39 = v35;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = v42 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v42 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters, v35, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, v35, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  v40 = v12;
  if (__swift_getEnumTagSinglePayload(v35, 1, v12) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v35, v35, type metadata accessor for MLLinearRegressor.PersistentParameters);
  v17 = v42;
  v18 = v42 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
  swift_beginAccess(v42 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData, v36, 33, 0);
  v19 = type metadata accessor for DataFrame(0);
  (*(*(v19 - 8) + 24))(v18, v35, v19);
  swift_endAccess(v36);
  v20 = v40;
  v21 = &v35[v40[5]];
  v22 = v17 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData;
  swift_beginAccess(v17 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData, v36, 33, 0);
  outlined assign with copy of DataFrame?(v21, v22);
  swift_endAccess(v36);
  v23 = v20[6];
  v41 = *&v35[v23];
  v24 = *&v35[v23 + 8];
  v25 = *&v35[v20[7]];
  v26 = v20[8];
  v40 = v35;
  outlined init with copy of MLLinearRegressor.ModelParameters(&v35[v26], v36);

  v27 = v39;
  MLLinearRegressor.Regressor.init(annotationColumnName:featureColumnNames:parameters:)(v41, v24, v25, v36);
  v28 = type metadata accessor for MLLinearRegressor.Regressor(0);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
  v29 = v42 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
  swift_beginAccess(v42 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor, v36, 33, 0);
  outlined assign with take of MLLinearRegressor.Regressor?(v27, v29, &demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
  swift_endAccess(v36);
  v30 = v29;
  v31 = v38;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, v38, &demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
  if (__swift_getEnumTagSinglePayload(v31, 1, v28) == 1)
  {
    BUG();
  }

  v41 = *v38;
  v32 = v38[1];
  v39 = type metadata accessor for MLLinearRegressor.Model(0);
  v33 = v37;

  BaseLinearRegressor.makeTransformer()(v32);
  *v33 = v41;
  *(v33 + 8) = v32;
  *(v33 + 16) = 0;
  *(v33 + 32) = 0;
  outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLLinearRegressor.PersistentParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLLinearRegressor.Regressor);
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v39);
  v34 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model + v42;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model + v42, v36, 33, 0);
  outlined assign with take of MLLinearRegressor.Regressor?(v33, v34, &demangling cache variable for type metadata for MLLinearRegressor.Model?);
  swift_endAccess(v36);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> LinearRegressorTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v63 = v1;
  v67 = v2;
  rawValue = from._rawValue;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Model?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v62 = v55;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Regressor?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v59 = v55;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v60 = v55;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v58 = v55;
  v66 = type metadata accessor for MLCheckpoint(0);
  v14 = *(*(v66 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v65 = v55;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v20 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v24 = v67 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v67 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters, v56, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, v55, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  v61 = v20;
  if (__swift_getEnumTagSinglePayload(v55, 1, v20) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v55, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v55, v55, type metadata accessor for MLLinearRegressor.PersistentParameters);
  v25 = v58;
  specialized BidirectionalCollection.last.getter(rawValue);
  if (__swift_getEnumTagSinglePayload(v25, 1, v66) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v25, &demangling cache variable for type metadata for MLCheckpoint?);
    v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
    *v27 = 0xD00000000000001DLL;
    *(v27 + 8) = "reated." + 0x8000000000000000;
    *(v27 + 16) = 0;
    *(v27 + 32) = 0;
    *(v27 + 48) = 0;
    swift_willThrow();
LABEL_16:
    outlined destroy of MLActivityClassifier.ModelParameters(v55, type metadata accessor for MLLinearRegressor.PersistentParameters);
    return;
  }

  v28 = 0xEB0000000064657ALL;
  v29 = v65;
  outlined init with take of MLClassifierMetrics(v25, v65, type metadata accessor for MLCheckpoint);
  switch(*(v29 + *(v66 + 20)))
  {
    case 0:
      v30 = 0x696C616974696E69;
      break;
    case 1:
      v30 = 0x6974636172747865;
      goto LABEL_10;
    case 2:
      0;
      goto LABEL_12;
    case 3:
      v30 = 0x697461756C617665;
LABEL_10:
      v28 = 0xEA0000000000676ELL;
      break;
    case 4:
      v28 = 0xEB00000000676E69;
      v30 = 0x636E657265666E69;
      break;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)(v30, v28, 0x676E696E69617274, 0xE800000000000000, 0);
  v28;
  if ((v31 & 1) == 0)
  {
    v53 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v53, 0, 0);
    *v54 = 0xD000000000000027;
    *(v54 + 8) = "ingSessionDelegate" + 0x8000000000000000;
    *(v54 + 16) = 0;
    *(v54 + 32) = 0;
    *(v54 + 48) = 0;
    swift_willThrow();
    outlined destroy of MLActivityClassifier.ModelParameters(v65, type metadata accessor for MLCheckpoint);
    goto LABEL_16;
  }

LABEL_12:
  v32 = v67 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
  swift_beginAccess(v67 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData, v57, 33, 0);
  v33 = type metadata accessor for DataFrame(0);
  (*(*(v33 - 8) + 24))(v32, v55, v33);
  swift_endAccess(v57);
  v34 = v61;
  v35 = &v55[v61[5]];
  v36 = v67 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData;
  swift_beginAccess(v67 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData, v57, 33, 0);
  outlined assign with copy of DataFrame?(v35, v36);
  swift_endAccess(v57);
  v37 = v34[6];
  v66 = *&v55[v37];
  v38 = *&v55[v37 + 8];
  v39 = *&v55[v34[7]];
  v40 = v34[8];
  rawValue = v55;
  outlined init with copy of MLLinearRegressor.ModelParameters(&v55[v40], v57);
  v41 = v38;

  v42 = v60;
  MLLinearRegressor.Regressor.init(annotationColumnName:featureColumnNames:parameters:)(v66, v41, v39, v57);
  v43 = type metadata accessor for MLLinearRegressor.Regressor(0);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v43);
  v44 = v67 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
  swift_beginAccess(v67 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor, v57, 33, 0);
  outlined assign with take of MLLinearRegressor.Regressor?(v42, v44, &demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
  swift_endAccess(v57);
  v45 = v44;
  v46 = v59;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v45, v59, &demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
  if (__swift_getEnumTagSinglePayload(v46, 1, v43) == 1)
  {
    BUG();
  }

  v47 = lazy protocol witness table accessor for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor();
  v48 = v62;
  v49 = v65;
  v50 = v63;
  SupervisedTabularEstimator.read(from:)(v65, v43, v47);
  outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(rawValue, type metadata accessor for MLLinearRegressor.PersistentParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLLinearRegressor.Regressor);
  if (!v50)
  {
    v51 = type metadata accessor for MLLinearRegressor.Model(0);
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v51);
    v52 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model + v67;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model + v67, v57, 33, 0);
    outlined assign with take of MLLinearRegressor.Regressor?(v48, v52, &demangling cache variable for type metadata for MLLinearRegressor.Model?);
    swift_endAccess(v57);
  }
}

Swift::Int_optional __swiftcall LinearRegressorTrainingSessionDelegate.itemCount(phase:)(CreateML::MLPhase phase)
{
  if (*phase == 2)
  {
    v2 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_sessionParameters + v1;
    v3 = 0;
    v4.value = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 28) + v2);
  }

  else
  {
    v3 = 1;
    v4.value = 0;
  }

  v4.is_nil = v3;
  return v4;
}

uint64_t LinearRegressorTrainingSessionDelegate.train(from:)(uint64_t a1)
{
  v2[15] = v1;
  v2[14] = a1;
  v3 = type metadata accessor for MetricsKey(0);
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v2[18] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataFrame(0);
  v2[19] = v5;
  v6 = *(v5 - 8);
  v2[20] = v6;
  v2[21] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
  v2[22] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  v2[23] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(LinearRegressorTrainingSessionDelegate.train(from:), 0, 0);
}

uint64_t LinearRegressorTrainingSessionDelegate.train(from:)()
{
  v1 = v0[23];
  v2 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters + v0[15];
  swift_beginAccess(v2, (v0 + 2), 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, v1, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  v3 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  LODWORD(v2) = __swift_getEnumTagSinglePayload(v1, 1, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  if (v2 == 1)
  {
    BUG();
  }

  v4 = v0[14];
  v5 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_sessionParameters + v0[15];
  v6 = type metadata accessor for MLTrainingSessionParameters(0);
  v7 = *(*(v6 + 20) + v5);
  if (__OFADD__(v7, v4))
  {
    BUG();
  }

  v8 = *(v5 + *(v6 + 28));
  v9 = v8 - v4;
  if (__OFSUB__(v8, v4))
  {
    BUG();
  }

  v10 = v0;
  v45 = v8;
  v48 = v7 + v4;
  v11 = (v0 + 5);
  v12 = v0 + 8;
  v55 = (v10 + 11);
  if (v7 < v9)
  {
    v9 = v7;
  }

  v13 = type metadata accessor for EventCollector();
  swift_allocObject(v13, 32, 7);
  v14 = EventCollector.init()();
  if (v9 < 0)
  {
    BUG();
  }

  v49 = v14;
  v47 = v9;
  v54 = v10;
  if (v9)
  {
    v15 = v10[15];
    v16 = v10[20];
    v17 = v12;
    v18 = v15 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
    v43 = (OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model + v15);
    v52 = v15 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
    swift_beginAccess(v15 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor, v11, 0, 0);
    v44 = v18;
    swift_beginAccess(v18, v17, 0, 0);
    v19 = v47;
    v46 = v16;
    do
    {
      v50 = v19;
      v20 = v10[22];
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v52, v20, &demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
      v21 = type metadata accessor for MLLinearRegressor.Regressor(0);
      if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
      {
        BUG();
      }

      (*(v16 + 16))(v10[21], v44, v10[19]);
      swift_beginAccess(v43, v55, 33, 0);
      v22 = type metadata accessor for MLLinearRegressor.Model(0);
      if (__swift_getEnumTagSinglePayload(v43, 1, v22) == 1)
      {
        BUG();
      }

      v23 = v10[21];

      MLLinearRegressor.Regressor.update(_:with:eventHandler:)(v43, v23, partial apply for closure #1 in LinearRegressorTrainingSessionDelegate.train(from:), v49);
      v24 = v10[22];
      v25 = v10[19];
      v26 = v54[21];
      swift_endAccess(v55);

      v27 = v26;
      v10 = v54;
      v16 = v46;
      (*(v46 + 8))(v27, v25);
      outlined destroy of MLActivityClassifier.ModelParameters(v24, type metadata accessor for MLLinearRegressor.Regressor);
      --v19;
    }

    while (v50 != 1);
  }

  v28 = v10[18];
  v56 = v10[16];
  v29 = v10[17];
  static MetricsKey.trainingMaximumError.getter();
  ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5(v28);
  v32 = v31;
  v33 = *(v29 + 8);
  v33(v28, v56);
  if ((v32 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(8, isUniquelyReferenced_nonNull_native, *&ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5);
  }

  v35 = v54[16];
  v36 = v54[18];
  static MetricsKey.trainingError.getter();
  v57 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5(v36);
  v38 = v37;
  v33(v36, v35);
  if ((v38 & 1) == 0)
  {
    v39 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(7, v39, *&v57);
  }

  v40 = v54[23];
  v41 = v54[22];
  v51 = v54[18];
  v53 = v54[21];
  v58 = specialized _dictionaryUpCast<A, B, C, D>(_:)(_swiftEmptyDictionarySingleton);

  _swiftEmptyDictionarySingleton;
  v40;
  v41;
  v53;
  v51;
  return (v54[1])(v47, v58, v48 >= v45);
}

uint64_t LinearRegressorTrainingSessionDelegate.evaluate(from:)()
{
  v1[25] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v1[26] = swift_task_alloc((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v1[27] = v3;
  v4 = *(v3 - 8);
  v1[28] = v4;
  v1[29] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Double>>);
  v1[30] = v5;
  v6 = *(v5 - 8);
  v1[31] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[32] = swift_task_alloc(v7);
  v1[33] = swift_task_alloc(v7);
  v1[34] = swift_task_alloc(v7);
  v1[35] = swift_task_alloc(v7);
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Model?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[36] = swift_task_alloc(v8);
  v1[37] = swift_task_alloc(v8);
  v9 = type metadata accessor for DataFrame(0);
  v1[38] = v9;
  v10 = *(v9 - 8);
  v1[39] = v10;
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[40] = swift_task_alloc(v11);
  v1[41] = swift_task_alloc(v11);
  v1[42] = swift_task_alloc(v11);
  v1[43] = swift_task_alloc(v11);
  return swift_task_switch(LinearRegressorTrainingSessionDelegate.evaluate(from:), 0, 0);
}

{
  v1 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters + *(v0 + 200);
  v2 = 0;
  swift_beginAccess(v1, v0 + 16, 0, 0);
  v3 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  if (!__swift_getEnumTagSinglePayload(v1, 1, v3))
  {
    v8 = *(v0 + 296);
    v9 = *(v3 + 24);
    v70 = *(v1 + v9);
    v67 = *(v1 + v9 + 8);
    v10 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model + *(v0 + 200);
    swift_beginAccess(v10, v0 + 40, 0, 0);
    v59 = v10;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v8, &demangling cache variable for type metadata for MLLinearRegressor.Model?);
    v64 = type metadata accessor for MLLinearRegressor.Model(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v64) == 1)
    {
      BUG();
    }

    v11 = *(v0 + 336);
    v12 = *(v0 + 312);
    v13 = *(v0 + 304);
    v14 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData + *(v0 + 200);
    swift_beginAccess(v14, v0 + 64, 0, 0);
    v76 = v14;
    (*(v12 + 16))(v11, v14, v13);

    MLLinearRegressor.Model.applied(to:eventHandler:)(v11, 0, 0);
    v42 = *(v0 + 304);
    v16 = *(v0 + 296);
    v51 = *(v0 + 280);
    v62 = *(v0 + 272);
    v49 = *(v0 + 240);
    v17 = *(v0 + 232);
    v53 = *(v0 + 224);
    v81 = *(v0 + 216);
    v47 = *(v0 + 200);
    v44 = *(v0 + 208);
    v54 = *(*(v0 + 312) + 8);
    (v54)(*(v0 + 336));
    outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLLinearRegressor.Model);
    DataFrame.subscript.getter(v70, v67, &type metadata for Double);
    *(v0 + 136) = 0;
    v57 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
    OptionalColumnProtocol.filled(with:)(v0 + 136, v81, v57);
    v18 = *(v53 + 8);
    v18(v17, v81);
    swift_beginAccess(v76, v0 + 88, 32, 0);
    DataFrame.subscript.getter(v70, v67, &type metadata for Double);
    swift_endAccess(v0 + 88);
    *(v0 + 144) = 0;
    OptionalColumnProtocol.filled(with:)(v0 + 144, v81, v57);
    v56 = v18;
    v18(v17, v81);
    v82 = lazy protocol witness table accessor for type Double and conformance Double();
    v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Double>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Double>>, &protocol conformance descriptor for FilledColumn<A>);
    maximumAbsoluteError<A, B, C>(_:_:)(v51, v62, &type metadata for Double, v49, v49, v82, v19, v19);
    v77 = *(v0 + 152);
    v20 = v19;
    rootMeanSquaredError<A, B, C>(_:_:)(v51, v62, &type metadata for Double, v49, v49, v82, v19, v19);
    v21 = *(v0 + 160);
    v22 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics;
    v23 = *(v47 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics);
    v24 = *(v47 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 8);
    *(v47 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics) = v77;
    *(v47 + v22 + 8) = v21;
    v25 = *(v47 + v22 + 16);
    *(v47 + v22 + 16) = 0;
    outlined consume of MLRegressorMetrics?(v23, v24, v25);
    v26 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData + v47;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData + v47, v0 + 112, 0, 0);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26, v44, &demangling cache variable for type metadata for DataFrame?);
    if (__swift_getEnumTagSinglePayload(v44, 1, v42) == 1)
    {
      v83 = *(v0 + 344);
      v71 = *(v0 + 304);
      v27 = *(v0 + 280);
      v28 = *(v0 + 272);
      v29 = *(v0 + 248);
      v30 = *(v0 + 240);
      v73 = *(v0 + 200);
      v78 = *(v0 + 208);
      v67;
      v31 = *(v29 + 8);
      v31(v28, v30);
      v31(v27, v30);
      v54(v83, v71);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v78, &demangling cache variable for type metadata for DataFrame?);
      v32 = (v73 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 16);
      v33 = *(v73 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
      v34 = *(v73 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 8);
      v35 = *v32;
      *(v32 - 1) = 0;
      v36 = -1;
    }

    else
    {
      v37 = *(v0 + 288);
      (*(*(v0 + 312) + 32))(*(v0 + 328), *(v0 + 208), *(v0 + 304));
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, v37, &demangling cache variable for type metadata for MLLinearRegressor.Model?);
      if (__swift_getEnumTagSinglePayload(v37, 1, v64) == 1)
      {
        BUG();
      }

      MLLinearRegressor.Model.applied(to:eventHandler:)(*(v0 + 328), 0, 0);
      v79 = *(v0 + 328);
      v60 = *(v0 + 344);
      v65 = *(v0 + 320);
      v48 = *(v0 + 304);
      v45 = *(v0 + 280);
      v46 = *(v0 + 272);
      v74 = *(v0 + 264);
      v55 = *(v0 + 256);
      v50 = *(v0 + 248);
      v52 = *(v0 + 240);
      v38 = *(v0 + 232);
      v43 = *(v0 + 200);
      v39 = *(v0 + 216);
      outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 288), type metadata accessor for MLLinearRegressor.Model);
      DataFrame.subscript.getter(v70, v67, &type metadata for Double);
      *(v0 + 168) = 0;
      OptionalColumnProtocol.filled(with:)(v0 + 168, v39, v57);
      v56(v38, v39);
      DataFrame.subscript.getter(v70, v67, &type metadata for Double);
      v67;
      *(v0 + 176) = 0;
      OptionalColumnProtocol.filled(with:)(v0 + 176, v39, v57);
      v56(v38, v39);
      maximumAbsoluteError<A, B, C>(_:_:)(v74, v55, &type metadata for Double, v52, v52, v82, v20, v20);
      v68 = *(v0 + 184);
      rootMeanSquaredError<A, B, C>(_:_:)(v74, v55, &type metadata for Double, v52, v52, v82, v20, v20);
      v40 = *(v50 + 8);
      v40(v55, v52);
      v40(v74, v52);
      v54(v65, v48);
      v54(v79, v48);
      v40(v46, v52);
      v40(v45, v52);
      v54(v60, v48);
      v41 = *(v0 + 192);
      v32 = (v43 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 16);
      v33 = *(v43 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
      v34 = *(v43 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 8);
      v35 = *v32;
      *(v32 - 2) = v68;
      *(v32 - 1) = v41;
      v36 = 0;
    }

    *v32 = v36;
    outlined consume of MLRegressorMetrics?(v33, v34, v35);
    v2 = 1;
  }

  v66 = v2;
  v4 = *(v0 + 336);
  v5 = *(v0 + 328);
  v6 = *(v0 + 320);
  v7 = *(v0 + 296);
  v61 = *(v0 + 288);
  v63 = *(v0 + 280);
  v58 = *(v0 + 272);
  v75 = *(v0 + 264);
  v69 = *(v0 + 256);
  v72 = *(v0 + 208);
  v80 = *(v0 + 232);
  *(v0 + 344);
  v4;
  v5;
  v6;
  v7;
  v61;
  v63;
  v58;
  v75;
  v69;
  v80;
  v72;
  return (*(v0 + 8))(v66, 1);
}

uint64_t LinearRegressorTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = v2;
  v30 = v3;
  v32 = a1;
  v5 = 0xEB0000000064657ALL;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Model?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v31 = v27;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Regressor?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = *a2;
  v29 = v27;
  switch(v12)
  {
    case 0:
      v13 = v2;
      v14 = 0x696C616974696E69;
      break;
    case 1:
      v13 = v2;
      v14 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0;
      goto LABEL_9;
    case 3:
      v13 = v2;
      v14 = 0x697461756C617665;
LABEL_7:
      v5 = 0xEA0000000000676ELL;
      break;
    case 4:
      v13 = v2;
      v5 = 0xEB00000000676E69;
      v14 = 0x636E657265666E69;
      break;
  }

  LODWORD(v15) = 0;
  v16 = _stringCompareWithSmolCheck(_:_:expecting:)(v14, v5, 0x676E696E69617274, 0xE800000000000000, 0);
  v5;
  v17 = (v16 & 1) == 0;
  v4 = v13;
  if (!v17)
  {
LABEL_9:
    v18 = v30;
    v19 = v30 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
    swift_beginAccess(v30 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor, v27, 0, 0);
    v20 = v29;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, v29, &demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
    v21 = type metadata accessor for MLLinearRegressor.Regressor(0);
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
    {
      BUG();
    }

    v22 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model + v18;
    swift_beginAccess(v22, v28, 0, 0);
    v23 = v22;
    v15 = v31;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23, v31, &demangling cache variable for type metadata for MLLinearRegressor.Model?);
    v24 = type metadata accessor for MLLinearRegressor.Model(0);
    if (__swift_getEnumTagSinglePayload(v15, 1, v24) == 1)
    {
      BUG();
    }

    v25 = lazy protocol witness table accessor for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor();
    SupervisedTabularEstimator.write(_:to:overwrite:)(v15, v32, 1, v21, v25);
    outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLLinearRegressor.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLLinearRegressor.Regressor);
    if (!v4)
    {
      LOBYTE(v15) = 1;
    }
  }

  return v15;
}

uint64_t LinearRegressorTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v14, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
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
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for MLLinearRegressor.PersistentParameters);
    MLLinearRegressor.PersistentParameters.save(toSessionDirectory:)(v17);
    return outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLLinearRegressor.PersistentParameters);
  }
}

NSURL *LinearRegressorTrainingSessionDelegate.restore(from:phase:)(uint64_t a1)
{
  v36 = v1;
  v31 = v2;
  v30 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v33 = &v27;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v35 = &v27;
  v8 = type metadata accessor for URL(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v32 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v13 = *(*(v32 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v34 = &v27;
  v16 = alloca(v13);
  v17 = alloca(v13);
  (*(v9 + 16))(&v27, v30, v8);
  v18 = v36;
  result = MLLinearRegressor.PersistentParameters.init(sessionDirectory:)(&v27);
  if (!v18)
  {
    v36 = &v27;
    v20 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters + v31;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters + v31, v28, 0, 0);
    v21 = v35;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v20, v35, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
    v22 = v21;
    v23 = v32;
    if (__swift_getEnumTagSinglePayload(v22, 1, v32) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
      v24 = v33;
      outlined init with take of MLClassifierMetrics(v36, v33, type metadata accessor for MLLinearRegressor.PersistentParameters);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
      swift_beginAccess(v20, v29, 33, 0);
      outlined assign with take of MLLinearRegressor.Regressor?(v24, v20, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
      return swift_endAccess(v29);
    }

    else
    {
      v25 = v34;
      outlined init with take of MLClassifierMetrics(v35, v34, type metadata accessor for MLLinearRegressor.PersistentParameters);
      v26 = v36;
      LinearRegressorTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(v36, v25);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLLinearRegressor.PersistentParameters);
      return outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLLinearRegressor.PersistentParameters);
    }
  }

  return result;
}

uint64_t LinearRegressorTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(uint64_t a1, uint64_t a2)
{
  v46 = v2;
  v5 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a2 + v6);
  v10 = *(a2 + v6 + 8);
  v47 = a1;
  v48 = v5;
  if (v9 ^ v7 | v10 ^ v8 && (v45 = a2, v11 = v7, v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v7, v8, v9, v10, 0), v5 = v48, a1 = v47, v13 = v11, a2 = v45, (v12 & 1) == 0))
  {
    v41 = v9;
    v42 = v10;
    v47 = v8;
    v48 = v13;

    v21 = String.init<A>(_:)(&v41, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
    v46 = v33;
    v34 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v34, 0, 0);
    v20 = 0xED00006E6D756C6FLL;
    v22 = 0x6320746567726154;
  }

  else
  {
    v14 = *(a1 + *(v5 + 28));

    v43 = v14;
    v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v14);
    v16 = *(a2 + *(v5 + 28));

    v45 = v16;
    v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v16);
    LOBYTE(v16) = v17;
    v18 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v15, v17);
    v15;
    v16;
    if (v18)
    {
      result = static MLLinearRegressor.ModelParameters.firstIncompatibility(_:_:)(*(v48 + 32) + v47, *(v48 + 32) + a2);
      v20 = v36;
      if (!v36)
      {
        return result;
      }

      v46 = v40;
      v21 = v39;
      v47 = v38;
      v22 = v35;
      v48 = v37;
      v23 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v23, 0, 0);
    }

    else
    {
      v44 = "Classifier.swift" + 0x8000000000000000;

      v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
      v48 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v25, v26);
      v47 = v27;
      v43;

      v28 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v25, v26);
      v30 = v29;
      v20 = "Classifier.swift" + 0x8000000000000000;
      v45;
      v41 = v28;
      v42 = v30;
      v21 = String.init<A>(_:)(&v41, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
      v46 = v31;
      v32 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v32, 0, 0);
      v22 = 0xD000000000000011;
    }
  }

  *v24 = v22;
  *(v24 + 8) = v20;
  *(v24 + 16) = v48;
  *(v24 + 24) = v47;
  *(v24 + 32) = v21;
  *(v24 + 40) = v46;
  *(v24 + 48) = 3;
  return swift_willThrow();
}

uint64_t LinearRegressorTrainingSessionDelegate.deinit()
{
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  v1 = v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
  v2 = type metadata accessor for DataFrame(0);
  (*(*(v2 - 8) + 8))(v1, v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData, &demangling cache variable for type metadata for DataFrame?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor, &demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model, &demangling cache variable for type metadata for MLLinearRegressor.Model?);
  outlined consume of MLRegressorMetrics?(*(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics), *(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 8), *(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 16));
  outlined consume of MLRegressorMetrics?(*(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics), *(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 8), *(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 16));
  return v0;
}

uint64_t type metadata accessor for LinearRegressorTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for LinearRegressorTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for LinearRegressorTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for LinearRegressorTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for LinearRegressorTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v8[0] = *(result - 8) + 64;
    result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLLinearRegressor.PersistentParameters?, type metadata accessor for MLLinearRegressor.PersistentParameters);
    if (v3 <= 0x3F)
    {
      v8[1] = *(result - 8) + 64;
      result = type metadata accessor for DataFrame(319);
      if (v4 <= 0x3F)
      {
        v8[2] = *(result - 8) + 64;
        result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for DataFrame?, &type metadata accessor for DataFrame);
        if (v5 <= 0x3F)
        {
          v8[3] = *(result - 8) + 64;
          result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLLinearRegressor.Regressor?, type metadata accessor for MLLinearRegressor.Regressor);
          if (v6 <= 0x3F)
          {
            v8[4] = *(result - 8) + 64;
            result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLLinearRegressor.Model?, type metadata accessor for MLLinearRegressor.Model);
            if (v7 <= 0x3F)
            {
              v8[5] = *(result - 8) + 64;
              v8[6] = &unk_345B38;
              v8[7] = &unk_345B38;
              result = swift_updateClassMetadata2(a1, 256, 8, v8, a1 + 80);
              if (!result)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance LinearRegressorTrainingSessionDelegate(uint64_t a1)
{
  v2 = swift_task_alloc(192);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for TrainingSessionDelegate.train(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return LinearRegressorTrainingSessionDelegate.train(from:)(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance LinearRegressorTrainingSessionDelegate()
{
  v1 = swift_task_alloc(352);
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return LinearRegressorTrainingSessionDelegate.evaluate(from:)();
}

uint64_t lazy protocol witness table accessor for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor()
{
  result = lazy protocol witness table cache variable for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor;
  if (!lazy protocol witness table cache variable for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor)
  {
    v1 = type metadata accessor for MLLinearRegressor.Regressor(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLLinearRegressor.Regressor, v1);
    lazy protocol witness table cache variable for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor;
  if (!lazy protocol witness table cache variable for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor)
  {
    v1 = type metadata accessor for MLLinearRegressor.Regressor(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLLinearRegressor.Regressor, v1);
    lazy protocol witness table cache variable for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor = result;
  }

  return result;
}

uint64_t outlined consume of MLRegressorMetrics?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of Result<_RegressorMetrics, Error>(a1, a2, a3);
  }

  return result;
}

uint64_t outlined assign with take of MLLinearRegressor.Regressor?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
  (*(*(v3 - 8) + 40))(a2, a1, v3);
  return a2;
}

uint64_t CMLParameters.Key.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 0x6F635F6C6562616CLL;
      break;
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
    case 73:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x69746164696C6176;
      break;
    case 4:
      result = 1635017060;
      break;
    case 5:
      result = 0x746567726174;
      break;
    case 6:
      result = 0x736E6F6974706FLL;
      break;
    case 7:
      result = 7107189;
      break;
    case 8:
      result = 1752457584;
      break;
    case 9:
      result = 0x61625F726F727265;
      break;
    case 10:
      result = 0x726564616568;
      break;
    case 11:
      result = 0x6574696D696C6564;
      break;
    case 12:
      result = 0x5F746E656D6D6F63;
      break;
    case 13:
      result = 0x635F657061637365;
      break;
    case 14:
      result = 0x715F656C62756F64;
      break;
    case 15:
      result = 0x68635F65746F7571;
      break;
    case 16:
    case 64:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x65756C61765F616ELL;
      break;
    case 18:
      result = 0x7265745F656E696CLL;
      break;
    case 19:
      result = 0x635F74757074756FLL;
      break;
    case 20:
      result = 0x696D696C5F776F72;
      break;
    case 21:
      result = 0x776F725F70696B73;
      break;
    case 22:
      result = 0x6C6F635F74786574;
      break;
    case 23:
      result = 0x6E6F697461636F6CLL;
      break;
    case 24:
      result = 0x635F6874676E656CLL;
      break;
    case 25:
      result = 1954047348;
      break;
    case 26:
      result = 0x6F635F6E656B6F74;
      break;
    case 27:
      result = 0x656D616E656C6966;
      break;
    case 28:
      result = 0x6974636964657270;
      break;
    case 29:
      result = 0x63697274656DLL;
      break;
    case 30:
      result = 0x6F7272655F78616DLL;
      break;
    case 31:
      result = 1702063474;
      break;
    case 32:
    case 54:
    case 62:
      result = 0xD000000000000010;
      break;
    case 33:
      result = 0x7374706F5FLL;
      break;
    case 34:
      result = 0x745F74757074756FLL;
      break;
    case 35:
      result = 0x646C656966;
      break;
    case 36:
      result = 0x65665F6F69647561;
      break;
    case 37:
      result = 0x5F6E6F6973736573;
      break;
    case 38:
      result = 0x736D657469;
      break;
    case 39:
      result = 107;
      break;
    case 40:
      result = 0x65736F62726576;
      break;
    case 41:
      result = 0x5F6C6C615F746567;
      break;
    case 42:
      result = 0x74657361746164;
      break;
    case 43:
      result = 0x7461645F72657375;
      break;
    case 44:
      result = 0x7461645F6D657469;
      break;
    case 45:
      result = 0x61645F6172747865;
      break;
    case 46:
      result = 0x5F7473657261656ELL;
      break;
    case 47:
      result = 1937010799;
      break;
    case 48:
      result = 0x7972657571;
      break;
    case 49:
      result = 0x6B5F706F74;
      break;
    case 50:
      result = 0x7463697274736572;
      break;
    case 51:
      result = 0x6564756C637865;
      break;
    case 52:
      result = 0xD00000000000001DLL;
      break;
    case 53:
    case 56:
      result = 0xD000000000000017;
      break;
    case 55:
      result = 0x7366666F747563;
      break;
    case 57:
      result = 0xD000000000000011;
      break;
    case 58:
      result = 0xD000000000000014;
      break;
    case 59:
      result = 0xD000000000000016;
      break;
    case 60:
      result = 0xD000000000000019;
      break;
    case 61:
      result = 0x7963617275636361;
      break;
    case 63:
      result = 0x625F74726F706572;
      break;
    case 65:
      result = 0x6F69736963657270;
      break;
    case 66:
      result = 0x6C6C61636572;
      break;
    case 67:
      result = 6518113;
      break;
    case 68:
      result = 0x767275635F636F72;
      break;
    case 69:
      result = 0x65726F63735F3166;
      break;
    case 70:
      result = 0x73736F6C5F676F6CLL;
      break;
    case 71:
      result = 0x656C797473;
      break;
    case 72:
      result = 0x746E65746E6F63;
      break;
    case 74:
      result = 0xD000000000000011;
      break;
    case 75:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

unint64_t MLTextClassifier.FeatureExtractorType.description.getter()
{
  v1 = type metadata accessor for URL(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(*(type metadata accessor for MLTextClassifier.FeatureExtractorType(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of MLTextClassifier.FeatureExtractorType(v0, &v15);
  switch(__swift_getEnumTagSinglePayload(&v15, 4, v1))
  {
    case 0u:
      (*(v2 + 32))(&v15, &v15, v1);
      v16 = 0;
      v17 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);
      v9 = v17;
      v17;
      v16 = 0xD00000000000001ALL;
      v17 = "image_column_name" + 0x8000000000000000;
      v10._countAndFlagsBits = URL.path.getter(v9);
      object = v10._object;
      String.append(_:)(v10);
      object;
      v12._countAndFlagsBits = 39;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13 = v16;
      (*(v2 + 8))(&v15, v1);
      break;
    case 1u:
      v13 = 0xD000000000000015;
      break;
    case 2u:
      v13 = 0xD000000000000016;
      break;
    case 3u:
      v13 = 0xD000000000000027;
      break;
    case 4u:
      v13 = 0xD000000000000046;
      break;
  }

  return v13;
}

uint64_t type metadata accessor for MLTextClassifier.FeatureExtractorType(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLTextClassifier.FeatureExtractorType;
  if (!type metadata singleton initialization cache for MLTextClassifier.FeatureExtractorType)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLTextClassifier.FeatureExtractorType);
  }

  return result;
}

uint64_t outlined init with copy of MLTextClassifier.FeatureExtractorType(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

unint64_t MLTextClassifier.FeatureExtractorType.playgroundDescription.getter()
{
  v1 = v0;
  result = MLTextClassifier.FeatureExtractorType.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

id NLModelEmbeddingType.init(_:)(uint64_t a1)
{
  v10[0] = v1;
  v2 = *(*(type metadata accessor for MLTextClassifier.FeatureExtractorType(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLTextClassifier.FeatureExtractorType(a1, v10);
  v5 = type metadata accessor for URL(0);
  switch(__swift_getEnumTagSinglePayload(v10, 4, v5))
  {
    case 0u:
      v7 = NLModelEmbeddingTypeCustom;
      outlined destroy of MLTextClassifier.FeatureExtractorType(a1);
      outlined destroy of MLTextClassifier.FeatureExtractorType(v10);
      return v7;
    case 1u:
      v6 = &NLModelEmbeddingTypeStatic;
      goto LABEL_6;
    case 2u:
    case 3u:
      v6 = &NLModelEmbeddingTypeDynamic;
      goto LABEL_6;
    case 4u:
      v6 = &NLModelEmbeddingTypeContextual;
LABEL_6:
      v9 = *v6;
      outlined destroy of MLTextClassifier.FeatureExtractorType(a1);
      return v9;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for MLTextClassifier.FeatureExtractorType(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *__src;
    *v3 = *__src;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(__src, 4, v6))
    {
      return memcpy(__dst, __src, *(v4 + 64));
    }

    (*(*(v6 - 8) + 16))(__dst, __src, v6);
    __swift_storeEnumTagSinglePayload(__dst, 0, 4, v6);
  }

  return v3;
}

uint64_t destroy for MLTextClassifier.FeatureExtractorType(uint64_t a1)
{
  v1 = type metadata accessor for URL(0);
  result = __swift_getEnumTagSinglePayload(a1, 4, v1);
  if (!result)
  {
    return (*(*(v1 - 8) + 8))(a1, v1);
  }

  return result;
}

void *initializeWithCopy for MLTextClassifier.FeatureExtractorType(void *__dst, void *__src, uint64_t a3)
{
  v4 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(__src, 4, v4))
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  (*(*(v4 - 8) + 16))(__dst, __src, v4);
  __swift_storeEnumTagSinglePayload(__dst, 0, 4, v4);
  return __dst;
}

void *assignWithCopy for MLTextClassifier.FeatureExtractorType(void *__dst, void *__src, uint64_t a3)
{
  v3 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 4, v3);
  v5 = __swift_getEnumTagSinglePayload(__src, 4, v3);
  if (!EnumTagSinglePayload)
  {
    v6 = *(v3 - 8);
    if (!v5)
    {
      (*(v6 + 24))(__dst, __src, v3);
      return __dst;
    }

    (*(v6 + 8))(__dst, v3);
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  if (v5)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  (*(*(v3 - 8) + 16))(__dst, __src, v3);
  __swift_storeEnumTagSinglePayload(__dst, 0, 4, v3);
  return __dst;
}

void *initializeWithTake for MLTextClassifier.FeatureExtractorType(void *__dst, void *__src, uint64_t a3)
{
  v4 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(__src, 4, v4))
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  (*(*(v4 - 8) + 32))(__dst, __src, v4);
  __swift_storeEnumTagSinglePayload(__dst, 0, 4, v4);
  return __dst;
}

void *assignWithTake for MLTextClassifier.FeatureExtractorType(void *__dst, void *__src, uint64_t a3)
{
  v3 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 4, v3);
  v5 = __swift_getEnumTagSinglePayload(__src, 4, v3);
  if (!EnumTagSinglePayload)
  {
    v6 = *(v3 - 8);
    if (!v5)
    {
      (*(v6 + 40))(__dst, __src, v3);
      return __dst;
    }

    (*(v6 + 8))(__dst, v3);
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  if (v5)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  (*(*(v3 - 8) + 32))(__dst, __src, v3);
  __swift_storeEnumTagSinglePayload(__dst, 0, 4, v3);
  return __dst;
}

uint64_t sub_1EEF73(uint64_t a1, unsigned int a2)
{
  v2 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v2);
  v4 = EnumTagSinglePayload - 4;
  if (EnumTagSinglePayload < 5)
  {
    return 0;
  }

  return v4;
}

uint64_t sub_1EEFC1(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = a2;
  if (a2)
  {
    v4 = a2 + 4;
  }

  v5 = type metadata accessor for URL(0);
  return __swift_storeEnumTagSinglePayload(a1, v4, a3, v5);
}

uint64_t type metadata completion function for MLTextClassifier.FeatureExtractorType(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload(a1, 256, *(result - 8) + 64, 4);
    return 0;
  }

  return result;
}

uint64_t outlined destroy of MLTextClassifier.FeatureExtractorType(uint64_t a1)
{
  v1 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t MLTextClassifier.ModelAlgorithmType.description.getter()
{
  return MLTextClassifier.ModelAlgorithmType.description.getter();
}

{
  v1 = *(*(type metadata accessor for MLTextClassifier.FeatureExtractorType(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  outlined init with copy of MLTextClassifier.ModelAlgorithmType(v0, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v15, v4);
  if (!EnumCaseMultiPayload)
  {
    return 0x20746E452078614DLL;
  }

  if (EnumCaseMultiPayload == 1)
  {
    return 0xD00000000000001ELL;
  }

  outlined init with take of MLTextClassifier.FeatureExtractorType(v15, v15);
  v10 = MLTextClassifier.FeatureExtractorType.description.getter();
  v12 = v11;
  v15[0] = v10;
  v15[1] = v11;

  v13._countAndFlagsBits = 0x6C65646F4D20;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v12;
  v9 = v15[0];
  outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLTextClassifier.FeatureExtractorType);
  return v9;
}

uint64_t type metadata accessor for MLTextClassifier.ModelAlgorithmType(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLTextClassifier.ModelAlgorithmType;
  if (!type metadata singleton initialization cache for MLTextClassifier.ModelAlgorithmType)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLTextClassifier.ModelAlgorithmType);
  }

  return result;
}

uint64_t outlined init with copy of MLTextClassifier.ModelAlgorithmType(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

void *MLTextClassifier.ModelAlgorithmType.playgroundDescription.getter()
{
  v2 = v0;
  v3 = *(*(type metadata accessor for MLTextClassifier.FeatureExtractorType(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  outlined init with copy of MLTextClassifier.ModelAlgorithmType(v1, &v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v18, v6);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = "Dynamic Text Embedding" + 0x8000000000000000;
      v12 = 0xD00000000000001ELL;
    }

    else
    {
      outlined init with take of MLTextClassifier.FeatureExtractorType(&v18, &v18);
      v13 = MLTextClassifier.FeatureExtractorType.description.getter();
      v15 = v14;
      v19 = v13;
      v20 = v14;

      v16._countAndFlagsBits = 0x6C65646F4D20;
      v16._object = 0xE600000000000000;
      String.append(_:)(v16);
      v15;
      v12 = v19;
      v11 = v20;
      outlined destroy of MLActivityClassifier.ModelParameters(&v18, type metadata accessor for MLTextClassifier.FeatureExtractorType);
    }
  }

  else
  {
    v11 = 0xED00006C65646F4DLL;
    v12 = 0x20746E452078614DLL;
  }

  result = &type metadata for String;
  v2[3] = &type metadata for String;
  *v2 = v12;
  v2[1] = v11;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MLTextClassifier.ModelAlgorithmType(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *__src;
    *v3 = *__src;
    v3 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload(__src, a3) != 2)
    {
      return memcpy(__dst, __src, *(v4 + 64));
    }

    v7 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(__src, 4, v7))
    {
      v8 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
      memcpy(__dst, __src, *(*(v8 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 16))(__dst, __src, v7);
      __swift_storeEnumTagSinglePayload(__dst, 0, 4, v7);
    }

    v11 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
    __dst[v11 + 8] = __src[v11 + 8];
    *&__dst[v11] = *&__src[v11];
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
  }

  return v3;
}

uint64_t destroy for MLTextClassifier.ModelAlgorithmType(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 2)
  {
    v3 = type metadata accessor for URL(0);
    result = __swift_getEnumTagSinglePayload(a1, 4, v3);
    if (!result)
    {
      return (*(*(v3 - 8) + 8))(a1, v3);
    }
  }

  return result;
}

char *initializeWithCopy for MLTextClassifier.ModelAlgorithmType(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 2)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(__src, 4, v4))
  {
    v5 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(*(v4 - 8) + 16))(__dst, __src, v4);
    __swift_storeEnumTagSinglePayload(__dst, 0, 4, v4);
  }

  v7 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
  __dst[v7 + 8] = __src[v7 + 8];
  *&__dst[v7] = *&__src[v7];
  swift_storeEnumTagMultiPayload(__dst, a3, 2);
  return __dst;
}

char *assignWithCopy for MLTextClassifier.ModelAlgorithmType(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 2)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v4 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(__src, 4, v4))
    {
      v5 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }

    else
    {
      (*(*(v4 - 8) + 16))(__dst, __src, v4);
      __swift_storeEnumTagSinglePayload(__dst, 0, 4, v4);
    }

    v7 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
    __dst[v7 + 8] = __src[v7 + 8];
    *&__dst[v7] = *&__src[v7];
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
  }

  return __dst;
}

char *initializeWithTake for MLTextClassifier.ModelAlgorithmType(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 2)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(__src, 4, v4))
  {
    v5 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    __swift_storeEnumTagSinglePayload(__dst, 0, 4, v4);
  }

  v7 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
  __dst[v7 + 8] = __src[v7 + 8];
  *&__dst[v7] = *&__src[v7];
  swift_storeEnumTagMultiPayload(__dst, a3, 2);
  return __dst;
}

char *assignWithTake for MLTextClassifier.ModelAlgorithmType(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 2)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v4 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(__src, 4, v4))
    {
      v5 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }

    else
    {
      (*(*(v4 - 8) + 32))(__dst, __src, v4);
      __swift_storeEnumTagSinglePayload(__dst, 0, 4, v4);
    }

    v7 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
    __dst[v7 + 8] = __src[v7 + 8];
    *&__dst[v7] = *&__src[v7];
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
  }

  return __dst;
}

uint64_t type metadata completion function for MLTextClassifier.ModelAlgorithmType(uint64_t a1)
{
  v6[0] = "\t";
  v6[1] = "\t";
  result = type metadata accessor for MLTextClassifier.FeatureExtractorType(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2(v5, *(result - 8) + 64);
    v6[2] = v5;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v6, v3, v4);
    return 0;
  }

  return result;
}

uint64_t static MLImageClassifier.__Defaults.validation.getter(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a2;
  v7 = v4;
  if (*a1 != -1)
  {
    a2 = a4;
    swift_once(a1, a4);
  }

  v8 = (v6)(0, a2, a3, a4);
  v9 = __swift_project_value_buffer(v8, a3);
  return outlined init with copy of MLTrainingSessionParameters(v9, v7, v6);
}

uint64_t one-time initialization function for algorithm()
{
  v0 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  __swift_allocate_value_buffer(v0, static MLImageClassifier.__Defaults.algorithm);
  v1 = __swift_project_value_buffer(v0, static MLImageClassifier.__Defaults.algorithm);
  v2 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48);
  *v1 = 2;
  *(v1 + 8) = 0;
  v3 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  result = swift_storeEnumTagMultiPayload(v1, v3, 0);
  *(v1 + v2) = 0;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnyClassificationMetrics(uint64_t *a1, uint64_t *a2)
{
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v4 = *(*(v3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v2 = *a2;
    v2 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload(a2, v3) == 1)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
      (*(*(v5 - 8) + 16))(a1, a2, v5);
      v6 = 1;
      v7 = v3;
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      v7 = v3;
      v6 = 0;
    }

    swift_storeEnumTagMultiPayload(a1, v7, v6);
  }

  return v2;
}

uint64_t destroy for AnyClassificationMetrics(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a1, v2);
  v4 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
  if (EnumCaseMultiPayload == 1)
  {
    v4 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(v4);
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t initializeWithCopy for AnyClassificationMetrics(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
  v5 = EnumCaseMultiPayload == 1;
  v6 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
  (*(*(v7 - 8) + 16))(a1, a2, v7);
  swift_storeEnumTagMultiPayload(a1, v3, v5);
  return a1;
}

uint64_t assignWithCopy for AnyClassificationMetrics(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(a1);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
    v5 = EnumCaseMultiPayload == 1;
    v6 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (EnumCaseMultiPayload == 1)
    {
      v6 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload(a1, v3, v5);
  }

  return a1;
}

uint64_t outlined destroy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t initializeWithTake for AnyClassificationMetrics(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
  v5 = EnumCaseMultiPayload == 1;
  v6 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
  (*(*(v7 - 8) + 32))(a1, a2, v7);
  swift_storeEnumTagMultiPayload(a1, v3, v5);
  return a1;
}

uint64_t assignWithTake for AnyClassificationMetrics(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(a1);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
    v5 = EnumCaseMultiPayload == 1;
    v6 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (EnumCaseMultiPayload == 1)
    {
      v6 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload(a1, v3, v5);
  }

  return a1;
}

uint64_t type metadata accessor for AnyClassificationMetrics(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnyClassificationMetrics;
  if (!type metadata singleton initialization cache for AnyClassificationMetrics)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for AnyClassificationMetrics);
  }

  return result;
}

uint64_t type metadata completion function for AnyClassificationMetrics(uint64_t a1)
{
  v4 = v1;
  result = type metadata accessor for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(319);
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 1, &v4, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(uint64_t a1)
{
  result = lazy cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>;
  if (!lazy cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for ClassificationMetrics<String>);
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
    result = type metadata accessor for Either(a1, v2, v3, v4);
    if (!v5)
    {
      lazy cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>> = result;
    }
  }

  return result;
}
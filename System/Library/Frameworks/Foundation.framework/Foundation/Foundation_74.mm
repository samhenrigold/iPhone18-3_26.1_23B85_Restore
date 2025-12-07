uint64_t FloatingPointFormatStyle.Percent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v7 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle.Percent.CodingKeys(255, a2, a3, v9);
  WitnessTable = swift_getWitnessTable();
  v33 = type metadata accessor for KeyedDecodingContainer();
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v11 = &v28 - v10;
  v13 = type metadata accessor for FloatingPointFormatStyle.Percent(0, a2, a3, v12);
  v28 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v28 - v14);
  v17 = &v28 + *(v16 + 36) - v14;
  v18 = v7[9];
  v19 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  *v17 = 0x4059000000000000;
  v17[8] = 0;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = 0;
  *(v17 + 5) = 0x1FFFFFFFELL;
  *(v17 + 7) = 0;
  *(v17 + 8) = 0;
  *(v17 + 6) = 0;
  *(v17 + 18) = 131584;
  *(v17 + 38) = 512;
  v20 = &v17[v7[10]];
  *v20 = 0;
  v20[8] = -1;
  v17[v7[11]] = 3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v32 = v11;
  v21 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v17, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  }

  else
  {
    v35 = v13;
    v22 = v30;
    v23 = v31;
    v37 = 0;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v15;
    *v15 = v36;
    LOBYTE(v36) = 1;
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection, &protocol conformance descriptor for NumberFormatStyleConfiguration.Collection);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v22 + 8))(v32, v33);
    outlined assign with take of NumberFormatStyleConfiguration.Collection(v23, v17);
    v25 = v28;
    v26 = v35;
    (*(v28 + 16))(v29, v24, v35);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v25 + 8))(v24, v26);
  }
}

uint64_t FloatingPointFormatStyle.Currency.currencyCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FloatingPointFormatStyle.Currency.init(code:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *a3;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  v6 = a6 + *(type metadata accessor for FloatingPointFormatStyle.Currency(0, a4, a5, a4) + 40);
  v7 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  v8 = v7[9];
  v9 = type metadata accessor for FloatingPointRoundingRule();
  result = (*(*(v9 - 8) + 56))(v6 + v8, 1, 1, v9);
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0x1FFFFFFFELL;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 48) = 0;
  *(v6 + 72) = 512;
  *(v6 + 74) = 2;
  *(v6 + 78) = 2;
  v11 = v6 + v7[10];
  *v11 = 0;
  *(v11 + 8) = -1;
  *(v6 + v7[11]) = 1;
  *(v6 + v7[12]) = 3;
  return result;
}

uint64_t FloatingPointFormatStyle.Currency.grouping(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  *(a3 + *(a2 + 40) + 73) = v6;
  return result;
}

__n128 FloatingPointFormatStyle.Currency.precision(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = a3 + *(a2 + 40);
  v8 = *(a1 + 16);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(a1 + 32);
  result = *(a1 + 41);
  *(v7 + 57) = result;
  return result;
}

uint64_t FloatingPointFormatStyle.Currency.sign(strategy:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  if (v7)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | v6;
  if (v8)
  {
    v13 = 0x10000;
  }

  else
  {
    v13 = 0;
  }

  if (v9)
  {
    v14 = 0x1000000;
  }

  else
  {
    v14 = 0;
  }

  *(a3 + *(a2 + 40) + 74) = v12 | v13 | v14;
  return result;
}

uint64_t FloatingPointFormatStyle.Currency.decimalSeparator(strategy:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  *(a3 + *(a2 + 40) + 78) = v6;
  return result;
}

uint64_t FloatingPointFormatStyle.Currency.rounded(rule:increment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  (*(*(a4 - 8) + 16))(a5, v6, a4);
  v12 = a5 + *(a4 + 40);
  v13 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  v14 = *(v13 + 36);
  outlined destroy of TermOfAddress?(v12 + v14, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  v15 = type metadata accessor for FloatingPointRoundingRule();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12 + v14, a1, v15);
  result = (*(v16 + 56))(v12 + v14, 0, 1, v15);
  if ((a3 & 1) == 0)
  {
    v18 = v12 + *(v13 + 40);
    *v18 = a2;
    *(v18 + 8) = 1;
  }

  return result;
}

uint64_t FloatingPointFormatStyle.Currency.scale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  result = (*(*(a1 - 8) + 16))(a2, v4, a1);
  v9 = a2 + *(a1 + 40);
  *v9 = a3;
  *(v9 + 8) = 0;
  return result;
}

uint64_t FloatingPointFormatStyle.Currency.presentation(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = a3 + *(a2 + 40);
  result = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  *(v7 + *(result + 44)) = v6;
  return result;
}

uint64_t FloatingPointFormatStyle.Currency.notation(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = a3 + *(a2 + 40);
  result = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  *(v7 + *(result + 48)) = v6;
  return result;
}

uint64_t static FloatingPointFormatStyle.Currency.== infix(_:_:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v13 = *a2;
  v14 = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = specialized static Locale.== infix(_:_:)(&v14, &v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(a2 + 3);
  if ((*(a1 + 2) != *(a2 + 2) || *(a1 + 3) != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for FloatingPointFormatStyle.Currency(0, a3, a4, v10) + 40);

  return static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(a1 + v11, a2 + v11);
}

uint64_t FloatingPointFormatStyle.Currency.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656C61636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x79636E6572727563;
  }

  return 0x697463656C6C6F63;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FloatingPointFormatStyle<A>.Currency.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized NSDecimal.FormatStyle.Currency.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance FloatingPointFormatStyle<A>.Currency.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized URL.ParseStrategy.ComponentParseStrategy.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FloatingPointFormatStyle<A>.Currency.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FloatingPointFormatStyle<A>.Currency.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FloatingPointFormatStyle.Currency.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FloatingPointFormatStyle.Currency.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v13;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v9;
  v15 = v12;
  v16 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  swift_unknownObjectRetain();
  v10 = v14;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v10)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    LOBYTE(v15) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v15) = 2;
    type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CurrencyFormatStyleConfiguration.Collection and conformance CurrencyFormatStyleConfiguration.Collection, type metadata accessor for CurrencyFormatStyleConfiguration.Collection, &protocol conformance descriptor for CurrencyFormatStyleConfiguration.Collection);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void FloatingPointFormatStyle.Currency.hash(into:)(Swift::Int a1, uint64_t a2)
{
  v3 = v2;
  v74 = a2;
  v75 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v61 - v8;
  v10 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v10 + 48))(ObjectType, v10) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v10 + 64))(ObjectType, v10);
    String.hash(into:)();

    (*(v10 + 464))(&v76, ObjectType, v10);
    v89 = v82;
    v90[0] = v83[0];
    *(v90 + 12) = *(v83 + 12);
    *v86 = v78;
    *&v86[16] = v79;
    v87 = v80;
    v88 = v81;
    v84 = v76;
    v85 = v77;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v84) == 1)
    {
      v12 = 0;
      goto LABEL_5;
    }

    v15 = v76;
    v16 = *(&v76 + 1);
    v17 = *(&v77 + 1);
    v61[0] = v77;
    v62 = *(&v78 + 1);
    v61[1] = v78;
    v63 = v79;
    v64 = v80;
    v65 = v81;
    v66 = v82;
    v61[2] = *(&v83[0] + 1);
    v67 = *&v83[0];
    v68 = *&v83[1];
    v69 = BYTE8(v83[1]);
    v70 = BYTE9(v83[1]);
    v71 = BYTE10(v83[1]);
    v72 = BYTE11(v83[1]);
    Hasher._combine(_:)(1u);
    if (v15 == 2)
    {
      v18 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v18 = v15 & 1;
    }

    Hasher._combine(_:)(v18);
    if (v16)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v16 + 16));
      v19 = *(v16 + 16);
      if (v19)
      {
        v20 = v16 + 40;
        do
        {

          String.hash(into:)();

          v20 += 16;
          --v19;
        }

        while (v19);
      }

      if (v17)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v17)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v13 = v5;
    v21 = *(&v64 + 1);
    v22 = *(&v63 + 1);
    v14 = v75;
    if (v62)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v23 = v63;
      if (v63)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v23 = v63;
      if (v63)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v23, v24, v25, v26, v27, v28, v29);
        v30 = v21;
        if (v22)
        {
LABEL_20:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v22, v31, v32, v33, v34, v35, v36);
          goto LABEL_24;
        }

LABEL_23:
        Hasher._combine(_:)(0);
LABEL_24:
        if (v64)
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (v30)
          {
            goto LABEL_26;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          if (v30)
          {
LABEL_26:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v65)
            {
              goto LABEL_27;
            }

            goto LABEL_35;
          }
        }

        Hasher._combine(_:)(0);
        if (v65)
        {
LABEL_27:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*(&v65 + 1))
          {
            goto LABEL_28;
          }

          goto LABEL_36;
        }

LABEL_35:
        Hasher._combine(_:)(0);
        if (*(&v65 + 1))
        {
LABEL_28:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (v66)
          {
            goto LABEL_29;
          }

          goto LABEL_37;
        }

LABEL_36:
        Hasher._combine(_:)(0);
        if (v66)
        {
LABEL_29:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          v37 = *(&v66 + 1);
          if (*(&v66 + 1))
          {
            goto LABEL_30;
          }

          goto LABEL_38;
        }

LABEL_37:
        Hasher._combine(_:)(0);
        v37 = *(&v66 + 1);
        if (*(&v66 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v37);
          v38 = v67;
          if (v67)
          {
            goto LABEL_31;
          }

          goto LABEL_39;
        }

LABEL_38:
        Hasher._combine(_:)(0);
        v38 = v67;
        if (v67)
        {
LABEL_31:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v38);
          if (v68)
          {
LABEL_32:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_41:
            v39 = v69;
            if (v69 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v39 & 1);
            }

            v40 = v70;
            if (v70 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v40 & 1);
            }

            v41 = v71;
            if (v71 == 2)
            {
              v42 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v42 = v41 & 1;
            }

            v43 = v72;
            Hasher._combine(_:)(v42);
            if (v43 == 2)
            {
              v44 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v44 = v43 & 1;
            }

            Hasher._combine(_:)(v44);
            outlined destroy of TermOfAddress?(&v76, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
            goto LABEL_54;
          }

LABEL_40:
          Hasher._combine(_:)(0);
          goto LABEL_41;
        }

LABEL_39:
        Hasher._combine(_:)(0);
        if (v68)
        {
          goto LABEL_32;
        }

        goto LABEL_40;
      }
    }

    Hasher._combine(_:)(0);
    v30 = v21;
    if (v22)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v12 = 1;
LABEL_5:
  Hasher._combine(_:)(v12);
  v13 = v5;
  v14 = v75;
LABEL_54:
  v45 = v74;
  String.hash(into:)();
  v46 = (v3 + *(v45 + 40));
  if (v46[1])
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v47 = *v46;
    Hasher._combine(_:)(1u);
    if ((v47 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }

    MEMORY[0x1865CD090](v48);
  }

  v49 = *(v46 + 2);
  v84 = *(v46 + 1);
  v85 = v49;
  *v86 = *(v46 + 3);
  *&v86[9] = *(v46 + 57);
  specialized Optional<A>.hash(into:)();
  v50 = *(v46 + 73);
  if (v50 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v50 & 1);
  }

  v51 = *(v46 + 74);
  if (*(v46 + 74) == 2)
  {
    LOBYTE(v52) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v51 & 1);
    MEMORY[0x1865CD060]((v51 >> 8) & 1);
    MEMORY[0x1865CD060](WORD1(v51) & 1);
    v52 = BYTE3(v51) & 1;
  }

  Hasher._combine(_:)(v52);
  v53 = *(v46 + 78);
  if (v53 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v53 & 1);
  }

  v54 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v46 + v54[9], v9, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  if ((*(v13 + 48))(v9, 1, v14) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v55 = v73;
    (*(v13 + 32))(v73, v9, v14);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v13 + 8))(v55, v14);
  }

  v56 = (v46 + v54[10]);
  v57 = *(v56 + 8);
  if (v57 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v58 = *v56;
    Hasher._combine(_:)(1u);
    if (v57)
    {
      MEMORY[0x1865CD060](1);
      if ((v58 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v59 = v58;
      }

      else
      {
        v59 = 0;
      }

      MEMORY[0x1865CD090](v59);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v58);
    }
  }

  MEMORY[0x1865CD060](*(v46 + v54[11]));
  v60 = *(v46 + v54[12]);
  if (v60 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v60);
  }
}

Swift::Int FloatingPointFormatStyle.Currency.hashValue.getter(uint64_t a1)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v72 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v59 - v7;
  Hasher.init(_seed:)();
  v9 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v9 + 48))(ObjectType, v9) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v9 + 64))(ObjectType, v9);
    String.hash(into:)();

    (*(v9 + 464))(&v73, ObjectType, v9);
    v83[4] = v79;
    v84[0] = v80[0];
    *(v84 + 12) = *(v80 + 12);
    v83[0] = v75;
    v83[1] = v76;
    v83[2] = v77;
    v83[3] = v78;
    v81 = v73;
    v82 = v74;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v81) == 1)
    {
      Hasher._combine(_:)(0);
      goto LABEL_5;
    }

    v12 = v73;
    v13 = *(&v73 + 1);
    v59[1] = v74;
    v59[2] = v75;
    v60 = *(&v74 + 1);
    v61 = *(&v75 + 1);
    v62 = v76;
    v63 = v77;
    v64 = v78;
    v65 = v79;
    v59[3] = *(&v80[0] + 1);
    v66 = *&v80[0];
    v67 = *&v80[1];
    v68 = BYTE8(v80[1]);
    v69 = BYTE9(v80[1]);
    v70 = BYTE10(v80[1]);
    v14 = BYTE11(v80[1]);
    Hasher._combine(_:)(1u);
    if (v12 == 2)
    {
      v15 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v15 = v12 & 1;
    }

    v71 = v14;
    Hasher._combine(_:)(v15);
    if (v13)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v13 + 16));
      v16 = *(v13 + 16);
      if (v16)
      {
        v17 = v13 + 40;
        do
        {

          String.hash(into:)();

          v17 += 16;
          --v16;
        }

        while (v16);
      }

      if (v60)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v60)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v11 = v8;
    v18 = *(&v63 + 1);
    v19 = *(&v62 + 1);
    if (v61)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v20 = v62;
      if (v62)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v20 = v62;
      if (v62)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v85, v20, v21, v22, v23, v24, v25, v26);
        if (v19)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    Hasher._combine(_:)(0);
    if (v19)
    {
LABEL_20:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v85, v19, v27, v28, v29, v30, v31, v32);
      if (v63)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }

LABEL_25:
    Hasher._combine(_:)(0);
    if (v63)
    {
LABEL_21:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v18)
      {
LABEL_22:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_28;
      }

LABEL_27:
      Hasher._combine(_:)(0);
LABEL_28:
      v33 = v65;
      if (v64)
      {
        v34 = v66;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v64 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_33;
        }
      }

      else
      {
        v34 = v66;
        Hasher._combine(_:)(0);
        if (*(&v64 + 1))
        {
          goto LABEL_30;
        }
      }

      Hasher._combine(_:)(0);
LABEL_33:
      v35 = v34;
      if (v33)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v36 = *(&v65 + 1);
      if (*(&v65 + 1))
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v85, v36);
        v37 = v68;
        if (v35)
        {
          goto LABEL_38;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v37 = v68;
        if (v35)
        {
LABEL_38:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v85, v35);
          if (v67)
          {
LABEL_39:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_43:
            v38 = v70;
            if (v37 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v37 & 1);
            }

            v39 = v69;
            if (v69 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v39 & 1);
            }

            v40 = v71;
            if (v38 == 2)
            {
              v41 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v41 = v38 & 1;
            }

            Hasher._combine(_:)(v41);
            if (v40 == 2)
            {
              v42 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v42 = v40 & 1;
            }

            Hasher._combine(_:)(v42);
            outlined destroy of TermOfAddress?(&v73, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
            goto LABEL_56;
          }

LABEL_42:
          Hasher._combine(_:)(0);
          goto LABEL_43;
        }
      }

      Hasher._combine(_:)(0);
      if (v67)
      {
        goto LABEL_39;
      }

      goto LABEL_42;
    }

LABEL_26:
    Hasher._combine(_:)(0);
    if (v18)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  Hasher._combine(_:)(1u);
LABEL_5:
  v11 = v8;
LABEL_56:
  String.hash(into:)();
  v43 = (v1 + *(a1 + 40));
  if (*(v43 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v44 = *v43;
    Hasher._combine(_:)(1u);
    if ((v44 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    MEMORY[0x1865CD090](v45);
  }

  v46 = *(v43 + 2);
  v81 = *(v43 + 1);
  v82 = v46;
  v83[0] = *(v43 + 3);
  *(v83 + 9) = *(v43 + 57);
  specialized Optional<A>.hash(into:)();
  v47 = *(v43 + 73);
  if (v47 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v47 & 1);
  }

  v48 = *(v43 + 74);
  if (*(v43 + 74) == 2)
  {
    LOBYTE(v49) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v48 & 1);
    MEMORY[0x1865CD060]((v48 >> 8) & 1);
    MEMORY[0x1865CD060](WORD1(v48) & 1);
    v49 = BYTE3(v48) & 1;
  }

  Hasher._combine(_:)(v49);
  v50 = *(v43 + 78);
  if (v50 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v50 & 1);
  }

  v51 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v43 + v51[9], v11, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v52 = v72;
    (*(v4 + 32))(v72, v11, v3);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v52, v3);
  }

  v53 = (v43 + v51[10]);
  v54 = *(v53 + 8);
  if (v54 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v55 = *v53;
    Hasher._combine(_:)(1u);
    if (v54)
    {
      MEMORY[0x1865CD060](1);
      if ((v55 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v56 = v55;
      }

      else
      {
        v56 = 0;
      }

      MEMORY[0x1865CD090](v56);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v55);
    }
  }

  MEMORY[0x1865CD060](*(v43 + v51[11]));
  v57 = *(v43 + v51[12]);
  if (v57 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v57);
  }

  return Hasher._finalize()();
}

uint64_t FloatingPointFormatStyle.Currency.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v28 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle.Currency.CodingKeys(255, a2, a3, v8);
  swift_getWitnessTable();
  v29 = type metadata accessor for KeyedDecodingContainer();
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v23 - v9;
  v12 = type metadata accessor for FloatingPointFormatStyle.Currency(0, a2, a3, v11);
  v24 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v30 = v12;
  v17 = v26;
  v18 = v27;
  v32 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v16 = v31;
  LOBYTE(v31) = 1;
  *(v16 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v16 + 3) = v19;
  LOBYTE(v31) = 2;
  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CurrencyFormatStyleConfiguration.Collection and conformance CurrencyFormatStyleConfiguration.Collection, type metadata accessor for CurrencyFormatStyleConfiguration.Collection, &protocol conformance descriptor for CurrencyFormatStyleConfiguration.Collection);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v10, v29);
  v20 = v30;
  outlined init with take of CurrencyFormatStyleConfiguration.Collection(v18, &v16[*(v30 + 40)], type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
  v21 = v24;
  (*(v24 + 16))(v25, v16, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v21 + 8))(v16, v20);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance FloatingPointFormatStyle<A>.Currency@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = FloatingPointFormatStyle.Currency.format(_:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t FloatingPointFormatStyle.parseStrategy.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  return FloatingPointFormatStyle.parseStrategy.getter(a1, a3);
}

{
  v4 = v3;
  (*(*(a1 - 8) + 16))(a3, v4, a1);
  WitnessTable = swift_getWitnessTable();
  result = type metadata accessor for FloatingPointParseStrategy(0, a1, WitnessTable, *(a1 + 24));
  *(a3 + *(result + 44)) = 1;
  return result;
}

uint64_t static FloatingPointFormatStyle.Attributed.Style.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a1;
  *&v72 = a2;
  v6 = type metadata accessor for FloatingPointFormatStyle.Percent(0, a3, a4, a4);
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v60 - v7;
  v9 = type metadata accessor for FloatingPointFormatStyle.Currency(0, a3, a4, v8);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v60 - v10;
  v12 = type metadata accessor for FloatingPointFormatStyle(0, a3, a4, v11);
  v67 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v60 - v13);
  v16 = type metadata accessor for FloatingPointFormatStyle.Attributed.Style(0, a3, a4, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v60 - v23);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v70 = *(TupleTypeMetadata2 - 8);
  v26 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v28 = &v60 - v27;
  v30 = *(v29 + 48);
  v69 = v17;
  v31 = *(v17 + 16);
  v31(&v60 - v27, v71, v16, v26);
  (v31)(&v28[v30], v72, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v40 = v67;
    (v31)(v24, v28, v16);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v40 + 32))(v14, &v28[v30], v12);
      v54 = *v24;
      v72 = *v14;
      v73 = v72;
      v74 = v54;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v55 = specialized static Locale.== infix(_:_:)(&v74, &v73);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v55)
      {
        v56 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v24 + *(v12 + 36), v14 + *(v12 + 36));
        v57 = *(v40 + 8);
        v57(v14, v12);
        if (v56)
        {
          v57(v24, v12);
          goto LABEL_24;
        }

        v57(v24, v12);
      }

      else
      {
        v58 = *(v40 + 8);
        v58(v14, v12);
        v58(v24, v12);
      }

LABEL_29:
      v50 = 0;
      goto LABEL_30;
    }

    (*(v40 + 8))(v24, v12);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 1)
  {
    (v31)(v21, v28, v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v63;
      v33 = v64;
      v35 = &v28[v30];
      v36 = v62;
      (*(v63 + 32))(v62, v35, v64);
      v37 = *v21;
      v72 = *v36;
      v73 = v72;
      v74 = v37;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v38 = specialized static Locale.== infix(_:_:)(&v74, &v73);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v38 & 1) != 0 && (*(v21 + 2) == *(v36 + 2) && *(v21 + 3) == *(v36 + 3) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(&v21[*(v33 + 40)], &v36[*(v33 + 40)]))
      {
        v39 = *(v34 + 8);
        v39(v36, v33);
        v39(v21, v33);
LABEL_24:
        v50 = 1;
LABEL_30:
        v49 = v69;
        goto LABEL_31;
      }

      v53 = *(v34 + 8);
      v53(v36, v33);
      v53(v21, v33);
      goto LABEL_29;
    }

    v52 = v63;
    v51 = v64;
    goto LABEL_18;
  }

  v21 = v68;
  (v31)(v68, v28, v16);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v52 = v65;
    v51 = v66;
LABEL_18:
    (*(v52 + 8))(v21, v51);
LABEL_19:
    v50 = 0;
    v49 = v70;
    v16 = TupleTypeMetadata2;
    goto LABEL_31;
  }

  v41 = v65;
  v42 = &v28[v30];
  v43 = v61;
  v44 = v66;
  (*(v65 + 32))(v61, v42, v66);
  v45 = *v21;
  v72 = *v43;
  v73 = v72;
  v74 = v45;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v46 = specialized static Locale.== infix(_:_:)(&v74, &v73);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v46 & 1) == 0)
  {
    v48 = *(v41 + 8);
    v48(v43, v44);
    v49 = v69;
    goto LABEL_27;
  }

  v47 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(&v21[*(v44 + 36)], &v43[*(v44 + 36)]);
  v48 = *(v41 + 8);
  v48(v43, v44);
  v49 = v69;
  if ((v47 & 1) == 0)
  {
LABEL_27:
    v48(v21, v44);
    v50 = 0;
    goto LABEL_31;
  }

  v48(v21, v44);
  v50 = 1;
LABEL_31:
  (*(v49 + 8))(v28, v16);
  return v50;
}

uint64_t FloatingPointFormatStyle.Attributed.Style.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6974616F6C66 && a2 == 0xED0000746E696F50;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E6563726570 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t FloatingPointFormatStyle.Attributed.Style.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x676E6974616F6C66;
  }

  if (a1 == 1)
  {
    return 0x79636E6572727563;
  }

  return 0x746E6563726570;
}

uint64_t FloatingPointFormatStyle.Attributed.Style.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for FloatingPointFormatStyle.Percent(0, v6, v7, a4);
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v39 - v9;
  v11 = type metadata accessor for FloatingPointFormatStyle.Currency(0, v6, v7, v10);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd, &_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMR);
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v39 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v41 = &v39 - v18;
  v20 = type metadata accessor for FloatingPointFormatStyle(0, v6, v7, v19);
  v42 = *(v20 - 8);
  v43 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v40 = &v39 - v21;
  v22 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle.Attributed.Style.CodingKeys(255, v6, v7, v26);
  swift_getWitnessTable();
  v27 = type metadata accessor for KeyedEncodingContainer();
  v54 = *(v27 - 8);
  v55 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v39 - v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v53 = v29;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v22 + 16))(v25, v52, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v32 = v46;
      v31 = v47;
      v33 = v48;
      (*(v47 + 32))(v46, v25, v48);
      v59 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v34 = v44;
    }

    else
    {
      v32 = v49;
      v31 = v50;
      v33 = v51;
      (*(v50 + 32))(v49, v25, v51);
      v60 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v34 = v45;
    }

    v35 = v55;
    v36 = v53;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  }

  else
  {
    v31 = v42;
    v33 = v43;
    v32 = v40;
    (*(v42 + 32))(v40, v25, v43);
    v58 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v34 = v41;
    v35 = v55;
    v36 = v53;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  }

  swift_getWitnessTable();
  v37 = v57;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v56 + 8))(v34, v37);
  (*(v31 + 8))(v32, v33);
  return (*(v54 + 8))(v36, v35);
}

uint64_t FloatingPointFormatStyle.Attributed.Style.hash(into:)(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = type metadata accessor for FloatingPointFormatStyle.Percent(0, v9, v8, a4);
  v226 = *(v10 - 8);
  v227 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v220 = &v212 - v11;
  v223 = type metadata accessor for FloatingPointFormatStyle.Currency(0, v9, v8, v12);
  v225 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v14 = &v212 - v13;
  v15 = type metadata accessor for FloatingPointRoundingRule();
  v228 = *(v15 - 8);
  v229 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v224 = &v212 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v221 = &v212 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v222 = &v212 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v212 - v22;
  v25 = type metadata accessor for FloatingPointFormatStyle(0, v9, v8, v24);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v212 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v212 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32, v5, a2, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v35 = v14;
      v36 = v14;
      v37 = v223;
      (*(v225 + 32))(v36, v32, v223);
      MEMORY[0x1865CD060](1);
      v38 = *(v35 + 1);
      ObjectType = swift_getObjectType();
      v40 = (*(v38 + 48))(ObjectType, v38);
      v41 = v228;
      v42 = v229;
      if (v40)
      {
        v43 = 1;
LABEL_11:
        Hasher._combine(_:)(v43);
        goto LABEL_85;
      }

      Hasher._combine(_:)(0);
      (*(v38 + 64))(ObjectType, v38);
      String.hash(into:)();

      (*(v38 + 464))(&v230, ObjectType, v38);
      v243 = v236;
      v244[0] = v237[0];
      *(v244 + 12) = *(v237 + 12);
      *v240 = v232;
      *&v240[16] = v233;
      v241 = v234;
      v242 = v235;
      v238 = v230;
      v239 = v231;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v238) == 1)
      {
        v43 = 0;
        goto LABEL_11;
      }

      v56 = v230;
      v57 = *(&v230 + 1);
      v58 = *(&v231 + 1);
      v213 = v231;
      v59 = *(&v232 + 1);
      v214 = v232;
      *&v215[8] = v233;
      *&v215[24] = v234;
      v216 = v235;
      v217 = v236;
      *v215 = *(&v237[0] + 1);
      v218 = *&v237[0];
      v220 = *&v237[1];
      v221 = BYTE8(v237[1]);
      v226 = BYTE9(v237[1]);
      LODWORD(v227) = BYTE10(v237[1]);
      v60 = BYTE11(v237[1]);
      Hasher._combine(_:)(1u);
      if (v56 == 2)
      {
        v61 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v61 = v56 & 1;
      }

      Hasher._combine(_:)(v61);
      if (v57)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v57 + 16));
        v75 = *(v57 + 16);
        if (v75)
        {
          v76 = v57 + 40;
          do
          {

            String.hash(into:)();

            v76 += 16;
            --v75;
          }

          while (v75);
        }

        LODWORD(v219) = v60;
        if (v58)
        {
          goto LABEL_29;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        LODWORD(v219) = v60;
        if (v58)
        {
LABEL_29:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_46;
        }
      }

      Hasher._combine(_:)(0);
LABEL_46:
      v81 = *(&v217 + 1);
      v82 = *&v215[8];
      if (v59)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v41 = v228;
      v42 = v229;
      v37 = v223;
      v83 = *&v215[24];
      if (v82)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v82, v84, v85, v86, v87, v88, v89);
        v90 = *&v215[16];
        if (*&v215[16])
        {
          goto LABEL_51;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v90 = *&v215[16];
        if (*&v215[16])
        {
LABEL_51:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v90, v91, v92, v93, v94, v95, v96);
          if (v83)
          {
LABEL_52:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
            _CFObject.hash(into:)();
            goto LABEL_56;
          }

LABEL_55:
          Hasher._combine(_:)(0);
LABEL_56:
          v97 = v81;
          if (*&v215[32])
          {
            v98 = v220;
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v216)
            {
LABEL_58:
              Hasher._combine(_:)(1u);
              type metadata accessor for CFDictionaryRef(0);
              _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
              _CFObject.hash(into:)();
              goto LABEL_61;
            }
          }

          else
          {
            v98 = v220;
            Hasher._combine(_:)(0);
            if (v216)
            {
              goto LABEL_58;
            }
          }

          Hasher._combine(_:)(0);
LABEL_61:
          v99 = v98;
          v100 = v97;
          if (*(&v216 + 1))
          {
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v217)
            {
              goto LABEL_63;
            }
          }

          else
          {
            Hasher._combine(_:)(0);
            if (v217)
            {
LABEL_63:
              Hasher._combine(_:)(1u);
              type metadata accessor for CFDictionaryRef(0);
              _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
              _CFObject.hash(into:)();
              v101 = v226;
              if (v100)
              {
                goto LABEL_64;
              }

              goto LABEL_69;
            }
          }

          Hasher._combine(_:)(0);
          v101 = v226;
          if (v100)
          {
LABEL_64:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, v100);
            v102 = v218;
            if (v218)
            {
              goto LABEL_65;
            }

            goto LABEL_70;
          }

LABEL_69:
          Hasher._combine(_:)(0);
          v102 = v218;
          if (v218)
          {
LABEL_65:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, v102);
            if (v99)
            {
LABEL_66:
              Hasher._combine(_:)(1u);
              String.hash(into:)();
LABEL_72:
              v103 = v221;
              if (v221 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v103 & 1);
              }

              v104 = v219;
              if (v101 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v101 & 1);
              }

              v105 = v227;
              if (v227 == 2)
              {
                v106 = 0;
              }

              else
              {
                Hasher._combine(_:)(1u);
                v106 = v105 & 1;
              }

              Hasher._combine(_:)(v106);
              if (v104 == 2)
              {
                v107 = 0;
              }

              else
              {
                Hasher._combine(_:)(1u);
                v107 = v104 & 1;
              }

              Hasher._combine(_:)(v107);
              outlined destroy of TermOfAddress?(&v230, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_85:
              String.hash(into:)();
              v108 = &v35[*(v37 + 40)];
              if (v108[8] == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v109 = *v108;
                Hasher._combine(_:)(1u);
                if ((v109 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v110 = v109;
                }

                else
                {
                  v110 = 0;
                }

                MEMORY[0x1865CD090](v110);
              }

              v111 = *(v108 + 2);
              v238 = *(v108 + 1);
              v239 = v111;
              *v240 = *(v108 + 3);
              *&v240[9] = *(v108 + 57);
              specialized Optional<A>.hash(into:)();
              v112 = v108[73];
              if (v112 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v112 & 1);
              }

              v113 = *(v108 + 74);
              if (*(v108 + 74) == 2)
              {
                LOBYTE(v114) = 0;
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v113 & 1);
                MEMORY[0x1865CD060]((v113 >> 8) & 1);
                MEMORY[0x1865CD060](WORD1(v113) & 1);
                v114 = BYTE3(v113) & 1;
              }

              Hasher._combine(_:)(v114);
              v115 = v108[78];
              if (v115 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v115 & 1);
              }

              v229 = v35;
              v116 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
              v117 = v222;
              outlined init with copy of FloatingPointRoundingRule?(&v108[v116[9]], v222, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
              v118 = v37;
              if ((*(v41 + 48))(v117, 1, v42) == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v119 = v224;
                (*(v41 + 32))(v224, v117, v42);
                Hasher._combine(_:)(1u);
                dispatch thunk of Hashable.hash(into:)();
                (*(v41 + 8))(v119, v42);
              }

              v120 = &v108[v116[10]];
              v121 = v120[8];
              if (v121 == 255)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v122 = *v120;
                Hasher._combine(_:)(1u);
                if (v121)
                {
                  MEMORY[0x1865CD060](1);
                  if ((v122 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v123 = v122;
                  }

                  else
                  {
                    v123 = 0;
                  }

                  MEMORY[0x1865CD090](v123);
                }

                else
                {
                  MEMORY[0x1865CD060](0);
                  MEMORY[0x1865CD060](v122);
                }
              }

              MEMORY[0x1865CD060](v108[v116[11]]);
              v124 = v108[v116[12]];
              if (v124 == 3)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v124);
              }

              return (*(v225 + 8))(v229, v118);
            }

LABEL_71:
            Hasher._combine(_:)(0);
            goto LABEL_72;
          }

LABEL_70:
          Hasher._combine(_:)(0);
          if (v99)
          {
            goto LABEL_66;
          }

          goto LABEL_71;
        }
      }

      Hasher._combine(_:)(0);
      if (v83)
      {
        goto LABEL_52;
      }

      goto LABEL_55;
    }

    v48 = v220;
    (*(v226 + 32))(v220, v32, v227);
    MEMORY[0x1865CD060](2);
    v49 = *(v48 + 1);
    v50 = swift_getObjectType();
    v51 = (*(v49 + 48))(v50, v49);
    v53 = v228;
    v52 = v229;
    if (v51)
    {
      v54 = 1;
LABEL_16:
      Hasher._combine(_:)(v54);
      goto LABEL_225;
    }

    Hasher._combine(_:)(0);
    (*(v49 + 64))(v50, v49);
    String.hash(into:)();

    (*(v49 + 464))(&v230, v50, v49);
    v243 = v236;
    v244[0] = v237[0];
    *(v244 + 12) = *(v237 + 12);
    *v240 = v232;
    *&v240[16] = v233;
    v241 = v234;
    v242 = v235;
    v238 = v230;
    v239 = v231;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v238) == 1)
    {
      v54 = 0;
      goto LABEL_16;
    }

    v68 = v230;
    v69 = *(&v230 + 1);
    v70 = *(&v231 + 1);
    v212 = v231;
    v71 = *(&v232 + 1);
    v213 = v232;
    *v215 = v233;
    *&v215[16] = v234;
    *&v215[32] = v235;
    v72 = v236;
    *(&v216 + 1) = *(&v235 + 1);
    *(&v217 + 1) = *(&v236 + 1);
    v214 = *(&v237[0] + 1);
    v218 = *&v237[0];
    v219 = *&v237[1];
    v222 = BYTE8(v237[1]);
    v223 = BYTE9(v237[1]);
    v73 = BYTE10(v237[1]);
    LODWORD(v225) = BYTE11(v237[1]);
    Hasher._combine(_:)(1u);
    if (v68 == 2)
    {
      v74 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v74 = v68 & 1;
    }

    *&v217 = v72;
    Hasher._combine(_:)(v74);
    if (v69)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v69 + 16));
      v79 = *(v69 + 16);
      if (v79)
      {
        v80 = v69 + 40;
        do
        {

          String.hash(into:)();

          v80 += 16;
          --v79;
        }

        while (v79);
      }

      if (v70)
      {
        goto LABEL_43;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v70)
      {
LABEL_43:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_187;
      }
    }

    Hasher._combine(_:)(0);
LABEL_187:
    v53 = v228;
    v52 = v229;
    v169 = *&v215[24];
    LODWORD(v216) = v73;
    if (v71)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v170 = v222;
    v171 = *v215;
    v172 = *&v215[8];
    if (*v215)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v171, v173, v174, v175, v176, v177, v178);
      if (v172)
      {
        goto LABEL_192;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v172)
      {
LABEL_192:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v172, v179, v180, v181, v182, v183, v184);
        if (*&v215[16])
        {
          goto LABEL_193;
        }

        goto LABEL_197;
      }
    }

    Hasher._combine(_:)(0);
    if (*&v215[16])
    {
LABEL_193:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v185 = v218;
      if (v169)
      {
LABEL_194:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_199;
      }

LABEL_198:
      Hasher._combine(_:)(0);
LABEL_199:
      v186 = v185;
      if (*&v215[32])
      {
        v187 = v170;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v216 + 1))
        {
LABEL_201:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_204;
        }
      }

      else
      {
        v187 = v170;
        Hasher._combine(_:)(0);
        if (*(&v216 + 1))
        {
          goto LABEL_201;
        }
      }

      Hasher._combine(_:)(0);
LABEL_204:
      v188 = v187;
      v189 = v186;
      if (v217)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v190 = *(&v217 + 1);
        if (*(&v217 + 1))
        {
LABEL_206:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v190);
          goto LABEL_209;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v190 = *(&v217 + 1);
        if (*(&v217 + 1))
        {
          goto LABEL_206;
        }
      }

      Hasher._combine(_:)(0);
LABEL_209:
      v191 = v216;
      v192 = v223;
      if (v189)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v189);
        if (v219)
        {
LABEL_211:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_214;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v219)
        {
          goto LABEL_211;
        }
      }

      Hasher._combine(_:)(0);
LABEL_214:
      v193 = v225;
      if (v188 == 2)
      {
        Hasher._combine(_:)(0);
        if (v192 != 2)
        {
          goto LABEL_216;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v188 & 1);
        if (v192 != 2)
        {
LABEL_216:
          Hasher._combine(_:)(1u);
          MEMORY[0x1865CD060](v192 & 1);
          if (v191 != 2)
          {
LABEL_217:
            Hasher._combine(_:)(1u);
            v194 = v191 & 1;
LABEL_221:
            Hasher._combine(_:)(v194);
            if (v193 == 2)
            {
              v195 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v195 = v193 & 1;
            }

            Hasher._combine(_:)(v195);
            outlined destroy of TermOfAddress?(&v230, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_225:
            v196 = &v48[*(v227 + 36)];
            if (v196[8] == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v197 = *v196;
              Hasher._combine(_:)(1u);
              if ((v197 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v198 = v197;
              }

              else
              {
                v198 = 0;
              }

              MEMORY[0x1865CD090](v198);
            }

            v199 = *(v196 + 2);
            v238 = *(v196 + 1);
            v239 = v199;
            *v240 = *(v196 + 3);
            *&v240[9] = *(v196 + 57);
            specialized Optional<A>.hash(into:)();
            v200 = v196[73];
            if (v200 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v200 & 1);
            }

            v201 = *(v196 + 37);
            v202 = v201 | (v196[76] << 16);
            if (v201 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v202 & 1);
              MEMORY[0x1865CD060]((v202 >> 8) & 1);
              MEMORY[0x1865CD060](HIWORD(v202) & 1);
            }

            v203 = v196[77];
            if (v203 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v203 & 1);
            }

            v204 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
            v205 = v221;
            outlined init with copy of FloatingPointRoundingRule?(&v196[v204[9]], v221, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
            if ((*(v53 + 48))(v205, 1, v52) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v206 = v224;
              (*(v53 + 32))(v224, v205, v52);
              Hasher._combine(_:)(1u);
              dispatch thunk of Hashable.hash(into:)();
              (*(v53 + 8))(v206, v52);
            }

            v207 = &v196[v204[10]];
            v208 = v207[8];
            if (v208 == 255)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v209 = *v207;
              Hasher._combine(_:)(1u);
              if (v208)
              {
                MEMORY[0x1865CD060](1);
                if ((v209 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v210 = v209;
                }

                else
                {
                  v210 = 0;
                }

                MEMORY[0x1865CD090](v210);
              }

              else
              {
                MEMORY[0x1865CD060](0);
                MEMORY[0x1865CD060](v209);
              }
            }

            v211 = v196[v204[11]];
            if (v211 == 3)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v211);
            }

            return (*(v226 + 8))(v48, v227);
          }

LABEL_220:
          v194 = 0;
          goto LABEL_221;
        }
      }

      Hasher._combine(_:)(0);
      if (v191 != 2)
      {
        goto LABEL_217;
      }

      goto LABEL_220;
    }

LABEL_197:
    Hasher._combine(_:)(0);
    v185 = v218;
    if (v169)
    {
      goto LABEL_194;
    }

    goto LABEL_198;
  }

  v226 = v23;
  v227 = v26;
  (*(v26 + 32))(v28, v32, v25);
  MEMORY[0x1865CD060](0);
  v44 = *(v28 + 1);
  v45 = swift_getObjectType();
  if ((*(v44 + 48))(v45, v44))
  {
    Hasher._combine(_:)(1u);
    v47 = v228;
    v46 = v229;
    goto LABEL_155;
  }

  Hasher._combine(_:)(0);
  (*(v44 + 64))(v45, v44);
  String.hash(into:)();

  (*(v44 + 464))(&v230, v45, v44);
  v243 = v236;
  v244[0] = v237[0];
  *(v244 + 12) = *(v237 + 12);
  *v240 = v232;
  *&v240[16] = v233;
  v241 = v234;
  v242 = v235;
  v238 = v230;
  v239 = v231;
  v55 = _s10Foundation17LocalePreferencesVSgWOg(&v238);
  v47 = v228;
  v46 = v229;
  if (v55 == 1)
  {
    Hasher._combine(_:)(0);
    goto LABEL_155;
  }

  v62 = v230;
  v63 = *(&v230 + 1);
  v64 = *(&v231 + 1);
  v213 = v231;
  v65 = *(&v232 + 1);
  v214 = v232;
  *&v215[8] = v233;
  *&v215[24] = v234;
  v216 = v235;
  v217 = v236;
  *v215 = *(&v237[0] + 1);
  v218 = *&v237[0];
  v220 = *&v237[1];
  v221 = BYTE8(v237[1]);
  v222 = BYTE9(v237[1]);
  LODWORD(v223) = BYTE10(v237[1]);
  v66 = BYTE11(v237[1]);
  Hasher._combine(_:)(1u);
  if (v62 == 2)
  {
    v67 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v67 = v62 & 1;
  }

  v225 = v25;
  Hasher._combine(_:)(v67);
  if (v63)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v63 + 16));
    v77 = *(v63 + 16);
    if (v77)
    {
      v78 = v63 + 40;
      do
      {

        String.hash(into:)();

        v78 += 16;
        --v77;
      }

      while (v77);
    }

    LODWORD(v219) = v66;
    if (v64)
    {
      goto LABEL_36;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    LODWORD(v219) = v66;
    if (v64)
    {
LABEL_36:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_117;
    }
  }

  Hasher._combine(_:)(0);
LABEL_117:
  v126 = *&v215[8];
  v127 = *(&v217 + 1);
  if (v65)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v47 = v228;
  v46 = v229;
  v25 = v225;
  if (v126)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v126, v128, v129, v130, v131, v132, v133);
    v134 = *&v215[16];
    if (*&v215[16])
    {
      goto LABEL_122;
    }

LABEL_125:
    Hasher._combine(_:)(0);
    if (*&v215[24])
    {
      goto LABEL_123;
    }

    goto LABEL_126;
  }

  Hasher._combine(_:)(0);
  v134 = *&v215[16];
  if (!*&v215[16])
  {
    goto LABEL_125;
  }

LABEL_122:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v134, v135, v136, v137, v138, v139, v140);
  if (*&v215[24])
  {
LABEL_123:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_127;
  }

LABEL_126:
  Hasher._combine(_:)(0);
LABEL_127:
  v141 = v127;
  if (*&v215[32])
  {
    v142 = v220;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v216)
    {
LABEL_129:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_132;
    }
  }

  else
  {
    v142 = v220;
    Hasher._combine(_:)(0);
    if (v216)
    {
      goto LABEL_129;
    }
  }

  Hasher._combine(_:)(0);
LABEL_132:
  v143 = v142;
  if (*(&v216 + 1))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v217)
    {
      goto LABEL_134;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v217)
    {
LABEL_134:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v141)
      {
        goto LABEL_135;
      }

      goto LABEL_140;
    }
  }

  Hasher._combine(_:)(0);
  if (v141)
  {
LABEL_135:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v141);
    v144 = v218;
    if (v218)
    {
      goto LABEL_136;
    }

LABEL_141:
    Hasher._combine(_:)(0);
    v145 = v222;
    if (v143)
    {
      goto LABEL_137;
    }

    goto LABEL_142;
  }

LABEL_140:
  Hasher._combine(_:)(0);
  v144 = v218;
  if (!v218)
  {
    goto LABEL_141;
  }

LABEL_136:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v144);
  v145 = v222;
  if (v143)
  {
LABEL_137:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_143;
  }

LABEL_142:
  Hasher._combine(_:)(0);
LABEL_143:
  v146 = v221;
  if (v221 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v146 & 1);
  }

  v147 = v223;
  if (v145 != 2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v145 & 1);
    if (v147 != 2)
    {
      goto LABEL_148;
    }

LABEL_150:
    v148 = 0;
    goto LABEL_151;
  }

  Hasher._combine(_:)(0);
  if (v147 == 2)
  {
    goto LABEL_150;
  }

LABEL_148:
  Hasher._combine(_:)(1u);
  v148 = v147 & 1;
LABEL_151:
  Hasher._combine(_:)(v148);
  v149 = v219;
  if (v219 == 2)
  {
    v150 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v150 = v149 & 1;
  }

  Hasher._combine(_:)(v150);
  outlined destroy of TermOfAddress?(&v230, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_155:
  v151 = &v28[*(v25 + 36)];
  if (v151[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v152 = *v151;
    Hasher._combine(_:)(1u);
    if ((v152 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v153 = v152;
    }

    else
    {
      v153 = 0;
    }

    MEMORY[0x1865CD090](v153);
  }

  v154 = *(v151 + 2);
  v238 = *(v151 + 1);
  v239 = v154;
  *v240 = *(v151 + 3);
  *&v240[9] = *(v151 + 57);
  specialized Optional<A>.hash(into:)();
  v155 = v151[73];
  if (v155 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v155 & 1);
  }

  v156 = *(v151 + 37);
  v157 = v156 | (v151[76] << 16);
  if (v156 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v157 & 1);
    MEMORY[0x1865CD060]((v157 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v157) & 1);
  }

  v158 = v151[77];
  if (v158 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v158 & 1);
  }

  v159 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v160 = v226;
  outlined init with copy of FloatingPointRoundingRule?(&v151[v159[9]], v226, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  if ((*(v47 + 48))(v160, 1, v46) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v161 = v25;
    v162 = v224;
    (*(v47 + 32))(v224, v160, v46);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    v163 = v162;
    v25 = v161;
    (*(v47 + 8))(v163, v46);
  }

  v164 = &v151[v159[10]];
  v165 = v164[8];
  if (v165 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v166 = *v164;
    Hasher._combine(_:)(1u);
    if (v165)
    {
      MEMORY[0x1865CD060](1);
      if ((v166 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v167 = v166;
      }

      else
      {
        v167 = 0;
      }

      MEMORY[0x1865CD090](v167);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v166);
    }
  }

  v168 = v151[v159[11]];
  if (v168 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v168);
  }

  return (*(v227 + 8))(v28, v25);
}

Swift::Int FloatingPointFormatStyle.Attributed.Style.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  FloatingPointFormatStyle.Attributed.Style.hash(into:)(v5, a1, v2, v3);
  return Hasher._finalize()();
}

uint64_t FloatingPointFormatStyle.Attributed.Style.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v62 = a4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd, &_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMR);
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v60 - v11;
  type metadata accessor for FloatingPointFormatStyle.Attributed.Style.CodingKeys(255, a2, a3, v12);
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for KeyedDecodingContainer();
  v72 = *(v13 - 8);
  v73 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  v67 = a2;
  v71 = a3;
  v69 = type metadata accessor for FloatingPointFormatStyle.Attributed.Style(0, a2, a3, v16);
  v63 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v60 - v26;
  v28 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = v75;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v29)
  {
    WitnessTable = v21;
    v75 = v18;
    v60 = v24;
    v61 = v27;
    v30 = v70;
    v31 = v71;
    v32 = KeyedDecodingContainer.allKeys.getter();
    v33 = _ArrayBuffer.requestNativeBuffer()();
    if (!v33)
    {
      v81 = v32;
      type metadata accessor for Array();
      swift_getWitnessTable();
      v33 = _copyCollectionToContiguousArray<A>(_:)();
    }

    v34 = v33;

    v35 = (2 * *(v34 + 16)) | 1;
    v77 = v34;
    v78 = v34 + 32;
    v79 = 0;
    v80 = v35;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    if (v81 == 3 || v79 != v80 >> 1)
    {
      v44 = type metadata accessor for DecodingError();
      swift_allocError();
      v46 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v46 = v69;
      v47 = v73;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
      swift_willThrow();
      (*(v72 + 8))(v15, v47);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v81)
      {
        v36 = v31;
        if (v81 == 1)
        {
          LOBYTE(v81) = 1;
          lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
          v37 = v65;
          v38 = v73;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v39 = v72;
          v40 = v68;
          type metadata accessor for FloatingPointFormatStyle.Currency(0, v67, v36, v41);
          swift_getWitnessTable();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v30 + 8))(v37, v40);
          (*(v39 + 8))(v15, v38);
          swift_unknownObjectRelease();
          v42 = WitnessTable;
        }

        else
        {
          LOBYTE(v81) = 2;
          lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
          v50 = v66;
          v51 = v73;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v52 = v72;
          v53 = v68;
          type metadata accessor for FloatingPointFormatStyle.Percent(0, v67, v36, v54);
          swift_getWitnessTable();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v30 + 8))(v50, v53);
          (*(v52 + 8))(v15, v51);
          swift_unknownObjectRelease();
          v42 = v75;
        }

        v43 = v69;
      }

      else
      {
        LOBYTE(v81) = 0;
        lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
        v49 = v64;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for FloatingPointFormatStyle(0, v67, v31, v55);
        swift_getWitnessTable();
        v42 = v60;
        v56 = v68;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v57 = v72;
        (*(v30 + 8))(v49, v56);
        (*(v57 + 8))(v15, v73);
        swift_unknownObjectRelease();
        v43 = v69;
      }

      swift_storeEnumTagMultiPayload();
      v58 = *(v63 + 32);
      v59 = v61;
      v58(v61, v42, v43);
      v58(v62, v59, v43);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FloatingPointFormatStyle<A>.Currency.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FloatingPointFormatStyle<A>.Attributed.Style.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = FloatingPointFormatStyle.Attributed.Style.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FloatingPointFormatStyle<A>.Attributed.Style.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FloatingPointFormatStyle<A>.Attributed.Style.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FloatingPointFormatStyle.Attributed.format(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v459 = a4;
  v548 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v460 = type metadata accessor for FloatingPointFormatStyle.Percent(0, v6, v7, a3);
  *&v458 = *(v460 - 8);
  MEMORY[0x1EEE9AC00](v460);
  v454 = &v450 - v8;
  v10 = type metadata accessor for FloatingPointFormatStyle.Currency(0, v6, v7, v9);
  v456 = *(v10 - 8);
  v457 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v455 = &v450 - v11;
  v12 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v450 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FloatingPointFormatStyle(0, v6, v7, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v450 - v19;
  *&v476 = v6;
  *&v480 = v7;
  v22 = type metadata accessor for FloatingPointFormatStyle.Attributed.Style(0, v6, v7, v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v450 - v24;
  (*(v26 + 16))(&v450 - v24, v4, v22, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *&v479 = a1;
  *&v478 = v12;
  *&v477 = v15;
  if (!EnumCaseMultiPayload)
  {
    v470 = v18;
    (*(v18 + 32))(v20, v25, v17);
    v453 = v17;
    v41 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v46 = v48;
    v49 = *(v20 + 1);
    v469 = v20;
    ObjectType = swift_getObjectType();
    v51 = (*(v49 + 472))(ObjectType, v49);
    p_Kind = v51;
    v47 = v52;
    if (one-time initialization token for cache != -1)
    {
      v51 = swift_once();
    }

    v32 = *algn_1EA7B1D98;
    v475 = static ICUNumberFormatter.cache;
    *&v509 = v41;
    *(&v509 + 1) = v46;
    *&v510 = p_Kind;
    *(&v510 + 1) = v47;
    MEMORY[0x1EEE9AC00](v51);
    *(&v450 - 2) = &v509;
    os_unfair_lock_lock((v32 + 24));
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v32 + 16, &v514);
    os_unfair_lock_unlock((v32 + 24));
    v53 = v514;
    if (v514 != 1)
    {
LABEL_226:

      if (!v53)
      {
        (*(v470 + 8))(v469, v453);
        goto LABEL_282;
      }

      v315 = v477;
      v316 = v476;
      (*(v478 + 16))(v477, v479, v476);
      v317 = specialized BinaryFloatingPoint.init<A>(_:)(v315, v316, v480);
      v318 = ICUNumberFormatterBase.attributedFormatPositions(_:)(v317, 0, 0x100000000);
      v321 = v453;
      v323 = v469;
      v322 = v470;
      if (v319)
      {
        v29 = v319;
        v38 = v320;
        v455 = v53;
        v324 = v318;

        Kind = v324;
        BigString.init(_:)();
        AttributedString.init(_:attributes:)(v528, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v514);
        v325 = v514;
        v466 = *(v38 + 16);
        if (v466)
        {
          v32 = 0;
          v465 = (v38 + 32);
          v456 = "Foundation.NumberFormatSymbol";
          v457 = "ecified format, such as ";
          v458 = xmmword_1812187D0;
          v463 = v29;
          v464 = v38;
          while (1)
          {
            if (v32 >= *(v38 + 16))
            {
              goto LABEL_291;
            }

            v473 = v32;
            v32 = *(&v465->Kind + 6 * v32);
            v326 = Kind;
            *&v509 = Kind;
            *(&v509 + 1) = v29;
            v38 = lazy protocol witness table accessor for type String and conformance String();

            p_Kind = MEMORY[0x1E69E6158];
            v327 = String.Index.init<A>(utf16Offset:in:)();
            *&v509 = v326;
            *(&v509 + 1) = v29;

            v328 = String.Index.init<A>(utf16Offset:in:)();
            if (v328 >> 14 < v327 >> 14)
            {
              break;
            }

            v329 = v328;

            _sSn10FoundationAA16AttributedStringV5IndexVRszrlE6_range2inSnyAEGSgSnySSADVG_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(v327, v329, v325, &v509);
            if (*(&v510 + 1) == 2)
            {
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
            }

            v525 = MEMORY[0x1E69E7CC8];
            v479 = v509;
            v480 = v510;
            v477 = v512;
            v478 = v511;
            if (v32 <= 5)
            {
              switch(v32)
              {
                case 0:
                  v331 = 0;
                  goto LABEL_251;
                case 1:
                  v331 = 1;
LABEL_251:
                  v503 = &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
                  v504 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart();
                  LOBYTE(v500) = v331;
                  v505 = v458;
                  LOBYTE(v506) = 1;
                  v507 = 0;
                  v333 = v456 | 0x8000000000000000;
                  v332 = 0xD00000000000001BLL;
LABEL_252:
                  specialized AttributedString._AttributeStorage.subscript.setter(&v500, v332, v333);
                  break;
                case 2:
                  v330 = 2;
                  goto LABEL_249;
              }
            }

            else
            {
              if (v32 <= 7)
              {
                if (v32 == 6)
                {
                  v330 = 0;
                }

                else
                {
                  v330 = 3;
                }

LABEL_249:
                v503 = &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
                v504 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol();
                LOBYTE(v500) = v330;
                v505 = v458;
                LOBYTE(v506) = 1;
                v507 = 0;
                v332 = 0xD00000000000001DLL;
                v333 = v457 | 0x8000000000000000;
                goto LABEL_252;
              }

              if (v32 == 8)
              {
                v330 = 4;
                goto LABEL_249;
              }

              if (v32 == 10)
              {
                v330 = 1;
                goto LABEL_249;
              }
            }

            p_Kind = *(&v525 + 1);
            v334 = v525;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v335 = *(v325 + 40);
              v484 = *(v325 + 24);
              v485 = v335;
              v486 = *(v325 + 56);
              v336 = *(v325 + 72);
              v337 = *(v325 + 80);
              v338 = *(v325 + 88);
              v339 = *(v325 + 96);
              type metadata accessor for AttributedString.Guts();
              swift_allocObject();
              outlined init with copy of BigString(&v484, &v500);
              swift_unknownObjectRetain();
              v340 = AttributedString.Guts.init(string:runs:)(&v484, v336, v337, v338, v339);

              v325 = v340;
            }

            if (one-time initialization token for _nextVersion != -1)
            {
              swift_once();
            }

            *(v325 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
            v341 = *(v325 + 40);
            v342 = *(v325 + 24);
            v534 = *(v325 + 56);
            v532 = v342;
            v533 = v341;
            v343 = BigString.startIndex.getter();
            v32 = v344;
            v29 = v345;
            v347 = v346;
            v348 = BigString.endIndex.getter();
            v500 = v325;
            v501 = v343;
            v502 = v32;
            v503 = v29;
            v504 = v347;
            *&v505 = v348;
            *(&v505 + 1) = v349;
            v506 = v350;
            v507 = v351;
            v508 = 0;

            outlined destroy of AttributedString.CharacterView(&v500);
            v489 = v479;
            v490 = v480;
            v491 = v478;
            v492 = v477;
            v352 = *(v325 + 40);
            v545 = *(v325 + 24);
            v546 = v352;
            v547 = *(v325 + 56);
            v38 = v545;
            swift_unknownObjectRetain();

            BigString.UnicodeScalarView.subscript.getter();
            swift_unknownObjectRelease();
            outlined destroy of BigSubstring.UnicodeScalarView(&v514);
            v353 = v517;
            v354 = v518;
            *&v480 = v519;
            *&v479 = v520;
            *&v478 = v521;
            *&v477 = v522;
            v475 = v524;
            *&v476 = v523;
            if (one-time initialization token for currentIdentity != -1)
            {
              swift_once();
            }

            v355 = static AttributedString.currentIdentity;
            os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
            v356 = *(v355 + 16);
            v74 = __OFADD__(v356, 1);
            v357 = (v356 + 1);
            if (v74)
            {
              goto LABEL_295;
            }

            v472 = v357;
            *(v355 + 16) = v357;
            os_unfair_lock_unlock((v355 + 24));
            BigString.init()();
            *&v494 = 0;
            MEMORY[0x1865D26B0](&v494, 8);
            v29 = v494;
            v32 = type metadata accessor for AttributedString.Guts();
            v38 = swift_allocObject();
            if ((BigString.isEmpty.getter() & 1) == 0)
            {
              goto LABEL_298;
            }

            *(v38 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
            v358 = v530;
            *(v38 + 24) = v529;
            *(v38 + 40) = v358;
            *(v38 + 56) = v531;
            *(v38 + 72) = 0;
            *(v38 + 80) = 0;
            *(v38 + 88) = 0;
            *(v38 + 96) = v29;
            *(v38 + 104) = MEMORY[0x1E69E7CC0];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v474 = v354;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v360 = *(v325 + 40);
              v542 = *(v325 + 24);
              v543 = v360;
              v544 = *(v325 + 56);
              v361 = *(v325 + 72);
              v362 = *(v325 + 80);
              v471 = v334;
              v363 = v353;
              v364 = p_Kind;
              v365 = *(v325 + 88);
              v366 = *(v325 + 96);
              swift_allocObject();
              outlined init with copy of BigString(&v542, &v494);
              swift_unknownObjectRetain();
              v367 = v366;
              p_Kind = v364;
              v353 = v363;
              v334 = v471;
              v368 = AttributedString.Guts.init(string:runs:)(&v542, v361, v362, v365, v367);

              v325 = v368;
            }

            v369 = *(v325 + 40);
            v539 = *(v325 + 24);
            v540 = v369;
            v541 = *(v325 + 56);
            swift_unknownObjectRetain();
            v370 = BigString.UnicodeScalarView.index(roundingDown:)();
            swift_unknownObjectRelease();
            v371 = *(v325 + 40);
            v536 = *(v325 + 24);
            v537 = v371;
            v538 = *(v325 + 56);
            swift_unknownObjectRetain();
            v372 = BigString.UnicodeScalarView.index(roundingDown:)();
            swift_unknownObjectRelease();

            specialized AttributedString._InternalRunsSlice.updateEach(with:)(v325, v370 >> 11, v372 >> 11, v334, 0);

            if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v334))
            {
              v460 = v372 >> 11;
              *&v461 = v370 >> 11;
              v462 = v353;
              v471 = p_Kind;
              v373 = 1 << LOBYTE(v334[2].Kind);
              if (v373 < 64)
              {
                v374 = ~(-1 << v373);
              }

              else
              {
                v374 = -1;
              }

              v32 = v374 & v334[4].Kind;
              v29 = ((v373 + 63) >> 6);

              v375 = 0;
              v468 = MEMORY[0x1E69E7CC0];
              if (!v32)
              {
                goto LABEL_270;
              }

              do
              {
LABEL_268:
                while (1)
                {
                  v376 = __clz(__rbit64(v32));
                  v32 &= v32 - 1;
                  outlined init with copy of AttributedString._AttributeValue(v334[3].Description + 72 * (v376 | (v375 << 6)), &v494);
                  v377 = *(&v496 + 1);
                  p_Kind = v497;
                  outlined copy of AttributedString.AttributeRunBoundaries?(*(&v496 + 1), v497);
                  outlined destroy of AttributedString._AttributeValue(&v494);
                  if (p_Kind != 1)
                  {
                    break;
                  }

                  if (!v32)
                  {
                    goto LABEL_270;
                  }
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v468 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v468 + 2) + 1, 1, v468);
                }

                v380 = *(v468 + 2);
                v379 = *(v468 + 3);
                v381 = (v380 + 1);
                if (v380 >= v379 >> 1)
                {
                  v454 = (v380 + 1);
                  v452 = v380;
                  v384 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v379 > 1), v380 + 1, 1, v468);
                  v381 = v454;
                  v380 = v452;
                  v468 = v384;
                }

                v382 = v468;
                *(v468 + 2) = v381;
                v383 = &v382[16 * v380];
                *(v383 + 4) = v377;
                *(v383 + 5) = p_Kind;
              }

              while (v32);
              while (1)
              {
LABEL_270:
                v378 = v375 + 1;
                if (__OFADD__(v375, 1))
                {
                  goto LABEL_288;
                }

                if (v378 >= v29)
                {
                  break;
                }

                v32 = *(&v334[4].Kind + v378);
                ++v375;
                if (v32)
                {
                  v375 = v378;
                  goto LABEL_268;
                }
              }

              AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v461, v460, 0, v468);

              v353 = v462;
            }

            else
            {
            }

            v32 = v473 + 1;

            *&v494 = v325;
            *(&v494 + 1) = v353;
            *&v495 = v474;
            *(&v495 + 1) = v480;
            *&v496 = v479;
            *(&v496 + 1) = v478;
            *&v497 = v477;
            *(&v497 + 1) = v476;
            v498 = v475;
            v499 = v472;
            outlined destroy of AttributedSubstring(&v494);
            v323 = v469;
            v322 = v470;
            v29 = v463;
            v38 = v464;
            if (v32 == v466)
            {
              goto LABEL_284;
            }
          }

LABEL_293:
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
LABEL_302:
          v37 = swift_once();
LABEL_4:
          v40 = static ICUCurrencyNumberFormatter.cache;
          v41 = qword_1EA7B5100;
          v514 = v545;
          v515 = v546;
          v516 = v547;
          MEMORY[0x1EEE9AC00](v37);
          *(&v450 - 2) = &v514;
          os_unfair_lock_lock((v41 + 24));
          closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v41 + 16, &v509);
          v454 = 0;
          os_unfair_lock_unlock((v41 + 24));
          v42 = v509;
          if (v509 != 1)
          {
            goto LABEL_36;
          }

          v43 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v29, p_Kind, v32, v475);
          v45 = v44;
          type metadata accessor for ICUCurrencyNumberFormatter();
          swift_allocObject();
          v46 = v474;

          v47 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v43, v45, v38, v46);
          os_unfair_lock_lock((v41 + 24));
          v32 = *(v41 + 16);
          if (v40 >= *(v32 + 16))
          {
          }

          else
          {
            *(v41 + 16) = MEMORY[0x1E69E7CC8];
          }

          v70 = swift_isUniquelyReferenced_nonNull_native();
          *&v509 = *(v41 + 16);
          v55 = v509;
          *(v41 + 16) = 0x8000000000000000;
          v58 = specialized __RawDictionaryStorage.find<A>(_:)(&v545);
          v72 = *(v55 + 16);
          v73 = (v71 & 1) == 0;
          v74 = __OFADD__(v72, v73);
          v75 = v72 + v73;
          if (v74)
          {
LABEL_304:
            __break(1u);
LABEL_305:
            __break(1u);
LABEL_306:
            __break(1u);
LABEL_307:
            __break(1u);
            goto LABEL_308;
          }

          LOBYTE(v46) = v71;
          if (*(v55 + 24) >= v75)
          {
            if (v70)
            {
              v76 = v55;
              if ((v71 & 1) == 0)
              {
                goto LABEL_34;
              }

              goto LABEL_25;
            }

LABEL_309:
            v469 = v32;
            v470 = v58;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
            v387 = static _DictionaryStorage.copy(original:)();
            v76 = v387;
            if (*(v55 + 16))
            {
              v388 = (v387 + 64);
              v389 = 1 << *(v76 + 32);
              v471 = (v55 + 64);
              v390 = (v389 + 63) >> 6;
              if (v76 != v55 || v388 >= &v471->Kind + 8 * v390)
              {
                memmove(v388, v471, 8 * v390);
              }

              v391 = 0;
              *(v76 + 16) = *(v55 + 16);
              v392 = 1 << *(v55 + 32);
              v393 = -1;
              if (v392 < 64)
              {
                v393 = ~(-1 << v392);
              }

              v473 = v393 & *(v55 + 64);
              v468 = ((v392 + 63) >> 6);
              for (i = v473; v473; i = v473)
              {
                v395 = __clz(__rbit64(i));
                v473 = (i - 1) & i;
LABEL_322:
                v398 = v395 | (v391 << 6);
                v399 = *(v55 + 56);
                v400 = (*(v55 + 48) + 48 * v398);
                v401 = *v400;
                v402 = v400[1];
                v403 = v400[2];
                v472 = v400[3];
                v404 = v472;
                v405 = *(v399 + 8 * v398);
                v406 = v400[4];
                v407 = v400[5];
                v408 = (*(v76 + 48) + 48 * v398);
                *v408 = v401;
                v408[1] = v402;
                v408[2] = v403;
                v408[3] = v404;
                v408[4] = v406;
                v408[5] = v407;
                *(*(v76 + 56) + 8 * v398) = v405;
              }

              v396 = v391;
              while (1)
              {
                v391 = v396 + 1;
                if (__OFADD__(v396, 1))
                {
                  break;
                }

                if (v391 >= v468)
                {
                  goto LABEL_354;
                }

                v397 = *(&v471->Kind + v391);
                ++v396;
                if (v397)
                {
                  v395 = __clz(__rbit64(v397));
                  v473 = (v397 - 1) & v397;
                  goto LABEL_322;
                }
              }

LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
LABEL_368:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              goto LABEL_369;
            }

LABEL_354:

            v32 = v469;
            v58 = v470;
            if ((v46 & 1) == 0)
            {
              goto LABEL_34;
            }

LABEL_25:
            v78 = v58;

            *(*(v76 + 56) + 8 * v78) = v47;

            goto LABEL_35;
          }

          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v75, v70);
          v76 = v509;
          v58 = specialized __RawDictionaryStorage.find<A>(_:)(&v545);
          if ((v46 & 1) != (v77 & 1))
          {
LABEL_369:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
LABEL_370:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            goto LABEL_371;
          }

          if (v46)
          {
            goto LABEL_25;
          }

LABEL_34:
          specialized _NativeDictionary._insert(at:key:value:)(v58, &v545, v47, v76);
LABEL_35:
          *(v41 + 16) = v76;

          os_unfair_lock_unlock((v41 + 24));

          outlined consume of ICUNumberFormatter??(1);
          v42 = v47;
LABEL_36:

          if (!v42)
          {
            (*(v456 + 8))(v455, v457);
            v227 = v480;
            v228 = v479;
            v229 = v478;
            v230 = v477;
LABEL_283:
            v385 = v476;
            (*(v229 + 16))(v230, v228, v476);
            specialized BinaryFloatingPoint.init<A>(_:)(v230, v385, v227);
            Double.description.getter();
            BigString.init(_:)();
            result = AttributedString.init(_:attributes:)(&v514, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v509);
            *v459 = v509;
            return result;
          }

          v90 = v477;
          v38 = v476;
          (*(v478 + 16))(v477, v479, v476);
          v91 = specialized BinaryFloatingPoint.init<A>(_:)(v90, v38, v480);
          v92 = ICUNumberFormatterBase.attributedFormatPositions(_:)(v91, 0, 0x100000000);
          if (v93)
          {
            v95 = v92;
            v29 = v93;
            v47 = v94;
            v453 = v42;

            v468 = v95;
            BigString.init(_:)();
            AttributedString.init(_:attributes:)(v513, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v514);
            p_Kind = v514;
            Kind = v47[1].Kind;
            if (Kind)
            {
              v96 = 0;
              v466 = v47 + 2;
              *&v458 = "Foundation.NumberFormatSymbol";
              v460 = "ecified format, such as ";
              v461 = xmmword_1812187D0;
              v464 = v29;
              v465 = v47;
              do
              {
                if (v96 >= v47[1].Kind)
                {
                  goto LABEL_297;
                }

                v473 = v96;
                v32 = *(&v466->Kind + 6 * v96);
                v97 = v468;
                *&v509 = v468;
                *(&v509 + 1) = v29;
                v38 = lazy protocol witness table accessor for type String and conformance String();

                v41 = MEMORY[0x1E69E6158];
                v98 = String.Index.init<A>(utf16Offset:in:)();
                *&v509 = v97;
                *(&v509 + 1) = v29;

                v99 = String.Index.init<A>(utf16Offset:in:)();
                if (v99 >> 14 < v98 >> 14)
                {
                  goto LABEL_299;
                }

                v100 = v99;

                _sSn10FoundationAA16AttributedStringV5IndexVRszrlE6_range2inSnyAEGSgSnySSADVG_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(v98, v100, p_Kind, &v509);
                if (*(&v510 + 1) == 2)
                {
                  goto LABEL_362;
                }

                v46 = MEMORY[0x1E69E7CC8];
                v482 = MEMORY[0x1E69E7CC8];
                v483 = MEMORY[0x1E69E7CD0];
                v478 = v509;
                v479 = v510;
                v476 = v512;
                v477 = v511;
                if (v32 <= 5)
                {
                  switch(v32)
                  {
                    case 0:
                      v102 = 0;
                      goto LABEL_60;
                    case 1:
                      v102 = 1;
LABEL_60:
                      v503 = &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
                      v504 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart();
                      LOBYTE(v500) = v102;
                      v505 = v461;
                      LOBYTE(v506) = 1;
                      v507 = 0;
                      v55 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
                      outlined init with copy of FloatingPointRoundingRule?(&v500, &v494, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                      if (*(&v495 + 1))
                      {
                        v491 = v496;
                        v492 = v497;
                        v493 = v498;
                        v489 = v494;
                        v490 = v495;
                        outlined init with copy of AttributedString._AttributeValue(&v489, &v484);
                        v103 = swift_isUniquelyReferenced_nonNull_native();
                        v481 = v46;
                        v58 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, v458 | 0x8000000000000000);
                        v105 = *(v46 + 16);
                        v106 = (v104 & 1) == 0;
                        v74 = __OFADD__(v105, v106);
                        v107 = v105 + v106;
                        if (v74)
                        {
                          __break(1u);
                          goto LABEL_304;
                        }

                        v108 = v104;
                        if (*(v46 + 24) >= v107)
                        {
                          if (v103)
                          {
                            v109 = v46;
                          }

                          else
                          {
                            v474 = v58;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
                            v183 = static _DictionaryStorage.copy(original:)();
                            v109 = v183;
                            v184 = *(v46 + 16);
                            if (v184)
                            {
                              v185 = (v183 + 64);
                              v186 = ((1 << *(v109 + 32)) + 63) >> 6;
                              v187 = MEMORY[0x1E69E7CC8];
                              if (v109 != MEMORY[0x1E69E7CC8] || v185 >= MEMORY[0x1E69E7CC8] + 8 * v186 + 64)
                              {
                                memmove(v185, (MEMORY[0x1E69E7CC8] + 64), 8 * v186);
                              }

                              v188 = 0;
                              *(v109 + 16) = v184;
                              v189 = 1 << *(v187 + 32);
                              if (v189 < 64)
                              {
                                v190 = ~(-1 << v189);
                              }

                              else
                              {
                                v190 = -1;
                              }

                              *&v480 = v190 & *(v187 + 64);
                              v472 = ((v189 + 63) >> 6);
                              for (j = v480; v480; j = v480)
                              {
                                *&v480 = (j - 1) & j;
                                v192 = __clz(__rbit64(j)) | (v188 << 6);
LABEL_121:
                                v195 = 16 * v192;
                                v196 = *(MEMORY[0x1E69E7CC8] + 56);
                                v197 = (*(MEMORY[0x1E69E7CC8] + 48) + 16 * v192);
                                v198 = v197[1];
                                v475 = *v197;
                                v199 = 72 * v192;
                                outlined init with copy of AttributedString._AttributeValue(v196 + 72 * v192, &v494);
                                v200 = (*(v109 + 48) + v195);
                                *v200 = v475;
                                v200[1] = v198;
                                v201 = *(v109 + 56) + v199;
                                *v201 = v494;
                                v202 = v495;
                                v203 = v496;
                                v204 = v497;
                                *(v201 + 64) = v498;
                                *(v201 + 32) = v203;
                                *(v201 + 48) = v204;
                                *(v201 + 16) = v202;
                              }

                              while (1)
                              {
                                v193 = v188 + 1;
                                if (__OFADD__(v188, 1))
                                {
                                  break;
                                }

                                if (v193 >= v472)
                                {
                                  goto LABEL_139;
                                }

                                v194 = *(MEMORY[0x1E69E7CC8] + 8 * v193 + 64);
                                ++v188;
                                if (v194)
                                {
                                  *&v480 = (v194 - 1) & v194;
                                  v192 = __clz(__rbit64(v194)) | (v193 << 6);
                                  v188 = v193;
                                  goto LABEL_121;
                                }
                              }

                              __break(1u);
LABEL_364:
                              __break(1u);
                              goto LABEL_365;
                            }

LABEL_139:

                            v58 = v474;
                            v47 = v465;
                          }
                        }

                        else
                        {
                          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v107, v103);
                          v109 = v481;
                          v58 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, v458 | 0x8000000000000000);
                          if ((v108 & 1) != (v110 & 1))
                          {
                            goto LABEL_368;
                          }
                        }

                        if (v108)
                        {
                          v119 = *(v109 + 56) + 72 * v58;
                          v121 = *(v119 + 16);
                          v120 = *(v119 + 32);
                          v122 = *(v119 + 48);
                          v498 = *(v119 + 64);
                          v497 = v122;
                          v494 = *v119;
                          v495 = v121;
                          v496 = v120;
                          v123 = *(v109 + 56) + 72 * v58;
                          v124 = v485;
                          v125 = v486;
                          v126 = v487;
                          *(v123 + 64) = v488;
                          *(v123 + 32) = v125;
                          *(v123 + 48) = v126;
                          *(v123 + 16) = v124;
                          *v123 = v484;
                          outlined destroy of AttributedString._AttributeValue(&v489);
                        }

                        else
                        {
                          specialized _NativeDictionary._insert(at:key:value:)(v58, 0xD00000000000001BLL, v458 | 0x8000000000000000, &v484, v109);
                          outlined destroy of AttributedString._AttributeValue(&v489);
                          v494 = 0u;
                          v495 = 0u;
                          v496 = 0u;
                          v497 = 0u;
                          v498 = 0;
                        }

                        v482 = v109;
                      }

                      else
                      {
                        outlined destroy of TermOfAddress?(&v494, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                        v111 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001BLL, v458 | 0x8000000000000000);
                        if (v112)
                        {
                          v113 = v111;
                          if (swift_isUniquelyReferenced_nonNull_native())
                          {
                            v114 = v46;
                          }

                          else
                          {
                            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
                            v205 = static _DictionaryStorage.copy(original:)();
                            v114 = v205;
                            v206 = *(v46 + 16);
                            if (v206)
                            {
                              v207 = (v205 + 64);
                              v208 = ((1 << *(v114 + 32)) + 63) >> 6;
                              v209 = MEMORY[0x1E69E7CC8];
                              if (v114 != MEMORY[0x1E69E7CC8] || v207 >= MEMORY[0x1E69E7CC8] + 8 * v208 + 64)
                              {
                                memmove(v207, (MEMORY[0x1E69E7CC8] + 64), 8 * v208);
                              }

                              v210 = 0;
                              *(v114 + 16) = v206;
                              v211 = 1 << *(v209 + 32);
                              if (v211 < 64)
                              {
                                v212 = ~(-1 << v211);
                              }

                              else
                              {
                                v212 = -1;
                              }

                              *&v480 = v212 & *(v209 + 64);
                              v474 = (v211 + 63) >> 6;
                              for (k = v480; v480; k = v480)
                              {
                                *&v480 = (k - 1) & k;
                                v214 = __clz(__rbit64(k)) | (v210 << 6);
LABEL_136:
                                v217 = 16 * v214;
                                v218 = *(MEMORY[0x1E69E7CC8] + 56);
                                v219 = (*(MEMORY[0x1E69E7CC8] + 48) + 16 * v214);
                                v220 = v219[1];
                                v475 = *v219;
                                v221 = 72 * v214;
                                outlined init with copy of AttributedString._AttributeValue(v218 + 72 * v214, &v494);
                                v222 = (*(v114 + 48) + v217);
                                *v222 = v475;
                                v222[1] = v220;
                                v223 = *(v114 + 56) + v221;
                                *v223 = v494;
                                v224 = v495;
                                v225 = v496;
                                v226 = v497;
                                *(v223 + 64) = v498;
                                *(v223 + 32) = v225;
                                *(v223 + 48) = v226;
                                *(v223 + 16) = v224;
                              }

                              while (1)
                              {
                                v215 = v210 + 1;
                                if (__OFADD__(v210, 1))
                                {
                                  goto LABEL_364;
                                }

                                if (v215 >= v474)
                                {
                                  break;
                                }

                                v216 = *(MEMORY[0x1E69E7CC8] + 8 * v215 + 64);
                                ++v210;
                                if (v216)
                                {
                                  *&v480 = (v216 - 1) & v216;
                                  v214 = __clz(__rbit64(v216)) | (v215 << 6);
                                  v210 = v215;
                                  goto LABEL_136;
                                }
                              }
                            }

                            v47 = v465;
                          }

                          v115 = *(v114 + 56) + 72 * v113;
                          v494 = *v115;
                          v117 = *(v115 + 32);
                          v116 = *(v115 + 48);
                          v118 = *(v115 + 64);
                          v495 = *(v115 + 16);
                          v496 = v117;
                          v498 = v118;
                          v497 = v116;
                          specialized _NativeDictionary._delete(at:)(v113, v114);
                          v482 = v114;
                        }

                        else
                        {
                          v498 = 0;
                          v496 = 0u;
                          v497 = 0u;
                          v494 = 0u;
                          v495 = 0u;
                        }
                      }

                      AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD00000000000001BLL, v458 | 0x8000000000000000, &v494, &v500);
                      outlined destroy of TermOfAddress?(&v500, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                      outlined destroy of TermOfAddress?(&v494, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
                      v127 = v32 - 2;
                      if (v32 - 2) < 9 && ((0x171u >> v127))
                      {
                        v101 = byte_18122655A[v127];
                        goto LABEL_79;
                      }

                      break;
                    case 2:
                      v101 = 2;
LABEL_79:
                      v503 = &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
                      v504 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol();
                      LOBYTE(v500) = v101;
                      v505 = v461;
                      LOBYTE(v506) = 1;
                      v507 = 0;
                      specialized AttributedString._AttributeStorage.subscript.setter(&v500, 0xD00000000000001DLL, v460 | 0x8000000000000000);
                      break;
                  }
                }

                else
                {
                  if (v32 <= 7)
                  {
                    if (v32 == 6)
                    {
                      v101 = 0;
                    }

                    else
                    {
                      v101 = 3;
                    }

                    goto LABEL_79;
                  }

                  if (v32 == 8)
                  {
                    v101 = 4;
                    goto LABEL_79;
                  }

                  if (v32 == 10)
                  {
                    v101 = 1;
                    goto LABEL_79;
                  }
                }

                v128 = v483;
                *&v480 = v482;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v129 = *(p_Kind + 5);
                  v542 = *(p_Kind + 3);
                  v543 = v129;
                  v544 = *(p_Kind + 7);
                  v130 = p_Kind[9];
                  v131 = p_Kind[10];
                  v132 = p_Kind[11];
                  v133 = p_Kind[12];
                  type metadata accessor for AttributedString.Guts();
                  swift_allocObject();
                  outlined init with copy of BigString(&v542, &v500);
                  swift_unknownObjectRetain();
                  v134 = AttributedString.Guts.init(string:runs:)(&v542, v130, v131, v132, v133);

                  p_Kind = v134;
                }

                if (one-time initialization token for _nextVersion != -1)
                {
                  swift_once();
                }

                p_Kind[2] = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
                v135 = *(p_Kind + 5);
                v136 = *(p_Kind + 3);
                v541 = *(p_Kind + 7);
                v539 = v136;
                v540 = v135;
                v137 = BigString.startIndex.getter();
                v32 = v138;
                v29 = v139;
                v141 = v140;
                v142 = BigString.endIndex.getter();
                v500 = p_Kind;
                v501 = v137;
                v502 = v32;
                v503 = v29;
                v504 = v141;
                *&v505 = v142;
                *(&v505 + 1) = v143;
                v506 = v144;
                v507 = v145;
                v508 = 0;

                outlined destroy of AttributedString.CharacterView(&v500);
                v533 = v479;
                v532 = v478;
                v535 = v476;
                v534 = v477;
                v146 = *(p_Kind + 5);
                v536 = *(p_Kind + 3);
                v537 = v146;
                v538 = *(p_Kind + 7);
                v38 = v536;
                swift_unknownObjectRetain();

                BigString.UnicodeScalarView.subscript.getter();
                swift_unknownObjectRelease();
                outlined destroy of BigSubstring.UnicodeScalarView(&v514);
                v147 = v517;
                v148 = v518;
                *&v479 = v519;
                *&v478 = v520;
                *&v477 = v521;
                v475 = v523;
                *&v476 = v522;
                v474 = v524;
                if (one-time initialization token for currentIdentity != -1)
                {
                  swift_once();
                }

                v149 = static AttributedString.currentIdentity;
                os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
                v150 = *(v149 + 16);
                v74 = __OFADD__(v150, 1);
                v151 = (v150 + 1);
                if (v74)
                {
                  goto LABEL_300;
                }

                v472 = v151;
                *(v149 + 16) = v151;
                os_unfair_lock_unlock((v149 + 24));
                BigString.init()();
                *&v494 = 0;
                MEMORY[0x1865D26B0](&v494, 8);
                v29 = v494;
                v32 = type metadata accessor for AttributedString.Guts();
                v38 = swift_allocObject();
                if ((BigString.isEmpty.getter() & 1) == 0)
                {
                  goto LABEL_301;
                }

                *(v38 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
                v152 = v513[4];
                *(v38 + 24) = v513[3];
                *(v38 + 40) = v152;
                *(v38 + 56) = v513[5];
                *(v38 + 72) = 0;
                *(v38 + 80) = 0;
                *(v38 + 88) = 0;
                *(v38 + 96) = v29;
                *(v38 + 104) = MEMORY[0x1E69E7CC0];

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v153 = *(p_Kind + 5);
                  v529 = *(p_Kind + 3);
                  v530 = v153;
                  v531 = *(p_Kind + 7);
                  v154 = p_Kind[9];
                  v155 = p_Kind[10];
                  v471 = v148;
                  v156 = v147;
                  v157 = v128;
                  v158 = p_Kind[11];
                  v159 = p_Kind[12];
                  swift_allocObject();
                  outlined init with copy of BigString(&v529, &v494);
                  swift_unknownObjectRetain();
                  v160 = v158;
                  v147 = v156;
                  v148 = v471;
                  v161 = v159;
                  v128 = v157;
                  v47 = v465;
                  v162 = AttributedString.Guts.init(string:runs:)(&v529, v154, v155, v160, v161);

                  p_Kind = v162;
                }

                v163 = *(p_Kind + 5);
                v528[0] = *(p_Kind + 3);
                v528[1] = v163;
                v528[2] = *(p_Kind + 7);
                swift_unknownObjectRetain();
                v471 = v147;
                v164 = BigString.UnicodeScalarView.index(roundingDown:)();
                swift_unknownObjectRelease();
                v165 = *(p_Kind + 5);
                v525 = *(p_Kind + 3);
                v526 = v165;
                v527 = *(p_Kind + 7);
                swift_unknownObjectRetain();
                v166 = BigString.UnicodeScalarView.index(roundingDown:)();
                swift_unknownObjectRelease();
                v32 = v164 >> 11;
                v167 = v480;

                specialized AttributedString._InternalRunsSlice.updateEach(with:)(p_Kind, v164 >> 11, v166 >> 11, v167, 0);

                if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v167))
                {
                  v462 = v166 >> 11;
                  v463 = (v164 >> 11);
                  v470 = v128;
                  v168 = v480 + 64;
                  v169 = 1 << *(v480 + 32);
                  if (v169 < 64)
                  {
                    v170 = ~(-1 << v169);
                  }

                  else
                  {
                    v170 = -1;
                  }

                  v32 = v170 & *(v480 + 64);
                  v29 = ((v169 + 63) >> 6);

                  v171 = 0;
                  v469 = MEMORY[0x1E69E7CC0];
                  if (!v32)
                  {
                    goto LABEL_97;
                  }

                  do
                  {
LABEL_95:
                    while (1)
                    {
                      v172 = __clz(__rbit64(v32));
                      v32 &= v32 - 1;
                      outlined init with copy of AttributedString._AttributeValue(*(v480 + 56) + 72 * (v172 | (v171 << 6)), &v494);
                      v173 = *(&v496 + 1);
                      v174 = v497;
                      outlined copy of AttributedString.AttributeRunBoundaries?(*(&v496 + 1), v497);
                      outlined destroy of AttributedString._AttributeValue(&v494);
                      if (v174 != 1)
                      {
                        break;
                      }

                      if (!v32)
                      {
                        goto LABEL_97;
                      }
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v469 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v469 + 2) + 1, 1, v469);
                    }

                    v177 = *(v469 + 2);
                    v176 = *(v469 + 3);
                    v178 = v177 + 1;
                    if (v177 >= v176 >> 1)
                    {
                      v451 = *(v469 + 2);
                      v452 = v177 + 1;
                      v181 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v176 > 1), v177 + 1, 1, v469);
                      v177 = v451;
                      v178 = v452;
                      v469 = v181;
                    }

                    v179 = v469;
                    *(v469 + 2) = v178;
                    v180 = &v179[16 * v177];
                    *(v180 + 4) = v173;
                    *(v180 + 5) = v174;
                  }

                  while (v32);
                  while (1)
                  {
LABEL_97:
                    v175 = v171 + 1;
                    if (__OFADD__(v171, 1))
                    {
                      goto LABEL_289;
                    }

                    if (v175 >= v29)
                    {
                      break;
                    }

                    v32 = *(v168 + 8 * v175);
                    ++v171;
                    if (v32)
                    {
                      v171 = v175;
                      goto LABEL_95;
                    }
                  }

                  v32 = v148;

                  v182 = v469;
                  AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v463, v462, 0, v469);

                  *&v480 = v182;
                  v47 = v465;
                }

                else
                {
                }

                v96 = v473 + 1;

                *&v494 = p_Kind;
                *(&v494 + 1) = v471;
                *&v495 = v148;
                *(&v495 + 1) = v479;
                *&v496 = v478;
                *(&v496 + 1) = v477;
                *&v497 = v476;
                *(&v497 + 1) = v475;
                v498 = v474;
                v499 = v472;
                outlined destroy of AttributedSubstring(&v494);
                v29 = v464;
              }

              while (v96 != Kind);
            }

            *v459 = p_Kind;
          }

          else
          {
            Double.description.getter();
            BigString.init(_:)();
            AttributedString.init(_:attributes:)(&v514, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v509);

            *v459 = v509;
          }

          return (*(v456 + 8))(v455, v457);
        }

LABEL_284:

        *v459 = v325;
        v321 = v453;
      }

      else
      {
        Double.description.getter();
        BigString.init(_:)();
        AttributedString.init(_:attributes:)(&v514, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v509);

        *v459 = v509;
      }

      return (*(v322 + 8))(v323, v321);
    }

    type metadata accessor for ICUNumberFormatter();
    v53 = swift_allocObject();
    *(v53 + 3) = v41;
    *(v53 + 4) = v46;
    swift_bridgeObjectRetain_n();
    v54 = MEMORY[0x1865CB200](v41, v46);
    if (v54)
    {
      v55 = v54;
      v56 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v54, 0);

      v57 = specialized Sequence._copySequenceContents(initializing:)(&v514, (v56 + 4), v55, v41, v46);

      if (v57 != v55)
      {
LABEL_308:
        __break(1u);
        goto LABEL_309;
      }
    }

    else
    {

      v56 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v514) = 0;
    v55 = v56[2];
    if (v55 >> 31)
    {
      goto LABEL_306;
    }

    String.utf8CString.getter();
    v303 = unumf_openForSkeletonAndLocale();

    if (v303)
    {
      if (v514 < 1)
      {
        *(v53 + 2) = v303;
LABEL_214:
        os_unfair_lock_lock((v32 + 24));
        v304 = *(*(v32 + 16) + 16);
        v474 = *(v32 + 16);
        if (v475 >= v304)
        {
        }

        else
        {
          *(v32 + 16) = MEMORY[0x1E69E7CC8];
        }

        v305 = swift_isUniquelyReferenced_nonNull_native();
        *&v514 = *(v32 + 16);
        v55 = v514;
        *(v32 + 16) = 0x8000000000000000;
        v307 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v46, p_Kind, v47);
        v308 = *(v55 + 16);
        v309 = (v306 & 1) == 0;
        v58 = v308 + v309;
        if (__OFADD__(v308, v309))
        {
          goto LABEL_307;
        }

        if (*(v55 + 24) >= v58)
        {
          if (v305)
          {
            v311 = v55;
            if (v306)
            {
LABEL_221:
              v314 = v307;

              *(*(v311 + 56) + 8 * v314) = v53;

LABEL_225:
              *(v32 + 16) = v311;

              os_unfair_lock_unlock((v32 + 24));

              outlined consume of ICUNumberFormatter??(1);
              goto LABEL_226;
            }
          }

          else
          {
            Kind = v307;
            LODWORD(v468) = v306;
            v471 = p_Kind;
            v455 = v53;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
            v429 = static _DictionaryStorage.copy(original:)();
            v311 = v429;
            if (*(v55 + 16))
            {
              v430 = (v429 + 64);
              v431 = 1 << *(v311 + 32);
              v472 = (v55 + 64);
              v432 = (v431 + 63) >> 6;
              if (v311 != v55 || v430 >= &v472[8 * v432])
              {
                memmove(v430, v472, 8 * v432);
              }

              v433 = 0;
              *(v311 + 16) = *(v55 + 16);
              v434 = 1 << *(v55 + 32);
              v435 = -1;
              if (v434 < 64)
              {
                v435 = ~(-1 << v434);
              }

              v475 = v435 & *(v55 + 64);
              v436 = (v434 + 63) >> 6;
              for (m = v475; v475; m = v475)
              {
                v438 = __clz(__rbit64(m));
                v475 = (m - 1) & m;
LABEL_352:
                v441 = v438 | (v433 << 6);
                v442 = *(v55 + 56);
                v443 = (*(v55 + 48) + 32 * v441);
                v444 = *v443;
                v473 = v443[1];
                v445 = v473;
                v446 = v443[2];
                v447 = v443[3];
                v448 = *(v442 + 8 * v441);
                v449 = (*(v311 + 48) + 32 * v441);
                *v449 = v444;
                v449[1] = v445;
                v449[2] = v446;
                v449[3] = v447;
                *(*(v311 + 56) + 8 * v441) = v448;
              }

              v439 = v433;
              while (1)
              {
                v433 = v439 + 1;
                if (__OFADD__(v439, 1))
                {
                  goto LABEL_367;
                }

                if (v433 >= v436)
                {
                  break;
                }

                v440 = *&v472[8 * v433];
                ++v439;
                if (v440)
                {
                  v438 = __clz(__rbit64(v440));
                  v475 = (v440 - 1) & v440;
                  goto LABEL_352;
                }
              }
            }

            v53 = v455;
            p_Kind = &v471->Kind;
            v307 = Kind;
            if (v468)
            {
              goto LABEL_221;
            }
          }
        }

        else
        {
          v310 = v306;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v58, v305);
          v311 = v514;
          v312 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v46, p_Kind, v47);
          if ((v310 & 1) != (v313 & 1))
          {
LABEL_371:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v307 = v312;
          if (v310)
          {
            goto LABEL_221;
          }
        }

        specialized _NativeDictionary._insert(at:key:value:)(v307, v41, v46, p_Kind, v47, v53, v311);
        goto LABEL_225;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v53 = 0;
    goto LABEL_214;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v28 = v455;
    (*(v456 + 32))(v455, v25, v457);
    v29 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
    p_Kind = v30;
    v32 = *(v28 + 2);
    v33 = *(v28 + 3);
    v34 = *(v28 + 1);
    v35 = swift_getObjectType();
    v36 = *(v34 + 472);

    v37 = v36(v35, v34);
    v38 = v37;
    *&v545 = v29;
    *(&v545 + 1) = p_Kind;
    *&v546 = v32;
    *(&v546 + 1) = v33;
    v474 = v39;
    v475 = v33;
    *&v547 = v37;
    *(&v547 + 1) = v39;
    if (one-time initialization token for cache != -1)
    {
      goto LABEL_302;
    }

    goto LABEL_4;
  }

  v59 = v454;
  (*(v458 + 32))(v454, v25, v460);
  v60 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v32 = v61;
  v62 = *(v59 + 1);
  v63 = swift_getObjectType();
  v64 = (*(v62 + 472))(v63, v62);
  v46 = v65;
  if (one-time initialization token for cache != -1)
  {
    v386 = v64;
    swift_once();
    v64 = v386;
  }

  v66 = static ICUPercentNumberFormatter.cache;
  v41 = *algn_1EA7B0228;
  *&v514 = v60;
  *(&v514 + 1) = v32;
  v475 = v64;
  *&v515 = v64;
  *(&v515 + 1) = v46;
  MEMORY[0x1EEE9AC00](v64);
  *(&v450 - 2) = &v514;
  os_unfair_lock_lock((v41 + 24));
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v41 + 16, &v509);
  os_unfair_lock_unlock((v41 + 24));
  v67 = v60;
  p_Kind = v509;
  if (v509 == 1)
  {
    *&v509 = 0x746E6563726570;
    *(&v509 + 1) = 0xE700000000000000;
    if (String.count.getter() > 0)
    {
      v500 = 32;
      v501 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v67, v32);
      MEMORY[0x1865CB0E0](v500, v501);
    }

    v474 = v67;
    v68 = v509;
    type metadata accessor for ICUPercentNumberFormatter();
    swift_allocObject();

    p_Kind = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v68, *(&v68 + 1), v475, v46);
    os_unfair_lock_lock((v41 + 24));
    v69 = *(v41 + 16);
    if (v66 >= v69[1].Kind)
    {

      v47 = v69;
    }

    else
    {
      v47 = *(v41 + 16);
      *(v41 + 16) = MEMORY[0x1E69E7CC8];
    }

    v55 = swift_isUniquelyReferenced_nonNull_native();
    *&v509 = *(v41 + 16);
    v79 = v509;
    *(v41 + 16) = 0x8000000000000000;
    v81 = specialized __RawDictionaryStorage.find<A>(_:)(v474, v32, v475, v46);
    v82 = *(v79 + 16);
    v83 = (v80 & 1) == 0;
    v58 = v82 + v83;
    if (!__OFADD__(v82, v83))
    {
      if (*(v79 + 24) < v58)
      {
        v84 = v80;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v58, v55);
        v85 = v509;
        v86 = v475;
        v87 = specialized __RawDictionaryStorage.find<A>(_:)(v474, v32, v475, v46);
        if ((v84 & 1) == (v88 & 1))
        {
          v81 = v87;
          if (v84)
          {
LABEL_31:
            v89 = v81;

            *(*(v85 + 56) + 8 * v89) = p_Kind;

LABEL_145:
            *(v41 + 16) = v85;

            os_unfair_lock_unlock((v41 + 24));

            outlined consume of ICUNumberFormatter??(1);
            goto LABEL_146;
          }

LABEL_144:
          specialized _NativeDictionary._insert(at:key:value:)(v81, v474, v32, v86, v46, p_Kind, v85);
          goto LABEL_145;
        }

        goto LABEL_370;
      }

      if (v55)
      {
        v85 = v79;
        v86 = v475;
        if (v80)
        {
          goto LABEL_31;
        }

        goto LABEL_144;
      }

      v469 = v81;
      LODWORD(v470) = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
      v409 = static _DictionaryStorage.copy(original:)();
      v85 = v409;
      if (!*(v79 + 16))
      {
LABEL_356:

        v59 = v454;
        v86 = v475;
        v81 = v469;
        if (v470)
        {
          goto LABEL_31;
        }

        goto LABEL_144;
      }

      v410 = (v409 + 64);
      v411 = 1 << *(v85 + 32);
      v471 = (v79 + 64);
      v412 = (v411 + 63) >> 6;
      if (v85 != v79 || v410 >= &v471->Kind + 8 * v412)
      {
        memmove(v410, v471, 8 * v412);
      }

      v413 = 0;
      *(v85 + 16) = *(v79 + 16);
      v414 = 1 << *(v79 + 32);
      v415 = -1;
      if (v414 < 64)
      {
        v415 = ~(-1 << v414);
      }

      v473 = v415 & *(v79 + 64);
      v468 = ((v414 + 63) >> 6);
      for (n = v473; v473; n = v473)
      {
        v417 = __clz(__rbit64(n));
        v473 = (n - 1) & n;
LABEL_337:
        v420 = v417 | (v413 << 6);
        v421 = *(v79 + 56);
        v422 = (*(v79 + 48) + 32 * v420);
        v423 = *v422;
        v424 = v422[1];
        v425 = v422[2];
        v472 = v422[3];
        v426 = v472;
        v427 = *(v421 + 8 * v420);
        v428 = (*(v85 + 48) + 32 * v420);
        *v428 = v423;
        v428[1] = v424;
        v428[2] = v425;
        v428[3] = v426;
        *(*(v85 + 56) + 8 * v420) = v427;
      }

      v418 = v413;
      while (1)
      {
        v413 = v418 + 1;
        if (__OFADD__(v418, 1))
        {
          goto LABEL_366;
        }

        if (v413 >= v468)
        {
          goto LABEL_356;
        }

        v419 = *(&v471->Kind + v413);
        ++v418;
        if (v419)
        {
          v417 = __clz(__rbit64(v419));
          v473 = (v419 - 1) & v419;
          goto LABEL_337;
        }
      }
    }

    goto LABEL_305;
  }

LABEL_146:

  if (!p_Kind)
  {
    (*(v458 + 8))(v59, v460);
LABEL_282:
    v228 = v479;
    v229 = v478;
    v230 = v477;
    v227 = v480;
    goto LABEL_283;
  }

  v38 = v477;
  v231 = v476;
  (*(v478 + 16))(v477, v479, v476);
  v232 = specialized BinaryFloatingPoint.init<A>(_:)(v38, v231, v480);
  v233 = ICUNumberFormatterBase.attributedFormatPositions(_:)(v232, 0, 0x100000000);
  if (v234)
  {
    v236 = v233;
    v29 = v234;
    v237 = v235;
    v455 = p_Kind;

    BigString.init(_:)();
    AttributedString.init(_:attributes:)(v528, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v514);
    v238 = v514;
    v468 = v237[1].Kind;
    if (v468)
    {
      v239 = 0;
      Kind = &v237[2];
      v456 = "Foundation.NumberFormatSymbol";
      v457 = "ecified format, such as ";
      v461 = xmmword_1812187D0;
      v465 = v29;
      v466 = v237;
      v464 = v236;
      do
      {
        if (v239 >= v237[1].Kind)
        {
          goto LABEL_290;
        }

        v473 = v239;
        v32 = *(Kind + 24 * v239);
        *&v509 = v236;
        *(&v509 + 1) = v29;
        v38 = lazy protocol witness table accessor for type String and conformance String();

        p_Kind = MEMORY[0x1E69E6158];
        v240 = String.Index.init<A>(utf16Offset:in:)();
        *&v509 = v236;
        *(&v509 + 1) = v29;

        v241 = String.Index.init<A>(utf16Offset:in:)();
        if (v241 >> 14 < v240 >> 14)
        {
          goto LABEL_292;
        }

        v242 = v241;

        _sSn10FoundationAA16AttributedStringV5IndexVRszrlE6_range2inSnyAEGSgSnySSADVG_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(v240, v242, v238, &v509);
        if (*(&v510 + 1) == 2)
        {
          __break(1u);
          goto LABEL_361;
        }

        v525 = MEMORY[0x1E69E7CC8];
        v479 = v509;
        v480 = v510;
        v477 = v512;
        v478 = v511;
        if (v32 <= 5)
        {
          switch(v32)
          {
            case 0:
              v244 = 0;
              goto LABEL_171;
            case 1:
              v244 = 1;
LABEL_171:
              v503 = &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
              v504 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart();
              LOBYTE(v500) = v244;
              v505 = v461;
              LOBYTE(v506) = 1;
              v507 = 0;
              v246 = v456 | 0x8000000000000000;
              v245 = 0xD00000000000001BLL;
LABEL_172:
              specialized AttributedString._AttributeStorage.subscript.setter(&v500, v245, v246);
              break;
            case 2:
              v243 = 2;
              goto LABEL_169;
          }
        }

        else
        {
          if (v32 <= 7)
          {
            if (v32 == 6)
            {
              v243 = 0;
            }

            else
            {
              v243 = 3;
            }

LABEL_169:
            v503 = &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
            v504 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol();
            LOBYTE(v500) = v243;
            v505 = v461;
            LOBYTE(v506) = 1;
            v507 = 0;
            v245 = 0xD00000000000001DLL;
            v246 = v457 | 0x8000000000000000;
            goto LABEL_172;
          }

          if (v32 == 8)
          {
            v243 = 4;
            goto LABEL_169;
          }

          if (v32 == 10)
          {
            v243 = 1;
            goto LABEL_169;
          }
        }

        p_Kind = *(&v525 + 1);
        v247 = v525;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v248 = *(v238 + 40);
          v484 = *(v238 + 24);
          v485 = v248;
          v486 = *(v238 + 56);
          v249 = *(v238 + 72);
          v250 = *(v238 + 80);
          v251 = *(v238 + 88);
          v252 = *(v238 + 96);
          type metadata accessor for AttributedString.Guts();
          swift_allocObject();
          outlined init with copy of BigString(&v484, &v500);
          swift_unknownObjectRetain();
          v253 = AttributedString.Guts.init(string:runs:)(&v484, v249, v250, v251, v252);

          v238 = v253;
        }

        if (one-time initialization token for _nextVersion != -1)
        {
          swift_once();
        }

        *(v238 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v254 = *(v238 + 40);
        v255 = *(v238 + 24);
        v534 = *(v238 + 56);
        v532 = v255;
        v533 = v254;
        v256 = BigString.startIndex.getter();
        v32 = v257;
        v259 = v258;
        v261 = v260;
        v262 = BigString.endIndex.getter();
        v500 = v238;
        v501 = v256;
        v502 = v32;
        v503 = v259;
        v504 = v261;
        *&v505 = v262;
        *(&v505 + 1) = v263;
        v506 = v264;
        v507 = v265;
        v508 = 0;

        outlined destroy of AttributedString.CharacterView(&v500);
        v489 = v479;
        v490 = v480;
        v491 = v478;
        v492 = v477;
        v266 = *(v238 + 40);
        v545 = *(v238 + 24);
        v546 = v266;
        v547 = *(v238 + 56);
        v38 = v545;
        swift_unknownObjectRetain();

        BigString.UnicodeScalarView.subscript.getter();
        swift_unknownObjectRelease();
        outlined destroy of BigSubstring.UnicodeScalarView(&v514);
        v29 = v517;
        v267 = v518;
        v268 = v519;
        *&v480 = v520;
        *&v479 = v521;
        *&v478 = v522;
        *&v477 = v523;
        *&v476 = v524;
        if (one-time initialization token for currentIdentity != -1)
        {
          swift_once();
        }

        v269 = static AttributedString.currentIdentity;
        os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
        v270 = *(v269 + 16);
        v74 = __OFADD__(v270, 1);
        v271 = (v270 + 1);
        if (v74)
        {
          goto LABEL_294;
        }

        v475 = v268;
        v472 = v271;
        *(v269 + 16) = v271;
        os_unfair_lock_unlock((v269 + 24));
        BigString.init()();
        *&v494 = 0;
        MEMORY[0x1865D26B0](&v494, 8);
        v272 = v494;
        v32 = type metadata accessor for AttributedString.Guts();
        v38 = swift_allocObject();
        if ((BigString.isEmpty.getter() & 1) == 0)
        {
          goto LABEL_296;
        }

        *(v38 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v273 = v530;
        *(v38 + 24) = v529;
        *(v38 + 40) = v273;
        *(v38 + 56) = v531;
        *(v38 + 72) = 0;
        *(v38 + 80) = 0;
        *(v38 + 88) = 0;
        *(v38 + 96) = v272;
        *(v38 + 104) = MEMORY[0x1E69E7CC0];

        v274 = swift_isUniquelyReferenced_nonNull_native();
        v474 = v267;
        if ((v274 & 1) == 0)
        {
          v275 = *(v238 + 40);
          v542 = *(v238 + 24);
          v543 = v275;
          v544 = *(v238 + 56);
          v471 = v247;
          v276 = v29;
          v277 = *(v238 + 72);
          v278 = *(v238 + 80);
          v279 = p_Kind;
          v280 = *(v238 + 88);
          v281 = *(v238 + 96);
          swift_allocObject();
          outlined init with copy of BigString(&v542, &v494);
          swift_unknownObjectRetain();
          v282 = v278;
          v29 = v276;
          v247 = v471;
          v283 = v281;
          p_Kind = v279;
          v284 = AttributedString.Guts.init(string:runs:)(&v542, v277, v282, v280, v283);

          v238 = v284;
        }

        v285 = v475;
        v286 = *(v238 + 40);
        v539 = *(v238 + 24);
        v540 = v286;
        v541 = *(v238 + 56);
        swift_unknownObjectRetain();
        v471 = v29;
        v287 = BigString.UnicodeScalarView.index(roundingDown:)();
        swift_unknownObjectRelease();
        v288 = *(v238 + 40);
        v536 = *(v238 + 24);
        v537 = v288;
        v538 = *(v238 + 56);
        swift_unknownObjectRetain();
        v289 = BigString.UnicodeScalarView.index(roundingDown:)();
        swift_unknownObjectRelease();
        v32 = v289 >> 11;

        specialized AttributedString._InternalRunsSlice.updateEach(with:)(v238, v287 >> 11, v289 >> 11, v247, 0);

        if ((specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v247) & 1) == 0)
        {

          goto LABEL_151;
        }

        v462 = v289 >> 11;
        v463 = (v287 >> 11);
        v470 = p_Kind;
        v290 = 1 << LOBYTE(v247[2].Kind);
        if (v290 < 64)
        {
          v291 = ~(-1 << v290);
        }

        else
        {
          v291 = -1;
        }

        v32 = v291 & v247[4].Kind;
        v29 = ((v290 + 63) >> 6);

        v292 = 0;
        v469 = MEMORY[0x1E69E7CC0];
        if (!v32)
        {
          goto LABEL_190;
        }

        do
        {
LABEL_188:
          while (1)
          {
            v293 = __clz(__rbit64(v32));
            v32 &= v32 - 1;
            outlined init with copy of AttributedString._AttributeValue(v247[3].Description + 72 * (v293 | (v292 << 6)), &v494);
            v294 = *(&v496 + 1);
            p_Kind = v497;
            outlined copy of AttributedString.AttributeRunBoundaries?(*(&v496 + 1), v497);
            outlined destroy of AttributedString._AttributeValue(&v494);
            if (p_Kind != 1)
            {
              break;
            }

            if (!v32)
            {
              goto LABEL_190;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v469 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v469 + 2) + 1, 1, v469);
          }

          v297 = *(v469 + 2);
          v296 = *(v469 + 3);
          v298 = v297 + 1;
          if (v297 >= v296 >> 1)
          {
            v452 = *(v469 + 2);
            v453 = v297 + 1;
            v301 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v296 > 1), v297 + 1, 1, v469);
            v297 = v452;
            v298 = v453;
            v469 = v301;
          }

          v299 = v469;
          *(v469 + 2) = v298;
          v300 = &v299[16 * v297];
          *(v300 + 4) = v294;
          *(v300 + 5) = p_Kind;
        }

        while (v32);
        while (1)
        {
LABEL_190:
          v295 = v292 + 1;
          if (__OFADD__(v292, 1))
          {
            __break(1u);
LABEL_288:
            __break(1u);
LABEL_289:
            __break(1u);
LABEL_290:
            __break(1u);
LABEL_291:
            __break(1u);
LABEL_292:
            __break(1u);
            goto LABEL_293;
          }

          if (v295 >= v29)
          {
            break;
          }

          v32 = *(&v247[4].Kind + v295);
          ++v292;
          if (v32)
          {
            v292 = v295;
            goto LABEL_188;
          }
        }

        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v463, v462, 0, v469);

        v285 = v475;
LABEL_151:
        v239 = v473 + 1;

        *&v494 = v238;
        *(&v494 + 1) = v471;
        *&v495 = v474;
        *(&v495 + 1) = v285;
        *&v496 = v480;
        *(&v496 + 1) = v479;
        *&v497 = v478;
        *(&v497 + 1) = v477;
        v498 = v476;
        v499 = v472;
        outlined destroy of AttributedSubstring(&v494);
        v29 = v465;
        v237 = v466;
        v236 = v464;
      }

      while (v239 != v468);
    }

    *v459 = v238;
    v59 = v454;
  }

  else
  {
    Double.description.getter();
    BigString.init(_:)();
    AttributedString.init(_:attributes:)(&v514, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v509);

    *v459 = v509;
  }

  return (*(v458 + 8))(v59, v460);
}

uint64_t FloatingPointFormatStyle.Attributed.locale(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = type metadata accessor for FloatingPointFormatStyle.Percent(0, v7, v8, a3);
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v42 - v10);
  v13 = type metadata accessor for FloatingPointFormatStyle.Currency(0, v7, v8, v12);
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v42 - v14);
  v17 = type metadata accessor for FloatingPointFormatStyle(0, v7, v8, v16);
  v42 = *(v17 - 8);
  v43 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v42 - v18);
  v21 = type metadata accessor for FloatingPointFormatStyle.Attributed.Style(0, v7, v8, v20);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v42 - v24;
  v26 = *a1;
  v48 = a1[1];
  v27 = a4;
  v28 = a4;
  v29 = v49;
  (*(*(a2 - 8) + 16))(v28, v49, a2, v23);
  (*(v22 + 16))(v25, v29, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = (v22 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v33 = v44;
      v32 = v45;
      (*(v44 + 32))(v15, v25, v45);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v34 = v48;
      *v15 = v26;
      v15[1] = v34;
      (*v31)(v27, v21);
      (*(v33 + 16))(v27, v15, v32);
      swift_storeEnumTagMultiPayload();
      return (*(v33 + 8))(v15, v32);
    }

    else
    {
      v40 = v46;
      v39 = v47;
      (*(v46 + 32))(v11, v25, v47);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v41 = v48;
      *v11 = v26;
      v11[1] = v41;
      (*v31)(v27, v21);
      (*(v40 + 16))(v27, v11, v39);
      swift_storeEnumTagMultiPayload();
      return (*(v40 + 8))(v11, v39);
    }
  }

  else
  {
    v37 = v42;
    v36 = v43;
    (*(v42 + 32))(v19, v25, v43);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v38 = v48;
    *v19 = v26;
    v19[1] = v38;
    (*v31)(v27, v21);
    (*(v37 + 16))(v27, v19, v36);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 8))(v19, v36);
  }
}

uint64_t FloatingPointFormatStyle.Attributed.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FloatingPointFormatStyle<A>.Attributed.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = FloatingPointFormatStyle.Attributed.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance FloatingPointFormatStyle<A>.Attributed.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static Equatable.== infix(_:_:) in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FloatingPointFormatStyle<A>.Attributed.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FloatingPointFormatStyle<A>.Attributed.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FloatingPointFormatStyle.Attributed.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  v12 = *(a2 + 16);
  type metadata accessor for FloatingPointFormatStyle.Attributed.CodingKeys(255, v12, v5, a4);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for FloatingPointFormatStyle.Attributed.Style(0, v12, v5, v10);
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t FloatingPointFormatStyle.Attributed.hash(into:)(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = type metadata accessor for FloatingPointFormatStyle.Percent(0, v7, v6, a4);
  v227 = *(v8 - 8);
  v228 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v221 = &v213 - v9;
  v224 = type metadata accessor for FloatingPointFormatStyle.Currency(0, v7, v6, v10);
  v226 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v12 = &v213 - v11;
  v13 = type metadata accessor for FloatingPointRoundingRule();
  v229 = *(v13 - 8);
  v230 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v225 = &v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v222 = &v213 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v223 = &v213 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v213 - v20;
  v23 = type metadata accessor for FloatingPointFormatStyle(0, v7, v6, v22);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v213 - v25;
  v28 = type metadata accessor for FloatingPointFormatStyle.Attributed.Style(0, v7, v6, v27);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v213 - v30;
  (*(v32 + 16))(&v213 - v30, v4, v28, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = v12;
      v35 = v224;
      (*(v226 + 32))(v12, v31, v224);
      MEMORY[0x1865CD060](1);
      v36 = *(v12 + 1);
      ObjectType = swift_getObjectType();
      v38 = (*(v36 + 48))(ObjectType, v36);
      v40 = v229;
      v39 = v230;
      if (v38)
      {
        v41 = 1;
LABEL_11:
        Hasher._combine(_:)(v41);
        goto LABEL_85;
      }

      Hasher._combine(_:)(0);
      (*(v36 + 64))(ObjectType, v36);
      String.hash(into:)();

      (*(v36 + 464))(&v231, ObjectType, v36);
      v244 = v237;
      v245[0] = v238[0];
      *(v245 + 12) = *(v238 + 12);
      *v241 = v233;
      *&v241[16] = v234;
      v242 = v235;
      v243 = v236;
      v239 = v231;
      v240 = v232;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v239) == 1)
      {
        v41 = 0;
        goto LABEL_11;
      }

      v55 = v231;
      v56 = *(&v231 + 1);
      v57 = *(&v232 + 1);
      v214 = v232;
      v58 = *(&v233 + 1);
      v215 = v233;
      *&v216[8] = v234;
      *&v216[24] = v235;
      v217 = v236;
      v218 = v237;
      *v216 = *(&v238[0] + 1);
      v219 = *&v238[0];
      v221 = *&v238[1];
      v222 = BYTE8(v238[1]);
      v227 = BYTE9(v238[1]);
      LODWORD(v228) = BYTE10(v238[1]);
      v59 = BYTE11(v238[1]);
      Hasher._combine(_:)(1u);
      if (v55 == 2)
      {
        v60 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v60 = v55 & 1;
      }

      Hasher._combine(_:)(v60);
      if (v56)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v56 + 16));
        v75 = *(v56 + 16);
        if (v75)
        {
          v76 = v56 + 40;
          do
          {

            String.hash(into:)();

            v76 += 16;
            --v75;
          }

          while (v75);
        }

        LODWORD(v220) = v59;
        if (v57)
        {
          goto LABEL_30;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        LODWORD(v220) = v59;
        if (v57)
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_47;
        }
      }

      Hasher._combine(_:)(0);
LABEL_47:
      v81 = *&v216[8];
      v82 = *(&v218 + 1);
      if (v58)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v40 = v229;
      v39 = v230;
      v35 = v224;
      v83 = *&v216[24];
      if (v81)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v81, v84, v85, v86, v87, v88, v89);
        v90 = *&v216[16];
        if (*&v216[16])
        {
          goto LABEL_52;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v90 = *&v216[16];
        if (*&v216[16])
        {
LABEL_52:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v90, v91, v92, v93, v94, v95, v96);
          if (v83)
          {
LABEL_53:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
            _CFObject.hash(into:)();
            goto LABEL_57;
          }

LABEL_56:
          Hasher._combine(_:)(0);
LABEL_57:
          v97 = v82;
          if (*&v216[32])
          {
            v98 = v221;
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v217)
            {
LABEL_59:
              Hasher._combine(_:)(1u);
              type metadata accessor for CFDictionaryRef(0);
              _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
              _CFObject.hash(into:)();
              goto LABEL_62;
            }
          }

          else
          {
            v98 = v221;
            Hasher._combine(_:)(0);
            if (v217)
            {
              goto LABEL_59;
            }
          }

          Hasher._combine(_:)(0);
LABEL_62:
          v99 = v98;
          if (*(&v217 + 1))
          {
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v218)
            {
              goto LABEL_64;
            }
          }

          else
          {
            Hasher._combine(_:)(0);
            if (v218)
            {
LABEL_64:
              Hasher._combine(_:)(1u);
              type metadata accessor for CFDictionaryRef(0);
              _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
              _CFObject.hash(into:)();
              if (v97)
              {
                goto LABEL_65;
              }

              goto LABEL_70;
            }
          }

          Hasher._combine(_:)(0);
          if (v97)
          {
LABEL_65:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, v97);
            v100 = v219;
            if (v219)
            {
              goto LABEL_66;
            }

            goto LABEL_71;
          }

LABEL_70:
          Hasher._combine(_:)(0);
          v100 = v219;
          if (v219)
          {
LABEL_66:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, v100);
            v101 = v227;
            if (v99)
            {
LABEL_67:
              Hasher._combine(_:)(1u);
              String.hash(into:)();
              goto LABEL_73;
            }

LABEL_72:
            Hasher._combine(_:)(0);
LABEL_73:
            v102 = v222;
            if (v222 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v102 & 1);
            }

            v103 = v228;
            if (v101 == 2)
            {
              Hasher._combine(_:)(0);
              if (v103 != 2)
              {
LABEL_78:
                Hasher._combine(_:)(1u);
                v104 = v103 & 1;
LABEL_81:
                Hasher._combine(_:)(v104);
                v105 = v220;
                if (v220 == 2)
                {
                  v106 = 0;
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  v106 = v105 & 1;
                }

                Hasher._combine(_:)(v106);
                outlined destroy of TermOfAddress?(&v231, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_85:
                String.hash(into:)();
                v107 = &v34[*(v35 + 40)];
                if (v107[8] == 1)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  v108 = *v107;
                  Hasher._combine(_:)(1u);
                  if ((v108 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v109 = v108;
                  }

                  else
                  {
                    v109 = 0;
                  }

                  MEMORY[0x1865CD090](v109);
                }

                v110 = *(v107 + 2);
                v239 = *(v107 + 1);
                v240 = v110;
                *v241 = *(v107 + 3);
                *&v241[9] = *(v107 + 57);
                specialized Optional<A>.hash(into:)();
                v111 = v107[73];
                if (v111 == 2)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  MEMORY[0x1865CD060](v111 & 1);
                }

                v112 = *(v107 + 74);
                if (*(v107 + 74) == 2)
                {
                  LOBYTE(v113) = 0;
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  MEMORY[0x1865CD060](v112 & 1);
                  MEMORY[0x1865CD060]((v112 >> 8) & 1);
                  MEMORY[0x1865CD060](WORD1(v112) & 1);
                  v113 = BYTE3(v112) & 1;
                }

                Hasher._combine(_:)(v113);
                v114 = v107[78];
                if (v114 == 2)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  MEMORY[0x1865CD060](v114 & 1);
                }

                v115 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
                v116 = v223;
                outlined init with copy of FloatingPointRoundingRule?(&v107[v115[9]], v223, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
                if ((*(v40 + 48))(v116, 1, v39) == 1)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  v117 = v225;
                  (*(v40 + 32))(v225, v116, v39);
                  Hasher._combine(_:)(1u);
                  dispatch thunk of Hashable.hash(into:)();
                  (*(v40 + 8))(v117, v39);
                }

                v118 = &v107[v115[10]];
                v119 = v118[8];
                if (v119 == 255)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  v120 = *v118;
                  Hasher._combine(_:)(1u);
                  if (v119)
                  {
                    MEMORY[0x1865CD060](1);
                    if ((v120 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                    {
                      v121 = v120;
                    }

                    else
                    {
                      v121 = 0;
                    }

                    MEMORY[0x1865CD090](v121);
                  }

                  else
                  {
                    MEMORY[0x1865CD060](0);
                    MEMORY[0x1865CD060](v120);
                  }
                }

                MEMORY[0x1865CD060](v107[v115[11]]);
                v122 = v107[v115[12]];
                if (v122 == 3)
                {
                  Hasher._combine(_:)(0);
                }

                else
                {
                  Hasher._combine(_:)(1u);
                  MEMORY[0x1865CD060](v122);
                }

                return (*(v226 + 8))(v34, v35);
              }
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v101 & 1);
              if (v103 != 2)
              {
                goto LABEL_78;
              }
            }

            v104 = 0;
            goto LABEL_81;
          }

LABEL_71:
          Hasher._combine(_:)(0);
          v101 = v227;
          if (v99)
          {
            goto LABEL_67;
          }

          goto LABEL_72;
        }
      }

      Hasher._combine(_:)(0);
      if (v83)
      {
        goto LABEL_53;
      }

      goto LABEL_56;
    }

    v46 = v221;
    (*(v227 + 32))(v221, v31, v228);
    MEMORY[0x1865CD060](2);
    v47 = *(v46 + 1);
    v48 = swift_getObjectType();
    v49 = (*(v47 + 48))(v48, v47);
    v51 = v229;
    v50 = v230;
    if (v49)
    {
      v52 = 1;
LABEL_17:
      Hasher._combine(_:)(v52);
      goto LABEL_226;
    }

    Hasher._combine(_:)(0);
    (*(v47 + 64))(v48, v47);
    String.hash(into:)();

    (*(v47 + 464))(&v231, v48, v47);
    v244 = v237;
    v245[0] = v238[0];
    *(v245 + 12) = *(v238 + 12);
    *v241 = v233;
    *&v241[16] = v234;
    v242 = v235;
    v243 = v236;
    v239 = v231;
    v240 = v232;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v239) == 1)
    {
      v52 = 0;
      goto LABEL_17;
    }

    v68 = v231;
    v69 = *(&v231 + 1);
    v70 = *(&v232 + 1);
    v213 = v232;
    v71 = *(&v233 + 1);
    v214 = v233;
    *v216 = v234;
    *&v216[16] = v235;
    *&v216[32] = v236;
    v72 = v237;
    *(&v217 + 1) = *(&v236 + 1);
    *(&v218 + 1) = *(&v237 + 1);
    v215 = *(&v238[0] + 1);
    v219 = *&v238[0];
    v220 = *&v238[1];
    v223 = BYTE8(v238[1]);
    v224 = BYTE9(v238[1]);
    v73 = BYTE10(v238[1]);
    LODWORD(v226) = BYTE11(v238[1]);
    Hasher._combine(_:)(1u);
    if (v68 == 2)
    {
      v74 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v74 = v68 & 1;
    }

    *&v218 = v72;
    Hasher._combine(_:)(v74);
    if (v69)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v69 + 16));
      v79 = *(v69 + 16);
      if (v79)
      {
        v80 = v69 + 40;
        do
        {

          String.hash(into:)();

          v80 += 16;
          --v79;
        }

        while (v79);
      }

      if (v70)
      {
        goto LABEL_44;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v70)
      {
LABEL_44:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_188;
      }
    }

    Hasher._combine(_:)(0);
LABEL_188:
    v51 = v229;
    v50 = v230;
    v170 = *&v216[24];
    LODWORD(v217) = v73;
    if (v71)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v171 = v223;
    v172 = *v216;
    v173 = *&v216[8];
    if (*v216)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v172, v174, v175, v176, v177, v178, v179);
      if (v173)
      {
        goto LABEL_193;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v173)
      {
LABEL_193:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v173, v180, v181, v182, v183, v184, v185);
        if (*&v216[16])
        {
          goto LABEL_194;
        }

        goto LABEL_198;
      }
    }

    Hasher._combine(_:)(0);
    if (*&v216[16])
    {
LABEL_194:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v186 = v219;
      if (v170)
      {
LABEL_195:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_200;
      }

LABEL_199:
      Hasher._combine(_:)(0);
LABEL_200:
      v187 = v186;
      if (*&v216[32])
      {
        v188 = v171;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v217 + 1))
        {
LABEL_202:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_205;
        }
      }

      else
      {
        v188 = v171;
        Hasher._combine(_:)(0);
        if (*(&v217 + 1))
        {
          goto LABEL_202;
        }
      }

      Hasher._combine(_:)(0);
LABEL_205:
      v189 = v188;
      v190 = v187;
      if (v218)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v191 = *(&v218 + 1);
        if (*(&v218 + 1))
        {
LABEL_207:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v191);
          goto LABEL_210;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v191 = *(&v218 + 1);
        if (*(&v218 + 1))
        {
          goto LABEL_207;
        }
      }

      Hasher._combine(_:)(0);
LABEL_210:
      v192 = v217;
      v193 = v224;
      if (v190)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v190);
        if (v220)
        {
LABEL_212:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_215;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v220)
        {
          goto LABEL_212;
        }
      }

      Hasher._combine(_:)(0);
LABEL_215:
      v194 = v226;
      if (v189 == 2)
      {
        Hasher._combine(_:)(0);
        if (v193 != 2)
        {
          goto LABEL_217;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v189 & 1);
        if (v193 != 2)
        {
LABEL_217:
          Hasher._combine(_:)(1u);
          MEMORY[0x1865CD060](v193 & 1);
          if (v192 != 2)
          {
LABEL_218:
            Hasher._combine(_:)(1u);
            v195 = v192 & 1;
LABEL_222:
            Hasher._combine(_:)(v195);
            if (v194 == 2)
            {
              v196 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v196 = v194 & 1;
            }

            Hasher._combine(_:)(v196);
            outlined destroy of TermOfAddress?(&v231, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_226:
            v197 = &v46[*(v228 + 9)];
            if (v197[8] == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v198 = *v197;
              Hasher._combine(_:)(1u);
              if ((v198 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v199 = v198;
              }

              else
              {
                v199 = 0;
              }

              MEMORY[0x1865CD090](v199);
            }

            v200 = *(v197 + 2);
            v239 = *(v197 + 1);
            v240 = v200;
            *v241 = *(v197 + 3);
            *&v241[9] = *(v197 + 57);
            specialized Optional<A>.hash(into:)();
            v201 = v197[73];
            if (v201 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v201 & 1);
            }

            v202 = *(v197 + 37);
            v203 = v202 | (v197[76] << 16);
            if (v202 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v203 & 1);
              MEMORY[0x1865CD060]((v203 >> 8) & 1);
              MEMORY[0x1865CD060](HIWORD(v203) & 1);
            }

            v204 = v197[77];
            if (v204 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v204 & 1);
            }

            v205 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
            v206 = v222;
            outlined init with copy of FloatingPointRoundingRule?(&v197[v205[9]], v222, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
            if ((*(v51 + 48))(v206, 1, v50) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v207 = v225;
              (*(v51 + 32))(v225, v206, v50);
              Hasher._combine(_:)(1u);
              dispatch thunk of Hashable.hash(into:)();
              (*(v51 + 8))(v207, v50);
            }

            v208 = &v197[v205[10]];
            v209 = v208[8];
            if (v209 == 255)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v210 = *v208;
              Hasher._combine(_:)(1u);
              if (v209)
              {
                MEMORY[0x1865CD060](1);
                if ((v210 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v211 = v210;
                }

                else
                {
                  v211 = 0;
                }

                MEMORY[0x1865CD090](v211);
              }

              else
              {
                MEMORY[0x1865CD060](0);
                MEMORY[0x1865CD060](v210);
              }
            }

            v212 = v197[v205[11]];
            if (v212 == 3)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v212);
            }

            return (*(v227 + 8))(v46, v228);
          }

LABEL_221:
          v195 = 0;
          goto LABEL_222;
        }
      }

      Hasher._combine(_:)(0);
      if (v192 != 2)
      {
        goto LABEL_218;
      }

      goto LABEL_221;
    }

LABEL_198:
    Hasher._combine(_:)(0);
    v186 = v219;
    if (v170)
    {
      goto LABEL_195;
    }

    goto LABEL_199;
  }

  v228 = v21;
  (*(v24 + 32))(v26, v31, v23);
  MEMORY[0x1865CD060](0);
  v42 = *(v26 + 1);
  v43 = swift_getObjectType();
  v44 = (*(v42 + 48))(v43, v42);
  v220 = v24;
  if (v44)
  {
    v45 = 1;
LABEL_14:
    Hasher._combine(_:)(v45);
    v54 = v229;
    v53 = v230;
    goto LABEL_156;
  }

  Hasher._combine(_:)(0);
  (*(v42 + 64))(v43, v42);
  String.hash(into:)();

  (*(v42 + 464))(&v231, v43, v42);
  v244 = v237;
  v245[0] = v238[0];
  *(v245 + 12) = *(v238 + 12);
  *v241 = v233;
  *&v241[16] = v234;
  v242 = v235;
  v243 = v236;
  v239 = v231;
  v240 = v232;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v239) == 1)
  {
    v45 = 0;
    goto LABEL_14;
  }

  v227 = v23;
  v61 = v231;
  v62 = *(&v231 + 1);
  v63 = *(&v232 + 1);
  v214 = v232;
  v64 = *(&v233 + 1);
  v215 = v233;
  v65 = v235;
  *&v216[8] = v234;
  *&v216[32] = *(&v235 + 1);
  v217 = v236;
  v218 = v237;
  *v216 = *(&v238[0] + 1);
  v219 = *&v238[0];
  v221 = *&v238[1];
  v222 = BYTE8(v238[1]);
  v223 = BYTE9(v238[1]);
  v66 = BYTE10(v238[1]);
  LODWORD(v226) = BYTE11(v238[1]);
  Hasher._combine(_:)(1u);
  if (v61 == 2)
  {
    v67 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v67 = v61 & 1;
  }

  *&v216[24] = v65;
  LODWORD(v224) = v66;
  Hasher._combine(_:)(v67);
  if (v62)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v62 + 16));
    v77 = *(v62 + 16);
    if (v77)
    {
      v78 = v62 + 40;
      do
      {

        String.hash(into:)();

        v78 += 16;
        --v77;
      }

      while (v77);
    }

    if (v63)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v63)
    {
LABEL_37:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_117;
    }
  }

  Hasher._combine(_:)(0);
LABEL_117:
  v54 = v229;
  v53 = v230;
  v124 = v217;
  v125 = *&v216[8];
  if (v64)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v23 = v227;
  v126 = *&v216[24];
  if (v125)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v125, v127, v128, v129, v130, v131, v132);
    v133 = *&v216[16];
    if (*&v216[16])
    {
      goto LABEL_122;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v133 = *&v216[16];
    if (*&v216[16])
    {
LABEL_122:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v133, v134, v135, v136, v137, v138, v139);
      if (v126)
      {
        goto LABEL_123;
      }

      goto LABEL_128;
    }
  }

  Hasher._combine(_:)(0);
  if (v126)
  {
LABEL_123:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v216[32])
    {
      goto LABEL_124;
    }

LABEL_129:
    Hasher._combine(_:)(0);
    if (v124)
    {
      goto LABEL_125;
    }

    goto LABEL_130;
  }

LABEL_128:
  Hasher._combine(_:)(0);
  if (!*&v216[32])
  {
    goto LABEL_129;
  }

LABEL_124:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (v124)
  {
LABEL_125:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_131;
  }

LABEL_130:
  Hasher._combine(_:)(0);
LABEL_131:
  v140 = v221;
  if (*(&v217 + 1))
  {
    v141 = v223;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v218)
    {
LABEL_133:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_136;
    }
  }

  else
  {
    v141 = v223;
    Hasher._combine(_:)(0);
    if (v218)
    {
      goto LABEL_133;
    }
  }

  Hasher._combine(_:)(0);
LABEL_136:
  v142 = v141;
  v143 = v140;
  v144 = *(&v218 + 1);
  if (*(&v218 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v144);
    v145 = v219;
    if (v219)
    {
      goto LABEL_138;
    }

LABEL_141:
    Hasher._combine(_:)(0);
    if (v143)
    {
      goto LABEL_139;
    }

LABEL_142:
    Hasher._combine(_:)(0);
    goto LABEL_143;
  }

  Hasher._combine(_:)(0);
  v145 = v219;
  if (!v219)
  {
    goto LABEL_141;
  }

LABEL_138:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v145);
  if (!v143)
  {
    goto LABEL_142;
  }

LABEL_139:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_143:
  v146 = v222;
  if (v222 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v146 & 1);
  }

  v147 = v226;
  if (v142 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v142 & 1);
  }

  v148 = v224;
  if (v224 == 2)
  {
    v149 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v149 = v148 & 1;
  }

  Hasher._combine(_:)(v149);
  if (v147 == 2)
  {
    v150 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v150 = v147 & 1;
  }

  Hasher._combine(_:)(v150);
  outlined destroy of TermOfAddress?(&v231, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_156:
  v151 = &v26[*(v23 + 36)];
  if (v151[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v152 = *v151;
    Hasher._combine(_:)(1u);
    if ((v152 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v153 = v152;
    }

    else
    {
      v153 = 0;
    }

    MEMORY[0x1865CD090](v153);
  }

  v154 = *(v151 + 2);
  v239 = *(v151 + 1);
  v240 = v154;
  *v241 = *(v151 + 3);
  *&v241[9] = *(v151 + 57);
  specialized Optional<A>.hash(into:)();
  v155 = v151[73];
  if (v155 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v155 & 1);
  }

  v156 = *(v151 + 37);
  v157 = v156 | (v151[76] << 16);
  if (v156 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v157 & 1);
    MEMORY[0x1865CD060]((v157 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v157) & 1);
  }

  v158 = v151[77];
  if (v158 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v158 & 1);
  }

  v159 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v160 = v228;
  outlined init with copy of FloatingPointRoundingRule?(&v151[v159[9]], v228, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  if ((*(v54 + 48))(v160, 1, v53) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v161 = v23;
    v162 = v225;
    (*(v54 + 32))(v225, v160, v53);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    v163 = v162;
    v23 = v161;
    (*(v54 + 8))(v163, v53);
  }

  v164 = v220;
  v165 = &v151[v159[10]];
  v166 = v165[8];
  if (v166 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v167 = *v165;
    Hasher._combine(_:)(1u);
    if (v166)
    {
      MEMORY[0x1865CD060](1);
      if ((v167 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v168 = v167;
      }

      else
      {
        v168 = 0;
      }

      MEMORY[0x1865CD090](v168);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v167);
    }
  }

  v169 = v151[v159[11]];
  if (v169 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v169);
  }

  return (*(v164 + 8))(v26, v23);
}

Swift::Int FloatingPointFormatStyle.Attributed.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  FloatingPointFormatStyle.Attributed.hash(into:)(v5, a1, v2, v3);
  return Hasher._finalize()();
}

uint64_t FloatingPointFormatStyle.Attributed.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v27 = a4;
  v8 = type metadata accessor for FloatingPointFormatStyle.Attributed.Style(0, a2, a3, a5);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v25 - v9;
  type metadata accessor for FloatingPointFormatStyle.Attributed.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v11 = type metadata accessor for KeyedDecodingContainer();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v15 = type metadata accessor for FloatingPointFormatStyle.Attributed(0, a2, a3, v14);
  v26 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v25 = v17;
    v33 = v15;
    v19 = v28;
    v21 = v30;
    v20 = v31;
    swift_getWitnessTable();
    v22 = v29;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 8))(v13, v22);
    v23 = v25;
    (*(v21 + 32))(v25, v32, v20);
    (*(v26 + 32))(v27, v23, v33);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FloatingPointFormatStyle<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  Hasher.init(_seed:)();
  a4(v7, a2);
  return Hasher._finalize()();
}

uint64_t FloatingPointFormatStyle.consuming(_:startingAt:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v221 = a4;
  v220 = a3;
  v209 = a2;
  v208 = a1;
  v216 = a6;
  v229[6] = *MEMORY[0x1E69E9840];
  v211 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v213 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v204 = &v194 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v214 = &v194 - v9;
  v212 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v219 = &v194 - v12;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v194 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v210 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v210);
  v217 = &v194 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  v205 = *(a5 + 24);
  v19 = type metadata accessor for FloatingPointParseStrategy(0, a5, WitnessTable, v205);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v194 - v21);
  v215 = *(a5 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v207 = type metadata accessor for Optional();
  v206 = *(v207 - 8);
  v24 = MEMORY[0x1EEE9AC00](v207);
  v26 = (&v194 - v25);
  v27 = *(v13 + 16);
  v27(v22, v218, a5, v24);
  *(v22 + *(v19 + 44)) = 0;
  if (v220 >> 14 >= v221 >> 14)
  {
    (*(v20 + 8))(v22, v19);
    v55 = *(TupleTypeMetadata2 - 8);
    (*(v55 + 56))(v26, 1, 1, TupleTypeMetadata2);
    goto LABEL_9;
  }

  v201 = TupleTypeMetadata2;
  v202 = v26;
  v218 = v20;
  v203 = v19;
  (v27)(v16, v22, a5);
  v28 = v217;
  outlined init with take of CurrencyFormatStyleConfiguration.Collection(v16 + *(a5 + 36), v217, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  swift_storeEnumTagMultiPayload();
  v30 = *v16;
  v29 = v16[1];
  v31 = v28;
  v32 = v219;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v31, v219, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v34 = v29[8];
  swift_unknownObjectRetain();
  v35 = v34(ObjectType, v29);
  v36 = v211;
  v37 = (v32 + *(v211 + 20));
  *v37 = v35;
  v37[1] = v38;
  *(v32 + *(v36 + 24)) = 0;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v39 = static ICULegacyNumberFormatter.cache;
  v40 = qword_1EA7AFFA0;
  v41 = v214;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v32, v214, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v42 = (*(v213 + 80) + 16) & ~*(v213 + 80);
  v43 = v32;
  v44 = swift_allocObject();
  v45 = outlined init with take of CurrencyFormatStyleConfiguration.Collection(v41, v44 + v42, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v45);
  *(&v194 - 2) = v43;
  os_unfair_lock_lock((v40 + 24));
  v46 = v222;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v227, v40 + 16);
  if (v46)
  {
    goto LABEL_204;
  }

  v222 = 0;
  os_unfair_lock_unlock((v40 + 24));
  if (v227[0])
  {
    goto LABEL_6;
  }

  v65 = v222;
  v66 = partial apply for implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)();
  if (v65)
  {

    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v219, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v68 = @"NSDebugDescription";
    v69 = v68;
    v210 = v30;
    if (!isTaggedPointer)
    {
      goto LABEL_20;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v68);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          v30 = v22;
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          *(&v194 - 2) = v69;
          v71 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v73 = v72;

LABEL_65:
          v229[0] = v71;
          v229[1] = v73;
          v227[0] = 0;
          v227[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(43);

          strcpy(v227, "Cannot parse ");
          HIWORD(v227[1]) = -4864;
          MEMORY[0x1865CB0E0](v208, v209);
          MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x800000018147ECD0);
          v229[5] = MEMORY[0x1E69E6158];
          v229[2] = v227[0];
          v229[3] = v227[1];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
          v107 = static _DictionaryStorage.allocate(capacity:)();
          v22 = v227;
          outlined init with copy of FloatingPointRoundingRule?(v229, v227, &_sSS_yptMd, &_sSS_yptMR);

          outlined destroy of TermOfAddress?(v229, &_sSS_yptMd, &_sSS_yptMR);
          v76 = v227[0];
          v108 = v227[1];
          v81 = specialized __RawDictionaryStorage.find<A>(_:)(v227[0], v227[1]);
          v40 = v109;

          if (v40)
          {
            __break(1u);
          }

          else
          {
            v107[(v81 >> 6) + 8] |= 1 << v81;
            v110 = (v107[6] + 16 * v81);
            *v110 = v76;
            v110[1] = v108;
            outlined init with take of Any(&v228, (v107[7] + 32 * v81));
            v111 = v107[2];
            v112 = __OFADD__(v111, 1);
            v113 = v111 + 1;
            if (!v112)
            {
              v107[2] = v113;
              v114 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
              v115 = @"NSCocoaErrorDomain";
              v116 = v115;
              if (!v114)
              {
                goto LABEL_72;
              }

              v117 = _objc_getTaggedPointerTag(v115);
              if (v117)
              {
                if (v117 != 22)
                {
                  if (v117 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v117);
                    *(&v194 - 2) = v116;
                    String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                    goto LABEL_100;
                  }

LABEL_72:
                  LOBYTE(v223) = 0;
                  v227[0] = 0;
                  LOBYTE(v225) = 0;
                  v226 = 0;
                  IsCF = __CFStringIsCF();
                  if (IsCF)
                  {
                    v119 = v227[0];
                    if (!v227[0])
                    {
LABEL_97:

                      goto LABEL_100;
                    }

                    if (v226 == 1)
                    {
                      if (v223)
                      {
                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                      }

                      else
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      }

                      String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_100:
                      v40 = objc_allocWithZone(NSError);
                      v130 = String._bridgeToObjectiveCImpl()();

                      v131 = [v40 initWithDomain:v130 code:2048 userInfo:_NativeDictionary.bridged()()];
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      v222 = v131;
                      v132 = [v131 domain];
                      if (!v132)
                      {
                        goto LABEL_114;
                      }

                      v133 = v132;
                      v134 = _objc_isTaggedPointer(v132);
                      v135 = v133;
                      v136 = v135;
                      if ((v134 & 1) == 0)
                      {
LABEL_106:
                        LOBYTE(v223) = 0;
                        v227[0] = 0;
                        LOBYTE(v225) = 0;
                        v226 = 0;
                        v141 = __CFStringIsCF();
                        if (v141)
                        {
                          v142 = v227[0];
                          if (v227[0])
                          {
                            if (v226 == 1)
                            {
                              if (v223)
                              {
                                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                              }

                              else
                              {
                                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                              }

                              v148 = String.init<A>(_immortalCocoaString:count:encoding:)();
                              goto LABEL_136;
                            }

                            if (v225)
                            {
                              if (v223 == 1)
                              {
                                v40 = &v194;
                                MEMORY[0x1EEE9AC00](v141);
                                *(&v194 - 4) = v136;
                                *(&v194 - 3) = v227;
                                *(&v194 - 4) = 1536;
                                *(&v194 - 1) = v142;
                              }

                              else
                              {
                                v150 = [v136 lengthOfBytesUsingEncoding_];
                                v40 = &v194;
                                MEMORY[0x1EEE9AC00](v150);
                                *(&v194 - 4) = v136;
                                *(&v194 - 3) = v227;
                                *(&v194 - 4) = 134217984;
                                *(&v194 - 1) = v151;
                              }

                              v152 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                              v140 = v153;
                              v154 = HIBYTE(v153) & 0xF;
                              if ((v153 & 0x2000000000000000) == 0)
                              {
                                v154 = v152 & 0xFFFFFFFFFFFFLL;
                              }

                              if (v154)
                              {
                                v138 = v152;
                                goto LABEL_120;
                              }
                            }

LABEL_135:
                            v148 = String.init(_cocoaString:)();
LABEL_136:
                            v138 = v148;
                            v140 = v149;
                            goto LABEL_137;
                          }
                        }

                        else
                        {
                          v40 = v136;
                          v143 = String.init(_nativeStorage:)();
                          if (v144)
                          {
                            v138 = v143;
                            v140 = v144;

                            goto LABEL_138;
                          }

                          v227[0] = [v40 length];
                          if (v227[0])
                          {
                            goto LABEL_135;
                          }
                        }

LABEL_114:
                        v138 = 0;
                        v140 = 0xE000000000000000;
                        goto LABEL_138;
                      }

                      v137 = _objc_getTaggedPointerTag(v135);
                      if (v137)
                      {
                        if (v137 != 22)
                        {
                          if (v137 == 2)
                          {
                            v40 = &v194;
                            MEMORY[0x1EEE9AC00](v137);
                            *(&v194 - 2) = v136;
                            v138 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                            v140 = v139;

LABEL_138:
                            v155 = v116;
                            v156 = v155;
                            if (v114)
                            {
                              v157 = _objc_getTaggedPointerTag(v155);
                              switch(v157)
                              {
                                case 0:
                                  v225 = 0;
                                  _CFIndirectTaggedPointerStringGetContents();
                                  v167 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                                  v22 = v30;
                                  if (v168)
                                  {
                                    v158 = v167;
                                    v81 = v168;
                                  }

                                  else
                                  {
                                    [(__CFString *)v156 mutableCopy];
                                    _bridgeAnyObjectToAny(_:)();

                                    swift_unknownObjectRelease();
                                    swift_dynamicCast();
                                    v158 = v223;
                                    v81 = v224;
                                  }

                                  goto LABEL_164;
                                case 0x16:
                                  v164 = [(__CFString *)v156 UTF8String];
                                  if (!v164)
                                  {
LABEL_201:
                                    __break(1u);
                                    goto LABEL_202;
                                  }

                                  v165 = String.init(utf8String:)(v164);
                                  if (!v166)
                                  {
LABEL_202:
                                    __break(1u);
                                    goto LABEL_203;
                                  }

                                  v158 = v165;
                                  v81 = v166;
                                  v22 = v30;

                                  goto LABEL_164;
                                case 2:
                                  v40 = &v194;
                                  MEMORY[0x1EEE9AC00](v157);
                                  *(&v194 - 2) = v156;
                                  v158 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                  v81 = v159;

                                  v22 = v30;
LABEL_164:
                                  v30 = v210;
                                  goto LABEL_173;
                              }
                            }

                            LOBYTE(v223) = 0;
                            v227[0] = 0;
                            LOBYTE(v225) = 0;
                            v226 = 0;
                            v160 = __CFStringIsCF();
                            if (v160)
                            {
                              v161 = v227[0];
                              v22 = v30;
                              if (!v227[0])
                              {

                                v158 = 0;
                                v81 = 0xE000000000000000;
                                goto LABEL_164;
                              }

                              if (v226 == 1)
                              {
                                v30 = v210;
                                if (v223)
                                {
                                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                                }

                                else
                                {
                                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                                }

                                v169 = String.init<A>(_immortalCocoaString:count:encoding:)();
                                goto LABEL_172;
                              }

                              v30 = v210;
                              if (v225)
                              {
                                if (v223 == 1)
                                {
                                  v40 = &v194;
                                  MEMORY[0x1EEE9AC00](v160);
                                  *(&v194 - 4) = v156;
                                  *(&v194 - 3) = v227;
                                  *(&v194 - 4) = 1536;
                                  *(&v194 - 1) = v161;
                                }

                                else
                                {
                                  v171 = [(__CFString *)v156 lengthOfBytesUsingEncoding:4];
                                  v40 = &v194;
                                  MEMORY[0x1EEE9AC00](v171);
                                  *(&v194 - 4) = v156;
                                  *(&v194 - 3) = v227;
                                  *(&v194 - 4) = 134217984;
                                  *(&v194 - 1) = v172;
                                }

                                v173 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                v81 = v174;
                                v175 = HIBYTE(v174) & 0xF;
                                if ((v174 & 0x2000000000000000) == 0)
                                {
                                  v175 = v173 & 0xFFFFFFFFFFFFLL;
                                }

                                if (v175)
                                {
                                  v158 = v173;

                                  goto LABEL_173;
                                }
                              }
                            }

                            else
                            {
                              v40 = v156;
                              v162 = String.init(_nativeStorage:)();
                              v22 = v30;
                              if (v163)
                              {
                                v158 = v162;
                                v81 = v163;

                                goto LABEL_164;
                              }

                              v227[0] = [v40 length];
                              v30 = v210;
                              if (!v227[0])
                              {

                                v158 = 0;
                                v81 = 0xE000000000000000;
                                goto LABEL_173;
                              }
                            }

                            v169 = String.init(_cocoaString:)();
LABEL_172:
                            v158 = v169;
                            v81 = v170;
LABEL_173:
                            v176 = v218;
                            if (v138 == v158 && v140 == v81)
                            {

LABEL_177:
                              swift_willThrow();
                              swift_unknownObjectRelease();
                              _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v217, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
                              return (*(v176 + 8))(v22, v203);
                            }

                            v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v76)
                            {
                              goto LABEL_177;
                            }

                            goto LABEL_181;
                          }

                          goto LABEL_106;
                        }

                        v145 = [v136 UTF8String];
                        if (!v145)
                        {
LABEL_203:
                          __break(1u);
LABEL_204:
                          os_unfair_lock_unlock((v40 + 24));
                          __break(1u);
                          goto LABEL_205;
                        }

                        v146 = String.init(utf8String:)(v145);
                        if (v147)
                        {
LABEL_119:
                          v138 = v146;
                          v140 = v147;
LABEL_120:

LABEL_137:
                          goto LABEL_138;
                        }

                        __break(1u);
                      }

                      v225 = 0;
                      _CFIndirectTaggedPointerStringGetContents();
                      v146 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                      if (!v147)
                      {
                        [v136 mutableCopy];
                        _bridgeAnyObjectToAny(_:)();

                        swift_unknownObjectRelease();
                        swift_dynamicCast();
                        v138 = v223;
                        v140 = v224;
                        goto LABEL_137;
                      }

                      goto LABEL_119;
                    }

                    if (v225)
                    {
                      if (v223 == 1)
                      {
                        MEMORY[0x1EEE9AC00](IsCF);
                        *(&v194 - 4) = v116;
                        *(&v194 - 3) = v227;
                        *(&v194 - 4) = 1536;
                        *(&v194 - 1) = v119;
                      }

                      else
                      {
                        v125 = [(__CFString *)v116 lengthOfBytesUsingEncoding:4];
                        MEMORY[0x1EEE9AC00](v125);
                        *(&v194 - 4) = v116;
                        *(&v194 - 3) = v227;
                        *(&v194 - 4) = 134217984;
                        *(&v194 - 1) = v126;
                      }

                      v127 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v129 = HIBYTE(v128) & 0xF;
                      if ((v128 & 0x2000000000000000) == 0)
                      {
                        v129 = v127 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v129)
                      {
                        goto LABEL_97;
                      }
                    }
                  }

                  else
                  {
                    v120 = v116;
                    String.init(_nativeStorage:)();
                    if (v121 || (v227[0] = [(__CFString *)v120 length]) == 0)
                    {

                      goto LABEL_100;
                    }
                  }

                  String.init(_cocoaString:)();
                  goto LABEL_100;
                }

                v122 = [(__CFString *)v116 UTF8String];
                if (!v122)
                {
LABEL_200:
                  __break(1u);
                  goto LABEL_201;
                }

                String.init(utf8String:)(v122);
                if (v123)
                {
                  goto LABEL_97;
                }

                __break(1u);
              }

              v225 = 0;
              _CFIndirectTaggedPointerStringGetContents();
              _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v124)
              {
                [(__CFString *)v116 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                goto LABEL_100;
              }

              goto LABEL_97;
            }
          }

          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

LABEL_20:
        LOBYTE(v223) = 0;
        v227[0] = 0;
        LOBYTE(v225) = 0;
        v226 = 0;
        v74 = __CFStringIsCF();
        if (v74)
        {
          v75 = v227[0];
          if (v227[0])
          {
            if (v226 == 1)
            {
              v30 = v22;
              if (v223)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v100 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_64;
            }

            if (v225)
            {
              v30 = v22;
              if (v223 == 1)
              {
                MEMORY[0x1EEE9AC00](v74);
                *(&v194 - 4) = v69;
                *(&v194 - 3) = v227;
                *(&v194 - 4) = 1536;
                *(&v194 - 1) = v75;
              }

              else
              {
                v102 = [(__CFString *)v69 lengthOfBytesUsingEncoding:4];
                MEMORY[0x1EEE9AC00](v102);
                *(&v194 - 4) = v69;
                *(&v194 - 3) = v227;
                *(&v194 - 4) = 134217984;
                *(&v194 - 1) = v103;
              }

              v104 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v73 = v105;
              v106 = HIBYTE(v105) & 0xF;
              if ((v105 & 0x2000000000000000) == 0)
              {
                v106 = v104 & 0xFFFFFFFFFFFFLL;
              }

              if (v106)
              {
                v71 = v104;
                goto LABEL_47;
              }
            }

            else
            {
              v30 = v22;
            }

LABEL_63:
            v100 = String.init(_cocoaString:)();
LABEL_64:
            v71 = v100;
            v73 = v101;
            goto LABEL_65;
          }

          v30 = v22;
        }

        else
        {
          v30 = v22;
          v94 = v69;
          v95 = String.init(_nativeStorage:)();
          if (v96)
          {
            v71 = v95;
            v73 = v96;

            goto LABEL_65;
          }

          v227[0] = [(__CFString *)v94 length];
          if (v227[0])
          {
            goto LABEL_63;
          }
        }

        v71 = 0;
        v73 = 0xE000000000000000;
        goto LABEL_65;
      }

      v97 = [(__CFString *)v69 UTF8String];
      if (!v97)
      {
LABEL_199:
        __break(1u);
        goto LABEL_200;
      }

      v30 = v22;
      v98 = String.init(utf8String:)(v97);
      if (v99)
      {
LABEL_46:
        v71 = v98;
        v73 = v99;
LABEL_47:

        goto LABEL_65;
      }

      __break(1u);
    }

    v30 = v22;
    v225 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v98 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v99)
    {
      [(__CFString *)v69 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v71 = v223;
      v73 = v224;
      goto LABEL_65;
    }

    goto LABEL_46;
  }

  v76 = v66;
  os_unfair_lock_lock((v40 + 24));
  v77 = *(v40 + 16);
  v78 = *(v77 + 16);
  v222 = 0;
  v200 = v77;
  if (v39 < v78)
  {
    *(v40 + 16) = MEMORY[0x1E69E7CC8];
  }

  else
  {
  }

  v79 = v204;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v219, v204, type metadata accessor for ICULegacyNumberFormatter.Signature);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v227[0] = *(v40 + 16);
  v81 = v227[0];
  *(v40 + 16) = 0x8000000000000000;
  v83 = specialized __RawDictionaryStorage.find<A>(_:)(v79);
  v84 = *(v81 + 16);
  v85 = (v82 & 1) == 0;
  v86 = v84 + v85;
  if (__OFADD__(v84, v85))
  {
    goto LABEL_180;
  }

  if (*(v81 + 24) < v86)
  {
    v199 = v82;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v86, isUniquelyReferenced_nonNull_native);
    v212 = v227[0];
    v87 = specialized __RawDictionaryStorage.find<A>(_:)(v79);
    v89 = v88 & 1;
    v90 = v199;
    if ((v199 & 1) != v89)
    {
LABEL_205:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v83 = v87;
    goto LABEL_32;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    if (v82)
    {
      goto LABEL_33;
    }

LABEL_36:
    v91 = v204;
    v212 = v81;
    v92 = v214;
    v211 = v83;
    _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v204, v214, type metadata accessor for ICULegacyNumberFormatter.Signature);
    v93 = v92;
    v81 = v212;
    specialized _NativeDictionary._insert(at:key:value:)(v211, v93, v76, v212);
    goto LABEL_37;
  }

LABEL_182:
  v211 = v83;
  v199 = v82;
  v210 = v30;
  v195 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd, &_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMR);
  v212 = static _DictionaryStorage.copy(original:)();
  v197 = v81;
  if (*(v81 + 16))
  {
    v177 = (v212 + 8);
    v178 = 1 << *(v212 + 32);
    v196 = (v197 + 8);
    v179 = (v178 + 63) >> 6;
    if (v212 != v197 || v177 >= &v196[8 * v179])
    {
      memmove(v177, v196, 8 * v179);
    }

    v180 = 0;
    v181 = v197;
    v212[2] = v197[2];
    v182 = 1 << *(v181 + 32);
    v183 = v181[8];
    v184 = -1;
    if (v182 < 64)
    {
      v184 = ~(-1 << v182);
    }

    v198 = v184 & v183;
    v194 = (v182 + 63) >> 6;
    while (v198)
    {
      v185 = __clz(__rbit64(v198));
      v198 &= v198 - 1;
LABEL_196:
      v188 = v185 | (v180 << 6);
      v189 = v197;
      v190 = *(v213 + 72) * v188;
      v191 = v214;
      _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v197[6] + v190, v214, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v192 = *(v189[7] + 8 * v188);
      v193 = v212;
      outlined init with take of CurrencyFormatStyleConfiguration.Collection(v191, v212[6] + v190, type metadata accessor for ICULegacyNumberFormatter.Signature);
      *(v193[7] + 8 * v188) = v192;
    }

    v186 = v180;
    while (1)
    {
      v180 = v186 + 1;
      if (__OFADD__(v186, 1))
      {
        break;
      }

      if (v180 >= v194)
      {
        goto LABEL_197;
      }

      v187 = *&v196[8 * v180];
      ++v186;
      if (v187)
      {
        v185 = __clz(__rbit64(v187));
        v198 = (v187 - 1) & v187;
        goto LABEL_196;
      }
    }

    __break(1u);
    goto LABEL_199;
  }

LABEL_197:

  v22 = v195;
  v90 = v199;
  v83 = v211;
LABEL_32:
  v81 = v212;
  if ((v90 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_33:
  *(*(v81 + 56) + 8 * v83) = v76;

  v91 = v204;
LABEL_37:
  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v91, type metadata accessor for ICULegacyNumberFormatter.Signature);
  *(v40 + 16) = v81;

  os_unfair_lock_unlock((v40 + 24));

LABEL_6:
  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v219, type metadata accessor for ICULegacyNumberFormatter.Signature);
  swift_unknownObjectRelease();

  v47 = String.subscript.getter();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v223 = 0;
  specialized ICULegacyNumberFormatter.parseAsDouble<A>(_:upperBound:)(v47, v48, v50, v52, &v223);
  if (v54)
  {
    swift_unknownObjectRelease();

    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v217, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    (*(v218 + 8))(v22, v203);
    TupleTypeMetadata2 = v201;
    v55 = *(v201 - 8);
    v26 = v202;
    (*(v55 + 56))(v202, 1, 1, v201);
LABEL_9:
    v56 = v215;
    goto LABEL_11;
  }

  v227[0] = v47;
  v227[1] = v49;
  *&v228 = v51;
  *(&v228 + 1) = v53;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  v57 = String.Index.init<A>(utf16Offset:in:)();
  TupleTypeMetadata2 = v201;
  v26 = v202;
  *v202 = v57;
  v56 = v215;
  dispatch thunk of BinaryFloatingPoint.init(_:)();
  swift_unknownObjectRelease();

  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v217, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  (*(v218 + 8))(v22, v203);
  v55 = *(TupleTypeMetadata2 - 8);
  (*(v55 + 56))(v26, 0, 1, TupleTypeMetadata2);
LABEL_11:
  if ((*(v55 + 48))(v26, 1, TupleTypeMetadata2) == 1)
  {
    (*(v206 + 8))(v26, v207);
    v58 = swift_getTupleTypeMetadata2();
    return (*(*(v58 - 8) + 56))(v216, 1, 1, v58);
  }

  else
  {
    v60 = *v26;
    v61 = *(TupleTypeMetadata2 + 48);
    v62 = swift_getTupleTypeMetadata2();
    v63 = *(v62 + 48);
    v64 = v216;
    *v216 = v60;
    (*(*(v56 - 8) + 32))(v64 + v63, v26 + v61, v56);
    return (*(*(v62 - 8) + 56))(v64, 0, 1, v62);
  }
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance FloatingPointFormatStyle<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6E5F8](a1, WitnessTable);
}

uint64_t FloatingPointFormatStyle.Percent.consuming(_:startingAt:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v138 = a4;
  v137 = a3;
  v122 = a2;
  v121 = a1;
  v134 = a6;
  v141[16] = *MEMORY[0x1E69E9840];
  v129 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v130 = *(v129 - 1);
  MEMORY[0x1EEE9AC00](v129);
  v114 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v131 = &v109 - v9;
  v128 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v132 = &v109 - v12;
  v14 = *(a5 + 16);
  v13 = *(a5 + 24);
  v16 = type metadata accessor for FloatingPointFormatStyle(255, v14, v13, v15);
  v118 = type metadata accessor for Optional();
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v126 = &v109 - v17;
  v18 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v116 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v123 = &v109 - v22;
  v127 = v16;
  v124 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v109 - v24);
  v125 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v125);
  v135 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  v115 = v13;
  v28 = type metadata accessor for FloatingPointParseStrategy(0, a5, WitnessTable, v13);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v109 - v30;
  v133 = v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v120 = type metadata accessor for Optional();
  v119 = *(v120 - 8);
  v33 = MEMORY[0x1EEE9AC00](v120);
  v35 = (&v109 - v34);
  v36 = *(v18 + 16);
  v36(v31, v136, a5, v33);
  v31[*(v28 + 44)] = 0;
  if (v137 >> 14 >= v138 >> 14)
  {
    (*(v29 + 8))(v31, v28);
    v42 = *(TupleTypeMetadata2 - 8);
    (*(v42 + 56))(v35, 1, 1, TupleTypeMetadata2);
LABEL_13:
    v70 = v133;
    goto LABEL_15;
  }

  v110 = TupleTypeMetadata2;
  v111 = v35;
  v136 = v29;
  v113 = v28;
  (v36)(v123, v31, a5);
  v37 = v126;
  v38 = v127;
  v39 = swift_dynamicCast();
  v40 = v124;
  v41 = v124[7];
  v112 = v31;
  if (v39)
  {
    v41(v37, 0, 1, v38);
    (v40[4])(v25, v37, v38);
  }

  else
  {
    v41(v37, 1, 1, v38);
    (*(v117 + 8))(v37, v118);
    v25 = v116;
    (v36)(v116, v31, a5);
    v38 = a5;
  }

  v43 = v135;
  outlined init with take of CurrencyFormatStyleConfiguration.Collection(v25 + *(v38 + 36), v135, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  swift_storeEnumTagMultiPayload();
  v46 = v25;
  v45 = *v25;
  v44 = v46[1];
  v47 = v132;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v43, v132, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v49 = *(v44 + 64);
  swift_unknownObjectRetain();
  v50 = v49(ObjectType, v44);
  v51 = v129;
  v52 = (v47 + *(v129 + 5));
  *v52 = v50;
  v52[1] = v53;
  *(v47 + *(v51 + 6)) = 0;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v54 = static ICULegacyNumberFormatter.cache;
  v55 = qword_1EA7AFFA0;
  v56 = v131;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v47, v131, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v57 = (*(v130 + 80) + 16) & ~*(v130 + 80);
  v58 = swift_allocObject();
  v59 = outlined init with take of CurrencyFormatStyleConfiguration.Collection(v56, v58 + v57, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v59);
  *(&v109 - 2) = v47;
  os_unfair_lock_lock((v55 + 24));
  v60 = v139;
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v141, v55 + 16);
  if (v60)
  {
    goto LABEL_49;
  }

  v61 = 0;
  os_unfair_lock_unlock((v55 + 24));
  if (v141[0])
  {
    v139 = 0;
    goto LABEL_11;
  }

  v79 = implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)partial apply();
  v139 = 0;
  os_unfair_lock_lock((v55 + 24));
  v80 = *(v55 + 16);
  if (v54 >= *(v80 + 16))
  {
  }

  else
  {
    *(v55 + 16) = MEMORY[0x1E69E7CC8];
  }

  v81 = v114;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v132, v114, type metadata accessor for ICULegacyNumberFormatter.Signature);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v141[0] = *(v55 + 16);
  v83 = v141[0];
  *(v55 + 16) = 0x8000000000000000;
  v84 = specialized __RawDictionaryStorage.find<A>(_:)(v81);
  v86 = *(v83 + 16);
  v87 = (v85 & 1) == 0;
  v88 = __OFADD__(v86, v87);
  v89 = v86 + v87;
  if (v88)
  {
    __break(1u);
    __break(1u);
LABEL_31:
    v118 = v80;
    v127 = v45;
    v123 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd, &_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMR);
    v129 = static _DictionaryStorage.copy(original:)();
    if (!*(v83 + 16))
    {
LABEL_46:

      v84 = v123;
      v92 = v129;
      if (v61)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    v96 = v129 + 8;
    v97 = 1 << *(v129 + 32);
    v124 = (v83 + 64);
    v98 = (v97 + 63) >> 6;
    if (v129 != v83 || v96 >= &v124[v98])
    {
      memmove(v96, v124, 8 * v98);
    }

    v99 = 0;
    v129[2] = *(v83 + 16);
    v100 = 1 << *(v83 + 32);
    v101 = -1;
    if (v100 < 64)
    {
      v101 = ~(-1 << v100);
    }

    v128 = v101 & *(v83 + 64);
    v117 = (v100 + 63) >> 6;
    while (v128)
    {
      v102 = __clz(__rbit64(v128));
      v128 &= v128 - 1;
LABEL_45:
      v105 = v102 | (v99 << 6);
      v106 = *(v83 + 48);
      v126 = *(v130 + 72) * v105;
      v107 = v131;
      _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v106 + v126, v131, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v125 = *(*(v83 + 56) + 8 * v105);
      v108 = v129;
      outlined init with take of CurrencyFormatStyleConfiguration.Collection(v107, v129[6] + v126, type metadata accessor for ICULegacyNumberFormatter.Signature);
      *(v108[7] + 8 * v105) = v125;
    }

    v103 = v99;
    while (1)
    {
      v99 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        break;
      }

      if (v99 >= v117)
      {
        goto LABEL_46;
      }

      v104 = v124[v99];
      ++v103;
      if (v104)
      {
        v102 = __clz(__rbit64(v104));
        v128 = (v104 - 1) & v104;
        goto LABEL_45;
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_49:
    os_unfair_lock_unlock((v55 + 24));
    __break(1u);
    goto LABEL_50;
  }

  v61 = v85;
  if (*(v83 + 24) >= v89)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v92 = v83;
      if (v85)
      {
        goto LABEL_25;
      }

LABEL_28:
      v94 = v84;
      v93 = v114;
      v129 = v92;
      v95 = v131;
      _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v114, v131, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v92 = v129;
      specialized _NativeDictionary._insert(at:key:value:)(v94, v95, v79, v129);
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v89, isUniquelyReferenced_nonNull_native);
  v90 = v141[0];
  v84 = specialized __RawDictionaryStorage.find<A>(_:)(v114);
  if ((v61 & 1) != (v91 & 1))
  {
LABEL_50:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v92 = v90;
  if ((v61 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_25:
  *(v92[7] + 8 * v84) = v79;

  v93 = v114;
LABEL_29:
  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v93, type metadata accessor for ICULegacyNumberFormatter.Signature);
  *(v55 + 16) = v92;

  os_unfair_lock_unlock((v55 + 24));

  v47 = v132;
LABEL_11:
  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v47, type metadata accessor for ICULegacyNumberFormatter.Signature);
  swift_unknownObjectRelease();

  v62 = String.subscript.getter();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v140 = 0;
  specialized ICULegacyNumberFormatter.parseAsDouble<A>(_:upperBound:)(v62, v63, v65, v67, &v140);
  if (v69)
  {
    swift_unknownObjectRelease();

    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v135, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    (*(v136 + 8))(v112, v113);
    TupleTypeMetadata2 = v110;
    v42 = *(v110 - 8);
    v35 = v111;
    (*(v42 + 56))(v111, 1, 1, v110);
    goto LABEL_13;
  }

  v141[0] = v62;
  v141[1] = v64;
  v141[2] = v66;
  v141[3] = v68;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  v71 = String.Index.init<A>(utf16Offset:in:)();
  TupleTypeMetadata2 = v110;
  v35 = v111;
  *v111 = v71;
  v70 = v133;
  dispatch thunk of BinaryFloatingPoint.init(_:)();
  swift_unknownObjectRelease();

  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v135, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  (*(v136 + 8))(v112, v113);
  v42 = *(TupleTypeMetadata2 - 8);
  (*(v42 + 56))(v35, 0, 1, TupleTypeMetadata2);
LABEL_15:
  if ((*(v42 + 48))(v35, 1, TupleTypeMetadata2) == 1)
  {
    (*(v119 + 8))(v35, v120);
    v72 = swift_getTupleTypeMetadata2();
    return (*(*(v72 - 8) + 56))(v134, 1, 1, v72);
  }

  else
  {
    v74 = *v35;
    v75 = *(TupleTypeMetadata2 + 48);
    v76 = swift_getTupleTypeMetadata2();
    v77 = *(v76 + 48);
    v78 = v134;
    *v134 = v74;
    (*(*(v70 - 8) + 32))(v78 + v77, v35 + v75, v70);
    return (*(*(v76 - 8) + 56))(v78, 0, 1, v76);
  }
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance FloatingPointFormatStyle<A>.Percent(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6E5F8](a1, WitnessTable);
}

uint64_t FloatingPointFormatStyle.Currency.consuming(_:startingAt:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v168 = a4;
  v169 = a3;
  v154 = a2;
  v153 = a1;
  v164 = a6;
  v172[16] = *MEMORY[0x1E69E9840];
  v160 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v161 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v142 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v162 = &v132 - v9;
  v159 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v166 = &v132 - v12;
  v13 = *(a5 + 16);
  v14 = *(a5 + 24);
  v16 = type metadata accessor for FloatingPointFormatStyle.Percent(255, v13, v14, v15);
  v141 = type metadata accessor for Optional();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v149 = &v132 - v17;
  v150 = v16;
  v148 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v139 = &v132 - v19;
  v21 = type metadata accessor for FloatingPointFormatStyle(255, v13, v14, v20);
  v147 = type metadata accessor for Optional();
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v156 = &v132 - v22;
  v23 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v138 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v145 = &v132 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v132 - v29;
  v157 = v21;
  v155 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v144 = &v132 - v32;
  v158 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v158);
  v163 = &v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  v143 = v14;
  v35 = type metadata accessor for FloatingPointParseStrategy(0, a5, WitnessTable, v14);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v132 - v37;
  v167 = v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v152 = type metadata accessor for Optional();
  v151 = *(v152 - 8);
  v40 = MEMORY[0x1EEE9AC00](v152);
  v42 = &v132 - v41;
  v43 = *(v23 + 16);
  v43(v38, v165, a5, v40);
  v38[*(v35 + 44)] = 0;
  if (v169 >> 14 < v168 >> 14)
  {
    v133 = TupleTypeMetadata2;
    v134 = v42;
    v137 = v36;
    v136 = v35;
    v44 = v38;
    (v43)(v30, v38, a5);
    v45 = v156;
    v46 = v157;
    v47 = swift_dynamicCast();
    v48 = v155;
    v49 = *(v155 + 56);
    v135 = v44;
    if (v47)
    {
      v49(v45, 0, 1, v46);
      v50 = v144;
      (*(v48 + 32))(v144, v45, v46);
      v51 = v163;
      outlined init with take of CurrencyFormatStyleConfiguration.Collection(&v50[*(v46 + 36)], v163, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      v52 = v170;
      v53 = v160;
    }

    else
    {
      v49(v45, 1, 1, v46);
      (*(v146 + 8))(v45, v147);
      (v43)(v145, v44, a5);
      v56 = v149;
      v57 = v150;
      v58 = swift_dynamicCast();
      v59 = v148;
      v60 = *(v148 + 56);
      v53 = v160;
      if (v58)
      {
        v60(v56, 0, 1, v57);
        v50 = v139;
        (*(v59 + 32))(v139, v56, v57);
        v51 = v163;
        outlined init with take of CurrencyFormatStyleConfiguration.Collection(&v50[*(v57 + 36)], v163, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      }

      else
      {
        v60(v56, 1, 1, v57);
        (*(v140 + 8))(v56, v141);
        v61 = v138;
        (v43)(v138, v44, a5);
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd, &_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMR);
        v51 = v163;
        v63 = (v163 + *(v62 + 48));
        outlined init with take of CurrencyFormatStyleConfiguration.Collection(&v61[*(a5 + 40)], v163, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
        v64 = *(v61 + 3);
        *v63 = *(v61 + 2);
        v63[1] = v64;
        v50 = v61;
      }

      v52 = v170;
    }

    swift_storeEnumTagMultiPayload();
    v67 = v50;
    v66 = *v50;
    v65 = *(v67 + 1);
    v68 = v166;
    _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v51, v166, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    ObjectType = swift_getObjectType();
    v70 = *(v65 + 64);
    swift_unknownObjectRetain();
    v165 = v66;
    v71 = v70(ObjectType, v65);
    v72 = (v68 + *(v53 + 20));
    *v72 = v71;
    v72[1] = v73;
    *(v68 + *(v53 + 24)) = 0;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v74 = static ICULegacyNumberFormatter.cache;
    v75 = qword_1EA7AFFA0;
    v76 = v162;
    _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v68, v162, type metadata accessor for ICULegacyNumberFormatter.Signature);
    v77 = (*(v161 + 80) + 16) & ~*(v161 + 80);
    v78 = swift_allocObject();
    v79 = outlined init with take of CurrencyFormatStyleConfiguration.Collection(v76, v78 + v77, type metadata accessor for ICULegacyNumberFormatter.Signature);
    MEMORY[0x1EEE9AC00](v79);
    *(&v132 - 2) = v68;
    os_unfair_lock_lock((v75 + 24));
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v172, v75 + 16);
    if (!v52)
    {
      os_unfair_lock_unlock((v75 + 24));
      if (v172[0])
      {
        v170 = 0;
        goto LABEL_14;
      }

      v100 = implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)partial apply();
      v170 = 0;
      os_unfair_lock_lock((v75 + 24));
      v101 = *(v75 + 16);
      if (v74 >= *(v101 + 16))
      {
      }

      else
      {
        *(v75 + 16) = MEMORY[0x1E69E7CC8];
      }

      v102 = v142;
      _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v166, v142, type metadata accessor for ICULegacyNumberFormatter.Signature);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v172[0] = *(v75 + 16);
      v104 = v172[0];
      *(v75 + 16) = 0x8000000000000000;
      v105 = specialized __RawDictionaryStorage.find<A>(_:)(v102);
      v107 = *(v104 + 16);
      v108 = (v106 & 1) == 0;
      v109 = __OFADD__(v107, v108);
      v110 = v107 + v108;
      if (v109)
      {
        __break(1u);
        __break(1u);
      }

      else
      {
        v111 = *(v104 + 24);
        v160 = v101;
        if (v111 < v110)
        {
          v112 = v106;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v110, isUniquelyReferenced_nonNull_native);
          v113 = v172[0];
          v105 = specialized __RawDictionaryStorage.find<A>(_:)(v142);
          if ((v112 & 1) == (v114 & 1))
          {
            v51 = v163;
            v115 = v113;
            if (v112)
            {
LABEL_27:
              *(v115[7] + 8 * v105) = v100;

              v116 = v142;
LABEL_31:
              _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v116, type metadata accessor for ICULegacyNumberFormatter.Signature);
              *(v75 + 16) = v115;

              os_unfair_lock_unlock((v75 + 24));

LABEL_14:
              _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v166, type metadata accessor for ICULegacyNumberFormatter.Signature);
              swift_unknownObjectRelease();

              v80 = String.subscript.getter();
              v82 = v81;
              v84 = v83;
              v86 = v85;
              v171 = 0;
              specialized ICULegacyNumberFormatter.parseAsDouble<A>(_:upperBound:)(v80, v81, v83, v85, &v171);
              v87 = v137;
              if (v88)
              {
                swift_unknownObjectRelease();

                _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v51, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
                (*(v87 + 8))(v135, v136);
                TupleTypeMetadata2 = v133;
                v54 = *(v133 - 8);
                v55 = v134;
                (*(v54 + 56))(v134, 1, 1, v133);
              }

              else
              {
                v172[0] = v80;
                v172[1] = v82;
                v172[2] = v84;
                v172[3] = v86;
                lazy protocol witness table accessor for type Substring and conformance Substring();
                v89 = String.Index.init<A>(utf16Offset:in:)();
                TupleTypeMetadata2 = v133;
                v90 = v134;
                *v134 = v89;
                dispatch thunk of BinaryFloatingPoint.init(_:)();
                swift_unknownObjectRelease();

                v91 = v51;
                v55 = v90;
                _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v91, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
                (*(v87 + 8))(v135, v136);
                v54 = *(TupleTypeMetadata2 - 8);
                (*(v54 + 56))(v55, 0, 1, TupleTypeMetadata2);
              }

              goto LABEL_17;
            }

LABEL_30:
            v117 = v105;
            v116 = v142;
            v118 = v162;
            _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v142, v162, type metadata accessor for ICULegacyNumberFormatter.Signature);
            specialized _NativeDictionary._insert(at:key:value:)(v117, v118, v100, v115);
            goto LABEL_31;
          }

LABEL_52:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v115 = v104;
          v51 = v163;
          if (v106)
          {
            goto LABEL_27;
          }

          goto LABEL_30;
        }
      }

      LODWORD(v150) = v106;
      v155 = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd, &_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMR);
      v158 = static _DictionaryStorage.copy(original:)();
      if (!*(v104 + 16))
      {
LABEL_48:

        v105 = v155;
        v51 = v163;
        v115 = v158;
        if (v150)
        {
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      v119 = (v158 + 64);
      v120 = 1 << *(v158 + 32);
      v156 = (v104 + 64);
      v121 = (v120 + 63) >> 6;
      if (v158 != v104 || v119 >= &v156[8 * v121])
      {
        memmove(v119, v156, 8 * v121);
      }

      v122 = 0;
      *(v158 + 16) = *(v104 + 16);
      v123 = 1 << *(v104 + 32);
      v124 = -1;
      if (v123 < 64)
      {
        v124 = ~(-1 << v123);
      }

      v159 = v124 & *(v104 + 64);
      v149 = ((v123 + 63) >> 6);
      while (v159)
      {
        v125 = __clz(__rbit64(v159));
        v159 &= v159 - 1;
LABEL_47:
        v128 = v125 | (v122 << 6);
        v129 = *(v161 + 72) * v128;
        v130 = v162;
        _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(*(v104 + 48) + v129, v162, type metadata accessor for ICULegacyNumberFormatter.Signature);
        v157 = *(*(v104 + 56) + 8 * v128);
        v131 = v158;
        outlined init with take of CurrencyFormatStyleConfiguration.Collection(v130, *(v158 + 48) + v129, type metadata accessor for ICULegacyNumberFormatter.Signature);
        *(*(v131 + 56) + 8 * v128) = v157;
      }

      v126 = v122;
      while (1)
      {
        v122 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          break;
        }

        if (v122 >= v149)
        {
          goto LABEL_48;
        }

        v127 = *&v156[8 * v122];
        ++v126;
        if (v127)
        {
          v125 = __clz(__rbit64(v127));
          v159 = (v127 - 1) & v127;
          goto LABEL_47;
        }
      }

      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
    }

    os_unfair_lock_unlock((v75 + 24));
    __break(1u);
    goto LABEL_52;
  }

  (*(v36 + 8))(v38, v35);
  v54 = *(TupleTypeMetadata2 - 8);
  (*(v54 + 56))(v42, 1, 1, TupleTypeMetadata2);
  v55 = v42;
LABEL_17:
  if ((*(v54 + 48))(v55, 1, TupleTypeMetadata2) == 1)
  {
    (*(v151 + 8))(v55, v152);
    v92 = swift_getTupleTypeMetadata2();
    return (*(*(v92 - 8) + 56))(v164, 1, 1, v92);
  }

  else
  {
    v94 = *v55;
    v95 = *(TupleTypeMetadata2 + 48);
    v96 = v167;
    v97 = swift_getTupleTypeMetadata2();
    v98 = *(v97 + 48);
    v99 = v164;
    *v164 = v94;
    (*(*(v96 - 8) + 32))(&v99[v98], &v55[v95], v96);
    return (*(*(v97 - 8) + 56))(v99, 0, 1, v97);
  }
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance FloatingPointFormatStyle<A>.Currency(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6E5F8](a1, WitnessTable);
}

uint64_t static RegexComponent<>.localizedDouble(locale:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR) + 36);
  *v4 = 0;
  v4[8] = 1;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *a1;
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  v8 = &v4[v5[10]];
  *v8 = 0;
  v8[8] = -1;
  v4[v5[11]] = 3;
  *a2 = v10;

  return swift_unknownObjectRetain();
}

uint64_t static RegexComponent<>.localizedDoublePercentage(locale:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMd, &_s10Foundation24FloatingPointFormatStyleV7PercentVySd_GMR) + 36);
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *a1;
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  *v4 = 0x4059000000000000;
  v4[8] = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v8 = &v4[v5[10]];
  *v8 = 0;
  v8[8] = -1;
  v4[v5[11]] = 3;
  *a2 = v10;

  return swift_unknownObjectRetain();
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute.Symbol);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute.NumberPart);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for FloatingPointFormatStyle<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for FloatingPointFormatStyle<A>.Currency(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for FloatingPointFormatStyle<A>.Percent(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for FloatingPointFormatStyle.Attributed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FloatingPointFormatStyle.Attributed.Style(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for FloatingPointFormatStyle.Attributed.Style(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for FloatingPointFormatStyle(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for FloatingPointFormatStyle.Currency(319, v4, v5, v7);
    if (v10 <= 0x3F)
    {
      result = type metadata accessor for FloatingPointFormatStyle.Percent(319, v4, v5, v9);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t FloatingPointParseStrategy.init<A>(format:lenient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return FloatingPointParseStrategy.init<A>(format:lenient:)(a1, a2, a3, a4, type metadata accessor for FloatingPointFormatStyle, a5);
}

{
  return FloatingPointParseStrategy.init<A>(format:lenient:)(a1, a2, a3, a4, type metadata accessor for FloatingPointFormatStyle.Percent, a5);
}

{
  return FloatingPointParseStrategy.init<A>(format:lenient:)(a1, a2, a3, a4, type metadata accessor for FloatingPointFormatStyle.Currency, a5);
}

void FloatingPointParseStrategy.parse(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v292 = a2;
  v291 = a1;
  v259 = a4;
  v300[6] = *MEMORY[0x1E69E9840];
  v5 = a3[2];
  v6 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v284 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v274 = &v241 - v8;
  v277 = a3;
  v9 = a3[4];
  v273 = *(v9 + 8);
  v272 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v272);
  v271 = &v241 - v10;
  v287 = swift_getAssociatedTypeWitness();
  v268 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287);
  v288 = &v241 - v11;
  v13 = type metadata accessor for FloatingPointFormatStyle.Currency(255, AssociatedTypeWitness, v9, v12);
  v242 = type metadata accessor for Optional();
  v241 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242);
  v253 = &v241 - v14;
  v254 = v13;
  v252 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v243 = &v241 - v16;
  v278 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v279 = *(v278 - 8);
  MEMORY[0x1EEE9AC00](v278);
  v255 = &v241 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v280 = &v241 - v19;
  v276 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v281 = &v241 - v22;
  v24 = type metadata accessor for FloatingPointFormatStyle.Percent(255, AssociatedTypeWitness, v9, v23);
  v251 = type metadata accessor for Optional();
  v250 = *(v251 - 8);
  MEMORY[0x1EEE9AC00](v251);
  v266 = &v241 - v25;
  v267 = v24;
  v265 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v249 = &v241 - v27;
  v258 = v9;
  v29 = type metadata accessor for FloatingPointFormatStyle(255, AssociatedTypeWitness, v9, v28);
  v264 = type metadata accessor for Optional();
  v263 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v31 = &v241 - v30;
  v289 = v5;
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v248 = &v241 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v262 = &v241 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v241 - v38;
  v40 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v241 - v42);
  v275 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v275);
  v286 = &v241 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v270 = type metadata accessor for Optional();
  v269 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v291);
  v283 = (&v241 - v46);
  v282 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v257 = &v241 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v256 = &v241 - v52;
  v53 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v53 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (v53)
  {
    specialized BidirectionalCollection._trimmingCharacters(while:)(v50, v51);
    v54 = String.init(_:)();
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
  }

  if ((v55 & 0x2000000000000000) != 0)
  {
    v56 = HIBYTE(v55) & 0xF;
  }

  else
  {
    v56 = v54 & 0xFFFFFFFFFFFFLL;
  }

  v57 = 7;
  if (((v55 >> 60) & ((v54 & 0x800000000000000) == 0)) != 0)
  {
    v57 = 11;
  }

  if (!v56)
  {

    v64 = v283;
    (*(v282 + 56))(v283, 1, 1, TupleTypeMetadata2);
    v65 = v287;
    v66 = v285;
    goto LABEL_32;
  }

  v244 = v57;
  v245 = v56;
  v246 = TupleTypeMetadata2;
  v260 = v54;
  v261 = v55;
  v247 = v6;
  v58 = *(v32 + 16);
  v59 = v290;
  v60 = v289;
  v58(v39, v290, v289);
  v61 = swift_dynamicCast();
  v62 = *(v40 + 56);
  if (v61)
  {
    v62(v31, 0, 1, v29);
    (*(v40 + 32))(v43, v31, v29);
    v63 = v286;
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v43 + *(v29 + 36), v286, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  }

  else
  {
    v62(v31, 1, 1, v29);
    (*(v263 + 8))(v31, v264);
    v58(v262, v59, v60);
    v67 = v266;
    v68 = v267;
    v69 = swift_dynamicCast();
    v70 = v265;
    v71 = *(v265 + 56);
    if ((v69 & 1) == 0)
    {
      v71(v67, 1, 1, v68);
      (*(v250 + 8))(v67, v251);
      v58(v248, v59, v60);
      v76 = v253;
      v77 = v254;
      v78 = swift_dynamicCast();
      v79 = v252;
      v80 = *(v252 + 56);
      v63 = v286;
      v75 = v281;
      if (v78)
      {
        v80(v76, 0, 1, v77);
        v81 = v243;
        (*(v79 + 32))(v243, v76, v77);
        v82 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd, &_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMR) + 48));
        _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v81 + *(v77 + 40), v63, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
        v83 = v81[3];
        *v82 = v81[2];
        v82[1] = v83;
        swift_storeEnumTagMultiPayload();
        inited = *v81;
        v72 = v81[1];
      }

      else
      {
        v80(v76, 1, 1, v77);
        (*(v241 + 8))(v76, v242);
        *v63 = 0;
        *(v63 + 8) = 1;
        *(v63 + 16) = 0;
        *(v63 + 24) = 0;
        *(v63 + 32) = 0;
        *(v63 + 40) = 0x1FFFFFFFELL;
        *(v63 + 56) = 0;
        *(v63 + 64) = 0;
        *(v63 + 48) = 0;
        *(v63 + 72) = 131584;
        *(v63 + 76) = 512;
        v84 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
        v85 = v84[9];
        v86 = type metadata accessor for FloatingPointRoundingRule();
        (*(*(v86 - 8) + 56))(v63 + v85, 1, 1, v86);
        v87 = v63 + v84[10];
        *v87 = 0;
        *(v87 + 8) = -1;
        *(v63 + v84[11]) = 3;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for _LocaleAutoupdating();
        inited = swift_initStaticObject();
        v72 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating();
      }

      v74 = v293;
      goto LABEL_22;
    }

    v71(v67, 0, 1, v68);
    v43 = v249;
    (*(v70 + 32))(v249, v67, v68);
    v63 = v286;
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v43 + *(v68 + 36), v286, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  }

  swift_storeEnumTagMultiPayload();
  inited = *v43;
  v72 = v43[1];
  v74 = v293;
  v75 = v281;
LABEL_22:
  v88 = *(v59 + *(v277 + 11));
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v63, v75, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v90 = *(v72 + 64);
  swift_unknownObjectRetain();
  v277 = inited;
  v91 = v90(ObjectType, v72);
  v92 = v278;
  v93 = (v75 + *(v278 + 20));
  *v93 = v91;
  v93[1] = v94;
  *(v75 + *(v92 + 24)) = v88;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v95 = static ICULegacyNumberFormatter.cache;
  v65 = qword_1EA7AFFA0;
  v96 = v280;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v75, v280, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v97 = (*(v279 + 80) + 16) & ~*(v279 + 80);
  v98 = swift_allocObject();
  v99 = _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v96, v98 + v97, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v99);
  *(&v241 - 2) = v75;
  os_unfair_lock_lock((v65 + 24));
  _s10Foundation14FormatterCacheV9formatter3for7creatorq_x_q_yKXEtKFq_SgSDyxq_GzYbXEfU_AA015ICULegacyNumberB0C9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLV_AJTG5TA_0(v65 + 16, v298);
  if (v74)
  {
    goto LABEL_223;
  }

  os_unfair_lock_unlock((v65 + 24));
  if (!v298[0])
  {
    v114 = 0;
    v131 = partial apply for implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)();
    os_unfair_lock_lock((v65 + 24));
    v132 = *(v65 + 16);
    if (v95 >= *(v132 + 16))
    {
    }

    else
    {
      *(v65 + 16) = MEMORY[0x1E69E7CC8];
    }

    v136 = v255;
    _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v75, v255, type metadata accessor for ICULegacyNumberFormatter.Signature);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v298[0] = *(v65 + 16);
    v138 = v298[0];
    *(v65 + 16) = 0x8000000000000000;
    v139 = specialized __RawDictionaryStorage.find<A>(_:)(v136);
    v141 = v138[2];
    v142 = (v140 & 1) == 0;
    v143 = __OFADD__(v141, v142);
    v144 = v141 + v142;
    if (!v143)
    {
      LOBYTE(v95) = v140;
      v145 = v138[3];
      v276 = v132;
      if (v145 < v144)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v144, isUniquelyReferenced_nonNull_native);
        v293 = v298[0];
        v139 = specialized __RawDictionaryStorage.find<A>(_:)(v255);
        if ((v95 & 1) == (v146 & 1))
        {
          goto LABEL_68;
        }

        v139 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v293 = v138;
        goto LABEL_68;
      }

      goto LABEL_202;
    }

    goto LABEL_201;
  }

  v293 = 0;
  while (1)
  {
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v75, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    v100 = String.subscript.getter();
    v102 = v101;
    v104 = v103;
    v106 = v105;

    v294 = 0;
    specialized ICULegacyNumberFormatter.parseAsDouble<A>(_:upperBound:)(v100, v102, v104, v106, &v294);
    v107 = v287;
    if (v108)
    {
      _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v63, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      swift_unknownObjectRelease();

      v109 = 1;
      v66 = v285;
      v110 = v246;
      v64 = v283;
    }

    else
    {
      v298[0] = v100;
      v298[1] = v102;
      *&v299 = v104;
      *(&v299 + 1) = v106;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      v111 = String.Index.init<A>(utf16Offset:in:)();
      v110 = v246;
      v64 = v283;
      *v283 = v111;
      v66 = v285;
      dispatch thunk of BinaryFloatingPoint.init(_:)();
      swift_unknownObjectRelease();

      _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v63, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      v109 = 0;
    }

    v112 = v282;
    (*(v282 + 56))(v64, v109, 1, v110);
    v113 = (*(v112 + 48))(v64, 1, v110);
    v6 = v247;
    if (v113 != 1)
    {
      v125 = *(v112 + 32);
      v126 = v256;
      v125(v256, v64, v110);
      v127 = v257;
      v125(v257, v126, v110);
      (*(v284 + 32))(v259, &v127[*(v110 + 48)], v66);
      return;
    }

    v65 = v107;
LABEL_32:
    (*(v269 + 8))(v64, v270);
    swift_getAssociatedConformanceWitness();
    v114 = v271;
    dispatch thunk of _ExpressibleByBuiltinFloatLiteral.init(_builtinFloatLiteral:)();
    v115 = v274;
    dispatch thunk of ExpressibleByFloatLiteral.init(floatLiteral:)();
    (*(v6 + 48))(v115, v289, v6);
    (*(v284 + 8))(v115, v66);
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v117 = @"NSDebugDescription";
    v118 = v117;
    if (!isTaggedPointer)
    {
      goto LABEL_37;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v117);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          *(&v241 - 2) = v118;
          v120 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v122 = v121;

          goto LABEL_83;
        }

LABEL_37:
        LOBYTE(v294) = 0;
        v298[0] = 0;
        LOBYTE(v296) = 0;
        v297 = 0;
        IsCF = __CFStringIsCF();
        if (IsCF)
        {
          v124 = v298[0];
          if (!v298[0])
          {

LABEL_47:
            v120 = 0;
            v122 = 0xE000000000000000;
            goto LABEL_83;
          }

          if (v297 == 1)
          {
            if (v294)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v153 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_82;
          }

          if (v296)
          {
            if (v294 == 1)
            {
              MEMORY[0x1EEE9AC00](IsCF);
              *(&v241 - 4) = v118;
              *(&v241 - 3) = v298;
              *(&v241 - 4) = 1536;
              *(&v241 - 1) = v124;
            }

            else
            {
              v155 = [(__CFString *)v118 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v155);
              *(&v241 - 4) = v118;
              *(&v241 - 3) = v298;
              *(&v241 - 4) = 134217984;
              *(&v241 - 1) = v156;
            }

            v157 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v122 = v158;
            v159 = HIBYTE(v158) & 0xF;
            if ((v158 & 0x2000000000000000) == 0)
            {
              v159 = v157 & 0xFFFFFFFFFFFFLL;
            }

            if (v159)
            {
              v120 = v157;
              goto LABEL_55;
            }
          }
        }

        else
        {
          v128 = v118;
          v129 = String.init(_nativeStorage:)();
          if (v130)
          {
            v120 = v129;
            v122 = v130;

            goto LABEL_83;
          }

          v298[0] = [(__CFString *)v128 length];
          if (!v298[0])
          {

            goto LABEL_47;
          }
        }

        v153 = String.init(_cocoaString:)();
LABEL_82:
        v120 = v153;
        v122 = v154;
        goto LABEL_83;
      }

      v133 = [(__CFString *)v118 UTF8String];
      if (!v133)
      {
        goto LABEL_219;
      }

      v134 = String.init(utf8String:)(v133);
      if (v135)
      {
LABEL_54:
        v120 = v134;
        v122 = v135;
LABEL_55:

        goto LABEL_83;
      }

      __break(1u);
    }

    v296 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v134 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v135)
    {
      goto LABEL_54;
    }

    [(__CFString *)v118 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v120 = v294;
    v122 = v295;
LABEL_83:
    v300[0] = v120;
    v300[1] = v122;
    v298[0] = 0;
    v298[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(73);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](v291, v292);
    MEMORY[0x1865CB0E0](0xD000000000000038, 0x800000018147EBF0);
    _print_unlocked<A, B>(_:_:)();
    v300[5] = MEMORY[0x1E69E6158];
    v300[2] = v298[0];
    v300[3] = v298[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v131 = static _DictionaryStorage.allocate(capacity:)();
    v138 = v298;
    outlined init with copy of (String, Any)(v300, v298);

    outlined destroy of (String, Any)(v300);
    v160 = v298[0];
    v161 = v298[1];
    v162 = specialized __RawDictionaryStorage.find<A>(_:)(v298[0], v298[1]);
    LOBYTE(v95) = v163;

    if (v95)
    {
      __break(1u);
LABEL_199:
      __break(1u);
      goto LABEL_200;
    }

    v131[(v162 >> 6) + 8] |= 1 << v162;
    v164 = (v131[6] + 16 * v162);
    *v164 = v160;
    v164[1] = v161;
    v139 = outlined init with take of Any(&v299, (v131[7] + 32 * v162));
    v165 = v131[2];
    v143 = __OFADD__(v165, 1);
    v166 = v165 + 1;
    if (v143)
    {
      goto LABEL_199;
    }

    v131[2] = v166;
    v167 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v168 = @"NSCocoaErrorDomain";
    v169 = v168;
    if (v167)
    {
      v170 = _objc_getTaggedPointerTag(v168);
      switch(v170)
      {
        case 0:
          goto LABEL_101;
        case 0x16:
          v175 = [(__CFString *)v169 UTF8String];
          if (!v175)
          {
            goto LABEL_220;
          }

          String.init(utf8String:)(v175);
          if (!v176)
          {
            __break(1u);
LABEL_101:
            v296 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v177)
            {
              [(__CFString *)v169 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_118;
            }
          }

LABEL_115:

          goto LABEL_118;
        case 2:
          MEMORY[0x1EEE9AC00](v170);
          *(&v241 - 2) = v169;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_118;
      }
    }

    LOBYTE(v294) = 0;
    v298[0] = 0;
    LOBYTE(v296) = 0;
    v297 = 0;
    v171 = __CFStringIsCF();
    if (!v171)
    {
      v173 = v169;
      String.init(_nativeStorage:)();
      if (v174 || (v298[0] = [(__CFString *)v173 length]) == 0)
      {

        goto LABEL_118;
      }

LABEL_117:
      String.init(_cocoaString:)();
      goto LABEL_118;
    }

    v172 = v298[0];
    if (!v298[0])
    {
      goto LABEL_115;
    }

    if (v297 != 1)
    {
      if (v296)
      {
        if (v294 == 1)
        {
          MEMORY[0x1EEE9AC00](v171);
          *(&v241 - 4) = v169;
          *(&v241 - 3) = v298;
          *(&v241 - 4) = 1536;
          *(&v241 - 1) = v172;
        }

        else
        {
          v178 = [(__CFString *)v169 lengthOfBytesUsingEncoding:4];
          MEMORY[0x1EEE9AC00](v178);
          *(&v241 - 4) = v169;
          *(&v241 - 3) = v298;
          *(&v241 - 4) = 134217984;
          *(&v241 - 1) = v179;
        }

        v180 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v182 = HIBYTE(v181) & 0xF;
        if ((v181 & 0x2000000000000000) == 0)
        {
          v182 = v180 & 0xFFFFFFFFFFFFLL;
        }

        if (v182)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_117;
    }

    if (v294)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_118:
    v183 = objc_allocWithZone(NSError);
    v184 = String._bridgeToObjectiveCImpl()();

    v114 = MEMORY[0x1E69E7CA0];
    v131 = [v183 initWithDomain:v184 code:2048 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v185 = [v131 domain];
    if (!v185)
    {
      goto LABEL_132;
    }

    v186 = v185;
    v187 = _objc_isTaggedPointer(v185);
    v188 = v186;
    v189 = v188;
    if ((v187 & 1) == 0)
    {
      goto LABEL_124;
    }

    v190 = _objc_getTaggedPointerTag(v188);
    if (v190)
    {
      if (v190 != 22)
      {
        if (v190 == 2)
        {
          MEMORY[0x1EEE9AC00](v190);
          *(&v241 - 2) = v189;
          v95 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v192 = v191;

LABEL_152:
          v65 = v287;
          goto LABEL_158;
        }

LABEL_124:
        LOBYTE(v294) = 0;
        v298[0] = 0;
        LOBYTE(v296) = 0;
        v297 = 0;
        v193 = __CFStringIsCF();
        if (v193)
        {
          v194 = v298[0];
          if (!v298[0])
          {

LABEL_132:
            v95 = 0;
            v192 = 0xE000000000000000;
            goto LABEL_158;
          }

          if (v297 == 1)
          {
            if (v294)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v201 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_156;
          }

          if ((v296 & 1) == 0)
          {
LABEL_155:
            v201 = String.init(_cocoaString:)();
LABEL_156:
            v95 = v201;
            v192 = v202;
            goto LABEL_157;
          }

          if (v294 == 1)
          {
            MEMORY[0x1EEE9AC00](v193);
            *(&v241 - 4) = v189;
            *(&v241 - 3) = v298;
            *(&v241 - 4) = 1536;
            *(&v241 - 1) = v194;
          }

          else
          {
            v203 = [v189 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v203);
            *(&v241 - 4) = v189;
            *(&v241 - 3) = v298;
            *(&v241 - 4) = 134217984;
            *(&v241 - 1) = v204;
          }

          v205 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v192 = v206;
          v207 = HIBYTE(v206) & 0xF;
          if ((v206 & 0x2000000000000000) == 0)
          {
            v207 = v205 & 0xFFFFFFFFFFFFLL;
          }

          if (v207)
          {
            v95 = v205;

            goto LABEL_152;
          }
        }

        else
        {
          v195 = v189;
          v196 = String.init(_nativeStorage:)();
          if (v197)
          {
            v95 = v196;
            v192 = v197;

            goto LABEL_152;
          }

          v298[0] = [v195 length];
          if (!v298[0])
          {

            v95 = 0;
            v192 = 0xE000000000000000;
            goto LABEL_152;
          }
        }

        v65 = v287;
        goto LABEL_155;
      }

      v198 = [v189 UTF8String];
      if (!v198)
      {
        goto LABEL_222;
      }

      v199 = String.init(utf8String:)(v198);
      if (v200)
      {
        goto LABEL_137;
      }

      __break(1u);
    }

    v296 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v199 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v200)
    {
      [v189 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v95 = v294;
      v192 = v295;
      goto LABEL_157;
    }

LABEL_137:
    v95 = v199;
    v192 = v200;

LABEL_157:
LABEL_158:
    v208 = v169;
    v209 = v208;
    if (!v167)
    {
      goto LABEL_163;
    }

    v210 = _objc_getTaggedPointerTag(v208);
    if (v210)
    {
      if (v210 != 22)
      {
        if (v210 == 2)
        {
          MEMORY[0x1EEE9AC00](v210);
          *(&v241 - 2) = v209;
          v138 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v212 = v211;

          goto LABEL_193;
        }

LABEL_163:
        LOBYTE(v294) = 0;
        v298[0] = 0;
        LOBYTE(v296) = 0;
        v297 = 0;
        v213 = __CFStringIsCF();
        if (v213)
        {
          v214 = v298[0];
          if (!v298[0])
          {

LABEL_171:
            v138 = 0;
            v212 = 0xE000000000000000;
            goto LABEL_193;
          }

          if (v297 == 1)
          {
            if (v294)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v221 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_192;
          }

          if (v296)
          {
            if (v294 == 1)
            {
              MEMORY[0x1EEE9AC00](v213);
              *(&v241 - 4) = v209;
              *(&v241 - 3) = v298;
              *(&v241 - 4) = 1536;
              *(&v241 - 1) = v214;
            }

            else
            {
              v223 = [(__CFString *)v209 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v223);
              *(&v241 - 4) = v209;
              *(&v241 - 3) = v298;
              *(&v241 - 4) = 134217984;
              *(&v241 - 1) = v224;
            }

            v225 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v212 = v226;
            v227 = HIBYTE(v226) & 0xF;
            if ((v226 & 0x2000000000000000) == 0)
            {
              v227 = v225 & 0xFFFFFFFFFFFFLL;
            }

            if (v227)
            {
              v138 = v225;

              goto LABEL_193;
            }
          }
        }

        else
        {
          v215 = v209;
          v216 = String.init(_nativeStorage:)();
          if (v217)
          {
            v138 = v216;
            v212 = v217;

            goto LABEL_193;
          }

          v298[0] = [(__CFString *)v215 length];
          if (!v298[0])
          {

            goto LABEL_171;
          }
        }

        v221 = String.init(_cocoaString:)();
LABEL_192:
        v138 = v221;
        v212 = v222;
        goto LABEL_193;
      }

      v218 = [(__CFString *)v209 UTF8String];
      if (!v218)
      {
        goto LABEL_221;
      }

      v219 = String.init(utf8String:)(v218);
      if (v220)
      {
LABEL_176:
        v138 = v219;
        v212 = v220;

        goto LABEL_193;
      }

      __break(1u);
    }

    v296 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v219 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v220)
    {
      goto LABEL_176;
    }

    [(__CFString *)v209 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v138 = v294;
    v212 = v295;
LABEL_193:
    if (v95 == v138 && v192 == v212)
    {

LABEL_197:
      swift_willThrow();
      (*(v268 + 8))(v288, v65);
      return;
    }

    v228 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v228)
    {
      goto LABEL_197;
    }

LABEL_200:
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_201:
    __break(1u);
    __break(1u);
LABEL_202:
    v265 = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd, &_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMR);
    v293 = static _DictionaryStorage.copy(original:)();
    if (v138[2])
    {
      break;
    }

LABEL_217:

    v139 = v265;
LABEL_68:
    v147 = v114;
    v75 = v281;
    v63 = v286;
    if (v95)
    {
      v148 = v293;
      *(v293[7] + 8 * v139) = v131;

      v149 = v255;
    }

    else
    {
      v150 = v139;
      v149 = v255;
      v151 = v280;
      _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v255, v280, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v152 = v150;
      v148 = v293;
      specialized _NativeDictionary._insert(at:key:value:)(v152, v151, v131, v293);
    }

    v293 = v147;
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v149, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *(v65 + 16) = v148;

    os_unfair_lock_unlock((v65 + 24));
  }

  v229 = (v293 + 8);
  v230 = 1 << *(v293 + 32);
  v266 = (v138 + 8);
  v231 = (v230 + 63) >> 6;
  if (v293 != v138 || v229 >= &v266[8 * v231])
  {
    memmove(v229, v266, 8 * v231);
  }

  v232 = 0;
  v293[2] = v138[2];
  v233 = 1 << *(v138 + 32);
  v234 = -1;
  if (v233 < 64)
  {
    v234 = ~(-1 << v233);
  }

  v278 = v234 & v138[8];
  v264 = (v233 + 63) >> 6;
  while (v278)
  {
    v235 = __clz(__rbit64(v278));
    v278 &= v278 - 1;
LABEL_216:
    v238 = v235 | (v232 << 6);
    v239 = v138[6];
    v275 = *(v279 + 72) * v238;
    _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v239 + v275, v280, type metadata accessor for ICULegacyNumberFormatter.Signature);
    v267 = *(v138[7] + 8 * v238);
    v240 = v293;
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v280, v293[6] + v275, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *(v240[7] + 8 * v238) = v267;
  }

  v236 = v232;
  while (1)
  {
    v232 = v236 + 1;
    if (__OFADD__(v236, 1))
    {
      break;
    }

    if (v232 >= v264)
    {
      goto LABEL_217;
    }

    v237 = *&v266[8 * v232];
    ++v236;
    if (v237)
    {
      v235 = __clz(__rbit64(v237));
      v278 = (v237 - 1) & v237;
      goto LABEL_216;
    }
  }

  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
LABEL_223:
  os_unfair_lock_unlock((v65 + 24));
  __break(1u);
}
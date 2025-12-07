uint64_t type metadata accessor for ParagraphStyleResolutionContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for ParagraphStyleResolutionContext;
  if (!type metadata singleton initialization cache for ParagraphStyleResolutionContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double outlined copy of Text.Style.LineStyle(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t outlined init with take of AttributedString.LineHeight?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of AttributedString.LineHeight?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized static ParagraphStyleResolutionContext.== infix(_:_:)(double *a1, double *a2)
{
  v4 = type metadata accessor for AttributedString.LineHeight();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  type metadata accessor for (AttributedString.LineHeight?, AttributedString.LineHeight?)(0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  if (*a1 == 2)
  {
    if (v15 != 2)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v15 == 2)
    {
LABEL_30:
      v16 = 0;
      return v16 & 1;
    }

    v16 = 0;
    v17 = *a2 ^ *a1;
    if (v17 & 1) != 0 || ((v17 >> 8))
    {
      return v16 & 1;
    }
  }

  if (*(a1 + 2) != *(a2 + 2))
  {
    goto LABEL_30;
  }

  if (*(a1 + 3) != *(a2 + 3))
  {
    goto LABEL_30;
  }

  if (a1[1] != a2[1])
  {
    goto LABEL_30;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_30;
  }

  v18 = v12;
  v36 = *(a1 + 17);
  v35 = *(a2 + 17);
  if ((specialized static Text.WritingDirectionStrategy.== infix(_:_:)(&v36, &v35) & 1) == 0 || *(a1 + 18) != *(a2 + 18) || *(a1 + 19) != *(a2 + 19))
  {
    goto LABEL_30;
  }

  v19 = type metadata accessor for ParagraphStyleResolutionContext(0);
  v20 = *(v19 + 48);
  v31 = v19;
  v32 = v20;
  v21 = *(v18 + 48);
  v22 = MEMORY[0x1E6965590];
  _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(a1 + v20, v14, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  v23 = a2 + v32;
  v32 = v21;
  _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(v23, &v14[v21], &lazy cache variable for type metadata for AttributedString.LineHeight?, v22, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  v24 = *(v5 + 48);
  if (v24(v14, 1, v4) == 1)
  {
    if (v24(&v14[v32], 1, v4) == 1)
    {
      outlined destroy of TimelineSchedule?(v14, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(v14, v10, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  v25 = v32;
  if (v24(&v14[v32], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_19:
    _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(v14, type metadata accessor for (AttributedString.LineHeight?, AttributedString.LineHeight?));
    goto LABEL_30;
  }

  (*(v5 + 32))(v7, &v14[v25], v4);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type AttributedString.LineHeight and conformance AttributedString.LineHeight, MEMORY[0x1E6965590], MEMORY[0x1E6965598]);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v5 + 8);
  v27(v7, v4);
  v27(v10, v4);
  outlined destroy of TimelineSchedule?(v14, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_21:
  if (*(a1 + v31[13]) != *(a2 + v31[13]) || *(a1 + v31[14]) != *(a2 + v31[14]) || *(a1 + v31[15]) != *(a2 + v31[15]) || *(a1 + v31[16]) != *(a2 + v31[16]) || *(a1 + v31[17]) != *(a2 + v31[17]) || *(a1 + v31[18]) != *(a2 + v31[18]) || *(a1 + v31[19]) != *(a2 + v31[19]) || *(a1 + v31[20]) != *(a2 + v31[20]))
  {
    goto LABEL_30;
  }

  v28 = v31[21];
  v34 = *(a1 + v28);
  v33 = *(a2 + v28);
  v16 = specialized static Text.WritingDirectionStrategy.== infix(_:_:)(&v34, &v33);
  return v16 & 1;
}

char *initializeBufferWithCopyOfBuffer for ParagraphStyleResolutionContext(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 8);
    *(a1 + 18) = *(a2 + 18);
    *(a1 + 19) = *(a2 + 19);
    v7 = a3[12];
    v8 = type metadata accessor for AttributedString.LineHeight();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(a2 + v7, 1, v8))
    {
      _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
      memcpy(&v4[v7], a2 + v7, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(&v4[v7], a2 + v7, v8);
      (*(v9 + 56))(&v4[v7], 0, 1, v8);
    }

    v12 = a3[14];
    v4[a3[13]] = *(a2 + a3[13]);
    *&v4[v12] = *(a2 + v12);
    v13 = a3[16];
    *&v4[a3[15]] = *(a2 + a3[15]);
    *&v4[v13] = *(a2 + v13);
    v14 = a3[18];
    *&v4[a3[17]] = *(a2 + a3[17]);
    *&v4[v14] = *(a2 + v14);
    v15 = a3[20];
    v4[a3[19]] = *(a2 + a3[19]);
    v4[v15] = *(a2 + v15);
    v4[a3[21]] = *(a2 + a3[21]);
  }

  return v4;
}

uint64_t destroy for ParagraphStyleResolutionContext(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = type metadata accessor for AttributedString.LineHeight();
  v7 = *(v4 - 8);
  result = (*(v7 + 48))(a1 + v3, 1, v4);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(a1 + v3, v4);
  }

  return result;
}

uint64_t initializeWithCopy for ParagraphStyleResolutionContext(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  v6 = a3[12];
  v7 = type metadata accessor for AttributedString.LineHeight();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + v10) = *(a2 + v10);
  v11 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + v11) = *(a2 + v11);
  v12 = a3[18];
  *(a1 + a3[17]) = *(a2 + a3[17]);
  *(a1 + v12) = *(a2 + v12);
  v13 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v13) = *(a2 + v13);
  *(a1 + a3[21]) = *(a2 + a3[21]);
  return a1;
}

uint64_t assignWithCopy for ParagraphStyleResolutionContext(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  v6 = a3[12];
  v7 = type metadata accessor for AttributedString.LineHeight();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(a1 + v6, a2 + v6, v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(a1 + v6, v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v6), (a2 + v6), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(a1 + v6, a2 + v6, v7);
  (*(v8 + 56))(a1 + v6, 0, 1, v7);
LABEL_7:
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + a3[14]) = *(a2 + a3[14]);
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + a3[16]) = *(a2 + a3[16]);
  *(a1 + a3[17]) = *(a2 + a3[17]);
  *(a1 + a3[18]) = *(a2 + a3[18]);
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + a3[20]) = *(a2 + a3[20]);
  *(a1 + a3[21]) = *(a2 + a3[21]);
  return a1;
}

uint64_t initializeWithTake for ParagraphStyleResolutionContext(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  v6 = a3[12];
  v7 = type metadata accessor for AttributedString.LineHeight();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + v10) = *(a2 + v10);
  v11 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + v11) = *(a2 + v11);
  v12 = a3[18];
  *(a1 + a3[17]) = *(a2 + a3[17]);
  *(a1 + v12) = *(a2 + v12);
  v13 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v13) = *(a2 + v13);
  *(a1 + a3[21]) = *(a2 + a3[21]);
  return a1;
}

uint64_t assignWithTake for ParagraphStyleResolutionContext(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  v6 = a3[12];
  v7 = type metadata accessor for AttributedString.LineHeight();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 40))(a1 + v6, a2 + v6, v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(a1 + v6, v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v6), (a2 + v6), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 32))(a1 + v6, a2 + v6, v7);
  (*(v8 + 56))(a1 + v6, 0, 1, v7);
LABEL_7:
  v13 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + v13) = *(a2 + v13);
  v14 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + v14) = *(a2 + v14);
  v15 = a3[18];
  *(a1 + a3[17]) = *(a2 + a3[17]);
  *(a1 + v15) = *(a2 + v15);
  v16 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v16) = *(a2 + v16);
  *(a1 + a3[21]) = *(a2 + a3[21]);
  return a1;
}

void type metadata completion function for ParagraphStyleResolutionContext(uint64_t a1)
{
  _s7SwiftUI16TimelineSchedule_pSgMaTm_0(319, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for (AttributedString.LineHeight?, AttributedString.LineHeight?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (AttributedString.LineHeight?, AttributedString.LineHeight?))
  {
    _s7SwiftUI16TimelineSchedule_pSgMaTm_0(255, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttributedString.LineHeight?, AttributedString.LineHeight?));
    }
  }
}

void EnvironmentValues.textJustification.getter(__int16 *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017TextJustificationI033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt1g5(v3, a1);
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(*v1);
    if (v4)
    {
      v5 = *(v4 + 36);
    }

    else
    {
      v5 = 2;
    }

    *a1 = v5;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TextJustification.Full.CodingKeys()
{
  if (*v0)
  {
    return 0x656C626978656C66;
  }

  else
  {
    return 0x73656E694C6C6C61;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance TextJustification.Full.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656E694C6C6C61 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C626978656C66 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextJustification.Full.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextJustification.Full.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextJustification.Full.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TextJustification.Full.CodingKeys>, lazy protocol witness table accessor for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys, &unk_1F0068BE8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v11 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  v8 = v10[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v8)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void TextJustification.Full.hash(into:)()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int TextJustification.Full.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t TextJustification.Full.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v13 = a2;
  type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TextJustification.Full.CodingKeys>, lazy protocol witness table accessor for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys, &unk_1F0068BE8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v13;
    v15 = 0;
    v16 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v14 = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *v9 = v16;
    v9[1] = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TextJustification.Full()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance TextJustification.Full()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextJustification.Full(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = v1[1];
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL static TextJustification.Storage.== infix(_:_:)(_WORD *a1, _WORD *a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    return v2 == 2;
  }

  if (v2 == 2)
  {
    return 0;
  }

  return (*a2 ^ *a1 ^ 1) & (((*a2 & 0x100) == 0) ^ ((*a1 & 0x100) >> 8)) & 1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TextJustification.Storage.CodingKeys()
{
  if (*v0)
  {
    return 1819047270;
  }

  else
  {
    return 1701736302;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance TextJustification.Storage.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1819047270 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextJustification.Storage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextJustification.Storage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void protocol witness for CodingKey.init(stringValue:) in conformance TextJustification.Storage.FullCodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextJustification.Storage.FullCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextJustification.Storage.FullCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextJustification.Storage.NoneCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextJustification.Storage.NoneCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextJustification.Storage.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TextJustification.Storage.FullCodingKeys>, lazy protocol witness table accessor for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys, &unk_1F0068B58, MEMORY[0x1E69E6F58]);
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v19 - v5;
  type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TextJustification.Storage.NoneCodingKeys>, lazy protocol witness table accessor for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys, &unk_1F0068AC8, v3);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TextJustification.Storage.CodingKeys>, lazy protocol witness table accessor for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys, &unk_1F0068AA8, v3);
  v25 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v13 == 2)
  {
    v26 = 0;
    lazy protocol witness table accessor for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys();
    v14 = v25;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v8, v21);
    return (*(v10 + 8))(v12, v14);
  }

  else
  {
    v28 = 1;
    lazy protocol witness table accessor for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys();
    v16 = v22;
    v17 = v25;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v27 = v13 & 0x101;
    lazy protocol witness table accessor for type TextJustification.Full and conformance TextJustification.Full();
    v18 = v24;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v23 + 8))(v16, v18);
    return (*(v10 + 8))(v12, v17);
  }
}

uint64_t TextJustification.Storage.init(from:)@<X0>(void *a1@<X0>, __int16 *a2@<X8>)
{
  v35 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TextJustification.Storage.FullCodingKeys>, lazy protocol witness table accessor for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys, &unk_1F0068B58, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v32 = v4;
  v33 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v30 - v6;
  type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TextJustification.Storage.NoneCodingKeys>, lazy protocol witness table accessor for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys, &unk_1F0068AC8, v3);
  v8 = v7;
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TextJustification.Storage.CodingKeys>, lazy protocol witness table accessor for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys, &unk_1F0068AA8, v3);
  v12 = v11;
  v36 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys();
  v15 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    goto LABEL_7;
  }

  v17 = v34;
  v16 = v35;
  v37 = a1;
  v18 = v14;
  v19 = KeyedDecodingContainer.allKeys.getter();
  if (*(v19 + 16) != 1)
  {
    v21 = type metadata accessor for DecodingError();
    swift_allocError();
    v23 = v22;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v23 = &type metadata for TextJustification.Storage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
    swift_willThrow();
    (*(v36 + 8))(v18, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v26 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  if (*(v19 + 32))
  {
    v41 = 1;
    lazy protocol witness table accessor for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v36;
    v31 = v14;
    lazy protocol witness table accessor for type TextJustification.Full and conformance TextJustification.Full();
    v25 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v33 + 8))(v17, v25);
    (*(v20 + 8))(v31, v12);
    swift_unknownObjectRelease();
    if (v40)
    {
      v29 = 256;
    }

    else
    {
      v29 = 0;
    }

    v28 = v29 | v39;
  }

  else
  {
    v38 = 0;
    lazy protocol witness table accessor for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v36;
    (*(v31 + 1))(v10, v8);
    (*(v24 + 8))(v14, v12);
    swift_unknownObjectRelease();
    v28 = 2;
  }

  *v16 = v28;
  v26 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

BOOL specialized Collection<>.popFirst()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 22;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 14;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 26;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextJustification.Storage(_WORD *a1, _WORD *a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    return v2 == 2;
  }

  if (v2 == 2)
  {
    return 0;
  }

  return (*a2 ^ *a1 ^ 1) & (((*a2 & 0x100) == 0) ^ ((*a1 & 0x100) >> 8)) & 1;
}

void *static TextJustification.full.getter@<X0>(void *result@<X0>, _WORD *a2@<X1>, _WORD *a4@<X8>)
{
  if (*result != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

uint64_t static TextJustification.stretched(_:)@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  if (result)
  {
    v2 = 257;
  }

  else
  {
    v2 = 1;
  }

  *a2 = v2;
  return result;
}

uint64_t static TextJustification.full(allLines:flexible:)@<X0>(uint64_t result@<X0>, char a2@<W1>, _WORD *a3@<X8>)
{
  if (a2)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *a3 = v3 & 0xFFFE | result & 1;
  return result;
}

BOOL static TextJustification.== infix(_:_:)(_WORD *a1, _WORD *a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    return v2 == 2;
  }

  if (v2 == 2)
  {
    return 0;
  }

  v4 = *a2 ^ *a1;
  return (v4 & 1) == 0 && ((v4 >> 8) & 1) == 0;
}

void TextJustification.Storage.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 2)
  {
    MEMORY[0x193AC11A0](0);
  }

  else
  {
    MEMORY[0x193AC11A0](1);
    Hasher._combine(_:)(v1 & 1);
    Hasher._combine(_:)(HIBYTE(v1) & 1);
  }
}

Swift::Int TextJustification.Storage.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    MEMORY[0x193AC11A0](0);
  }

  else
  {
    MEMORY[0x193AC11A0](1);
    Hasher._combine(_:)(v1 & 1);
    Hasher._combine(_:)(HIBYTE(v1) & 1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextJustification.Storage(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *v1;
  if (*v1 == 2)
  {
    MEMORY[0x193AC11A0](0);
  }

  else
  {
    MEMORY[0x193AC11A0](1);
    Hasher._combine(_:)(v2 & 1);
    Hasher._combine(_:)(HIBYTE(v2) & 1);
  }

  return Hasher._finalize()();
}

void key path getter for EnvironmentValues.textJustification : EnvironmentValues(uint64_t a1@<X0>, __int16 *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017TextJustificationI033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt1g5(v3, &v6);

    v4 = v6;
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = *(v5 + 36);
    }

    else
    {
      v4 = 2;
    }
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.textJustification : EnvironmentValues(unsigned __int16 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017TextJustificationF033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017TextJustificationK033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Ttg5(v3, *a2);
  }

  return result;
}

double EnvironmentValues.textJustification.setter(unsigned __int16 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017TextJustificationF033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017TextJustificationK033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Ttg5(v3, *v2);
  }

  return result;
}

void (*EnvironmentValues.textJustification.modify(__int16 **a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017TextJustificationI033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt1g5(v5, (v4 + 40));
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 36);
    }

    else
    {
      v8 = 2;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.textJustification.modify;
}

void EnvironmentValues.textJustification.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017TextJustificationF033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017TextJustificationK033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

double View.justification(_:)(__int16 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);

  return result;
}

void lazy protocol witness table accessor for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Full.CodingKeys, &unk_1F0068BE8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Full.CodingKeys, &unk_1F0068BE8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Full.CodingKeys, &unk_1F0068BE8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Full.CodingKeys, &unk_1F0068BE8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys);
  }
}

void lazy protocol witness table accessor for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys()
{
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Storage.FullCodingKeys, &unk_1F0068B58, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Storage.FullCodingKeys, &unk_1F0068B58, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Storage.FullCodingKeys, &unk_1F0068B58, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Storage.FullCodingKeys, &unk_1F0068B58, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys);
  }
}

void lazy protocol witness table accessor for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys()
{
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys)
  {
    swift_getWitnessTable("]\ra8\t\a", &unk_1F0068AC8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Storage.NoneCodingKeys, &unk_1F0068AC8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Storage.NoneCodingKeys, &unk_1F0068AC8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys);
  }
}

void lazy protocol witness table accessor for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Storage.CodingKeys, &unk_1F0068AA8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Storage.CodingKeys, &unk_1F0068AA8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Storage.CodingKeys, &unk_1F0068AA8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Storage.CodingKeys, &unk_1F0068AA8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys);
  }
}

void lazy protocol witness table accessor for type TextJustification.Full and conformance TextJustification.Full()
{
  if (!lazy protocol witness table cache variable for type TextJustification.Full and conformance TextJustification.Full)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Full, &type metadata for TextJustification.Full, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Full and conformance TextJustification.Full);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextJustification.Full and conformance TextJustification.Full)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Full, &type metadata for TextJustification.Full, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Full and conformance TextJustification.Full);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextJustification.Full and conformance TextJustification.Full)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Full, &type metadata for TextJustification.Full, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Full and conformance TextJustification.Full);
  }
}

void type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void lazy protocol witness table accessor for type TextJustification and conformance TextJustification()
{
  if (!lazy protocol witness table cache variable for type TextJustification and conformance TextJustification)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification, &type metadata for TextJustification, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification and conformance TextJustification);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextJustification and conformance TextJustification)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification, &type metadata for TextJustification, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification and conformance TextJustification);
  }
}

uint64_t getEnumTagSinglePayload for TextJustification(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_WORD *storeEnumTagSinglePayload for TextJustification(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextJustification.Storage(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for TextJustification.Storage(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_WORD *destructiveInjectEnumTag for TextJustification.Storage(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<TextJustification>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextJustification>)
  {
    v4 = type metadata accessor for _EnvironmentKeyWritingModifier(0, &type metadata for TextJustification, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextJustification>);
    }
  }
}

uint64_t HStack._tree.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _VariadicView.Tree(0, &type metadata for _HStackLayout, *(a1 + 16), &protocol witness table for _HStackLayout);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t HStack._tree.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _VariadicView.Tree(0, &type metadata for _HStackLayout, *(a2 + 16), &protocol witness table for _HStackLayout);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t static _HStackLayout.implicitRoot.getter()
{
  if (one-time initialization token for center != -1)
  {
    swift_once();
  }

  return static VerticalAlignment.center;
}

uint64_t protocol witness for static _VariadicView_ImplicitRoot.implicitRoot.getter in conformance _HStackLayout@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for center != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static VerticalAlignment.center;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t HStackLayout.spacing.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

void UnitRect.init(x:y:width:height:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

void UnitRect.init(point:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

__C::CGRect __swiftcall UnitRect.in(_:)(CGSize a1)
{
  v2 = v1[2] * a1.width;
  v3 = v1[3] * a1.height;
  v4 = *v1 * a1.width;
  v5 = v1[1] * a1.height;
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

__C::CGRect __swiftcall UnitRect.in(_:)(__C::CGRect a1)
{
  v2 = *v1 * a1.size.width + a1.origin.x;
  v3 = v1[1] * a1.size.height + a1.origin.y;
  v4 = v1[2] * a1.size.width;
  v5 = v1[3] * a1.size.height;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

double static UnitRect.one.getter@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for one != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&static UnitRect.one;
  v2 = xmmword_1ED52E568;
  *a1 = static UnitRect.one;
  a1[1] = v2;
  return result;
}

uint64_t UnitRect.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x193AC11E0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x193AC11E0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x193AC11E0](*&v7);
}

Swift::Int UnitRect.hashValue.getter()
{
  Hasher.init(_seed:)();
  UnitRect.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnitRect()
{
  Hasher.init(_seed:)();
  UnitRect.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitRect(uint64_t a1)
{
  Hasher.init(_seed:)();
  UnitRect.hash(into:)();
  return Hasher._finalize()();
}

float64x2_t UnitRect.animatableData.setter(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  a1.f64[1] = a2;
  v5 = vdupq_n_s64(0x3F80000000000000uLL);
  result = vmulq_f64(a1, v5);
  a3.f64[1] = a4;
  *v4 = result;
  v4[1] = vmulq_f64(a3, v5);
  return result;
}

__n128 (*UnitRect.animatableData.modify(float64x2_t **a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = vdupq_n_s64(0x4060000000000000uLL);
  v5 = vmulq_f64(*v1, v4);
  v6 = vmulq_f64(v1[1], v4);
  *v3 = v5;
  *(v3 + 16) = v6;
  return UnitRect.animatableData.modify;
}

__n128 UnitRect.animatableData.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 32);
  v3 = vdupq_n_s64(0x3F80000000000000uLL);
  v4 = vmulq_f64(*v1, v3);
  v5 = vmulq_f64(*(v1 + 16), v3);
  *v2 = v4;
  v2[1] = v5;
  free(v1);
  return result;
}

float64x2_t protocol witness for Animatable.animatableData.getter in conformance UnitRect@<Q0>(float64x2_t *a1@<X8>)
{
  v2 = vdupq_n_s64(0x4060000000000000uLL);
  v3 = vmulq_f64(*v1, v2);
  result = vmulq_f64(v1[1], v2);
  *a1 = v3;
  a1[1] = result;
  return result;
}

float64x2_t protocol witness for Animatable.animatableData.setter in conformance UnitRect(float64x2_t *a1)
{
  v2 = vdupq_n_s64(0x3F80000000000000uLL);
  v3 = vmulq_f64(*a1, v2);
  result = vmulq_f64(a1[1], v2);
  *v1 = v3;
  v1[1] = result;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance UnitRect(float64x2_t ***a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = UnitRect.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

void lazy protocol witness table accessor for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (!*a1)
  {
    v3 = a2(255);
    swift_getWitnessTable(protocol conformance descriptor for AnimatablePair<A, B>, v3);
    atomic_store(v4, a1);
  }
}

__n128 CoordinateSpaceGesture.init(coordinateSpace:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 25);
  *(a2 + 25) = result;
  return result;
}

uint64_t static CoordinateSpaceGesture._makeGesture(modifier:inputs:body:)(unsigned int *a1, __int128 *a2, void (*a3)(__int128 *), uint64_t a4, uint64_t a5)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v6 = a2[5];
  v57 = a2[4];
  v58 = v6;
  *v59 = a2[6];
  *&v59[12] = *(a2 + 108);
  v7 = a2[1];
  v53 = *a2;
  v54 = v7;
  v8 = a2[3];
  v10 = *a2;
  v9 = a2[1];
  v55 = a2[2];
  v56 = v8;
  v50 = v5;
  v51 = v57;
  v52[0] = a2[5];
  *(v52 + 12) = *(a2 + 92);
  v47 = v10;
  v48 = v9;
  v11 = *a1;
  v12 = *&v59[24];
  v49 = v55;
  v24 = *&v59[16];
  v13 = *&v59[12];
  outlined init with copy of _GestureInputs(&v53, &v41);
  AGGraphClearUpdate();
  v14 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v43 = v55;
  v44 = v56;
  v45 = v57;
  *v46 = v58;
  v41 = v53;
  v42 = v54;
  swift_beginAccess();
  v15 = CachedEnvironment.animatedPosition(for:)(&v41);
  swift_endAccess();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v45 = v57;
  *v46 = v58;
  *&v46[16] = *v59;
  *&v46[28] = *&v59[12];
  v41 = v53;
  v42 = v54;
  v43 = v55;
  v44 = v56;
  v16 = _GestureInputs.transform.getter();
  *&v41 = __PAIR64__(v13, v11);
  *(&v41 + 1) = __PAIR64__(v16, v15);
  v28 = type metadata accessor for CoordinateSpaceEvents(0, a5, v17, v18);
  swift_getWitnessTable(protocol conformance descriptor for CoordinateSpaceEvents<A>, v28);
  v29 = v19;
  type metadata accessor for Attribute<[EventID : EventType]>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v41, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_7, v27, v28, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  v22 = v39[0];
  *&v38[12] = *(v52 + 12);
  v37[4] = v51;
  *v38 = v52[0];
  v37[0] = v47;
  v37[1] = v48;
  v37[2] = v49;
  v37[3] = v50;
  *&v38[28] = v39[0];
  *&v38[32] = v24;
  *&v38[40] = v12 | 1;
  v36[0] = *&v38[16];
  *(v36 + 12) = *&v38[28];
  v34 = v51;
  v35 = v52[0];
  v30 = v47;
  v31 = v48;
  v32 = v49;
  v33 = v50;
  outlined init with copy of _GestureInputs(v37, &v41);
  a3(&v30);
  v39[4] = v34;
  v39[5] = v35;
  v40[0] = v36[0];
  *(v40 + 12) = *(v36 + 12);
  v39[0] = v30;
  v39[1] = v31;
  v39[2] = v32;
  v39[3] = v33;
  outlined destroy of _GestureInputs(v39);
  v45 = v51;
  *v46 = v52[0];
  *&v46[12] = *(v52 + 12);
  v41 = v47;
  v42 = v48;
  v43 = v49;
  v44 = v50;
  *&v46[28] = v22;
  *&v46[32] = v24;
  *&v46[40] = v12 | 1;
  return outlined destroy of _GestureInputs(&v41);
}

uint64_t Gesture.coordinateSpace(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with copy of CoordinateSpace(a1, v13);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for CoordinateSpaceGesture(0, AssociatedTypeWitness, v8, v9);
  swift_getWitnessTable(protocol conformance descriptor for CoordinateSpaceGesture<A>, v10);
  Gesture.modifier<A>(_:)(v13, a2, v10, a3, v11, a4);
  return (*(*(v10 - 8) + 8))(v13, v10);
}

uint64_t CoordinateSpaceEvents.modifier.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t x3_0@<X3>)
{
  v5 = type metadata accessor for CoordinateSpaceGesture(0, a2, a2, x3_0);
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, Value, v5);
}

uint64_t CoordinateSpaceEvents.value.getter(unint64_t a1, unint64_t a2, uint64_t a3)
{
  type metadata accessor for [EventID : EventType](0);
  v17 = *AGGraphGetValue();

  CoordinateSpaceEvents.modifier.getter(a3, v16, v4);
  outlined init with copy of CoordinateSpace(v16, v18);
  if (!LOBYTE(v20))
  {
    outlined destroy of CoordinateSpace(v18);
LABEL_6:
    AGGraphClearUpdate();
    GeometryEffectTransform.transform.getter(&v12);
    AGGraphSetUpdate();
    AGGraphClearUpdate();
    type metadata accessor for CGPoint(0);
    Value = AGGraphGetValue();
    v6 = *Value;
    v7 = Value[1];
    AGGraphSetUpdate();
    v8 = v14 - (v6 - *&v13);
    v9 = v15 - (v7 - *(&v13 + 1));
    outlined init with copy of CoordinateSpace(v16, v11);
    *v18 = v12;
    *&v18[16] = v6;
    *&v19 = v7;
    *(&v19 + 1) = v8;
    v20 = v9;
    specialized defaultConvertEventLocations<A>(_:coordinateSpace:transform:)(&v17, v11, v18);
    outlined destroy of HitTestableEvent?(v11, &lazy cache variable for type metadata for CoordinateSpace?, &type metadata for CoordinateSpace);

    goto LABEL_7;
  }

  if (LOBYTE(v20) == 1 || v19 | *(&v19 + 1) | *v18 | *&v18[16] | *&v18[8])
  {
    goto LABEL_6;
  }

  v14 = 0.0;
  v12 = 0u;
  v13 = 0u;
  LOBYTE(v15) = -1;
  *&v18[8] = 0u;
  v19 = 0u;
  *v18 = 1;
  v20 = 0.0;
  specialized defaultConvertEventLocations<A>(_:coordinateSpace:transform:)(&v17, &v12, v18);
  outlined destroy of HitTestableEvent?(&v12, &lazy cache variable for type metadata for CoordinateSpace?, &type metadata for CoordinateSpace);
LABEL_7:
  outlined destroy of CoordinateSpace(v16);
  return v17;
}

void specialized defaultConvertEventLocations<A>(_:coordinateSpace:transform:)(void *a1, uint64_t a2, void *a3)
{
  v69 = a3 + 1;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = *a1;
  v6 = (*a1 + 64);
  v5 = *v6;
  v85[0] = MEMORY[0x1E69E7CC0];
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v76 = v3;
  v73 = v3;
  while (1)
  {
    v12 = v11;
    if (!v9)
    {
      if (v10 <= v11 + 1)
      {
        v14 = v11 + 1;
      }

      else
      {
        v14 = v10;
      }

      v11 = v14 - 1;
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v10)
        {
          v9 = 0;
          v82 = 0;
          memset(v81, 0, sizeof(v81));
          v80 = 0u;
          goto LABEL_14;
        }

        v9 = v6[v13];
        ++v12;
        if (v9)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_54;
    }

    v13 = v11;
LABEL_13:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v13 << 6);
    v17 = (v4[6] + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    outlined init with copy of AnyTrackedValue(v4[7] + 40 * v16, v79);
    *&v80 = v18;
    *(&v80 + 1) = v19;
    outlined init with take of AnyTrackedValue(v79, v81);
    v11 = v13;
LABEL_14:
    *v83 = v80;
    *&v83[16] = v81[0];
    *&v83[32] = v81[1];
    v84 = v82;
    v20 = v80;
    if (!v80)
    {
      break;
    }

    v21 = *&v83[8];
    outlined init with take of AnyTrackedValue(&v83[16], v79);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SpatialEventType, &protocol descriptor for SpatialEventType);
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(v77, &v80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v76 + 2) + 1, 1, v76);
      }

      v23 = *(v76 + 2);
      v22 = *(v76 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v76);
        v24 = v23 + 1;
        v76 = v36;
      }

      *(v76 + 2) = v24;
      v25 = &v76[16 * v23];
      *(v25 + 4) = v20;
      *(v25 + 5) = v21;
      v27 = *(&v81[0] + 1);
      v26 = *&v81[1];
      __swift_project_boxed_opaque_existential_1(&v80, *(&v81[0] + 1));
      v28 = (*(v26 + 16))(v27, v26);
      v30 = v29;
      v31 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
      }

      v32 = v31;
      v33 = *(v31 + 2);
      v73 = v32;
      v34 = *(v32 + 3);
      if (v33 >= v34 >> 1)
      {
        v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v33 + 1, 1, v73);
      }

      *(v73 + 2) = v33 + 1;
      v35 = &v73[16 * v33];
      *(v35 + 4) = v28;
      *(v35 + 5) = v30;
      v85[0] = v73;
      __swift_destroy_boxed_opaque_existential_1(&v80);
    }

    else
    {
      v78 = 0;
      memset(v77, 0, sizeof(v77));
      outlined destroy of SpatialEventType?(v77);
    }
  }

  if (!*(v73 + 2))
  {
    goto LABEL_52;
  }

  outlined init with copy of CoordinateSpace?(a2, v83);
  if (v83[40] == 255)
  {
    v38 = &lazy cache variable for type metadata for CoordinateSpace?;
    v39 = &type metadata for CoordinateSpace;
    v40 = v83;
  }

  else
  {
    v80 = *v83;
    v81[0] = *&v83[16];
    *(v81 + 9) = *&v83[25];
    v37 = *a3;
    if (*a3 == 1)
    {
      outlined destroy of CoordinateSpace(&v80);
      goto LABEL_34;
    }

    v41 = *(v69 + 1);
    *&v83[8] = *v69;
    *&v83[24] = v41;
    *&v83[40] = v69[4];
    *v83 = v37;

    ViewTransform.convertGlobal(to:points:)(&v80, v85);
    outlined destroy of CoordinateSpace(&v80);
    v38 = &lazy cache variable for type metadata for ViewTransform?;
    v39 = &type metadata for ViewTransform;
    v40 = a3;
  }

  outlined destroy of HitTestableEvent?(v40, v38, v39);
LABEL_34:
  v42 = v85[0];
  v72 = *(v76 + 2);
  if (!v72)
  {
LABEL_52:

    return;
  }

  v43 = 0;
  v44 = 0;
  v74 = v85[0];
  while (v44 < *(v76 + 2))
  {
    v46 = *(v42 + 16);
    if (v44 == v46)
    {
      goto LABEL_52;
    }

    if (v44 >= v46)
    {
      goto LABEL_55;
    }

    if (!v4[2])
    {
      goto LABEL_56;
    }

    v48 = *&v76[v43 + 32];
    v47 = *&v76[v43 + 40];
    v49 = *(v42 + v43 + 32);
    v50 = *(v42 + v43 + 40);
    v51 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v47);
    if ((v52 & 1) == 0)
    {
      goto LABEL_57;
    }

    outlined init with copy of AnyTrackedValue(v4[7] + 40 * v51, v79);
    outlined init with take of AnyTrackedValue(v79, &v80);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SpatialEventType, &protocol descriptor for SpatialEventType);
    swift_dynamicCast();
    v53 = *&v83[24];
    v54 = *&v83[32];
    __swift_mutable_project_boxed_opaque_existential_1(v83, *&v83[24]);
    (*(v54 + 48))(v53, v54, v49, v50);
    outlined init with copy of AnyTrackedValue(v83, v79);
    swift_dynamicCast();
    outlined init with take of AnyTrackedValue(&v80, v77);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *a1;
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v47);
    v59 = v56[2];
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      goto LABEL_58;
    }

    v62 = v57;
    if (v56[3] >= v61)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v61, isUniquelyReferenced_nonNull_native);
      v63 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v47);
      if ((v62 & 1) != (v64 & 1))
      {
        goto LABEL_60;
      }

      v58 = v63;
    }

    v4 = v56;
    if (v62)
    {
      v45 = (v56[7] + 40 * v58);
      __swift_destroy_boxed_opaque_existential_1(v45);
      outlined init with take of AnyTrackedValue(v77, v45);
    }

    else
    {
      v56[(v58 >> 6) + 8] |= 1 << v58;
      v65 = (v56[6] + 16 * v58);
      *v65 = v48;
      v65[1] = v47;
      outlined init with take of AnyTrackedValue(v77, v56[7] + 40 * v58);
      v66 = v56[2];
      v67 = __OFADD__(v66, 1);
      v68 = v66 + 1;
      if (v67)
      {
        goto LABEL_59;
      }

      v56[2] = v68;
    }

    ++v44;
    *a1 = v56;
    __swift_destroy_boxed_opaque_existential_1(v83);
    v43 += 16;
    v42 = v74;
    if (v72 == v44)
    {
      goto LABEL_52;
    }
  }

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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t protocol witness for Rule.value.getter in conformance CoordinateSpaceEvents<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = CoordinateSpaceEvents.value.getter(*v2, v2[1], *(a1 + 16));
  *a2 = result;
  return result;
}

void *destroy for CoordinateSpaceGesture(void *a1)
{
  if (!*(a1 + 40))
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

_OWORD *initializeWithCopy for CoordinateSpaceGesture(_OWORD *result, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v2 = *(a2 + 16);
    *result = *a2;
    result[1] = v2;
    *(result + 25) = *(a2 + 25);
  }

  else
  {
    v3 = *(a2 + 24);
    *(result + 24) = v3;
    v4 = result;
    (**(v3 - 8))();
    *(v4 + 40) = 0;
    return v4;
  }

  return result;
}

uint64_t assignWithCopy for CoordinateSpaceGesture(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace(a1);
    if (*(a2 + 40))
    {
      v4 = *a2;
      v5 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v4;
      *(a1 + 16) = v5;
    }

    else
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

_OWORD *assignWithTake for CoordinateSpaceGesture(_OWORD *result, _OWORD *a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of CoordinateSpace(result);
    v4 = a2[1];
    *v3 = *a2;
    v3[1] = v4;
    *(v3 + 25) = *(a2 + 25);
    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoordinateSpaceGesture(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CoordinateSpaceGesture(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t outlined init with copy of CoordinateSpace?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for CoordinateSpace?, &type metadata for CoordinateSpace);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SpatialEventType?(uint64_t a1)
{
  type metadata accessor for SpatialEventType?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for SpatialEventType?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SpatialEventType?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for SpatialEventType, &protocol descriptor for SpatialEventType);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SpatialEventType?);
    }
  }
}

void _CompositingGroupEffect.effectValue(size:)(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 20;
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance _CompositingGroupEffect(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 20;
}

void lazy protocol witness table accessor for type _CompositingGroupEffect and conformance _CompositingGroupEffect()
{
  if (!lazy protocol witness table cache variable for type _CompositingGroupEffect and conformance _CompositingGroupEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for _CompositingGroupEffect, &type metadata for _CompositingGroupEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _CompositingGroupEffect and conformance _CompositingGroupEffect);
  }
}

double static ModifierGesture._makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = a2[5];
  v53 = a2[4];
  v54 = v13;
  v55 = a2[6];
  v56 = *(a2 + 14);
  v14 = a2[1];
  v49 = *a2;
  v50 = v14;
  v15 = a2[3];
  v51 = a2[2];
  v52 = v15;
  v16 = *(a2 + 30);
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v48 = v12;
  *&v36 = a3;
  *(&v36 + 1) = a4;
  *&v37 = a5;
  *(&v37 + 1) = a6;
  v17 = type metadata accessor for ModifierGesture(255, &v36);
  type metadata accessor for _GraphValue(0, v17, v18, v19);
  _GraphValue.subscript.getter(partial apply for closure #1 in static ModifierGesture._makeGesture(gesture:inputs:), a3, &v45);
  v29[2] = a3;
  v29[3] = a4;
  v29[4] = a5;
  v29[5] = a6;
  v30 = v12;
  v40 = v53;
  v41 = v54;
  v42 = v55;
  v43 = v56;
  v36 = v49;
  v37 = v50;
  v38 = v51;
  v39 = v52;
  v44 = v16;
  (*(a5 + 24))(v46, &v45, &v36, partial apply for closure #2 in static ModifierGesture._makeGesture(gesture:inputs:), v29, a3, a5);
  if ((v16 & 8) != 0 && (!swift_conformsToProtocol2() || !a3))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    LOBYTE(v45) = v20;
    v40 = v53;
    v41 = v54;
    v42 = v55;
    v43 = v56;
    v36 = v49;
    v37 = v50;
    v38 = v51;
    v39 = v52;
    v44 = v16;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v24 = type metadata accessor for _GestureOutputs(0, AssociatedTypeWitness, v22, v23);
    v25 = _GestureOutputs.debugData.getter();
    v35 = 1;
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(a3, &v45, 0x100000000, &v36, v25 | ((HIDWORD(v25) & 1) << 32), 0x100000000, v24);
  }

  v26 = v46[1];
  v27 = v47;
  result = *v46;
  *a7 = v46[0];
  *(a7 + 8) = v26;
  *(a7 + 16) = v27;
  return result;
}

uint64_t closure #1 in static ModifierGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for ModifierGesture(0, v13);
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

double closure #2 in static ModifierGesture._makeGesture(gesture:inputs:)@<D0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = a1[5];
  v43 = a1[4];
  v44 = v10;
  v45 = a1[6];
  v46 = *(a1 + 14);
  v11 = a1[1];
  v39 = *a1;
  v40 = v11;
  v12 = a1[3];
  v41 = a1[2];
  v42 = v12;
  v13 = *(a1 + 30);
  v38 = a2;
  *&v26 = a3;
  *(&v26 + 1) = a4;
  *&v27 = a5;
  *(&v27 + 1) = a6;
  v14 = type metadata accessor for ModifierGesture(255, &v26);
  type metadata accessor for _GraphValue(0, v14, v15, v16);
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static ModifierGesture._makeGesture(gesture:inputs:), a4, &v35);
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v29 = v42;
  v34 = v13;
  (*(a6 + 32))(v36, &v35, &v26, a4, a6);
  if ((v13 & 8) != 0 && (!swift_conformsToProtocol2() || !a4))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    LOBYTE(v35) = v17;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v34 = v13;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v21 = type metadata accessor for _GestureOutputs(0, AssociatedTypeWitness, v19, v20);
    v22 = _GestureOutputs.debugData.getter();
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(a4, &v35, 0x100000000, &v26, v22 | ((HIDWORD(v22) & 1) << 32), 0x100000000, v21);
  }

  v23 = v36[1];
  v24 = v37;
  result = *v36;
  *a7 = v36[0];
  *(a7 + 8) = v23;
  *(a7 + 16) = v24;
  return result;
}

uint64_t closure #1 in closure #2 in static ModifierGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v10[2] = type metadata accessor for ModifierGesture(0, v11);
  v10[3] = a3;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11[0];
}

uint64_t *initializeBufferWithCopyOfBuffer for ModifierGesture(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = ((v5 + v8) & ~v8) + *(v7 + 64);
  v11 = (*(v4 + 80) | *(v7 + 80));
  if (v11 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v11 + 16) & ~v11));
  }

  else
  {
    v15 = ~v8;
    (*(v4 + 16))(a1);
    (*(v7 + 16))((v3 + v9) & v15, (a2 + v9) & v15, v6);
  }

  return v3;
}

uint64_t initializeWithTake for ModifierGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 32))((*(v6 + 32) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 32) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t assignWithTake for ModifierGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((*(v6 + 24) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 24) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for ModifierGesture(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *storeEnumTagSinglePayload for ModifierGesture(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t _ResolvedKeyframes.append<A>(keyPath:path:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AnimationPath.duration.getter(a2, *(*a1 + *MEMORY[0x1E69E6CE8] + 8), a4, a4);
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a2;
  v8[4] = a1;
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a1;
  type metadata accessor for _ResolvedKeyframes.Track(255, *(a3 + 16), v10, v11);
  type metadata accessor for Array();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  return Array.append(_:)();
}

uint64_t Keyframes<>._resolve(into:initialValue:initialVelocity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v17 - v13;
  (*(a5 + 32))(a4, a5, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(a1, a2, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t AnyKeyframes.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t AnyKeyframes._resolve(into:initialValue:initialVelocity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 40))(a1, a2, a3, v7, v8);
}

void _ResolvedKeyframes.update(velocity:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = *v5;
  v9 = type metadata accessor for _ResolvedKeyframes.Track(0, *(a2 + 16), a3, a4);

  if (MEMORY[0x193ABF2C0](v10, v9))
  {
    v11 = 0;
    v12 = v8 + 64;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (!IsNativeType)
      {
        break;
      }

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_10;
      }

      v15 = *(v12 - 8);

      v15(a1, a5);

      ++v11;
      v12 += 40;
      if (v14 == MEMORY[0x193ABF2C0](v8, v9))
      {
        goto LABEL_6;
      }
    }

    _ArrayBuffer._getElementSlowPath(_:)();
    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

void specialized Keyframes.bodyError()(uint64_t a1)
{
  _StringGuts.grow(_:)(31);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v1);

  MEMORY[0x193ABEDD0](0xD000000000000015, 0x800000018DD79FB0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *assignWithCopy for _ResolvedKeyframes.Track(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  v5 = a2[4];
  a1[3] = a2[3];
  a1[4] = v5;

  return a1;
}

uint64_t assignWithTake for _ResolvedKeyframes.Track(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

double get_witness_table_7SwiftUI12VisualEffectRzs8SendableRd__AA08RendererD0Rd__r__lAA08CombinedcD033_9FFF1526AA410727EB04F8ADBE7663C7LLVyxAA0fcD0AFLLVyqd__GGAaBHPyHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), const char *a3)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a2(255, a1[1], a1[3]);
  swift_getWitnessTable(a3, v6);
  v10[0] = v4;
  v10[1] = v6;
  v10[2] = v5;
  v10[3] = v7;
  v8 = type metadata accessor for CombinedVisualEffect(255, v10);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v8);
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance CombinedVisualEffect<A, B>(uint64_t a1, void *a2)
{
  specialized CombinedVisualEffect.animatableData.setter(a1, a2);
  v5[0] = swift_getAssociatedTypeWitness();
  v5[1] = swift_getAssociatedTypeWitness();
  v5[2] = swift_getAssociatedConformanceWitness();
  v5[3] = swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for AnimatablePair(0, v5);
  return (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance GeometryVisualEffect<A>(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v6[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  GeometryVisualEffect.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance GeometryVisualEffect<A>;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance RendererVisualEffect<A>(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v6[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  GeometryVisualEffect.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance RendererVisualEffect<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance GeometryVisualEffect<A>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 8);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    specialized RendererVisualEffect.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized RendererVisualEffect.animatableData.setter(*(*a1 + 40), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *static _VariadicView.Tree<>.makePlatformSubstitutableView(view:inputs:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  v14 = a2[3];
  v38[2] = a2[2];
  v38[3] = v14;
  v38[4] = a2[4];
  v39 = *(a2 + 20);
  v15 = a2[1];
  v38[0] = *a2;
  v38[1] = v15;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for _VariadicView.Tree(0, a3, a4, *(a5 + 8));
    AGSubgraphBeginTreeElement();
  }

  v17 = a2[3];
  v30 = a2[2];
  v31 = v17;
  v32 = a2[4];
  v33 = *(a2 + 20);
  v18 = a2[1];
  v28 = *a2;
  v29 = v18;
  v35 = v33;
  v19 = v30;
  LODWORD(v30) = 0;
  v21 = v13;
  v34[0] = v28;
  v34[1] = v18;
  v34[3] = v17;
  v34[4] = v32;
  v34[2] = v30;
  v24 = v30;
  v25 = v17;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v18;
  outlined init with copy of _ViewInputs(v38, v36);
  outlined init with copy of _ViewInputs(v34, v36);
  static _VariadicView.Tree<>._makeView(view:inputs:)(&v21, &v22, a3, a4, a5, a6);
  v36[2] = v24;
  v36[3] = v25;
  v36[4] = v26;
  v37 = v27;
  v36[0] = v22;
  v36[1] = v23;
  outlined destroy of _ViewInputs(v36);
  LODWORD(v30) = v19;
  if (ShouldRecordTree)
  {
    type metadata accessor for _VariadicView.Tree(0, a3, a4, *(a5 + 8));
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a7, &v28);
    AGSubgraphEndTreeElement();
  }

  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v29;
  return outlined destroy of _ViewInputs(&v22);
}

uint64_t makePlatformSecondaryView(primaryInputs:primaryOutputs:secondaryInputs:flipOrder:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, _OWORD *))
{
  v5 = *(a3 + 48);
  v8[2] = *(a3 + 32);
  v8[3] = v5;
  v8[4] = *(a3 + 64);
  v9 = *(a3 + 80);
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  return a5(a1, v8);
}

uint64_t static _ViewOutputs.makePlatformRootGeometryTransform(inputs:body:)(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v5[4] = *(a1 + 64);
  v6 = *(a1 + 80);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

uint64_t TupleContent.content.getter@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = TupleTypeMetadata;
  v6 = *(TupleTypeMetadata + 16);
  if (v6 == 1)
  {
    v7 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v10 = 0;
      v11 = *(v4 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v6 != v10)
      {
LABEL_9:
        v16 = v6 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v24 + 16))(v23, v3, v7, v21);
  if (v6)
  {
    v26 = (*(v4 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v7 + 32);
    v28 = v6;
    do
    {
      if (v6 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v27;
      }

      v31 = *v26++;
      v30 = v31;
      v32 = *a2++;
      result = (*(*(v30 - 8) + 32))(v32, &v23[v29]);
      v27 += 4;
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t TupleContent.content.setter(uint64_t *TupleTypeMetadata, uint64_t a2)
{
  v4 = TupleTypeMetadata;
  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    v6 = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v9 = 0;
      v10 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v5 != v9)
      {
LABEL_9:
        v15 = v5 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(v6 - 8);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    v24 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v25 = (v6 + 32);
    v26 = v5;
    do
    {
      if (v5 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v25;
      }

      v29 = *v24++;
      v28 = v29;
      v30 = *v4++;
      (*(*(v28 - 8) + 32))(&v23[v27], v30);
      v25 += 4;
      --v26;
    }

    while (v26);
  }

  return (*(v20 + 40))(v2, v23, v6, v21);
}

uint64_t type metadata completion function for TupleContent(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    result = swift_checkMetadataState();
    if (v3 > 0x3F)
    {
      return result;
    }

LABEL_13:
    v19[1] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v7 = 0;
    v8 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (v4 < 4)
    {
      goto LABEL_10;
    }

    if (&v6[-v8] < 0x20)
    {
      goto LABEL_10;
    }

    v7 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = (v8 + 16);
    v10 = v6 + 16;
    v11 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v4 != v7)
    {
LABEL_10:
      v13 = v4 - v7;
      v14 = 8 * v7;
      v15 = &v6[8 * v7];
      v16 = (v8 + v14);
      do
      {
        v17 = *v16++;
        *v15 = v17;
        v15 += 8;
        --v13;
      }

      while (v13);
    }
  }

  result = swift_getTupleTypeMetadata();
  if (v18 <= 0x3F)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TupleContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (**(TupleTypeMetadata - 8))(a1, v3);
}

uint64_t destroy for TupleContent(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v3 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v4)
    {
      v8 = 0;
      v9 = *(v5 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v4 < 4)
      {
        goto LABEL_9;
      }

      if (&v7[-v9] < 0x20)
      {
        goto LABEL_9;
      }

      v8 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = (v9 + 16);
      v11 = v7 + 16;
      v12 = v4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v13 = *v10;
        *(v11 - 1) = *(v10 - 1);
        *v11 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v4 != v8)
      {
LABEL_9:
        v14 = v4 - v8;
        v15 = 8 * v8;
        v16 = &v7[8 * v8];
        v17 = (v9 + v15);
        do
        {
          v18 = *v17++;
          *v16 = v18;
          v16 += 8;
          --v14;
        }

        while (v14);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v3;
  }

  return (*(*(TupleTypeMetadata - 8) + 8))(a1);
}

uint64_t initializeWithCopy for TupleContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 16))(a1, v3);
  return a1;
}

uint64_t assignWithCopy for TupleContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 24))(a1, v3);
  return a1;
}

uint64_t initializeWithTake for TupleContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 32))(a1, v3);
  return a1;
}

uint64_t assignWithTake for TupleContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 40))(a1, v3);
  return a1;
}

uint64_t String.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x1EEE9AC00](v2);
  AttributedString.characters.getter();
  _s10Foundation16AttributedStringV13CharacterViewVAESTAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
  v3 = String.init<A>(_:)();
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

uint64_t AttributedString.isEmpty.getter(double a1)
{
  v1 = type metadata accessor for AttributedString.Index();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for AttributedString.CharacterView();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.characters.getter();
  _s10Foundation16AttributedStringV13CharacterViewVAESTAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968690]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  _s10Foundation16AttributedStringV13CharacterViewVAESTAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8], MEMORY[0x1E69687F8]);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v2 + 8);
  v13(v4, v1);
  v13(v7, v1);
  (*(v9 + 8))(v11, v8);
  return v12 & 1;
}

uint64_t one-time initialization function for kitBackgroundColor()
{
  result = MEMORY[0x193ABEC20](0xD000000000000011, 0x800000018DD7A010);
  static NSAttributedStringKey.kitBackgroundColor = result;
  return result;
}

uint64_t one-time initialization function for kitLigature()
{
  result = MEMORY[0x193ABEC20](0x75746167694C534ELL, 0xEA00000000006572);
  static NSAttributedStringKey.kitLigature = result;
  return result;
}

uint64_t one-time initialization function for kitKern()
{
  result = MEMORY[0x193ABEC20](0x6E72654B534ELL, 0xE600000000000000);
  static NSAttributedStringKey.kitKern = result;
  return result;
}

uint64_t one-time initialization function for kitStrikethroughStyle()
{
  result = MEMORY[0x193ABEC20](0x656B69727453534ELL, 0xEF6867756F726874);
  static NSAttributedStringKey.kitStrikethroughStyle = result;
  return result;
}

uint64_t one-time initialization function for kitUnderlineStyle()
{
  result = MEMORY[0x193ABEC20](0x6C7265646E55534ELL, 0xEB00000000656E69);
  static NSAttributedStringKey.kitUnderlineStyle = result;
  return result;
}

uint64_t one-time initialization function for kitStrokeColor()
{
  result = MEMORY[0x193ABEC20](0x656B6F727453534ELL, 0xED0000726F6C6F43);
  static NSAttributedStringKey.kitStrokeColor = result;
  return result;
}

uint64_t one-time initialization function for kitStrokeWidth()
{
  result = MEMORY[0x193ABEC20](0x656B6F727453534ELL, 0xED00006874646957);
  static NSAttributedStringKey.kitStrokeWidth = result;
  return result;
}

uint64_t one-time initialization function for kitTextEffect()
{
  result = MEMORY[0x193ABEC20](0x664574786554534ELL, 0xEC00000074636566);
  static NSAttributedStringKey.kitTextEffect = result;
  return result;
}

uint64_t one-time initialization function for kitUnderlineColor()
{
  result = MEMORY[0x193ABEC20](0xD000000000000010, 0x800000018DD7A090);
  static NSAttributedStringKey.kitUnderlineColor = result;
  return result;
}

uint64_t one-time initialization function for kitStrikethroughColor()
{
  result = MEMORY[0x193ABEC20](0xD000000000000014, 0x800000018DD7A030);
  static NSAttributedStringKey.kitStrikethroughColor = result;
  return result;
}

uint64_t one-time initialization function for kitWritingDirection()
{
  result = MEMORY[0x193ABEC20](0xD000000000000012, 0x800000018DD79FF0);
  static NSAttributedStringKey.kitWritingDirection = result;
  return result;
}

uint64_t one-time initialization function for kitGlyphInfo()
{
  result = MEMORY[0x193ABEC20](0x496870796C47534ELL, 0xEB000000006F666ELL);
  static NSAttributedStringKey.kitGlyphInfo = result;
  return result;
}

CTFontRef_optional __swiftcall NSAttributedString.kitFont(at:)(Swift::Int at)
{
  if (one-time initialization token for kitFont != -1)
  {
    swift_once();
  }

  if ([v1 attribute:static NSAttributedStringKey.kitFont atIndex:at effectiveRange:0])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v5[0] = v7;
  v5[1] = v8;
  if (!*(&v8 + 1))
  {
    return 0;
  }

  outlined init with take of Any(v5, &v4);
  type metadata accessor for CTFontRef(0);
  swift_dynamicCast();
  return v6;
}

uint64_t ResolvableStringAttribute.reduceSchedule<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v30 = a5;
  v31 = a3;
  v32 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - v17;
  (*(a4 + 48))(a2, a4, v16);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v19 = v30;
    v20 = v31;
    a6[3] = v31;
    a6[4] = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
    return (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v32, v20);
  }

  else
  {
    (*(v14 + 32))(v18, v13, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = v30;
    v24 = v31;
    v33[0] = v31;
    v33[1] = AssociatedTypeWitness;
    v33[2] = v30;
    v33[3] = AssociatedConformanceWitness;
    v26 = type metadata accessor for ReducedTimelineSchedule(0, v33);
    a6[3] = v26;
    swift_getWitnessTable(protocol conformance descriptor for ReducedTimelineSchedule<A, B>, v26);
    a6[4] = v27;
    v28 = __swift_allocate_boxed_opaque_existential_1(a6);
    TimelineSchedule.reduced<A>(with:)(v18, v24, AssociatedTypeWitness, v25, AssociatedConformanceWitness, v28);
    return (*(v14 + 8))(v18, AssociatedTypeWitness);
  }
}

uint64_t TimelineSchedule.reduced<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  return ReducedTimelineSchedule.init(t1:t2:)(v18, v14, a2, a3, a4, a5, a6);
}

uint64_t ReducedTimelineSchedule.init(t1:t2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ReducedTimelineSchedule(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t ReducedTimelineSchedule.entries(from:mode:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v6 = a3[5];
  v7 = a3[3];
  v25 = a1;
  v26 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v28 = AssociatedTypeWitness;
  v29 = v9;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v24 - v10;
  v12 = a3[4];
  v13 = a3[2];
  v14 = swift_getAssociatedTypeWitness();
  v27 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  LOBYTE(a2) = *a2;
  v32 = a2;
  v18 = v25;
  (*(v12 + 24))(v25, &v32, v13, v12, v15);
  v31 = a2;
  (*(v6 + 24))(v18, &v31, v26, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = v28;
  v21 = swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type Date and conformance Date();
  Sequence<>.reduced<A>(with:)(v11, v14, v20, AssociatedConformanceWitness, v21, v22, v30);
  (*(v29 + 8))(v11, v20);
  return (*(v27 + 8))(v17, v14);
}

uint64_t Sequence<>.reduced<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22, a2, v18);
  (*(v14 + 16))(v16, a1, a3);
  return ReducedSequence.init(s1:s2:)(v20, v16, a2, a3, a4, a5, a6, a7);
}

uint64_t static ReducedTimelineSchedule<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v14[0] = a3;
    v14[1] = a4;
    v14[2] = a6;
    v14[3] = a8;
    type metadata accessor for ReducedTimelineSchedule(0, v14);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t ReducedSequence.init(s1:s2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a3 - 8) + 32))(a8, a1);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v15 = type metadata accessor for ReducedSequence(0, v17);
  return (*(*(a4 - 8) + 32))(a8 + *(v15 + 60), a2, a4);
}

uint64_t ReducedSequence.Iterator.init(s1:s2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a8, a1, AssociatedTypeWitness);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v17 = *(type metadata accessor for ReducedSequence.Iterator(0, v20) + 60);
  v18 = swift_getAssociatedTypeWitness();
  return (*(*(v18 - 8) + 32))(a8 + v17, a2, v18);
}

uint64_t ReducedSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v89 = a2;
  v3 = *(a1 + 16);
  v87 = *(a1 + 32);
  v84 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v74 - v6;
  v7 = type metadata accessor for Optional();
  v97 = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v96 = &v74 - v8;
  v95 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v74 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v74 - v16;
  v88 = *(a1 + 24);
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v74 - v20;
  v22 = swift_getAssociatedTypeWitness();
  v91 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v74 - v24;
  v27 = v98;
  (*(v26 + 16))(&v74 - v24, v98, v22, v23);
  v78 = a1;
  v90 = *(a1 + 60);
  v85 = v19;
  (*(v19 + 16))(v21, v27 + v90, v18);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  swift_getAssociatedConformanceWitness();
  v28 = v93;
  v87 = v21;
  dispatch thunk of IteratorProtocol.next()();
  v29 = *(TupleTypeMetadata2 + 48);
  v30 = v96;
  v31 = v95[2];
  v88 = v17;
  v32 = v97;
  v31(v96, v17, v97);
  v84 = v29;
  v33 = &v30[v29];
  v34 = v30;
  v35 = AssociatedTypeWitness;
  v36 = v32;
  v37 = v90;
  v31(v33, v28, v36);
  v38 = *(v94 + 48);
  v39 = v34;
  v40 = v98;
  v41 = v38(v39, 1, v35);
  v42 = v91;
  if (v41 == 1)
  {
LABEL_4:
    (*(v42 + 40))(v40, v25, v22);
    (*(v85 + 40))(v40 + v37, v87, v18);
    v46 = v95;
    v47 = v95[4];
    v48 = v82;
    v49 = v97;
    v47(v82, v88, v97);
    if (v38(v48, 1, v35) == 1)
    {
      v47(v89, v93, v49);
      v50 = v38(v48, 1, v35) == 1;
      v51 = v96;
      if (!v50)
      {
        v52 = v96;
        (v46[1])(v48, v49);
        v51 = v52;
      }
    }

    else
    {
      (v46[1])(v93, v49);
      v53 = v94;
      v54 = v89;
      (*(v94 + 32))(v89, v48, v35);
      (*(v53 + 56))(v54, 0, 1, v35);
      v51 = v96;
    }

    return (*(v83 + 8))(v51, TupleTypeMetadata2);
  }

  v75 = v25;
  v76 = v22;
  v77 = v18;
  v43 = v81;
  v44 = v96;
  v31(v81, v96, v97);
  v45 = v84;
  if (v38(&v44[v84], 1, v35) == 1)
  {
    (*(v94 + 8))(v43, v35);
    v40 = v98;
    v18 = v77;
    v22 = v76;
    v37 = v90;
    v42 = v91;
    v25 = v75;
    goto LABEL_4;
  }

  v56 = v94;
  v58 = v94 + 32;
  v57 = *(v94 + 32);
  v59 = v80;
  v57(v80, v43, v35);
  v60 = &v44[v45];
  v61 = v79;
  v57(v79, v60, v35);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    (*(v56 + 8))(v59, v35);
    v62 = v95[1];
    v63 = v97;
    v62(v93, v97);
    v62(v88, v63);
    (*(v91 + 8))(v75, v76);
    (*(v85 + 40))(v98 + v90, v87, v77);
    v64 = v89;
    v57(v89, v79, v35);
    (*(v56 + 56))(v64, 0, 1, v35);
    return (v62)(v44, v63);
  }

  else
  {
    TupleTypeMetadata2 = v58;
    v65 = v91;
    v66 = v75;
    v67 = v76;
    (*(v91 + 24))(v98, v75, v76);
    v68 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v56 + 8))(v61, v35);
    v70 = v95 + 1;
    v69 = v95[1];
    v71 = v97;
    v69(v93, v97);
    v95 = v70;
    v69(v88, v71);
    (*(v65 + 8))(v66, v67);
    if (v68)
    {
      (*(v85 + 40))(v98 + v90, v87, v77);
    }

    else
    {
      (*(v85 + 8))(v87, v77);
    }

    v72 = v96;
    v73 = v89;
    v57(v89, v80, v35);
    (*(v94 + 56))(v73, 0, 1, v35);
    return (v69)(v72, v71);
  }
}

uint64_t ReducedSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  v5 = *(a1 + 24);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v8 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 32);
  v18 = swift_getAssociatedTypeWitness();
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v24 - v20;
  (*(v13 + 16))(v16, v3, v12, v19);
  dispatch thunk of Sequence.makeIterator()();
  (*(v26 + 16))(v7, v3 + *(a1 + 60), v5);
  v22 = v25;
  dispatch thunk of Sequence.makeIterator()();
  return ReducedSequence.Iterator.init(s1:s2:)(v21, v11, v12, v5, v17, v22, *(a1 + 48), v27);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ReducedSequence<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ReducedSequence.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ReducedSequence<A, B>(uint64_t a1, uint64_t a2)
{
  v4 = specialized Sequence._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

uint64_t type metadata completion function for ReducedSequence.Iterator(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ReducedSequence.Iterator(uint64_t *a1, uint64_t *a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10;
  v12 = (*(v6 + 80) | *(v9 + 80));
  if (v12 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || ((v7 + v10) & ~v10) + *(*(v8 - 8) + 64) > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v12 + 16) & ~v12));
  }

  else
  {
    v16 = v8;
    v17 = ~v10;
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v9 + 16))((a1 + v11) & v17, (a2 + v11) & v17, v16);
  }

  return a1;
}

uint64_t destroy for ReducedSequence.Iterator(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8) + 8;
  (*v4)(a1, AssociatedTypeWitness);
  v5 = *(v4 + 56) + a1;
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v9 = (v5 + *(v7 + 80)) & ~*(v7 + 80);

  return v8(v9, v6);
}

uint64_t initializeWithCopy for ReducedSequence.Iterator(uint64_t a1, uint64_t a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 16;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 48);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  (*(v9 + 16))((v7 + *(v9 + 80) + a1) & ~*(v9 + 80), (v7 + *(v9 + 80) + a2) & ~*(v9 + 80), v8);
  return a1;
}

uint64_t assignWithCopy for ReducedSequence.Iterator(uint64_t a1, uint64_t a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 24;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 40);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  (*(v9 + 24))((v7 + *(v9 + 80) + a1) & ~*(v9 + 80), (v7 + *(v9 + 80) + a2) & ~*(v9 + 80), v8);
  return a1;
}

uint64_t initializeWithTake for ReducedSequence.Iterator(uint64_t a1, uint64_t a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 32;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 32);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  (*(v9 + 32))((v7 + *(v9 + 80) + a1) & ~*(v9 + 80), (v7 + *(v9 + 80) + a2) & ~*(v9 + 80), v8);
  return a1;
}

uint64_t assignWithTake for ReducedSequence.Iterator(uint64_t a1, uint64_t a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 40;
  (*v6)(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 24);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  (*(v9 + 40))((v7 + *(v9 + 80) + a1) & ~*(v9 + 80), (v7 + *(v9 + 80) + a2) & ~*(v9 + 80), v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for ReducedSequence.Iterator(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, AssociatedTypeWitness);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for ReducedSequence.Iterator(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v8 + 56);

    v23(a1, a2, v9, AssociatedTypeWitness);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t type metadata completion function for ReducedSequence(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void NSAttributedString.updateSchedule.getter(void *a1@<X8>)
{
  if ([v1 length] >= 1)
  {
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    v3 = static NSAttributedStringKey.updateSchedule;
    [v1 length];
    if ([v1 attribute:v3 atIndex:0 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    if (*(&v7 + 1))
    {
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule);
      if ((swift_dynamicCast() & 1) != 0 && v10)
      {
        outlined init with take of AnyTrackedValue(&v9, a1);
        return;
      }
    }

    else
    {
      _sypSgWOhTm_4(v8, type metadata accessor for Any?);
    }
  }

  type metadata accessor for ExplicitTimelineSchedule<[Date]>(0);
  a1[3] = v4;
  lazy protocol witness table accessor for type ExplicitTimelineSchedule<[Date]> and conformance ExplicitTimelineSchedule<A>();
  a1[4] = v5;
  *a1 = MEMORY[0x1E69E7CC0];
}

uint64_t outlined init with take of ResolvableTextSegmentAttribute.Value(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of TimelineSchedule?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrollStateRequest?(0, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ExplicitTimelineSchedule<[Date]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ExplicitTimelineSchedule<[Date]>)
  {
    type metadata accessor for [Date](255, &lazy cache variable for type metadata for [Date], MEMORY[0x1E6969530], MEMORY[0x1E69E62F8]);
    v3 = v2;
    lazy protocol witness table accessor for type [Date] and conformance [A]();
    v6 = type metadata accessor for ExplicitTimelineSchedule(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ExplicitTimelineSchedule<[Date]>);
    }
  }
}

void lazy protocol witness table accessor for type [Date] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [Date] and conformance [A])
  {
    type metadata accessor for [Date](255, &lazy cache variable for type metadata for [Date], MEMORY[0x1E6969530], MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6328], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [Date] and conformance [A]);
  }
}

void lazy protocol witness table accessor for type ExplicitTimelineSchedule<[Date]> and conformance ExplicitTimelineSchedule<A>()
{
  if (!lazy protocol witness table cache variable for type ExplicitTimelineSchedule<[Date]> and conformance ExplicitTimelineSchedule<A>)
  {
    type metadata accessor for ExplicitTimelineSchedule<[Date]>(255);
    swift_getWitnessTable("П\a", v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ExplicitTimelineSchedule<[Date]> and conformance ExplicitTimelineSchedule<A>);
  }
}

uint64_t *HomogeneousCollection.__allocating_init(_:)(uint64_t a1)
{
  v1 = specialized HomogeneousCollection.__allocating_init(_:)(a1);

  return v1;
}

uint64_t *HomogeneousCollection.init(_:)(uint64_t a1)
{
  v1 = specialized HomogeneousCollection.init(_:)(a1);

  return v1;
}

uint64_t HomogeneousCollection.element(at:)@<X0>(uint64_t *a2@<X8>)
{
  a2[3] = *(*v2 + 160);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return ContiguousArray.subscript.getter();
}

void *HomogeneousCollection.forEach(_:)(void (*a1)(uint64_t *))
{
  v3 = *v1;
  v12 = v1[4];
  v4 = *(v3 + 160);
  v5 = type metadata accessor for ContiguousArray();
  swift_getWitnessTable(MEMORY[0x1E69E6C18], v5);
  result = RandomAccessCollection<>.indices.getter();
  v7 = v9;
  v8 = v10;
  if (v9 != v10)
  {
    if (v10 < v9)
    {
      __break(1u);
    }

    else if (v9 < v10)
    {
      do
      {
        v11 = v4;
        __swift_allocate_boxed_opaque_existential_1(&v9);
        ContiguousArray.subscript.getter();
        a1(&v9);
        result = __swift_destroy_boxed_opaque_existential_1(&v9);
        ++v7;
      }

      while (v8 != v7);
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t *HomogenousContiguousIndexLookupTable.__allocating_init(offsets:bias:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = *result;
  result[3] = a1;
  result[4] = a2;
  result[5] = a3;
  result[2] = *(v7 + 120);
  return result;
}

uint64_t *HomogenousDiscontiguousIndexLookupTable.__allocating_init(offsets:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = *result;
  result[3] = a1;
  result[2] = *(v3 + 120);
  return result;
}

uint64_t HomogeneousCollection.asAnyHashable2()()
{
  v1 = *v0;
  v8 = v0[4];
  v7[1] = *(v1 + 160);
  v2 = type metadata accessor for ContiguousArray();

  swift_getWitnessTable(MEMORY[0x1E69E6C20], v2);
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in HomogeneousCollection.asAnyHashable2(), v7, v2, &type metadata for AnyHashable2, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);

  return v5;
}

uint64_t closure #1 in HomogeneousCollection.asAnyHashable2()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return AnyHashable2.init<A>(_:)(v7, a2, a3);
}

uint64_t HeterogeneousCollection.count.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v1 + 4 * v2 + 28);
  }

  else
  {
    return 0;
  }
}

uint64_t HeterogeneousCollection.element(at:)(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  v2 = v1[1];
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_26;
  }

  v4 = v2 + 32;
  if (*(v2 + 32 + 4 * v3 - 4) <= a1)
  {
    goto LABEL_26;
  }

  v5 = 0;
  v6 = *v1;
  v7 = v3;
  while (1)
  {
    v8 = v7 >> 1;
    v9 = v5 + (v7 >> 1);
    if (__OFADD__(v5, v7 >> 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v9 >= v3)
    {
      goto LABEL_21;
    }

    if (*(v4 + 4 * v9) <= a1)
    {
      break;
    }

LABEL_5:
    v7 = v8;
    if (v8 <= 0)
    {
      goto LABEL_12;
    }
  }

  v5 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    v8 = v7 + ~v8;
    goto LABEL_5;
  }

  __break(1u);
LABEL_12:
  if (v5)
  {
    v10 = v5 - 1;
    if (__OFSUB__(v5, 1))
    {
      goto LABEL_24;
    }

    if (v10 >= v3)
    {
      goto LABEL_25;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v11 = *(v4 + 4 * v10);
      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = 0;
LABEL_18:
  if (v5 < *(v6 + 16))
  {
    return (*(**(v6 + 8 * v5 + 32) + 120))(a1 - v11);
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  _StringGuts.grow(_:)(22);

  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v13);

  MEMORY[0x193ABEDD0](0x20666F2074756F20, 0xEE0073646E756F62);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void HeterogeneousCollection.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {

    v7 = 0;
    do
    {
      if (v7 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v8 = *(v3 + 8 * v7++ + 32);
      v9 = *(*v8 + 128);

      v9(a1, a2);
    }

    while (v4 != v7);
  }
}

uint64_t HeterogeneousCollection.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v21 = ContiguousArray.init()();
  v11 = *(v8 + 16);
  if (v11)
  {
    v12 = *(v8 + 4 * v11 + 28);
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v12);
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  MEMORY[0x1EEE9AC00](v14);
  v16[2] = a3;
  v16[3] = &v21;
  v16[4] = a1;
  v16[5] = a2;
  HeterogeneousCollection.forEach(_:)(partial apply for closure #1 in HeterogeneousCollection.map<A>(_:), v16);
  v17 = v21;
  swift_getWitnessTable(MEMORY[0x1E69E6C08], v13);
  return Array.init<A>(_:)();
}

uint64_t closure #1 in HeterogeneousCollection.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v6(v5);
  type metadata accessor for ContiguousArray();
  return ContiguousArray.append(_:)();
}

void HeterogeneousCollection.asAnyHashable2()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);

  if (!v2)
  {
LABEL_19:

    return;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v5 = *(**(v1 + 32 + 8 * v3) + 152);

    v7 = v5(v6);

    v8 = *(v7 + 16);
    v9 = *(v4 + 2);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      goto LABEL_21;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v10 <= *(v4 + 3) >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v12 = v9 + v8;
      }

      else
      {
        v12 = v9;
      }

      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v4);
      if (*(v7 + 16))
      {
LABEL_15:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v8)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v13 = *(v4 + 2);
          v14 = __OFADD__(v13, v8);
          v15 = v13 + v8;
          if (v14)
          {
            goto LABEL_24;
          }

          *(v4 + 2) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_22;
    }

LABEL_4:
    if (v2 == ++v3)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void HomogenousDiscontiguousIndexLookupTable.unsafeAbsoluteIndex<A>(of:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(v3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v6;
  if (*(*(v9 - 8) + 64) == v10)
  {
    v11 = v1[3];
    (*(v4 + 16))(&v12 - v6, v5, v3, v7);
    MEMORY[0x193ABE750](&v13, v8, v11, v3, MEMORY[0x1E69E7668], *(v2 + 128));
    (*(v4 + 8))(v8, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t HomogenousDiscontiguousIndexLookupTable.unsafeAbsoluteIndexOfElement(at:in:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - v5;
  ContiguousArray.subscript.getter();
  MEMORY[0x193ABE750](&v9, v6, v1[3], v3, MEMORY[0x1E69E7668], *(v2 + 128));
  (*(v4 + 8))(v6, v3);
  if (BYTE4(v9))
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

void HomogenousContiguousIndexLookupTable.unsafeAbsoluteIndex<A>(of:)(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(v2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - v5;
  if (*(*(v8 - 8) + 64) == v9)
  {
    (*(v3 + 16))(&v12 - v5, v4, v2, v6);
    v10 = OrderedSet._find(_:)();
    if ((v11 & 1) != 0 || !__OFADD__(v10, v1[5]))
    {
      (*(v3 + 8))(v7, v2);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t HomogenousContiguousIndexLookupTable.unsafeAbsoluteIndexOfElement(at:in:)(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - v4;
  ContiguousArray.subscript.getter();
  result = OrderedSet._find(_:)();
  v7 = result;
  if ((v8 & 1) == 0 && (v9 = v1[5], v7 = result + v9, __OFADD__(result, v9)))
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return v7;
  }

  return result;
}

double HomogenousContiguousIndexLookupTable.__ivar_destroyer()
{

  return result;
}

uint64_t HeterogeneousIndexLookupTable.index<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  DynamicType = swift_getDynamicType();
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(DynamicType);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(**(*(a2 + 56) + 8 * v10) + 104);

  v13 = v12(a1, a4, a5);

  return v13;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<JSONCodable<CFDictionaryRef>>, type metadata accessor for JSONCodable<CFDictionaryRef>, type metadata accessor for JSONCodable<CFDictionaryRef>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSAttributedStringKey>, type metadata accessor for NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<[CGRect]>, type metadata accessor for [CGRect], type metadata accessor for [CGRect]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<[String : [Double]]>, type metadata accessor for [String : [Double]], type metadata accessor for [String : [Double]]);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E6969498]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, LocalizedStringKey.FormatArgument)>, type metadata accessor for (Int, LocalizedStringKey.FormatArgument), type metadata accessor for (Int, LocalizedStringKey.FormatArgument));
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<LocalizedStringKey.FormatArgument>, type metadata accessor for LocalizedStringKey.FormatArgument, type metadata accessor for LocalizedStringKey.FormatArgument);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>, type metadata accessor for Transaction.PendingListeners.WeakListener, type metadata accessor for Transaction.PendingListeners.WeakListener);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<CustomRecursiveStringConvertible>, &lazy cache variable for type metadata for CustomRecursiveStringConvertible, &protocol descriptor for CustomRecursiveStringConvertible);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x1E69E6530]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObjectIdentifier>, MEMORY[0x1E69E5FE0]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<(index: Int32, implicitID: Int32)>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, type metadata accessor for _ContiguousArrayStorage<TypedCanonicalViewID<Nil>>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int8>, MEMORY[0x1E69E7230]);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    a8(0, a5, a6, a7);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 16 * v12);
  }

  return v14;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Spacing.Key>, &type metadata for Spacing.Key);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x1E69E6530]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E6969498]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t *specialized HomogeneousCollection.init(_:)(uint64_t a1)
{
  v2 = *v1;
  v1[4] = a1;
  v3 = *(v2 + 160);

  v4 = ContiguousArray.count.getter();
  v1[2] = v3;
  v1[3] = v4;
  return v1;
}

double destroy for HeterogeneousCollection(void *a1)
{

  return result;
}

uint64_t *initializeWithCopy for HeterogeneousCollection(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t *assignWithCopy for HeterogeneousCollection(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];
  return a1;
}

void *assignWithTake for HeterogeneousCollection(void *a1, uint64_t a2)
{

  *a1 = *a2;

  a1[2] = *(a2 + 16);

  a1[3] = *(a2 + 24);
  return a1;
}

uint64_t *assignWithCopy for HeterogeneousIndexLookupTable(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t *assignWithTake for HeterogeneousIndexLookupTable(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void type metadata accessor for _ContiguousArrayStorage<GesturePhase<()>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<GesturePhase<()>>)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(255, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<GesturePhase<()>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(String, Double)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Double)>)
  {
    type metadata accessor for (Path, FillStyle)(255, &lazy cache variable for type metadata for (String, Double), MEMORY[0x1E69E6158], MEMORY[0x1E69E63B0]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Double)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<AttributedString.WritingDirection?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedString.WritingDirection?>)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(255, &lazy cache variable for type metadata for AttributedString.WritingDirection?, MEMORY[0x1E69686A0], MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedString.WritingDirection?>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(label: String, value: Double)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(label: String, value: Double)>)
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(255, &lazy cache variable for type metadata for (label: String, value: Double), MEMORY[0x1E69E6158], MEMORY[0x1E69E63B0], "label value ");
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(label: String, value: Double)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<Range<AttributedTextFormatting.Constraints.Index>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Range<AttributedTextFormatting.Constraints.Index>>)
  {
    type metadata accessor for ClosedRange<CGFloat>(255, &lazy cache variable for type metadata for Range<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E66A8]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<AttributedTextFormatting.Constraints.Index>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<TypedCanonicalViewID<ForEachConstantID>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<TypedCanonicalViewID<ForEachConstantID>>)
  {
    type metadata accessor for ClosedRange<CGFloat>(255, &lazy cache variable for type metadata for TypedCanonicalViewID<ForEachConstantID>, lazy protocol witness table accessor for type ForEachConstantID and conformance ForEachConstantID, &type metadata for ForEachConstantID, type metadata accessor for TypedCanonicalViewID);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<TypedCanonicalViewID<ForEachConstantID>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(index: Int32, implicitID: Int32)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(index: Int32, implicitID: Int32)>)
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(255, &lazy cache variable for type metadata for (index: Int32, implicitID: Int32), MEMORY[0x1E69E72F0], MEMORY[0x1E69E72F0], "index implicitID ");
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(index: Int32, implicitID: Int32)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<UInt32>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t ViewModifier.except<A>(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ContainerContextPredicate(255, v9, v11, v10);
  type metadata accessor for InvertedViewInputPredicate(0, v12, &protocol witness table for ContainerContextPredicate<A>, v13);
  (*(v6 + 16))(v8, v3, a2);
  return StaticIf<>.init<>(_:then:)(v8, a2, a3);
}

void AnyShapeStyle.as<A>(type:)(ValueMetadata *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a2 == &type metadata for Color)
  {
    type metadata accessor for AnyColorBox();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v15 = v10;
      v8 = qword_1F009DBF8;
      if (*(qword_1F009DBF8 + 64) == 8)
      {
        v9 = &type metadata for Color;
        (*(qword_1F009DBF8 + 16))(a4, &v15, &type metadata for Color);
        goto LABEL_9;
      }

      __break(1u);
      goto LABEL_15;
    }
  }

  else if (a2 == &type metadata for AnyGradient)
  {
    type metadata accessor for AnyGradientBox();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v15 = v7;
      v8 = qword_1F00519C0;
      if (*(qword_1F00519C0 + 64) == 8)
      {
        v9 = &type metadata for AnyGradient;
        (*(qword_1F00519C0 + 16))(a4, &v15, &type metadata for AnyGradient);
LABEL_9:
        (*(v8 + 56))(a4, 0, 1, v9);
        return;
      }

LABEL_15:
      __break(1u);
      return;
    }
  }

  type metadata accessor for ShapeStyleBox(0, a2, a3, a3);
  v11 = swift_dynamicCastClass();
  v12 = v11;
  if (v11)
  {
  }

  v15 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14[2] = a2;
  v14[3] = a3;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in AnyShapeStyle.as<A>(type:), v14, MEMORY[0x1E69E73E0], a2, v13, a4);
}

uint64_t static AnyShapeStyle.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return (*(*a1 + 88))(a2) & 1;
  }
}

double _PreferenceReadingView.value.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double _PreferenceReadingView.value.setter(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t _PreferenceReadingView.transform.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void _PreferenceReadingView.transform.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

double _PreferenceReadingView.init(value:transform:)@<D0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = *a1;
  *a4 = *a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void *static _PreferenceReadingView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v60 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 48);
  v13 = *(a2 + 16);
  v50 = *(a2 + 32);
  v51 = v12;
  v14 = *(a2 + 48);
  v52 = *(a2 + 64);
  v15 = *(a2 + 16);
  v49[0] = *a2;
  v49[1] = v15;
  v45 = v50;
  v46 = v14;
  v47 = *(a2 + 64);
  v16 = *a1;
  v53 = *(a2 + 80);
  v48 = *(a2 + 80);
  v43 = v49[0];
  v44 = v13;
  outlined init with copy of _ViewInputs(v49, &v54);
  PreferencesInputs.remove<A>(_:)(a3, a3, a5);
  LODWORD(v41[0]) = v16;
  *&v54 = a3;
  *(&v54 + 1) = a4;
  *&v55 = a5;
  *(&v55 + 1) = a6;
  v17 = type metadata accessor for PreferenceReadingChild(0, &v54);
  swift_getWitnessTable(protocol conformance descriptor for PreferenceReadingChild<A, B>, v17);
  _GraphValue.init<A>(_:)(v41, a4, v17, v18, &v24);
  v19 = v24;
  v56 = v45;
  v57 = v46;
  v58 = v47;
  v59 = v48;
  v54 = v43;
  v55 = v44;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v35 = v56;
  v36 = v57;
  v37 = v58;
  v38 = v59;
  v33 = v54;
  v34 = v55;
  v21 = v56;
  LODWORD(v35) = 0;
  LODWORD(v25[0]) = v19;
  v39[0] = v54;
  v39[1] = v55;
  v40 = v59;
  v39[3] = v57;
  v39[4] = v58;
  v39[2] = v35;
  v29 = v35;
  v30 = v57;
  v31 = v58;
  v32 = v59;
  v27 = v54;
  v28 = v55;
  v22 = *(a6 + 24);
  outlined init with copy of _ViewInputs(&v54, v41);
  outlined init with copy of _ViewInputs(v39, v41);
  v22(v25, &v27, a4, a6);
  v41[2] = v29;
  v41[3] = v30;
  v41[4] = v31;
  v42 = v32;
  v41[0] = v27;
  v41[1] = v28;
  outlined destroy of _ViewInputs(v41);
  LODWORD(v35) = v21;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a7, &v33);
    AGSubgraphEndTreeElement();
  }

  v25[2] = v45;
  v25[3] = v46;
  v25[4] = v47;
  v26 = v48;
  v25[0] = v43;
  v25[1] = v44;
  outlined destroy of _ViewInputs(v25);
  v29 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v34;
  return outlined destroy of _ViewInputs(&v27);
}

double PreferenceReadingChild.view.getter@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  type metadata accessor for _PreferenceReadingView(0, v11);
  Value = AGGraphGetValue();
  v9 = Value[1];
  v8 = Value[2];
  *a6 = *Value;
  a6[1] = v9;
  a6[2] = v8;

  return result;
}

double PreferenceReadingChild.value.getter@<D0>(int a1@<W0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a6;
  v79 = *MEMORY[0x1E69E9840];
  v67 = type metadata accessor for ObservationTracking._AccessList();
  v11 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v58 - v17;
  type metadata accessor for ObservationTracking._AccessList?(0);
  v19 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v62 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v68 = &v58 - v25;
  v66 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v69 = &v58 - v30;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  v75 = a5;
  v76 = a1;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v31 = static ObservationCenter._current;
  swift_beginAccess();
  v32 = pthread_getspecific(v31[2]);
  if (!v32)
  {
    v33 = swift_slowAlloc();
    pthread_setspecific(v31[2], v33);
    v78 = type metadata accessor for ObservationCenter();
    v31 = v31[3];
    *&v77 = v31;
    outlined init with take of Any(&v77, v33);

    v32 = v33;
  }

  outlined init with copy of Any(v32, &v77);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v34 = v70;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v36 = v66;
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_18:
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
    *(v34 + 24) = v31;
    goto LABEL_9;
  }

  v59 = v13;
  v60 = CurrentAttribute;
  swift_beginAccess();
  v61 = *(v34 + 24);
  *(v34 + 24) = MEMORY[0x1E69E7CC0];
  v37 = v67;
  v38 = (*(v11 + 56))(v23, 1, 1, v67);
  MEMORY[0x1EEE9AC00](v38);
  *(&v58 - 4) = a3;
  *(&v58 - 3) = partial apply for closure #1 in PreferenceReadingChild.value.getter;
  *(&v58 - 2) = &v71;
  v39 = type metadata accessor for Error();
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v23, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v58 - 6), v19, v39, a3, MEMORY[0x1E69E7288], &v70);
  a2 = *(v36 + 32);
  a2(v69, v28, a3);
  v40 = v68;
  outlined init with take of ObservationTracking._AccessList?(v23, v68);
  v41 = v62;
  outlined init with copy of ObservationTracking._AccessList?(v40, v62);
  if ((*(v11 + 48))(v41, 1, v37) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v40);
    v42 = v41;
    v43 = v65;
    goto LABEL_12;
  }

  v19 = *(v11 + 32);
  v44 = v64;
  v19(v64, v41, v37);
  (*(v11 + 16))(v63, v44, v37);
  v31 = *(v34 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v34 + 24) = v31;
  v58 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v47 = v31[2];
  v46 = v31[3];
  if (v47 >= v46 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v31);
  }

  v31[2] = v47 + 1;
  v48 = v31 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v47;
  v11 = v58;
  v37 = v67;
  v19(v48, v63, v67);
  *(v34 + 24) = v31;
  (*(v11 + 8))(v64, v37);
  v43 = v65;
  v42 = v68;
LABEL_12:
  outlined destroy of ObservationTracking._AccessList?(v42);
  a2(v43, v69, a3);
  v49 = *(v34 + 24);
  v50 = *(v49 + 16);
  if (v50)
  {
    v52 = *(v11 + 16);
    v51 = v11 + 16;
    v68 = *(v34 + 24);
    v69 = v52;
    v53 = v49 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
    v54 = *(v51 + 56);

    v55 = v60;
    v56 = v59;
    do
    {
      (v69)(v56, v53, v37);
      ObservationCenter.invalidate<A>(_:onChangeIn:)(v55, v56);
      (*(v51 - 8))(v56, v37);
      v53 += v54;
      --v50;
    }

    while (v50);
  }

  *(v34 + 24) = v61;

  return result;
}

uint64_t closure #1 in PreferenceReadingChild.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = a1;
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v8 = type metadata accessor for _PreferenceReadingView(0, v12);
  return Attribute.syncMainIfReferences<A>(do:)(partial apply for closure #1 in closure #1 in PreferenceReadingChild.value.getter, v10, v8, a3, a6);
}

uint64_t closure #1 in closure #1 in PreferenceReadingChild.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20[1] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = v20 - v14;
  v16 = *(a1 + 8);
  PreferenceReadingChild.view.getter(a3, a4, a5, a6, &v21);

  v20[2] = v21;
  v18 = type metadata accessor for _PreferenceValue(0, a3, a5, v17);
  _PreferenceValue.wrappedValue.getter(v18, v15);
  v16(v15);
  return (*(v13 + 8))(v15, AssociatedTypeWitness);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance PreferenceReadingChild<A, B>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for PreferenceReadingChild<A, B>, a1);

  return static AsyncAttribute.flags.getter();
}

double _PreferenceValue._force<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *v3;
  a3[1] = a1;
  a3[2] = a2;

  return result;
}

uint64_t assignWithCopy for _PreferenceReadingView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t specialized PreferenceReadingChild.description.getter(uint64_t a1)
{
  static PreferenceKey.readableName.getter(a1);
  MEMORY[0x193ABEDD0]();

  return 0x203A64616552;
}

__n128 _PositionLayout.placement(of:in:)@<Q0>(unsigned int *a1@<X1>, __n128 *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = *(a1 + 2);
  if (a1[12])
  {
    InputValue = AGGraphGetInputValue();
    v11 = *InputValue;
    v10 = (InputValue + 1);
    v8 = v11;
  }

  else
  {
    v10 = a1 + 6;
  }

  v12 = *v10;
  a2->n128_u64[0] = v8;
  a2->n128_u8[8] = 0;
  a2[1].n128_u64[0] = v12;
  a2[1].n128_u8[8] = 0;
  __asm { FMOV            V0.2D, #0.5 }

  a2[2] = result;
  a2[3].n128_f64[0] = a3;
  a2[3].n128_f64[1] = a4;
  return result;
}

void _PositionLayout.spacing(in:child:)(uint64_t a1, unsigned int *a2)
{
  v2 = a2[1];
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v3 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v3)
    {
      goto LABEL_7;
    }

LABEL_12:
    Spacing.init()();
    return;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_12;
  }

LABEL_7:
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v5 = *InputValue;
  v6 = one-time initialization token for lockAssertionsAreEnabled;

  if (v6 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_20;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_20:
    (*(*v5 + 112))();
  }
}

double specialized _PositionLayout.sizeThatFits(in:context:child:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if ((v4 & 1) == 0 && (*(a1 + 24) & 1) == 0)
  {
    return *a1;
  }

  v8 = *(a3 + 2);
  v13 = *a3;
  v14 = v8;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  LayoutProxy.size(in:)(&v9);
  if (!v4)
  {
    return v3;
  }

  return result;
}

uint64_t AccessibilityCustomContentKey.init(_:id:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 32) = result;
  *(a7 + 40) = a2;
  *(a7 + 48) = a3 & 1;
  *(a7 + 56) = a4;
  *a7 = a5;
  *(a7 + 8) = a6;
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  return result;
}

uint64_t AccessibilityCustomContentKey.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for LocalizedTextStorage();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *a7 = a5;
  *(a7 + 8) = a6;
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  *(a7 + 32) = result;
  *(a7 + 40) = 0;
  *(a7 + 48) = 1;
  *(a7 + 56) = MEMORY[0x1E69E7CC0];
  return result;
}

double AccessibilityCustomContentKey.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for LocalizedTextStorage();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *a5 = v10;
  *(a5 + 8) = xmmword_18DDC8E80;
  v11 = MEMORY[0x1E69E7CC0];
  *(a5 + 24) = MEMORY[0x1E69E7CC0];
  *(a5 + 32) = v10;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 56) = v11;

  return result;
}

{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1 | 0x8000000000000000;
  *(a5 + 24) = a4;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  v5 = a3 & 1;
  *(a5 + 48) = v5;
  *(a5 + 56) = a4;
  outlined copy of Text.Storage(a1, a2, v5);

  return result;
}

double AccessibilityCustomContentKey.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LocalizedStringResourceStorage(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC7SwiftUIP33_1A1BB6A07088C23EE7C52846B7BEB81330LocalizedStringResourceStorage_resource;
  v6 = type metadata accessor for LocalizedStringResource();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *a2 = v4;
  *(a2 + 8) = xmmword_18DDC8E80;
  v7 = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  *(a2 + 32) = v4;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v7;

  return result;
}

__n128 AccessibilityCustomContentEntry.init(_:value:importance:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(a7 + 32) = result;
  *(a7 + 48) = v9;
  *(a7 + 64) = a2;
  *(a7 + 72) = a3;
  *(a7 + 80) = a4 & 1;
  *(a7 + 88) = a5;
  *(a7 + 96) = a6;
  *(a7 + 112) = 0;
  return result;
}

uint64_t AccessibilityCustomContentEntry.init<A>(_:value:importance:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = a1[1];
  *a8 = *a1;
  *(a8 + 16) = v10;
  v11 = a1[3];
  *(a8 + 32) = a1[2];
  *(a8 + 48) = v11;
  result = AnyAccessibilityValue.init<A>(_:)(a2, a4, a5, a6, a7, (a8 + 64));
  *(a8 + 104) = a3;
  *(a8 + 112) = 1;
  return result;
}

double AccessibilityCustomContentEntry.init(clearing:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  v3 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v3;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 2;
  return result;
}

unint64_t Array<A>.resolve(in:)(uint64_t *a1, uint64_t a2)
{
  v75 = type metadata accessor for Text.ResolvedString(0);
  MEMORY[0x1EEE9AC00](v75);
  v72 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E7CC0];
  v6 = *a1;
  v73 = a1[1];
  v74 = v6;
  v94 = MEMORY[0x1E69E7CC0];
  v93 = MEMORY[0x1E69E7CD0];
  v7 = *(a2 + 16);
  if (!v7)
  {
    goto LABEL_47;
  }

  v8 = 0;
  v76 = a2 + 32;
  v68 = v7;
  while (1)
  {
    outlined init with copy of AccessibilityCustomContentEntry(v76 + 120 * v8, &v84);
    v10 = v84;
    v9 = v85;
    if (v86 < 0)
    {
      if (v86)
      {
        v11 = v87;
        outlined copy of Text.Storage(v84, v85, 1);

        v12 = v72;
        Text.Style.init()(v72);
        v13 = v74;
        v14 = v75;
        v15 = (v12 + *(v75 + 20));
        *v15 = 0;
        v15[1] = 0;
        v16 = (v12 + *(v14 + 24));
        *v16 = 0;
        v16[1] = 0xE000000000000000;
        *(v12 + *(v14 + 28)) = 0;
        *v15 = 0;
        v15[1] = 0;
        specialized Text.resolve<A>(into:in:with:)(v12, v13, v73, 0, v10, v9, 1, v11);
        outlined consume of Text.Storage(v10, v9, 1);

        v10 = *v16;
        v9 = v16[1];

        _s7SwiftUI4TextV14ResolvedStringVWOhTm_1(v12, type metadata accessor for Text.ResolvedString);
      }

      else
      {
        outlined copy of Text.Storage(v84, v85, 0);
      }
    }

    else
    {
    }

    if (String.count.getter() >= 1)
    {
      break;
    }

LABEL_3:

LABEL_4:
    outlined destroy of AccessibilityCustomContentEntry(&v84);
LABEL_5:
    if (++v8 == v7)
    {
      goto LABEL_46;
    }
  }

  v17 = v93;
  if (*(v93 + 16))
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v18 = Hasher._finalize()();
    v19 = -1 << *(v17 + 32);
    v20 = v18 & ~v19;
    if ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      do
      {
        v22 = (*(v17 + 48) + 16 * v20);
        v23 = *v22 == v10 && v22[1] == v9;
        if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_3;
        }

        v20 = (v20 + 1) & v21;
      }

      while (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
    }
  }

  specialized Set._Variant.insert(_:)(&v79, v10, v9);

  outlined init with copy of AccessibilityCustomContentEntry.Value(v92, &v79);
  if (v83)
  {
    if (v83 == 1)
    {
      v77[0] = v79;
      v77[1] = v80;
      v24 = v81;
      v25 = v82;
      v78 = v81;
      v26 = *(&v80 + 1);
      __swift_project_boxed_opaque_existential_1(v77, *(&v80 + 1));
      v27 = (*(v24 + 24))(v26, v24);
      if (v28)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0;
      }

      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0xE000000000000000;
      }

      v32 = v88;
      v31 = v89;
      if (v90)
      {
        v33 = v91;
        v71 = v25;
        v34 = v72;
        Text.Style.init()(v72);
        v35 = v74;
        v36 = v75;
        v37 = (v34 + *(v75 + 20));
        *v37 = 0;
        v37[1] = 0;
        v38 = (v34 + *(v36 + 24));
        *v38 = 0;
        v38[1] = 0xE000000000000000;
        *(v34 + *(v36 + 28)) = 0;
        *v37 = 0;
        v37[1] = 0;
        specialized Text.resolve<A>(into:in:with:)(v34, v35, v73, 0, v32, v31, 1, v33);
        v32 = *v38;
        v31 = v38[1];
        v7 = v68;

        v39 = v34;
        v25 = v71;
        _s7SwiftUI4TextV14ResolvedStringVWOhTm_1(v39, type metadata accessor for Text.ResolvedString);
      }

      else
      {
      }

      v49 = MEMORY[0x193ABEC20](v32, v31);

      v50 = MEMORY[0x193ABEC20](v29, v30);

      v51 = [objc_opt_self() customContentWithLabel:v49 value:v50];

      [v51 setImportance_];
      if (v94 >> 62)
      {
        result = __CocoaSet.count.getter();
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
          return result;
        }
      }

      specialized Array.replaceSubrange<A>(_:with:)(0, 0, v51, v52);

      outlined destroy of AnyAccessibilityValue(v77);
    }

    goto LABEL_4;
  }

  v41 = *(&v79 + 1);
  v40 = v79;
  v42 = *(&v80 + 1);
  v69 = v80;
  v71 = v81;
  if (v80)
  {
    v43 = v72;
    Text.Style.init()(v72);
    v44 = v74;
    v45 = v75;
    v46 = (v43 + *(v75 + 20));
    *v46 = 0;
    v46[1] = 0;
    v47 = (v43 + *(v45 + 24));
    *v47 = 0;
    v47[1] = 0xE000000000000000;
    *(v43 + *(v45 + 28)) = 0;
    *v46 = 0;
    v46[1] = 0;
    specialized Text.resolve<A>(into:in:with:)(v43, v44, v73, 0, v40, v41, 1, v42);
    v48 = v47[1];
    v70 = *v47;

    _s7SwiftUI4TextV14ResolvedStringVWOhTm_1(v43, type metadata accessor for Text.ResolvedString);
  }

  else
  {

    v70 = v40;
    v48 = v41;
  }

  v54 = v88;
  v53 = v89;
  if (v90)
  {
    v67[0] = v91;
    v67[1] = v42;
    v55 = v72;
    Text.Style.init()(v72);
    v56 = v74;
    v57 = v75;
    v58 = (v55 + *(v75 + 20));
    *v58 = 0;
    v58[1] = 0;
    v59 = v41;
    v60 = v40;
    v61 = (v55 + *(v57 + 24));
    *v61 = 0;
    v61[1] = 0xE000000000000000;
    *(v55 + *(v57 + 28)) = 0;
    *v58 = 0;
    v58[1] = 0;
    specialized Text.resolve<A>(into:in:with:)(v55, v56, v73, 0, v54, v53, 1, v67[0]);
    v54 = *v61;
    v53 = v61[1];
    v40 = v60;
    v41 = v59;

    _s7SwiftUI4TextV14ResolvedStringVWOhTm_1(v55, type metadata accessor for Text.ResolvedString);
  }

  else
  {
  }

  v62 = MEMORY[0x193ABEC20](v54, v53);

  v63 = MEMORY[0x193ABEC20](v70, v48);

  v64 = [objc_opt_self() customContentWithLabel:v62 value:v63];

  [v64 setImportance_];
  if (!(v94 >> 62) || (__CocoaSet.count.getter() & 0x8000000000000000) == 0)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v64, v65);

    outlined consume of Text.Storage(v40, v41, v69);

    outlined destroy of AccessibilityCustomContentEntry(&v84);
    v7 = v68;
    goto LABEL_5;
  }

  __break(1u);
LABEL_46:
  v5 = v94;
LABEL_47:

  return v5;
}

void CodableAccessibilityCustomContentList.CodableEntry.CodableKey.init(_:in:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *a2;
  v13 = *(a2 + 8);
  v43 = v10;
  v41 = v9;
  v42 = v8;
  v46 = v6;
  v44 = *a1;
  v45 = v5;
  if (v7 < 0)
  {
    aBlock = *a2;
    v48 = v13;
    v55[0] = 129;
    v53 = 0uLL;
    v15 = v4;
    outlined copy of AccessibilityCustomContentKey.Identifier(v4, v5, v7, v6);

    v16 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)(&aBlock, 1, v55, &v53, v15, v5, v7 & 1, v6);
    if (v16)
    {
      v17 = v16;
      v37 = v11;
      LOBYTE(v55[0]) = 0;
      v53 = 0u;
      v54 = 0u;
      v18 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

      v19 = v18;
      v20 = [v19 length];
      v21 = swift_allocObject();
      *(v21 + 16) = v12;
      *(v21 + 24) = v13;
      *(v21 + 32) = v55;
      *(v21 + 40) = &v53;
      *(v21 + 48) = v19;
      *(v21 + 56) = 3;
      v22 = swift_allocObject();
      *(v22 + 16) = closure #1 in static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)partial apply;
      *(v22 + 24) = v21;
      v51 = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
      v52 = v22;
      aBlock = MEMORY[0x1E69E9820];
      v48 = 1107296256;
      v49 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      v50 = &block_descriptor_30;
      v23 = _Block_copy(&aBlock);

      v24 = v19;

      [v24 enumerateAttributesInRange:0 options:v20 usingBlock:{0, v23}];
      _Block_release(v23);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_17;
      }

      v26 = [v24 length];

      v40 = [v24 attributedSubstringFromRange_];

      outlined consume of Text.Storage(v44, v45, v7 & 1);

      outlined consume of AccessibilityText?(0, 0, 255);
      v38 = 0;
      v39 = 1;
      v11 = v37;
    }

    else
    {
      outlined consume of Text.Storage(v15, v5, v7 & 1);

      v39 = 255;
      outlined consume of AccessibilityText?(0, 0, 255);
      v40 = 0;
      v38 = 0;
    }

    v10 = v43;
    v9 = v41;
    v8 = v42;
  }

  else
  {
    v50 = MEMORY[0x1E69E6158];
    aBlock = v4;
    v48 = v5;

    AccessibilityText.init(_:)(&aBlock, &v53);
    v38 = *(&v53 + 1);
    v40 = v53;
    if (BYTE1(v54))
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    v39 = v14 | v54;
    outlined consume of AccessibilityText?(0, 0, 255);
  }

  aBlock = v12;
  v48 = v13;
  v55[0] = 129;
  v53 = 0uLL;
  v27 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)(&aBlock, 1, v55, &v53, v9, v8, v10, v11);
  if (!v27)
  {
    outlined consume of AccessibilityCustomContentKey.Identifier(v44, v45, v7, v46);
    outlined consume of Text.Storage(v9, v8, v10);

    v36 = 255;
    goto LABEL_15;
  }

  LOBYTE(v55[0]) = 0;
  v53 = 0u;
  v54 = 0u;
  v28 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

  v29 = v28;
  v30 = [v29 length];
  v31 = swift_allocObject();
  *(v31 + 16) = v12;
  *(v31 + 24) = v13;
  *(v31 + 32) = v55;
  *(v31 + 40) = &v53;
  *(v31 + 48) = v29;
  *(v31 + 56) = 3;
  v32 = swift_allocObject();
  *(v32 + 16) = closure #1 in static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)partial apply;
  *(v32 + 24) = v31;
  v51 = thunk for @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v52 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v50 = &block_descriptor_19;
  v33 = _Block_copy(&aBlock);

  v34 = v29;

  [v34 enumerateAttributesInRange:0 options:v30 usingBlock:{0, v33}];
  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if ((v33 & 1) == 0)
  {
    v35 = [v34 length];

    v27 = [v34 attributedSubstringFromRange_];

    outlined consume of AccessibilityCustomContentKey.Identifier(v44, v45, v7, v46);
    outlined consume of Text.Storage(v41, v42, v43);

    v36 = 1;
LABEL_15:
    outlined consume of AccessibilityText?(0, 0, 255);
    *a3 = v40;
    *(a3 + 8) = v38;
    *(a3 + 16) = v39;
    *(a3 + 24) = v27;
    *(a3 + 32) = 0;
    *(a3 + 40) = v36;
    return;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t CodableAccessibilityCustomContentList.CodableEntry.CodableKey.encode(to:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys, &unk_1F006A430, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  v18 = *(v1 + 32);
  v19 = v9;
  v25 = *(v1 + 40);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of AccessibilityText?(v7, v8, v10);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = v7;
  v23 = v8;
  v11 = v4;
  v24 = v10;
  v26 = 0;
  lazy protocol witness table accessor for type AccessibilityText and conformance AccessibilityText();
  v12 = v21;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v12)
  {
    v13 = outlined consume of AccessibilityText?(v22, v23, v24);
    return (*(v20 + 8))(v6, v4, v13);
  }

  else
  {
    v15 = v20;
    outlined consume of AccessibilityText?(v22, v23, v24);
    v22 = v19;
    v23 = v18;
    v24 = v25;
    v26 = 1;
    outlined copy of AccessibilityText?(v19, v18, v25);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = outlined consume of AccessibilityText?(v22, v23, v24);
    return (*(v15 + 8))(v6, v11, v16);
  }
}

void CodableAccessibilityCustomContentList.CodableEntry.CodableKey.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys, &unk_1F006A430, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined consume of AccessibilityText?(0, 0, 255);
    v16 = 0;
    v17 = 0;
    v18 = -1;
  }

  else
  {
    v20 = v6;
    v25 = 0;
    lazy protocol witness table accessor for type AccessibilityText and conformance AccessibilityText();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = v22;
    v9 = v23;
    v11 = v24;
    outlined consume of AccessibilityText?(0, 0, 255);
    v25 = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v20 + 8))(v8, v5);
    v12 = v22;
    v13 = v23;
    v14 = v24;
    outlined consume of AccessibilityText?(0, 0, 255);
    v15 = v21;
    *v21 = v10;
    v15[1] = v9;
    *(v15 + 8) = v11;
    v15[3] = v12;
    v15[4] = v13;
    *(v15 + 20) = v14;
    outlined copy of AccessibilityText?(v10, v9, v11);
    outlined copy of AccessibilityText?(v12, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined consume of AccessibilityText?(v10, v9, v11);
    v16 = v12;
    v17 = v13;
    v18 = v14;
  }

  outlined consume of AccessibilityText?(v16, v17, v18);
}

double CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys, &unk_1F006A178, MEMORY[0x1E69E6F58]);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys, &unk_1F006A0E8, v2);
  v7 = v6;
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys, &unk_1F006A058, v2);
  v23 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(v22, &v27);
  if (v30)
  {
    v24 = v27;
    v25 = v28;
    v26 = v29;
    v31 = 1;
    lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type AnyAccessibilityValue and conformance AnyAccessibilityValue();
    v14 = v21;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v20 + 8))(v5, v14);
    outlined destroy of AnyAccessibilityValue(&v24);
    (*(v11 + 8))(v13, v23);
  }

  else
  {
    v16 = v27;
    v17 = v28;
    v18 = BYTE1(v28);
    LOBYTE(v24) = 0;
    lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v16;
    LOBYTE(v25) = v17;
    BYTE1(v25) = v18;
    lazy protocol witness table accessor for type AccessibilityText and conformance AccessibilityText();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v19 + 8))(v9, v7);
    (*(v11 + 8))(v13, v23);
    return outlined consume of AccessibilityText.Storage(v16, *(&v16 + 1), v17);
  }

  return result;
}

uint64_t CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys, &unk_1F006A178, MEMORY[0x1E69E6F48]);
  v36 = v4;
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v34 - v5;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys, &unk_1F006A0E8, v3);
  v7 = v6;
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys, &unk_1F006A058, v3);
  v11 = v10;
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys();
  v15 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v7;
    v18 = v38;
    v17 = v39;
    v19 = KeyedDecodingContainer.allKeys.getter();
    v20 = (2 * *(v19 + 16)) | 1;
    v50 = v19;
    v51 = v19 + 32;
    v52 = 0;
    v53 = v20;
    v21 = specialized Collection<>.popFirst()();
    v22 = v11;
    if (v21 == 2 || v52 != v53 >> 1)
    {
      v26 = type metadata accessor for DecodingError();
      swift_allocError();
      v28 = v27;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v28 = &unk_1F0069EB8;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v40 + 8))(v13, v22);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v21)
      {
        LOBYTE(v45) = 1;
        lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys();
        v23 = v18;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type AnyAccessibilityValue and conformance AnyAccessibilityValue();
        v24 = v36;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v25 = v40;
        (*(v37 + 8))(v23, v24);
        (*(v25 + 8))(v13, v22);
        swift_unknownObjectRelease();
        v30 = 1;
        v49 = 1;
        v31 = v45;
        v32 = v46;
        v33 = v47;
        v44[0] = *v48;
        *(v44 + 14) = *&v48[14];
      }

      else
      {
        LOBYTE(v45) = 0;
        lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type AccessibilityText and conformance AccessibilityText();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v35 + 8))(v9, v16);
        (*(v40 + 8))(v13, v11);
        swift_unknownObjectRelease();
        v30 = 0;
        v31 = v45;
        v32 = v46;
        v33 = v47;
        v54 = v46;
        v43 = 0;
      }

      *v17 = v31;
      *(v17 + 16) = v32;
      *(v17 + 17) = v33;
      *(v17 + 18) = v44[0];
      *(v17 + 32) = *(v44 + 14);
      *(v17 + 40) = v30;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys()
{
  if (*v0)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.TextCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.ValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CodableAccessibilityCustomContentList.CodableEntry.CodableValue.init(_:in:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a3 = 0;
  *(a3 + 8) = 0u;
  v7 = a3 + 8;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0;
  *(a3 + 48) = -1;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  outlined init with copy of AccessibilityCustomContentEntry.Value(a1, &v34);
  if (v38)
  {
    if (v38 == 1)
    {
      outlined destroy of AccessibilityCustomContentEntry.Value(a1);

      v8 = v37;
      outlined destroy of AccessibilityCustomContentEntry.Value?(v7, &lazy cache variable for type metadata for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?, &unk_1F0069EB8);
      v9 = v35;
      *v7 = v34;
      *(v7 + 16) = v9;
      *(v7 + 32) = v36;
      *(a3 + 48) = 1;
      *(a3 + 56) = v8;
LABEL_7:
      *(a3 + 64) = 0;
      return;
    }

    outlined destroy of AccessibilityCustomContentEntry.Value(a1);

    *a3 = 1;
  }

  else
  {
    v10 = v34;
    v11 = v35;
    v12 = v36;
    aBlock = v5;
    v27 = v6;
    v33 = 129;
    v32[0] = 0uLL;
    v13 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)(&aBlock, 1, &v33, v32, v34, *(&v34 + 1), v35, *(&v35 + 1));
    v25 = v6;
    if (v13)
    {
      v14 = v13;
      v23 = v12;
      LOBYTE(v33) = 0;
      memset(v32, 0, sizeof(v32));
      v15 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

      v16 = v15;
      v24 = [v16 length];
      v17 = swift_allocObject();
      *(v17 + 16) = v5;
      *(v17 + 24) = v25;
      *(v17 + 32) = &v33;
      *(v17 + 40) = v32;
      *(v17 + 48) = v16;
      *(v17 + 56) = 3;
      v18 = swift_allocObject();
      *(v18 + 16) = partial apply for closure #1 in static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:);
      *(v18 + 24) = v17;
      v30 = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
      v31 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v27 = 1107296256;
      v28 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      v29 = &block_descriptor_9;
      v19 = _Block_copy(&aBlock);

      v20 = v16;

      [v20 enumerateAttributesInRange:0 options:v24 usingBlock:{0, v19}];
      _Block_release(v19);
      LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

      if ((v19 & 1) == 0)
      {
        v21 = [v20 length];

        v22 = [v20 attributedSubstringFromRange_];

        outlined consume of Text.Storage(v10, *(&v10 + 1), v11);

        outlined destroy of AccessibilityCustomContentEntry.Value(a1);

        outlined destroy of AccessibilityCustomContentEntry.Value?(v7, &lazy cache variable for type metadata for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?, &unk_1F0069EB8);
        *(a3 + 8) = v22;
        *(a3 + 16) = 0;
        *(a3 + 24) = 1;
        *(a3 + 48) = 0;
        *(a3 + 56) = v23;
        goto LABEL_7;
      }

      __break(1u);
    }

    else
    {
      outlined consume of Text.Storage(v10, *(&v10 + 1), v11);

      outlined destroy of AccessibilityCustomContentEntry.Value(a1);
    }
  }
}

uint64_t CodableAccessibilityCustomContentList.CodableEntry.CodableValue.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys, &unk_1F006A3A0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = 1;
    lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 64);
    v12 = *(v3 + 56);
    v13 = v10;
    v14 = 2;
    type metadata accessor for ProxyCodable<AXCustomContentImportance?>(0);
    lazy protocol witness table accessor for type ProxyCodable<AXCustomContentImportance?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<AXCustomContentImportance?> and conformance ProxyCodable<A>, protocol conformance descriptor for ProxyCodable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t CodableAccessibilityCustomContentList.CodableEntry.CodableValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys, &unk_1F006A3A0, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v14[0] = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v17 = -1;
  v18 = 0;
  v19 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v11;
    LOBYTE(v12) = 0;
    v14[0] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v20 = 1;
    lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?(&v12, v15);
    type metadata accessor for ProxyCodable<AXCustomContentImportance?>(0);
    v20 = 2;
    lazy protocol witness table accessor for type ProxyCodable<AXCustomContentImportance?> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<AXCustomContentImportance?> and conformance ProxyCodable<A>, protocol conformance descriptor for ProxyCodable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v18 = v12;
    v19 = v13;
    outlined init with copy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue(v14, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue(v14);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys()
{
  v1 = 0x746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6E6174726F706D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7261656C63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableAccessibilityCustomContentList.CodableEntry.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys, &unk_1F006A208, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *(v3 + 8);
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = *(v3 + 16);
  v14 = *(v3 + 40);
  v23 = *v3;
  v24 = v10;
  v25 = v13;
  v26 = v11;
  v27 = v12;
  v28 = v14;
  v29 = 0;
  outlined copy of AccessibilityText?(v23, v10, v13);
  outlined copy of AccessibilityText?(v11, v12, v14);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    v15 = v26;
    v16 = v27;
    v17 = v28;
    outlined consume of AccessibilityText?(v23, v24, v25);
    v18.n128_f64[0] = outlined consume of AccessibilityText?(v15, v16, v17);
  }

  else
  {
    v19 = v26;
    v20 = v27;
    v21 = v28;
    outlined consume of AccessibilityText?(v23, v24, v25);
    outlined consume of AccessibilityText?(v19, v20, v21);
    LOBYTE(v23) = 1;
    lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6, v18);
}

void CodableAccessibilityCustomContentList.CodableEntry.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodableEntry.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys, &unk_1F006A208, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = v11;
    v25 = 0;
    lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableKey and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableKey();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v12;
    v17 = *v13;
    v18 = *&v13[8];
    v19 = *&v13[24];
    v25 = 1;
    lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodableValue and conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v22 = *&v13[16];
    v23 = v14;
    v24 = v15;
    v20 = v12;
    v21 = *v13;
    outlined init with copy of CodableAccessibilityCustomContentList.CodableEntry(&v16, v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined destroy of CodableAccessibilityCustomContentList.CodableEntry(&v16);
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys()
{
  if (*v0)
  {
    return 0x56656C6261646F63;
  }

  else
  {
    return 0x4B656C6261646F63;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4B656C6261646F63 && a2 == 0xEA00000000007965;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x56656C6261646F63 && a2 == 0xEC00000065756C61)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry.CodingKeys and conformance CodableAccessibilityCustomContentList.CodableEntry.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *CodableAccessibilityCustomContentList.customContentList.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v56 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v57 = v2;
      v58 = v1;
      outlined init with copy of CodableAccessibilityCustomContentList.CodableEntry(v2, v80);
      v3 = 0;
      v4 = 0;
      v5 = 0x1FFFFFFFELL;
      if (v81 == 0xFF)
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
      }

      else
      {
        v55 = v81;
        v6 = v84;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        if (v84 != 255)
        {
          v20 = v80[0];
          v19 = v80[1];
          v22 = v82;
          v21 = v83;
          type metadata accessor for AccessibilityTextStorage();
          v10 = swift_allocObject();
          v53 = v20;
          v54 = v19;
          *(v10 + 16) = v20;
          *(v10 + 24) = v19;
          *(v10 + 32) = v55 & 1;
          *(v10 + 33) = HIBYTE(v55) & 1;
          v23 = swift_allocObject();
          *(v23 + 16) = v22;
          *(v23 + 24) = v21;
          *(v23 + 32) = v6 & 1;
          *(v23 + 33) = HIBYTE(v6) & 1;
          LOBYTE(v63[0]) = 1;
          *&v73[8] = xmmword_18DDC8E80;
          *v73 = v10;
          v8 = MEMORY[0x1E69E7CC0];
          *&v73[24] = MEMORY[0x1E69E7CC0];
          v74 = v23;
          LOBYTE(v75) = 1;
          *(&v75 + 1) = MEMORY[0x1E69E7CC0];
          if (v85)
          {
            v7 = v23;
            v50 = v22;
            v51 = v21;
            v52 = v6;
            v4 = 0;
            v9 = 0;
            v45 = 0;
            v46 = 0;
            v48 = 0;
            v49 = 0;
            v15 = 0;
            v47 = 0;
            v24 = 2;
            v5 = 0x8000000000000001;
            v12 = MEMORY[0x1E69E7CC0];
LABEL_19:
            v11 = v75;
            outlined copy of AccessibilityText?(v53, v54, v55);
            outlined copy of AccessibilityText?(v50, v51, v52);
            v3 = v24;
            v13 = v48;
            v17 = v49;
            v16 = v46;
            v14 = v47;
            v18 = v45;
            goto LABEL_20;
          }

          outlined init with copy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?(&v86, &v59);
          if (v60[24] == 255)
          {
            outlined copy of AccessibilityText?(v20, v54, v55);
            outlined copy of AccessibilityText?(v22, v21, v6);
            outlined destroy of AccessibilityCustomContentEntry.Value?(&v59, &lazy cache variable for type metadata for CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content?, &unk_1F0069EB8);
          }

          else
          {
            v61 = v59;
            *v62 = *v60;
            *&v62[9] = *&v60[9];
            if ((v88 & 1) == 0)
            {
              v25 = v87;
              v27 = *(&v61 + 1);
              v26 = v61;
              v28 = v62[0];
              v29 = v62[1];
              v52 = v6;
              v50 = v22;
              v51 = v21;
              if (v62[24])
              {
                v63[0] = v61;
                LOWORD(v63[1]) = *v62;
                *&v63[2] = *&v62[16];
                *(&v63[1] + 2) = *&v62[2];
                *(&v63[2] + 1) = v87;
                v24 = 1;
                v31 = *&v62[2] >> 48;
                v30 = *&v63[2];
              }

              else
              {
                v32 = v61;
                v33 = v87;
                v34 = *(&v61 + 1);
                v26 = swift_allocObject();
                v30 = v33;
                v24 = 0;
                *(v26 + 16) = v32;
                *(v26 + 24) = v34;
                *(v26 + 32) = v28 & 1;
                *(v26 + 33) = v29 & 1;
                v63[0] = v26;
                LOBYTE(v63[1]) = 1;
                *(&v63[1] + 1) = MEMORY[0x1E69E7CC0];
                *&v63[2] = v33;
                v31 = MEMORY[0x1E69E7CC0];
                v25 = *(&v63[2] + 1);
                v27 = 0;
              }

              v45 = v25;
              v46 = v31;
              v47 = v27;
              v48 = v26;
              v49 = v30;
              v15 = *&v63[1];
              v9 = *&v73[8];
              v10 = *v73;
              v8 = *&v73[24];
              v5 = *&v73[16];
              v4 = *(&v74 + 1);
              v7 = v74;
              v12 = *(&v75 + 1);
              goto LABEL_19;
            }

            outlined copy of AccessibilityText?(v20, v54, v55);
            outlined copy of AccessibilityText?(v22, v21, v6);
            outlined destroy of CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content(&v61);
          }

          memset(v63, 0, sizeof(v63));
          v64 = -1;
          outlined destroy of AccessibilityCustomContentKey(v73);
          outlined destroy of AccessibilityCustomContentEntry.Value?(v63, &lazy cache variable for type metadata for AccessibilityCustomContentEntry.Value?, &type metadata for AccessibilityCustomContentEntry.Value);
          v4 = 0;
          v7 = 0;
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v3 = 0;
          v5 = 0x1FFFFFFFELL;
        }
      }

LABEL_20:
      *&v65 = v10;
      *(&v65 + 1) = v9;
      *&v66 = v5;
      *(&v66 + 1) = v8;
      *&v67 = v7;
      *(&v67 + 1) = v4;
      *&v68 = v11;
      *(&v68 + 1) = v12;
      *&v69 = v13;
      *(&v69 + 1) = v14;
      *&v70 = v15;
      *(&v70 + 1) = v16;
      *&v71 = v17;
      *(&v71 + 1) = v18;
      v72 = v3;
      outlined destroy of CodableAccessibilityCustomContentList.CodableEntry(v80);
      if (v66 >> 1 == 0xFFFFFFFF)
      {
        outlined destroy of AccessibilityCustomContentEntry.Value?(&v65, &lazy cache variable for type metadata for AccessibilityCustomContentEntry?, &type metadata for AccessibilityCustomContentEntry);
      }

      else
      {
        v76 = v69;
        v77 = v70;
        v78 = v71;
        v79 = v72;
        *v73 = v65;
        *&v73[16] = v66;
        v74 = v67;
        v75 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 2) + 1, 1, v56);
        }

        v36 = *(v56 + 2);
        v35 = *(v56 + 3);
        if (v36 >= v35 >> 1)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v56);
        }

        *(v56 + 2) = v36 + 1;
        v37 = &v56[120 * v36];
        v38 = *v73;
        v39 = *&v73[16];
        v40 = v75;
        *(v37 + 4) = v74;
        *(v37 + 5) = v40;
        *(v37 + 2) = v38;
        *(v37 + 3) = v39;
        v41 = v76;
        v42 = v77;
        v43 = v78;
        v37[144] = v79;
        *(v37 + 7) = v42;
        *(v37 + 8) = v43;
        *(v37 + 6) = v41;
      }

      v2 = v57 + 15;
      v1 = v58 - 1;
      if (v58 == 1)
      {
        return v56;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t CodableAccessibilityCustomContentList.encode(to:)(void *a1, uint64_t a2)
{
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableAccessibilityCustomContentList.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys, &unk_1F0069F48, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[1] = a2;
  type metadata accessor for [CodableAccessibilityCustomContentList.CodableEntry](0, &lazy cache variable for type metadata for [CodableAccessibilityCustomContentList.CodableEntry], &type metadata for CodableAccessibilityCustomContentList.CodableEntry, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [CodableAccessibilityCustomContentList.CodableEntry] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAccessibilityCustomContentList.CodableEntry] and conformance <A> [A], lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry and conformance CodableAccessibilityCustomContentList.CodableEntry, MEMORY[0x1E69E6300]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

void protocol witness for CodingKey.init(stringValue:) in conformance CodableAccessibilityCustomContentList.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x45656C6261646F63 && a2 == 0xEE0073656972746ELL)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableAccessibilityCustomContentList.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableAccessibilityCustomContentList.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance CodableAccessibilityCustomContentList@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized CodableAccessibilityCustomContentList.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t specialized static AccessibilityCustomContentEntry.== infix(_:_:)(uint64_t *a1, __int128 *a2)
{
  v4 = *(a1 + 1);
  v28[0] = *a1;
  v28[1] = v4;
  v5 = *(a1 + 3);
  v7 = *a1;
  v6 = *(a1 + 1);
  v28[2] = *(a1 + 2);
  v28[3] = v5;
  v24 = v7;
  v25 = v6;
  v8 = *(a1 + 3);
  v26 = *(a1 + 2);
  v27 = v8;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v29[2] = a2[2];
  v29[3] = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v29[0] = v9;
  v29[1] = v12;
  v20 = v14;
  v21 = v10;
  v15 = a2[3];
  v22 = v13;
  v23 = v15;
  outlined init with copy of AccessibilityCustomContentKey(v28, v31);
  outlined init with copy of AccessibilityCustomContentKey(v29, v31);
  v16 = specialized static AccessibilityCustomContentKey.== infix(_:_:)(&v24, &v20);
  v30[0] = v20;
  v30[1] = v21;
  v30[2] = v22;
  v30[3] = v23;
  outlined destroy of AccessibilityCustomContentKey(v30);
  v31[0] = v24;
  v31[1] = v25;
  v31[2] = v26;
  v31[3] = v27;
  outlined destroy of AccessibilityCustomContentKey(v31);
  if (v16)
  {
    v18 = specialized static AccessibilityCustomContentEntry.Value.== infix(_:_:)(a1 + 8, a2 + 8, v17);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t specialized static AccessibilityCustomContentEntry.Value.== infix(_:_:)(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  outlined init with copy of AccessibilityCustomContentEntry.Value(a1, v30);
  outlined init with copy of AccessibilityCustomContentEntry.Value(a2, &v32);
  if (!v31)
  {
    outlined init with copy of AccessibilityCustomContentEntry.Value(v30, &v25);
    v10 = v25;
    v11 = v26;
    v12 = v27;
    if (v35)
    {
      outlined consume of Text.Storage(v25, *(&v25 + 1), v26);

LABEL_16:
      _s7SwiftUI4TextV14ResolvedStringVWOhTm_1(v30, type metadata accessor for (AccessibilityCustomContentEntry.Value, AccessibilityCustomContentEntry.Value));
      return 0;
    }

    v14 = v28;
    v15 = v32;
    v16 = v33.i8[0];
    v17 = v33.i64[1];
    if (v26)
    {
      if (v33.i8[0])
      {
        v22 = v34.i64[0];
        v21 = *(*v25 + 96);
        v18 = v28;
        outlined copy of Text.Storage(v25, *(&v25 + 1), 1);
        outlined copy of Text.Storage(v15, *(&v15 + 1), 1);
        v14 = v18;
        LOBYTE(v18) = v21(v15);
        outlined consume of Text.Storage(v15, *(&v15 + 1), 1);
        outlined consume of Text.Storage(v10, *(&v10 + 1), 1);
        if (v18)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v16 = 0;
        v11 = 1;
      }
    }

    else if (v33.i8[0])
    {
      v11 = 0;
      v16 = 1;
    }

    else
    {
      v22 = v34.i64[0];
      if (v25 == v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_29:
        _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v12, v17);
        v20 = v19;
        outlined consume of Text.Storage(v15, *(&v15 + 1), v16);

        outlined consume of Text.Storage(v10, *(&v10 + 1), v11);

        if (v20)
        {
          v7 = v14 == v22;
          goto LABEL_6;
        }

        goto LABEL_25;
      }
    }

    outlined consume of Text.Storage(v15, *(&v15 + 1), v16);

    outlined consume of Text.Storage(v10, *(&v10 + 1), v11);

    goto LABEL_25;
  }

  if (v31 != 1)
  {
    if (v35 == 2)
    {
      v13 = vorrq_s8(v33, v34);
      if (!(*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | *(&v32 + 1) | v32))
      {
        outlined destroy of AccessibilityCustomContentEntry.Value(v30);
        return 1;
      }
    }

    goto LABEL_16;
  }

  outlined init with copy of AccessibilityCustomContentEntry.Value(v30, &v25);
  if (v35 != 1)
  {
    outlined destroy of AnyAccessibilityValue(&v25);
    goto LABEL_16;
  }

  v4 = v29;
  v5 = v34.i64[1];
  v23[0] = v32;
  v23[1] = v33;
  v24 = v34.i64[0];
  v6 = specialized AnyAccessibilityValue.isEqual(to:)(v23, &v25);
  outlined destroy of AnyAccessibilityValue(v23);
  outlined destroy of AnyAccessibilityValue(&v25);
  if ((v6 & 1) == 0)
  {
LABEL_25:
    outlined destroy of AccessibilityCustomContentEntry.Value(v30);
    return 0;
  }

  v7 = v4 == v5;
LABEL_6:
  v8 = v7;
  outlined destroy of AccessibilityCustomContentEntry.Value(v30);
  return v8;
}

BOOL specialized static AccessibilityCustomContentKey.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[4];
  v5 = a1[5];
  v7 = *(a1 + 48);
  v8 = a1[7];
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  if (v4 < 0)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    if (v4)
    {
      if ((v11 & 1) == 0)
      {
        return 0;
      }

      v33 = *(a2 + 40);
      v34 = a1[5];
      v35 = *(a2 + 56);
      v36 = a1[7];
      v30 = *(*v2 + 96);
      v37 = a1[3];
      v38 = *(a2 + 24);

      outlined copy of Text.Storage(v9, v10, 1);

      outlined copy of Text.Storage(v2, v3, 1);
      if ((v30(v9) & 1) == 0)
      {
LABEL_27:
        outlined consume of Text.Storage(v9, v10, v11 & 1);

        outlined consume of Text.Storage(v2, v3, v4 & 1);

        return 0;
      }
    }

    else
    {
      if (v11)
      {
        return 0;
      }

      v37 = a1[3];
      v38 = *(a2 + 24);
      v33 = *(a2 + 40);
      v34 = a1[5];
      v35 = *(a2 + 56);
      v36 = a1[7];
      if (__PAIR128__(v3, v2) == __PAIR128__(v10, v9))
      {

        outlined copy of Text.Storage(v2, v3, 0);

        outlined copy of Text.Storage(v2, v3, 0);
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined copy of Text.Storage(v9, v10, 0);

        outlined copy of Text.Storage(v2, v3, 0);
        if ((v31 & 1) == 0)
        {
          goto LABEL_27;
        }
      }
    }

    _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v37, v38);
    v32 = v29;
    outlined consume of Text.Storage(v9, v10, v11 & 1);

    outlined consume of Text.Storage(v2, v3, v4 & 1);

    v15 = v35;
    v8 = v36;
    v12 = v33;
    v5 = v34;
    if ((v32 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v11 < 0)
  {
    return 0;
  }

  if (v2 != v9 || v3 != v10)
  {
    v16 = *(a2 + 40);
    v17 = a1[7];
    v18 = *(a2 + 56);
    v19 = a1[5];
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v12 = v16;
    v5 = v19;
    v15 = v18;
    v8 = v17;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_6:
  if (v7)
  {
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    v21 = v8;
    v22 = v15;
    v23 = (*(*v6 + 96))(v13);
    v15 = v22;
    v8 = v21;
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v14)
    {
      return 0;
    }

    if (v6 != v13 || v5 != v12)
    {
      v24 = v8;
      v25 = v15;
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v15 = v25;
      v8 = v24;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v8, v15);
  return (v27 & 1) != 0;
}

uint64_t specialized static AccessibilityCustomContentKey.Identifier.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 0)
  {
    if (a7 < 0)
    {
      if (a3)
      {
        if ((a7 & 1) == 0)
        {
          return 0;
        }

        v9 = a8;
        v10 = a4;
        v11 = (*(*a1 + 96))(a5, a2);
        a4 = v10;
        a8 = v9;
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (a7)
        {
          return 0;
        }

        if (a1 != a5 || a2 != a6)
        {
          v12 = a4;
          v13 = a8;
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          a4 = v12;
          a8 = v13;
          if ((v14 & 1) == 0)
          {
            return 0;
          }
        }
      }

      _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(a4, a8);
      if (v15)
      {
        return 1;
      }
    }

    return 0;
  }

  if (a7 < 0)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *specialized CodableAccessibilityCustomContentList.init(from:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityCustomContentList.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys, &unk_1F0069F48, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodingKeys and conformance CodableAccessibilityCustomContentList.CodingKeys();
  v9 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    type metadata accessor for [CodableAccessibilityCustomContentList.CodableEntry](0, &lazy cache variable for type metadata for [CodableAccessibilityCustomContentList.CodableEntry], &type metadata for CodableAccessibilityCustomContentList.CodableEntry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [CodableAccessibilityCustomContentList.CodableEntry] and conformance <A> [A](&lazy protocol witness table cache variable for type [CodableAccessibilityCustomContentList.CodableEntry] and conformance <A> [A], lazy protocol witness table accessor for type CodableAccessibilityCustomContentList.CodableEntry and conformance CodableAccessibilityCustomContentList.CodableEntry, MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

double outlined copy of AccessibilityCustomContentKey.Identifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

double destroy for AccessibilityCustomContentKey(uint64_t a1)
{
  outlined consume of AccessibilityCustomContentKey.Identifier(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));

  return result;
}

double outlined consume of AccessibilityCustomContentKey.Identifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
    outlined consume of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityCustomContentKey(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of AccessibilityCustomContentKey.Identifier(*a2, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  LOBYTE(v6) = *(a2 + 48);
  outlined copy of Text.Storage(v8, v9, v6);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for AccessibilityCustomContentKey(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of AccessibilityCustomContentKey.Identifier(*a2, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  outlined consume of AccessibilityCustomContentKey.Identifier(v8, v9, v10, v11);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  LOBYTE(v6) = *(a2 + 48);
  outlined copy of Text.Storage(v12, v13, v6);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = v6;
  outlined consume of Text.Storage(v14, v15, v16);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for AccessibilityCustomContentKey(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  outlined consume of AccessibilityCustomContentKey.Identifier(v4, v5, v6, v7);
  v9 = *(a2 + 48);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
  outlined consume of Text.Storage(v10, v11, v12);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityCustomContentKey(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

uint64_t storeEnumTagSinglePayload for AccessibilityCustomContentKey(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for AccessibilityCustomContentEntry(uint64_t a1)
{
  outlined consume of AccessibilityCustomContentKey.Identifier(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));

  if (*(a1 + 112) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((a1 + 64));
  }

  else if (!*(a1 + 112))
  {
    outlined consume of Text.Storage(*(a1 + 64), *(a1 + 72), *(a1 + 80));
  }
}

uint64_t initializeWithCopy for AccessibilityCustomContentEntry(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of AccessibilityCustomContentKey.Identifier(*a2, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  LOBYTE(v6) = *(a2 + 48);
  outlined copy of Text.Storage(v8, v9, v6);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  v10 = *(a2 + 112);

  if (v10 == 1)
  {
    v15 = *(a2 + 88);
    *(a1 + 88) = v15;
    (**(v15 - 8))(a1 + 64, a2 + 64);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = 1;
  }

  else if (v10)
  {
    v16 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v16;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
  }

  else
  {
    v11 = *(a2 + 64);
    v12 = *(a2 + 72);
    v13 = *(a2 + 80);
    outlined copy of Text.Storage(v11, v12, v13);
    *(a1 + 64) = v11;
    *(a1 + 72) = v12;
    *(a1 + 80) = v13;
    v14 = *(a2 + 96);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = v14;
    *(a1 + 112) = 0;
  }

  return a1;
}

uint64_t assignWithCopy for AccessibilityCustomContentEntry(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of AccessibilityCustomContentKey.Identifier(*a2, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  outlined consume of AccessibilityCustomContentKey.Identifier(v8, v9, v10, v11);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  LOBYTE(v6) = *(a2 + 48);
  outlined copy of Text.Storage(v12, v13, v6);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 48) = v6;
  outlined consume of Text.Storage(v14, v15, v16);
  *(a1 + 56) = *(a2 + 56);

  if (a1 != a2)
  {
    outlined destroy of AccessibilityCustomContentEntry.Value(a1 + 64);
    if (*(a2 + 112) == 1)
    {
      v20 = *(a2 + 88);
      *(a1 + 88) = v20;
      *(a1 + 96) = *(a2 + 96);
      (**(v20 - 8))(a1 + 64, a2 + 64);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = 1;
    }

    else if (*(a2 + 112))
    {
      v21 = *(a2 + 64);
      v22 = *(a2 + 80);
      v23 = *(a2 + 96);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 80) = v22;
      *(a1 + 96) = v23;
      *(a1 + 64) = v21;
    }

    else
    {
      v17 = *(a2 + 64);
      v18 = *(a2 + 72);
      v19 = *(a2 + 80);
      outlined copy of Text.Storage(v17, v18, v19);
      *(a1 + 64) = v17;
      *(a1 + 72) = v18;
      *(a1 + 80) = v19;
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for AccessibilityCustomContentEntry(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  outlined consume of AccessibilityCustomContentKey.Identifier(v4, v5, v6, v7);
  v9 = *(a2 + 48);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
  outlined consume of Text.Storage(v10, v11, v12);
  *(a1 + 56) = *(a2 + 56);

  if (a1 != a2)
  {
    outlined destroy of AccessibilityCustomContentEntry.Value(a1 + 64);
    v13 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v13;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityCustomContentEntry(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

uint64_t storeEnumTagSinglePayload for AccessibilityCustomContentEntry(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *initializeWithCopy for AccessibilityCustomContentKey.Identifier(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of AccessibilityCustomContentKey.Identifier(*a2, v4, v5, v6);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

uint64_t *assignWithCopy for AccessibilityCustomContentKey.Identifier(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  outlined copy of AccessibilityCustomContentKey.Identifier(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  outlined consume of AccessibilityCustomContentKey.Identifier(v7, v8, v9, v10);
  return a1;
}

uint64_t *assignWithTake for AccessibilityCustomContentKey.Identifier(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v7 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v7;
  outlined consume of AccessibilityCustomContentKey.Identifier(v3, v5, v4, v6);
  return a1;
}

void destroy for AccessibilityCustomContentEntry.Value(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 == 1)
  {

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else if (!v2)
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }
}

uint64_t initializeWithCopy for AccessibilityCustomContentEntry.Value(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 48);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v9 = *(a2 + 3);
    *(a1 + 24) = v9;
    (**(v9 - 8))(a1);
    *(a1 + 40) = a2[5];
    v11 = 1;
LABEL_8:
    *(a1 + 48) = v11;
    return a1;
  }

  if (v3)
  {
    v12 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v12;
    *(a1 + 32) = *(a2 + 2);
    v11 = *(a2 + 48);
    goto LABEL_8;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v8 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;

  return a1;
}

uint64_t assignWithCopy for AccessibilityCustomContentEntry.Value(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 48);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else if (!v4)
    {
      outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
    }

    v5 = *(a2 + 48);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v9 = *(a2 + 3);
      *(a1 + 24) = v9;
      *(a1 + 32) = *(a2 + 4);
      (**(v9 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = 1;
    }

    else if (v5)
    {
      v10 = *a2;
      v11 = a2[1];
      v12 = a2[2];
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 16) = v11;
      *(a1 + 32) = v12;
      *a1 = v10;
    }

    else
    {
      v6 = *a2;
      v7 = *(a2 + 1);
      v8 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v7, v8);
      *a1 = v6;
      *(a1 + 8) = v7;
      *(a1 + 16) = v8;
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 32) = *(a2 + 4);
      *(a1 + 48) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for AccessibilityCustomContentEntry.Value(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(result + 48);
  if (v3 >= 2)
  {
    v3 = *result + 2;
  }

  if (v3 == 1)
  {
    v4 = result;
    __swift_destroy_boxed_opaque_existential_1(result);
    goto LABEL_8;
  }

  if (!v3)
  {
    v4 = result;
    outlined consume of Text.Storage(*result, *(result + 8), *(result + 16));

LABEL_8:
    result = v4;
  }

  v5 = *(a2 + 48);
  if (v5 >= 2)
  {
    v5 = *a2 + 2;
  }

  if (v5 == 1)
  {
    v7 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v7;
    *(result + 32) = *(a2 + 32);
  }

  else
  {
    if (!v5)
    {
      v6 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v6;
      *(result + 32) = *(a2 + 32);
      *(result + 48) = 0;
      return result;
    }

    v8 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v8;
    *(result + 32) = *(a2 + 32);
    LOBYTE(v5) = *(a2 + 48);
  }

  *(result + 48) = v5;
  return result;
}
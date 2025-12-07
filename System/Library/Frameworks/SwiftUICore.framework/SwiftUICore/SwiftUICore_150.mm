void EnvironmentValues.watchDisplayVariant.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019WatchDisplayVariantF0VG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE019WatchDisplayVariantK0VG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

SwiftUI::WatchDisplayVariant_optional __swiftcall WatchDisplayVariant.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 0xA)
  {
    v2 = 1;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void lazy protocol witness table accessor for type _DeviceVariant and conformance _DeviceVariant()
{
  if (!lazy protocol witness table cache variable for type _DeviceVariant and conformance _DeviceVariant)
  {
    swift_getWitnessTable(protocol conformance descriptor for _DeviceVariant, &type metadata for _DeviceVariant, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _DeviceVariant and conformance _DeviceVariant);
  }
}

void lazy protocol witness table accessor for type WatchDisplayVariant and conformance WatchDisplayVariant()
{
  if (!lazy protocol witness table cache variable for type WatchDisplayVariant and conformance WatchDisplayVariant)
  {
    swift_getWitnessTable(protocol conformance descriptor for WatchDisplayVariant, &type metadata for WatchDisplayVariant, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type WatchDisplayVariant and conformance WatchDisplayVariant);
  }
}

{
  if (!lazy protocol witness table cache variable for type WatchDisplayVariant and conformance WatchDisplayVariant)
  {
    swift_getWitnessTable(protocol conformance descriptor for WatchDisplayVariant, &type metadata for WatchDisplayVariant, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type WatchDisplayVariant and conformance WatchDisplayVariant);
  }
}

uint64_t static TimeDataFormatting.FormatTransition.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (static ClosedRange.== infix(_:_:)())
  {
    v14[0] = a3;
    v14[1] = a4;
    v14[2] = a5;
    v14[3] = a6;
    v14[4] = a7;
    type metadata accessor for TimeDataFormatting.FormatTransition(0, v14);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t TimeDataFormatting.FormatTransition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x66666F646E6168 && a2 == 0xE700000000000000)
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

uint64_t TimeDataFormatting.FormatTransition.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x66666F646E6168;
  }

  else
  {
    return 0x65676E6172;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimeDataFormatting.FormatTransition<A>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  Pair.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TimeDataFormatting.FormatTransition<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = TimeDataFormatting.FormatTransition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance TimeDataFormatting.FormatTransition<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static _AttributeBody.comparisonMode.getter in conformance ResetDeltaModifier.ChildPhase();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataFormatting.FormatTransition<A>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.FormatTransition<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataFormatting.FormatTransition<A>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.FormatTransition<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeDataFormatting.FormatTransition.encode(to:)(void *a1, uint64_t a2)
{
  v11 = *(a2 + 24);
  v12 = *(a2 + 40);
  v16 = v11;
  v17 = v12;
  v3 = type metadata accessor for TimeDataFormatting.FormatTransition.CodingKeys(255, &v15);
  swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.FormatTransition<A>.CodingKeys, v3);
  v4 = type metadata accessor for KeyedEncodingContainer();
  v13 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  v7 = type metadata accessor for ClosedRange();
  v18 = v12;
  swift_getWitnessTable(MEMORY[0x1E69E5F98], v7, &v18);
  v8 = v14;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v8)
  {
    return (*(v13 + 8))(v6, v4);
  }

  v10 = v13;
  LOBYTE(v15) = 1;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v10 + 8))(v6, v4);
}

uint64_t TimeDataFormatting.FormatTransition.hash(into:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ClosedRange();
  MEMORY[0x193ABEB50](a1, v4, a2[6]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int TimeDataFormatting.FormatTransition.hashValue.getter(void *a1)
{
  Hasher.init(_seed:)();
  TimeDataFormatting.FormatTransition.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t TimeDataFormatting.FormatTransition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a1;
  v36 = a7;
  v35 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ClosedRange();
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v33 - v13;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v14 = type metadata accessor for TimeDataFormatting.FormatTransition.CodingKeys(255, &v48);
  swift_getWitnessTable(protocol conformance descriptor for TimeDataFormatting.FormatTransition<A>.CodingKeys, v14);
  v45 = type metadata accessor for KeyedDecodingContainer();
  v38 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v16 = &v33 - v15;
  v40 = a2;
  v48 = a2;
  v49 = a3;
  v44 = a4;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v17 = type metadata accessor for TimeDataFormatting.FormatTransition(0, &v48);
  v34 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = v46;
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  v41 = v16;
  v21 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v22 = v20;
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  v23 = v39;
  v24 = v40;
  v25 = v22;
  v47 = v17;
  v26 = v38;
  LOBYTE(v48) = 0;
  v53 = v44;
  v27 = v42;
  swift_getWitnessTable(MEMORY[0x1E69E5FC0], v42, &v53);
  v28 = v41;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v23 + 32))(v19, v43, v27);
  LOBYTE(v48) = 1;
  v29 = v37;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v28, v45);
  v30 = v47;
  (*(v35 + 32))(&v19[*(v47 + 60)], v29, v24);
  v31 = v34;
  (*(v34 + 16))(v36, v19, v30);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return (*(v31 + 8))(v19, v30);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimeDataFormatting.FormatTransition<A>(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  TimeDataFormatting.FormatTransition.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

double AnyInterfaceIdiom.reducedLuminanceBudget(for:)(_BYTE *a1)
{
  result = 0.0;
  if (*a1)
  {
    if (*a1 == 1)
    {
      v3 = *(v1 + 8);
      type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<ComplicationInterfaceIdiom>, &type metadata for ComplicationInterfaceIdiom, &protocol witness table for ComplicationInterfaceIdiom);
      v4 = *(v3 + 16);
      v5 = v4();
      result = 0.0;
      if ((v5 & 1) == 0)
      {
        type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<WidgetInterfaceIdiom>, &type metadata for WidgetInterfaceIdiom, &protocol witness table for WidgetInterfaceIdiom);
        if ((v4() & 1) == 0)
        {
          type metadata accessor for InterfaceIdiomBox<ComplicationInterfaceIdiom>(0, &lazy cache variable for type metadata for InterfaceIdiomBox<WatchInterfaceIdiom>, &type metadata for WatchInterfaceIdiom, &protocol witness table for WatchInterfaceIdiom);
          v4();
        }

        return 60.0;
      }
    }

    else
    {
      return INFINITY;
    }
  }

  return result;
}

uint64_t type metadata completion function for TimeDataFormatting.FormatTransition(uint64_t a1)
{
  result = type metadata accessor for ClosedRange();
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

uint64_t *initializeBufferWithCopyOfBuffer for TimeDataFormatting.FormatTransition(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = v6 + v7;
  v10 = v6 + v7 + ((v6 + v7) & ~v7);
  v11 = (v10 & ~v7) + v6;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v11 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v7 + 16) & v8));
  }

  else
  {
    v15 = *(v5 + 16);
    v15(a1, a2, v4);
    v15(((v3 + v9) & v8), ((a2 + v9) & v8), v4);
    v15(((v3 + v10) & v8), ((a2 + v10) & v8), v4);
  }

  return v3;
}

uint64_t destroy for TimeDataFormatting.FormatTransition(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v9 = *(v4 + 8);
  v9(a1, v3);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + v5;
  v7 = v6 + a1;
  v9(v7 & ~v5, v3);

  return (v9)((v7 + (v6 & ~v5)) & ~v5, v3);
}

uint64_t initializeWithCopy for TimeDataFormatting.FormatTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v7((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v5);
  v7((v9 + a1 + ((v8 + v9) & ~v9) + v8) & ~v9, (v9 + a2 + ((v8 + v9) & ~v9) + v8) & ~v9, v5);
  return a1;
}

uint64_t assignWithCopy for TimeDataFormatting.FormatTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v7((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v5);
  v7((v9 + a1 + ((v8 + v9) & ~v9) + v8) & ~v9, (v9 + a2 + ((v8 + v9) & ~v9) + v8) & ~v9, v5);
  return a1;
}

uint64_t initializeWithTake for TimeDataFormatting.FormatTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v7((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v5);
  v7((v9 + a1 + ((v8 + v9) & ~v9) + v8) & ~v9, (v9 + a2 + ((v8 + v9) & ~v9) + v8) & ~v9, v5);
  return a1;
}

uint64_t assignWithTake for TimeDataFormatting.FormatTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v7((v8 + v9 + a1) & ~v9, (v8 + v9 + a2) & ~v9, v5);
  v7((v9 + a1 + ((v8 + v9) & ~v9) + v8) & ~v9, (v9 + a2 + ((v8 + v9) & ~v9) + v8) & ~v9, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimeDataFormatting.FormatTransition(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80) + ((v6 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *storeEnumTagSinglePayload for TimeDataFormatting.FormatTransition(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

void protocol witness for ShapeStyle.resolve(in:) in conformance Color(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v8 = *a1;
  *a2 = (*(*v4 + 112))(&v8);
  *(a2 + 4) = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
}

uint64_t Color.init<A>(provider:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ColorBox(0, v7, v8, v9);
  (*(v4 + 16))(v6, a1, a2);
  v10 = ColorBox.__allocating_init(_:)(v6);
  (*(v4 + 8))(a1, a2);
  return v10;
}

void ColorProvider.resolveHDR(in:)(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *a1;
  *a3 = (*(a2 + 32))(&v7);
  *(a3 + 4) = v4;
  *(a3 + 8) = v5;
  *(a3 + 12) = v6;
  *(a3 + 16) = 2143289344;
}

uint64_t ColorProvider.colorDescription.getter(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return String.init<A>(describing:)();
}

uint64_t static Color.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

void protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.DisplayP3(uint64_t a1@<X8>)
{
  *a1 = Color.DisplayP3.resolve(in:)(*v1, v1[1], v1[2]);
  *(a1 + 4) = v3;
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  *(a1 + 16) = 2143289344;
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.KeyColorProvider@<D0>(uint64_t a1@<X8>)
{
  result = -0.00781250557;
  *a1 = xmmword_18DDFFF10;
  *(a1 + 16) = 2143289344;
  return result;
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.CustomKeyColorProvider@<D0>(uint64_t a1@<X8>)
{
  v2 = vcvts_n_f32_s64(*v1, 0xAuLL);
  __asm { FMOV            V1.2S, #-1.0 }

  *a1 = _D1;
  *(a1 + 8) = v2;
  result = 2.24711695e307;
  *(a1 + 12) = 0x7FC000003F800000;
  return result;
}

float CustomColorProvider.resolve(in:)(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(a2 + 32) + 48))(&v4, &v3, *(a2 + 16));
  return *&v4;
}

float CustomHDRColorProvider.resolveHDR(in:)@<S0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  (*(*(a2 + 32) + 48))(&v6, &v5, *(a2 + 16));
  result = v7;
  *a3 = v6;
  *(a3 + 16) = result;
  return result;
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance ContentStyle.ID@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized ColorProvider.resolveHDR(in:)(*a1, a1[1], *v2, &v5);
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

Swift::Int Color.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(*a1 + 152))(v3);
  return Hasher._finalize()();
}

uint64_t Color.applyBackgroundMaterial(shape:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (*(a1 + 56))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v4, &v14);

    v5 = v14;
    v6 = v15;
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*(a1 + 48));
    if (!v7)
    {
      return 0;
    }

    v5 = v7[9];
    v6 = v7[10];
    outlined copy of Material?(v5, v6);
  }

  if (v6 != 0xFF)
  {
    v8 = *(a1 + 56);
    v14 = *(a1 + 48);
    v15 = v8;
    v11 = v5;
    v12 = v6;
    v13 = HIDWORD(v6);

    v9 = EnvironmentValues.materialProvider(for:)(&v11);

    if (v9)
    {
      (*(*v9 + 104))(a2, a1);
      outlined consume of Material?(v5, v6);

      return 1;
    }

    outlined consume of Material?(v5, v6);
  }

  return 0;
}

float CustomHDRColorProvider.resolve(in:)(__int128 *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(a2 + 32) + 48))(&v4, &v3, *(a2 + 16));
  return *&v4;
}

uint64_t CustomColorProvider.colorDescription.getter(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return String.init<A>(describing:)();
}

Swift::Int CustomColorProvider.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance CustomHDRColorProvider<A>@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  CustomHDRColorProvider.resolveHDR(in:)(a1, a2, &v5);
  result = *&v5;
  *a3 = v5;
  *(a3 + 16) = v6;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomColorProvider<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  Hasher.init(_seed:)();
  a4(v7, a2);
  return Hasher._finalize()();
}

uint64_t static ColorBox.deserialize(from:)(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*(*(v1 + 184) + 16) + 16))(v3);
  if (!v2)
  {
    return ColorBox.__allocating_init(_:)(v5);
  }

  return result;
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance ColorBox<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static ColorBox.deserialize(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id ObjcColor.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC7SwiftUI9ObjcColor_color] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ObjcColor.init(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC7SwiftUI9ObjcColor_color] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Int ObjcColor.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI9ObjcColor_color);
  Hasher.init(_seed:)();
  (*(*v1 + 152))(v3);
  return Hasher._finalize()();
}

id ObjcColor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjcColor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ColorProvider.colorDescription.getter in conformance Color.NamedColor(uint64_t a1)
{
  v2 = *(v1 + 16);

  return String.init<A>(describing:)();
}

void protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.HierarchicalOpacityColor(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = *v2;
  v6 = v2[1];
  v12 = v4;
  v13 = v5;
  v8 = (*(*v7 + 168))(v6, &v12);
  v12 = v4;
  v13 = v5;
  *a2 = (*(*v7 + 112))(&v12);
  *(a2 + 4) = v10;
  *(a2 + 8) = v11;
  *(a2 + 12) = v8 * v9;
  *(a2 + 16) = 2143289344;
}

void protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.DestinationOverProvider(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = a1[1];
  v6 = *v2;
  v7 = v2[1];
  v23 = *a1;
  v4 = v23;
  v24 = v5;
  v8 = (*(*v6 + 112))(&v23);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v23 = v4;
  v24 = v5;
  v15 = (*(*v7 + 112))(&v23);
  Color.Resolved.over(_:)(v15, v16, v17, v18, v8, v10, v12, v14);
  *a2 = v19;
  a2[1] = v20;
  a2[2] = v21;
  a2[3] = v22;
  a2[4] = 2143289344;
}

uint64_t protocol witness for ColorProvider.colorDescription.getter in conformance Color.DestinationOverProvider(uint64_t a1)
{

  return String.init<A>(describing:)();
}

void protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.MixProvider(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v7 = *(v2 + 1);
  v8 = v2[5];
  v26 = *(v2 + 16);
  v24 = v4;
  v25 = v5;
  v9 = (*(*v6 + 112))(&v24);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v24 = v4;
  v25 = v5;
  v16 = (*(*v7 + 112))(&v24);
  ResolvedGradient.ColorSpace.mix(_:_:by:)(v9, v11, v13, v15, v16, v17, v18, v19, v8);
  *a2 = v20;
  a2[1] = v21;
  a2[2] = v22;
  a2[3] = v23;
  a2[4] = 2143289344;
}

uint64_t protocol witness for ColorProvider.colorDescription.getter in conformance Color.MixProvider(uint64_t a1)
{

  return String.init<A>(describing:)();
}

void protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.SettingOpacityProvider(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 2);
  v8 = *a1;
  *a2 = (*(*v4 + 112))(&v8);
  *(a2 + 4) = v6;
  *(a2 + 8) = v7;
  *(a2 + 12) = v5;
  *(a2 + 16) = 2143289344;
}

double protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.TintAdjustmentProvider@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized ColorProvider.resolveHDR(in:)(*a1, a1[1], *v2, &v5);
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

float protocol witness for ColorProvider.resolveHDR(in:) in conformance Color.DesaturatedColor@<S0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v10 = *a1;
  v5 = (*(*v4 + 112))(&v10);
  result = (v7 * 0.0722) + ((v5 * 0.2126) + (v6 * 0.7152));
  *a2 = result;
  *(a2 + 4) = result;
  *(a2 + 8) = result;
  *(a2 + 12) = v9 * 0.8;
  *(a2 + 16) = 2143289344;
  return result;
}

uint64_t specialized ColorProvider.opacity(at:environment:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {

    v5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(v4);
    v7 = v6;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(*a2);
    if (v8)
    {
      v5 = v8[9];
      v7 = v8[10];
    }

    else
    {
      v7 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
      v5 = &type metadata for CoreUIDefaultSystemColorDefinition;
    }
  }

  v10[0] = v4;
  v10[1] = v3;
  return (v7[2])(a1, v10, v5, v7);
}

uint64_t View._onBindingChange<A>(_:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a6;
  v26 = a8;
  v27 = a4;
  v25 = a2;
  v12 = type metadata accessor for Binding(0, a5, a3, a4);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v17 = type metadata accessor for _BindingActionModifier(0, a5, a7, v16);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v24 - v20;
  (*(v13 + 16))(v15, a1, v12, v19);
  _BindingActionModifier.init(binding:action:)(v15, v25, a3, a5, a7, v21);
  View.modifier<A>(_:)();
  v22 = *(v18 + 8);

  return v22(v21, v17);
}

uint64_t _BindingActionModifier.init(binding:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Binding(0, a4, a3, a4);
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for _BindingActionModifier(0, a4, a5, v13);
  v15 = (a6 + *(result + 36));
  *v15 = a2;
  v15[1] = a3;
  return result;
}

uint64_t _BindingActionModifier.binding.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for Binding(0, *(a1 + 16), a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, v4, v6);
}

uint64_t _BindingActionModifier.binding.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Binding(0, *(a2 + 16), a3, a4);
  v7 = *(*(v6 - 8) + 40);

  return v7(v4, a1, v6);
}

double key path getter for _BindingActionModifier.action : <A>_BindingActionModifier<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)(uint64_t a1)@<X8>)
{
  v9 = *(a2 + a3 - 16);
  v8 = *(a1 + *(type metadata accessor for _BindingActionModifier(0, *(a2 + a3 - 16), *(a2 + a3 - 8), a4) + 36));
  v6 = swift_allocObject();
  *(v6 + 16) = v9;
  *(v6 + 32) = v8;
  *a5 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> ();
  a5[1] = v6;

  return result;
}

void key path setter for _BindingActionModifier.action : <A>_BindingActionModifier<A>(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + a4 - 16);
  v9 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = v8;
  *(v5 + 32) = v9;
  v7 = (a2 + *(type metadata accessor for _BindingActionModifier(0, v8, *(&v8 + 1), v6) + 36));

  *v7 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out ());
  v7[1] = v5;
}

uint64_t _BindingActionModifier.action.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

void _BindingActionModifier.action.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t static _BindingActionModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26[1] = a4;
  v27 = a3;
  v26[0] = a7;
  v47 = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v26 - v12;
  v15 = type metadata accessor for BindingActionDispatcher(0, a5, a6, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - v17;
  v19 = *a1;
  v45 = *a2;
  v46 = *(a2 + 2);
  LODWORD(a1) = *(a2 + 6);
  v20 = *(a2 + 44);
  v41 = *(a2 + 28);
  v42 = v20;
  v43 = *(a2 + 60);
  v44 = *(a2 + 76);
  default argument 8 of ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)(&v34);
  v28 = v34;
  v29 = DWORD2(v34);
  v30 = BYTE12(v34);
  (*(*(a5 - 8) + 56))(v13, 1, 1, a5);
  BindingActionDispatcher.init(modifier:phase:cycleDetector:lastValue:lastAction:lastResetSeed:)(v19, a1, &v28, v13, 0, 0, 0, a5, v18, a6);
  v32 = v15;
  swift_getWitnessTable(protocol conformance descriptor for BindingActionDispatcher<A>, v15);
  v33 = v21;
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, partial apply for closure #1 in Attribute.init<A>(_:), v31, v15, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  (*(v16 + 8))(v18, v15);
  v24 = AGGraphSetFlags();
  v34 = v45;
  v35 = v46;
  v36 = a1;
  v37 = v41;
  v38 = v42;
  v39 = v43;
  v40 = v44;
  return v27(v24, &v34);
}

uint64_t BindingActionDispatcher.init(modifier:phase:cycleDetector:lastValue:lastAction:lastResetSeed:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = *(a3 + 8);
  v16 = *(a3 + 12);
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = *a3;
  *(a9 + 16) = v15;
  *(a9 + 20) = v16;
  v17 = type metadata accessor for BindingActionDispatcher(0, a8, a10, a4);
  v18 = v17[11];
  v19 = type metadata accessor for Optional();
  result = (*(*(v19 - 8) + 32))(a9 + v18, a4, v19);
  v21 = (a9 + v17[12]);
  *v21 = a5;
  v21[1] = a6;
  *(a9 + v17[13]) = a7;
  return result;
}

uint64_t static _BindingActionModifier._makeViewList(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a3;
  v35 = a4;
  v33 = a7;
  v42 = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - v12;
  v15 = type metadata accessor for BindingActionDispatcher(0, a5, a6, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v19 = *a1;
  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v20 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_7:
      v22 = type metadata accessor for _BindingActionModifier(0, a5, a6, v21);
      LODWORD(v39) = v19;
      return static ViewModifier.makeMultiViewList(modifier:inputs:body:)(&v39, a2, v34, v35, v22, &protocol witness table for _BindingActionModifier<A>);
    }
  }

  else if (static Semantics.forced < v20)
  {
    goto LABEL_7;
  }

  v24 = *(a2 + 24);
  default argument 8 of ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)(&v39);
  v36 = v39;
  v37 = v40;
  v38 = v41;
  (*(*(a5 - 8) + 56))(v13, 1, 1, a5);
  v25 = BindingActionDispatcher.init(modifier:phase:cycleDetector:lastValue:lastAction:lastResetSeed:)(v19, v24, &v36, v13, 0, 0, 0, a5, v18, a6);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v31 = v15;
  swift_getWitnessTable(protocol conformance descriptor for BindingActionDispatcher<A>, v15, v26);
  v32 = v27;
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, closure #1 in Attribute.init<A>(_:)partial apply, (&v33 - 4), v15, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v29);
  (*(v16 + 8))(v18, v15);
  v30 = AGGraphSetFlags();
  return (v34)(v30, a2);
}

uint64_t BindingActionDispatcher.modifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for _BindingActionModifier(0, *(a1 + 16), *(a1 + 24), a2);
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

uint64_t BindingActionDispatcher.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a1 + 16);
  v56 = *(a1 + 24);
  v8 = type metadata accessor for _BindingActionModifier(0, v7, v56, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - v10;
  v12 = *(v7 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  Value = AGGraphGetValue();
  v20 = *(a1 + 52);
  if (*(v5 + v20) != *Value >> 1)
  {
    *(v5 + v20) = *AGGraphGetValue() >> 1;
    v21 = *(a1 + 44);
    v22 = type metadata accessor for Optional();
    (*(*(v22 - 8) + 8))(v5 + v21, v22);
    (*(v12 + 56))(v5 + v21, 1, 1, v7);
    *(v5 + 12) = 0xFFFFFFFFLL;
    *(v5 + 20) = 0;
  }

  v59 = v12;
  BindingActionDispatcher.modifier.getter(a1, v19, v11);
  v23 = *(v11 + 1);
  v24 = *(v9 + 8);

  v57 = v24;
  v58 = v9 + 8;
  v24(v11, v8);
  v25 = v17;
  v26 = (*(*v23 + 144))(v17);

  if (v26)
  {
    v54 = v8;
    MEMORY[0x1EEE9AC00](v27);
    v28 = v56;
    *(&v53 - 4) = v7;
    *(&v53 - 3) = v28;
    *(&v53 - 2) = v17;
    type metadata accessor for Optional();
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ChangedCallbacks.dispatch(phase:state:), (&v53 - 6), MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v29, &v60);
    if (v60 == 2)
    {
      v8 = v54;
      goto LABEL_15;
    }

    v8 = v54;
    if ((v60 & 1) == 0)
    {
      goto LABEL_15;
    }

    AGGraphClearUpdate();
    v30 = *AGGraphGetValue();
    AGGraphSetUpdate();
    if (*(v5 + 12) == v30)
    {
      v31 = *(v5 + 16);
      if (!v31 || (v32 = v31 - 1, (*(v5 + 16) = v32) == 0))
      {
        if ((*(v5 + 20) & 1) == 0)
        {
          v60 = 0;
          v61 = 0xE000000000000000;
          _StringGuts.grow(_:)(44);

          v60 = 0;
          v61 = 0xE000000000000000;
          _StringGuts.grow(_:)(18);

          v60 = 0x3C676E69646E6942;
          v61 = 0xE800000000000000;
          v33 = _typeName(_:qualified:)();
          MEMORY[0x193ABEDD0](v33);

          MEMORY[0x193ABEDD0](0x6E6F69746361203ELL, 0xE800000000000000);
          MEMORY[0x193ABEDD0](0xD00000000000002ALL, 0x800000018DD75B90);
          specialized static Log.externalWarning(_:)(v60, v61);

          *(v5 + 20) = 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      *(v5 + 12) = v30;
      *(v5 + 16) = 2;
    }

    v34 = (v5 + *(a1 + 48));
    v35 = *v34;
    if (*v34)
    {
      v36 = v34[1];
      LOBYTE(v60) = 17;
      v37 = v59;
      (*(v59 + 16))(v55, v25, v7);
      v38 = (*(v37 + 80) + 48) & ~*(v37 + 80);
      v39 = swift_allocObject();
      v40 = v55;
      v41 = v56;
      v39[2] = v7;
      v39[3] = v41;
      v39[4] = v35;
      v39[5] = v36;
      v42 = v39 + v38;
      v8 = v54;
      (*(v37 + 32))(v42, v40, v7);
      _sxRi_zRi0_zlyxIsegn_SgSQRzlWOy(v35, v36);

      static Update.enqueueAction(reason:_:)(&v60, partial apply for closure #2 in BindingActionDispatcher.updateValue(), v39);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v35, v36);
    }
  }

LABEL_15:
  v43 = *(a1 + 44);
  v44 = type metadata accessor for Optional();
  (*(*(v44 - 8) + 8))(v5 + v43, v44);
  v45 = v59;
  (*(v59 + 16))(v5 + v43, v25, v7);
  (*(v45 + 56))(v5 + v43, 0, 1, v7);
  BindingActionDispatcher.modifier.getter(a1, v46, v11);
  v47 = &v11[*(v8 + 36)];
  v49 = *v47;
  v48 = v47[1];

  v57(v11, v8);
  v50 = (v5 + *(a1 + 48));
  v51 = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(*v50, v50[1]);
  *v50 = v49;
  v50[1] = v48;
  return (*(v45 + 8))(v25, v7, v51);
}

uint64_t type metadata completion function for _BindingActionModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Binding(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _BindingActionModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 16) & ~v6) + *(v5 + 64);
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = *(v5 + 16);

    v14(v12 + 1, v13 + 1, v4);
    v16 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = v16[1];
    v18 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v16;
    v18[1] = v17;
  }

  return a1;
}

double destroy for _BindingActionModifier(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 15;

  (*(*(*(a2 + 16) - 8) + 8))(((v3 & 0xFFFFFFFFFFFFFFF8) + *(*(*(a2 + 16) - 8) + 80) + 8) & ~*(*(*(a2 + 16) - 8) + 80));

  return result;
}

uint64_t *initializeWithCopy for _BindingActionModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = v5 + v10 + 8;
  v12 = v6 + v10 + 8;

  v8(v11 & ~v10, v12 & ~v10, v7);
  v13 = ((v10 + 16) & ~v10) + *(v9 + 48) + 7;
  v14 = a1 + v13;
  v15 = ((a2 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = *v15;
  v16 = v15[1];
  v18 = (v14 & 0xFFFFFFFFFFFFFFF8);
  *v18 = v17;
  v18[1] = v16;

  return a1;
}

uint64_t *assignWithCopy for _BindingActionModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  (*(v8 + 24))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 40) + 7;
  v12 = ((a1 + v11) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((a2 + v11) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  return a1;
}

void *initializeWithTake for _BindingActionModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  (*(v7 + 32))((v5 + v9 + 8) & ~v9, (v6 + v9 + 8) & ~v9);
  v10 = ((v9 + 16) & ~v9) + *(v8 + 32) + 7;
  *((a1 + v10) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v10) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for _BindingActionModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  (*(v8 + 40))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 24) + 7;
  *((a1 + v11) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for _BindingActionModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for _BindingActionModifier(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      v18 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v6 & 0x80000000) != 0)
      {
        v20 = *(v5 + 56);

        return v20((v18 + v8 + 8) & ~v8);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t type metadata completion function for BindingActionDispatcher(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for BindingActionDispatcher(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v9 + 7;
  v11 = (((v9 + 7 + ((v7 + 21) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4;
  v12 = v7 & 0x100000;
  if (v8 > 7 || v12 != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v8 & 0xF8 ^ 0x1F8) & (v8 + 16)));
  }

  else
  {
    *a1 = *a2;
    v16 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v17 = *v16;
    v18 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v20 = *v19;
    *(v18 + 5) = *(v19 + 5);
    *v18 = v20;
    v21 = ((v18 + v8 + 13) & ~v8);
    v22 = ((v19 + v8 + 13) & ~v8);
    if ((*(v5 + 48))((v19 + v8 + 13) & ~v8, 1, v4))
    {
      memcpy(v21, v22, v9);
    }

    else
    {
      (*(v6 + 16))(v21, v22, v4);
      (*(v6 + 56))(v21, 0, 1, v4);
    }

    v23 = (v21 + v10) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v22 + v10) & 0xFFFFFFFFFFFFFFF8;
    if (*v24 < 0xFFFFFFFFuLL)
    {
      *v23 = *v24;
    }

    else
    {
      v25 = *(v24 + 8);
      *v23 = *v24;
      *(v23 + 8) = v25;
    }

    *((v23 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 19) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

double destroy for BindingActionDispatcher(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + *(v3 + 80) + 13) & ~*(v3 + 80);
  if (!(*(v3 + 48))(v4, 1, v2))
  {
    (*(v3 + 8))(v4, v2);
  }

  v6 = v4 + *(v3 + 64);
  if (!*(v3 + 84))
  {
    ++v6;
  }

  if (*((v6 + 7) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

_DWORD *initializeWithCopy for BindingActionDispatcher(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = *v8;
  *(v7 + 5) = *(v8 + 5);
  *v7 = v9;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = ((v7 + v12 + 13) & ~v12);
  v14 = ((v8 + v12 + 13) & ~v12);
  if ((*(v11 + 48))(v14, 1, v10))
  {
    v15 = *(v11 + 84);
    v16 = *(v11 + 64);
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 + 1;
    }

    memcpy(v13, v14, v17);
  }

  else
  {
    (*(v11 + 16))(v13, v14, v10);
    v19 = *(v11 + 56);
    v18 = v11 + 56;
    v19(v13, 0, 1, v10);
    v15 = *(v18 + 28);
    v16 = *(v18 + 8);
  }

  if (v15)
  {
    v20 = v16;
  }

  else
  {
    v20 = v16 + 1;
  }

  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*v22 < 0xFFFFFFFFuLL)
  {
    *v21 = *v22;
  }

  else
  {
    v23 = *(v22 + 8);
    *v21 = *v22;
    *(v21 + 8) = v23;
  }

  *((v21 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithCopy for BindingActionDispatcher(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = ((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v11 + 13 + v7) & ~v11);
  v13 = ((v11 + 13 + v8) & ~v11);
  v14 = *(v10 + 48);
  v15 = v14(v12, 1, v9);
  v16 = v14(v13, 1, v9);
  if (v15)
  {
    if (!v16)
    {
      (*(v10 + 16))(v12, v13, v9);
      (*(v10 + 56))(v12, 0, 1, v9);
      goto LABEL_12;
    }

    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v10 + 24))(v12, v13, v9);
      goto LABEL_12;
    }

    (*(v10 + 8))(v12, v9);
    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  memcpy(v12, v13, v19);
LABEL_12:
  if (*(v10 + 84))
  {
    v20 = *(v10 + 64);
  }

  else
  {
    v20 = *(v10 + 64) + 1;
  }

  v21 = ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = *v22;
  if (*v21 < 0xFFFFFFFFuLL)
  {
    if (v23 >= 0xFFFFFFFF)
    {
      v25 = v22[1];
      *v21 = v23;
      v21[1] = v25;

      goto LABEL_22;
    }

LABEL_21:
    *v21 = *v22;
    goto LABEL_22;
  }

  if (v23 < 0xFFFFFFFF)
  {

    goto LABEL_21;
  }

  v24 = v22[1];
  *v21 = v23;
  v21[1] = v24;

LABEL_22:
  *((v21 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *initializeWithTake for BindingActionDispatcher(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = *v8;
  *(v7 + 5) = *(v8 + 5);
  *v7 = v9;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = ((v7 + v12 + 13) & ~v12);
  v14 = ((v8 + v12 + 13) & ~v12);
  if ((*(v11 + 48))(v14, 1, v10))
  {
    v15 = *(v11 + 84);
    v16 = *(v11 + 64);
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 + 1;
    }

    memcpy(v13, v14, v17);
  }

  else
  {
    (*(v11 + 32))(v13, v14, v10);
    v19 = *(v11 + 56);
    v18 = v11 + 56;
    v19(v13, 0, 1, v10);
    v15 = *(v18 + 28);
    v16 = *(v18 + 8);
  }

  if (v15)
  {
    v20 = v16;
  }

  else
  {
    v20 = v16 + 1;
  }

  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*v22 < 0xFFFFFFFFuLL)
  {
    *v21 = *v22;
  }

  else
  {
    v23 = *(v22 + 8);
    *v21 = *v22;
    *(v21 + 8) = v23;
  }

  *((v21 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for BindingActionDispatcher(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = ((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  *(v7 + 4) = *(v8 + 4);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v11 + 13 + v7) & ~v11);
  v13 = ((v11 + 13 + v8) & ~v11);
  v14 = *(v10 + 48);
  v15 = v14(v12, 1, v9);
  v16 = v14(v13, 1, v9);
  if (v15)
  {
    if (!v16)
    {
      (*(v10 + 32))(v12, v13, v9);
      (*(v10 + 56))(v12, 0, 1, v9);
      goto LABEL_12;
    }

    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v10 + 40))(v12, v13, v9);
      goto LABEL_12;
    }

    (*(v10 + 8))(v12, v9);
    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  memcpy(v12, v13, v19);
LABEL_12:
  if (*(v10 + 84))
  {
    v20 = *(v10 + 64);
  }

  else
  {
    v20 = *(v10 + 64) + 1;
  }

  v21 = ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = *v22;
  if (*v21 < 0xFFFFFFFFuLL)
  {
    if (v23 >= 0xFFFFFFFF)
    {
      v25 = v22[1];
      *v21 = v23;
      v21[1] = v25;
      goto LABEL_22;
    }

LABEL_21:
    *v21 = *v22;
    goto LABEL_22;
  }

  if (v23 < 0xFFFFFFFF)
  {

    goto LABEL_21;
  }

  v24 = v22[1];
  *v21 = v23;
  v21[1] = v24;

LABEL_22:
  *((v21 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v22 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for BindingActionDispatcher(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v9 + 7;
  if (v7 < a2 && *(a1 + ((((v10 + ((v8 + 21) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v7 + *a1 + 1;
  }

  v12 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 13) & ~v8;
  if (v6 < 0x7FFFFFFE)
  {
    v14 = *((v10 + v12) & 0xFFFFFFFFFFFFFFF8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    if ((v14 + 1) >= 2)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = (*(v4 + 48))(v12);
    if (v13 >= 2)
    {
      return v13 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for BindingActionDispatcher(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = (((v11 + 7 + ((v10 + 21) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v9 >= a2)
  {
    if (v9 < a3)
    {
      a1[v12] = 0;
    }

    if (a2)
    {
      v14 = ((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 13) & ~v10);
      if (v8 < 0x7FFFFFFE)
      {
        v18 = (&v14[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v18 = 0;
          v18[1] = 0;
          *v18 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v18 = a2;
        }
      }

      else if (v8 >= a2)
      {
        v19 = *(v6 + 56);
        v20 = a2 + 1;

        v19(v14, v20);
      }

      else
      {
        if (v11 <= 3)
        {
          v15 = ~(-1 << (8 * v11));
        }

        else
        {
          v15 = -1;
        }

        if (v11)
        {
          v16 = v15 & (~v8 + a2);
          if (v11 <= 3)
          {
            v17 = v11;
          }

          else
          {
            v17 = 4;
          }

          bzero(v14, v11);
          if (v17 > 2)
          {
            if (v17 == 3)
            {
              *v14 = v16;
              v14[2] = BYTE2(v16);
            }

            else
            {
              *v14 = v16;
            }
          }

          else if (v17 == 1)
          {
            *v14 = v16;
          }

          else
          {
            *v14 = v16;
          }
        }
      }
    }
  }

  else
  {
    v13 = ~v9 + a2;
    bzero(a1, v12);
    *a1 = v13;
    if (v9 < a3)
    {
      a1[v12] = 1;
    }
  }
}

double PlacementContext.size.getter()
{
  if (*(v0 + 48))
  {
    return *AGGraphGetInputValue();
  }

  else
  {
    return *(v0 + 16);
  }
}

uint64_t _PositionAwarePlacementContext.init(context:size:environment:transform:position:safeAreaInsets:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, _DWORD *a7@<X8>)
{
  *a7 = result;
  a7[1] = result;
  a7[2] = a2;
  a7[3] = a3;
  a7[4] = a4;
  a7[5] = a5;
  a7[6] = a6;
  return result;
}

double SizeAndSpacingContext.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = v2;
  return result;
}

double SizeAndSpacingContext.subscript.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *(v4 + 4);
  v14 = *(v4 + 8);
  v15 = a1;
  v7 = *(v5 + *MEMORY[0x1E69E77B0] + 8);
  v8 = type metadata accessor for EnvironmentFetch(0, v7, a3, a4);
  v17 = v8;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EnvironmentFetch<A>, v8);
  v18 = v10;
  swift_getWitnessTable(protocol conformance descriptor for EnvironmentFetch<A>, v8, WitnessTable);
  v19 = v11;
  v20 = 1;
  v21 = v6;
  v22 = 0;
  v23 = &v14;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v14, partial apply for closure #1 in Rule<>.cachedValue(options:owner:), v16, v8, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v12);

  return result;
}

double PlacementContext.subscript.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *(v4 + 4);
  v14 = *(v4 + 8);
  v15 = a1;
  v7 = *(v5 + *MEMORY[0x1E69E77B0] + 8);
  v8 = type metadata accessor for EnvironmentFetch(0, v7, a3, a4);
  v17 = v8;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EnvironmentFetch<A>, v8);
  v18 = v10;
  swift_getWitnessTable(protocol conformance descriptor for EnvironmentFetch<A>, v8, WitnessTable);
  v19 = v11;
  v20 = 1;
  v21 = v6;
  v22 = 0;
  v23 = &v14;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v14, closure #1 in Rule<>.cachedValue(options:owner:)partial apply, v16, v8, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v12);

  return result;
}

uint64_t SizeAndSpacingContext.update<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18[-v14];
  v16 = *(a3 - 8);
  (*(v16 + 56))(&v18[-v14], 1, 1, a3, v13);
  v19 = a3;
  v20 = v15;
  v21 = a1;
  v22 = a2;
  AGGraphWithUpdate();
  (*(v9 + 16))(v11, v15, v8);
  result = (*(v16 + 48))(v11, 1, a3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v16 + 32))(a4, v11, a3);
    return (*(v9 + 8))(v15, v8);
  }

  return result;
}

double _PositionAwarePlacementContext.transform.getter@<D0>(uint64_t a1@<X8>)
{
  InputValue = AGGraphGetInputValue();
  v3 = *(InputValue + 8);
  v4 = *(InputValue + 16);
  v5 = *(InputValue + 24);
  v6 = *(InputValue + 32);
  v7 = *(InputValue + 40);
  *a1 = *InputValue;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  type metadata accessor for CGPoint(0);

  v8 = AGGraphGetInputValue();
  result = *v8;
  v10 = v8[1];
  *(a1 + 32) = v6 - (*v8 - v4);
  *(a1 + 40) = v7 - (v10 - v5);
  *(a1 + 16) = result;
  *(a1 + 24) = v10;
  return result;
}

uint64_t SizeAndSpacingContext.init(context:owner:environment:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  if ((a2 & 0x100000000) != 0)
  {
    v4 = result;
  }

  else
  {
    v4 = a2;
  }

  *a4 = result;
  a4[1] = v4;
  a4[2] = a3;
  return result;
}

__n128 PlacementContext.init(base:parentSize:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v3;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 16) = *a2;
  *(a3 + 32) = v5;
  *(a3 + 48) = 0;
  return result;
}

double ViewTransformable.convert(from:to:)(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  InputValue = AGGraphGetInputValue();
  v8 = *InputValue;
  v9 = *(InputValue + 8);
  v10 = *(InputValue + 16);
  v11 = *(InputValue + 24);
  v12 = *(InputValue + 32);
  v13 = *(InputValue + 40);
  type metadata accessor for CGPoint(0);

  v14 = AGGraphGetInputValue();
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = v12 - (*v14 - v10);
  v19[0] = v8;
  v19[1] = v9;
  *&v19[2] = v15;
  *&v19[3] = v16;
  *&v19[4] = v17;
  *&v19[5] = v13 - (v16 - v11);
  (*(a4 + 8))(a2, v19, a3, a4);

  return result;
}

uint64_t closure #1 in SizeAndSpacingContext.update<A>(_:)(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  a2(v9);
  (*(*(a4 - 8) + 56))(v11, 0, 1, a4);
  return (*(v8 + 40))(a1, v11, v7);
}

uint64_t PlacementContext.init(context:owner:size:environment:transform:position:safeAreaInsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if ((a2 & 0x100000000) != 0)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  *a5 = result;
  *(a5 + 4) = v5;
  *(a5 + 8) = a4;
  *(a5 + 16) = a3;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  return result;
}

uint64_t PlacementContext.init(context:size:environment:transform:position:safeAreaInsets:)@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = result;
  *(a4 + 8) = a3;
  *(a4 + 16) = a2;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  return result;
}

uint64_t _PositionAwarePlacementContext.init(context:owner:size:environment:transform:position:safeAreaInsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, _DWORD *a8@<X8>)
{
  if ((a2 & 0x100000000) != 0)
  {
    v8 = result;
  }

  else
  {
    v8 = a2;
  }

  *a8 = result;
  a8[1] = v8;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

void _PositionAwarePlacementContext.unadjustedSafeAreaInsets.getter(void *a1@<X8>)
{
  if (*(v1 + 24) == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
    v3 = *InputValue;
    v4 = InputValue[1];
    v5 = InputValue[2];
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
}

double _PositionAwarePlacementContext.subscript.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *(v4 + 4);
  v14 = *(v4 + 12);
  v15 = a1;
  v7 = *(v5 + *MEMORY[0x1E69E77B0] + 8);
  v8 = type metadata accessor for EnvironmentFetch(0, v7, a3, a4);
  v17 = v8;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EnvironmentFetch<A>, v8);
  v18 = v10;
  swift_getWitnessTable(protocol conformance descriptor for EnvironmentFetch<A>, v8, WitnessTable);
  v19 = v11;
  v20 = 1;
  v21 = v6;
  v22 = 0;
  v23 = &v14;

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v14, closure #1 in Rule<>.cachedValue(options:owner:)partial apply, v16, v8, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v12);

  return result;
}

double ViewTransformable.convert(from:to:)(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  InputValue = AGGraphGetInputValue();
  v8 = *InputValue;
  v9 = *(InputValue + 8);
  v10 = *(InputValue + 16);
  v11 = *(InputValue + 24);
  v12 = *(InputValue + 32);
  v13 = *(InputValue + 40);
  type metadata accessor for CGPoint(0);

  v14 = AGGraphGetInputValue();
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = v12 - (*v14 - v10);
  v19[0] = v8;
  v19[1] = v9;
  *&v19[2] = v15;
  *&v19[3] = v16;
  *&v19[4] = v17;
  *&v19[5] = v13 - (v16 - v11);
  (*(a4 + 16))(a1, v19, a3, a4);

  return result;
}

double EnvironmentFetch.value.getter(uint64_t a1, uint64_t a2)
{
  EnvironmentFetch.environment.getter(&v3);
  swift_getAtKeyPath();

  return result;
}

uint64_t EnvironmentFetch.hash(into:)(uint64_t a1, Swift::UInt32 a2, uint64_t a3, uint64_t a4)
{
  Hasher._combine(_:)(a2);
  type metadata accessor for KeyPath();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int EnvironmentFetch.hashValue.getter(Swift::UInt32 a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  EnvironmentFetch.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EnvironmentFetch<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  EnvironmentFetch.hash(into:)(v5, *v2, *(v2 + 8), *(a2 + 16));
  return Hasher._finalize()();
}

uint64_t closure #1 in Rule<>.cachedValue(options:owner:)@<X0>(uint64_t a7@<X8>)
{
  dispatch thunk of Hashable.hashValue.getter();
  v8 = static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a7, v8, AssociatedTypeWitness);
}

uint64_t getEnumTagSinglePayload for PlacementContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for PlacementContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t (*partial apply for closure #1 in closure #1 in Rule<>.cachedValue(options:owner:)())(uint64_t a1, uint64_t a2)
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  v3 = *(v0 + 16);
  *(v2 + 16) = v3;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  return partial apply for implicit closure #1 in closure #1 in closure #1 in Rule<>.cachedValue(options:owner:);
}

uint64_t implicit closure #1 in closure #1 in closure #1 in Rule<>.cachedValue(options:owner:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v18[-v14];
  (*(v8 + 16))(v10, a1, a4, v13);
  dispatch thunk of Rule.value.getter();
  (*(v8 + 8))(v10, a4);
  v20 = a4;
  v21 = a5;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, _s14AttributeGraph4RulePAAE14_updateDefaultyySvFZySPy5ValueQzGXEfU_TA_0, v19, AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v16);
  return (*(v12 + 8))(v15, AssociatedTypeWitness);
}

void specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(void *a1, __int128 *a2, void *a3, void *a4)
{
  v9 = type metadata accessor for OSSignpostID();
  v48 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 2);
  v51 = *a2;
  v52 = v12;
  v53 = *(a2 + 24);
  v13 = ProtobufEncoder.archiveWriter.getter();
  if (v13)
  {
    v14 = v13;
    v49 = a3;
    v50 = a1;
    v15 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for RBShader, 0x1E69C70F0);
    lazy protocol witness table accessor for type RBShader and conformance NSObject();
    v16 = a1;
    v47 = v15;
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    v17 = v14[19];
    if (*(v17 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(&v51), (v19 & 1) != 0))
    {
      v46 = *(*(v17 + 56) + 8 * v18);
      swift_endAccess();
      outlined destroy of AnyHashable(&v51);
      if (one-time initialization token for archiving != -1)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v20 = type metadata accessor for OSSignposter();
        __swift_project_value_buffer(v20, static OSSignposter.archiving);
        lazy protocol witness table accessor for type Int and conformance Int();
        default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v21, v22);
        static OSSignpostID.exclusive.getter();
        v23 = OSSignposter.logHandle.getter();
        v24 = static os_signpost_type_t.event.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v25 = swift_slowAlloc();
          v45 = a4;
          v26 = v25;
          *v25 = 134217984;
          *(v25 + 4) = v46;
          v27 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_18D018000, v23, v24, v27, "addAttachment.cacheHit", "index=%{name=index}ld", v26, 0xCu);
          v28 = v26;
          a4 = v45;
          MEMORY[0x193AC4820](v28, -1, -1);
        }

        v48[1](v11, v9);
        v29 = v49;
        v11 = v46;
        if ((v46 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        swift_once();
      }
    }

    else
    {
      v48 = v16;
      swift_endAccess();
      outlined destroy of AnyHashable(&v51);
      v30 = v49;
      v31 = closure #1 in closure #1 in Shader.ResolvedShader.encode(to:)(v49, a4);
      if (v4)
      {

        return;
      }

      v9 = v31;
      v36 = v32;
      v45 = a4;
      outlined copy of Data._Representation(v31, v32);
      _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(v9, v36, &v51);
      v37 = v52;
      v38 = v51;
      v46 = specialized Collection<>.firstIndex(of:)(v51, *(&v51 + 1), v52, v14[4]);
      if (v39)
      {
        v51 = v38;
        LODWORD(v52) = v37;
        BYTE4(v52) = 0;
        outlined copy of Data._Representation(v9, v36);
        specialized ArchiveWriter.addAttachment(hash:from:)(&v51, v14, v9, v36);
        v11 = v42;
        outlined consume of Data._Representation(v9, v36);
        a4 = v45;
      }

      else
      {
        outlined consume of Data._Representation(v9, v36);
        a4 = v45;
        v11 = v46;
      }

      v29 = v49;
      v50 = v48;
      v43 = v48;
      AnyHashable.init<A>(_:)();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v14[19];
      v14[19] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, &v51, isUniquelyReferenced_nonNull_native);
      outlined destroy of AnyHashable(&v51);
      v14[19] = v54;
      swift_endAccess();
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }
    }

    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v11);
  }

  else
  {
    v33 = closure #1 in closure #1 in Shader.ResolvedShader.encode(to:)(a3, a4);
    v35 = a3;
    if (v4)
    {

      return;
    }

    v40 = v33;
    v41 = v34;
    ProtobufEncoder.dataField(_:_:)(2, v33, v34);
    outlined consume of Data._Representation(v40, v41);
  }
}

void specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(void *a1, __int128 *a2, void *a3)
{
  v7 = type metadata accessor for OSSignpostID();
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v16 = *(a2 + 2);
  v57 = *a2;
  v58 = v16;
  v55 = a2;
  v59 = *(a2 + 24);
  v17 = ProtobufEncoder.archiveWriter.getter();
  if (v17)
  {
    v18 = v17;
    v54 = a3;
    v56 = a1;
    lazy protocol witness table accessor for type DataKey #1 in closure #2 in CodablePlatformFont.encode(to:) and conformance DataKey #1 in closure #2 in CodablePlatformFont.encode(to:)();
    v20 = v19;
    v21 = a1;
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    v22 = v18[19];
    if (*(v22 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(&v57), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);
      swift_endAccess();
      outlined destroy of AnyHashable(&v57);
      if (one-time initialization token for archiving != -1)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v26 = type metadata accessor for OSSignposter();
        __swift_project_value_buffer(v26, static OSSignposter.archiving);
        lazy protocol witness table accessor for type Int and conformance Int();
        default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v27, v28);
        v29 = v51;
        static OSSignpostID.exclusive.getter();
        v30 = OSSignposter.logHandle.getter();
        v31 = static os_signpost_type_t.event.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v32 = swift_slowAlloc();
          *v32 = 134217984;
          *(v32 + 4) = v25;
          v33 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_18D018000, v30, v31, v33, "addAttachment.cacheHit", "index=%{name=index}ld", v32, 0xCu);
          MEMORY[0x193AC4820](v32, -1, -1);
        }

        (v52)[1](v29, v53);
        v34 = v54;
        if ((v25 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        swift_once();
      }
    }

    else
    {
      v52 = v21;
      v53 = v20;
      swift_endAccess();
      outlined destroy of AnyHashable(&v57);
      v35 = v54;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = Data.init(contentsOf:options:)();
      if (v3)
      {
        (*(v10 + 8))(v12, v9);

        goto LABEL_11;
      }

      v40 = v36;
      v41 = v37;
      (*(v10 + 8))(v12, v9);
      outlined copy of Data._Representation(v40, v41);
      _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(v40, v41, &v57);
      v42 = v58;
      v43 = v57;
      v44 = specialized Collection<>.firstIndex(of:)(v57, *(&v57 + 1), v58, v18[4]);
      if (v45)
      {
        v57 = v43;
        LODWORD(v58) = v42;
        BYTE4(v58) = 0;
        outlined copy of Data._Representation(v40, v41);
        specialized ArchiveWriter.addAttachment(hash:from:)(&v57, v18, v40, v41);
      }

      v25 = v44;
      outlined consume of Data._Representation(v40, v41);
      v34 = v54;
      v56 = v52;
      v49 = v52;
      AnyHashable.init<A>(_:)();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v18[19];
      v18[19] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, &v57, isUniquelyReferenced_nonNull_native);
      outlined destroy of AnyHashable(&v57);
      v18[19] = v60;
      swift_endAccess();
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }
    }

    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v25);

LABEL_11:

    return;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = Data.init(contentsOf:options:)();
  if (v3)
  {
    (*(v10 + 8))(v15, v9);
  }

  else
  {
    v46 = v38;
    v47 = v15;
    v48 = v39;
    (*(v10 + 8))(v47, v9);
    ProtobufEncoder.dataField(_:_:)(2, v46, v48);
    outlined consume of Data._Representation(v46, v48);
  }
}

void _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFAA5ImageV8LocationOAAE10BundlePath33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLV_Tt0g503_s7a3UI5l2V8m6OAAE10n8Path33_8pqrstuvw13LLV4fromAhA15cd23Vz_tKcfcAH10Foundation4K7VKXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v4);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8 < v9)
  {
    v65 = (v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v70 = v5;
    v10 = 0;
    v64 = *MEMORY[0x1E6969028];
    v63 = (v6 + 104);
    while (1)
    {
      v11 = *(a1 + 24);
      if (v11)
      {
        v12 = *(a1 + 32);
        if (v8 < v12)
        {
          goto LABEL_15;
        }

        if (v12 < v8)
        {
          goto LABEL_72;
        }

        *(a1 + 24) = 0;
      }

      v11 = ProtobufDecoder.decodeVarint()(v11);
      if (v1)
      {
        goto LABEL_5;
      }

      if (v11 < 8)
      {
LABEL_72:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();

        return;
      }

LABEL_15:
      v13 = v11 & 7;
      if (v11 >> 3 == 1)
      {
        if ((v11 & 7) != 0)
        {
          if (v13 != 2)
          {
            goto LABEL_72;
          }

          v11 = ProtobufDecoder.decodeVarint()(v11);
          if (v1)
          {
            goto LABEL_5;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_83;
          }

          v25 = *(a1 + 8) + v11;
          if (v9 < v25)
          {
            goto LABEL_72;
          }

          *(a1 + 24) = 8;
          *(a1 + 32) = v25;
        }

        v26 = ProtobufDecoder.decodeVarint()(v11);
        v17 = v1;
        if (v1)
        {
          goto LABEL_5;
        }

        v27 = v26;
        v28 = *(a1 + 48);
        if (one-time initialization token for readerKey != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for CodingUserInfoKey();
        v30 = __swift_project_value_buffer(v29, static ArchiveReader.readerKey);
        if (*(v28 + 16))
        {
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          if (v32)
          {
            outlined init with copy of Any(*(v28 + 56) + 32 * v31, &v68);
            type metadata accessor for ArchiveReader();
            if (swift_dynamicCast())
            {
              v62 = v10;
              v33 = v67;
              if (one-time initialization token for cacheKey != -1)
              {
                swift_once();
              }

              v34 = __swift_project_value_buffer(v29, static ArchiveReader.cacheKey);
              if (!*(v28 + 16) || (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v34), v36 = v33, (v37 & 1) == 0))
              {

                v10 = v62;
                goto LABEL_8;
              }

              outlined init with copy of Any(*(v28 + 56) + 32 * v35, &v68);
              type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], type metadata accessor for MutableBox);
              v38 = swift_dynamicCast();
              v10 = v62;
              if (v38)
              {
                if (v27 < 0)
                {
                  goto LABEL_85;
                }

                v39 = v67;
                swift_beginAccess();
                v40 = *(v39 + 16);
                if (*(v40 + 16) && (v41 = specialized __RawDictionaryStorage.find<A>(_:)(v27), (v42 & 1) != 0))
                {
                  outlined init with copy of Any(*(v40 + 56) + 32 * v41, &v68);
                  swift_endAccess();

                  outlined init with take of Any(&v68, &v67);
                  if (swift_dynamicCast())
                  {
                    v10 = v66;
                  }

                  else
                  {
                    v10 = 0;
                  }
                }

                else
                {
                  v61 = v39;
                  swift_endAccess();
                  if (!*(v36 + 16))
                  {
                    goto LABEL_88;
                  }

                  v47 = (*(v36 + 32) + 16 * v27);
                  v48 = *v47;
                  if (*v47 < 0)
                  {
                    goto LABEL_86;
                  }

                  v60 = *(v36 + 16);
                  v49 = v47[1];

                  if (v49 < 0)
                  {
                    goto LABEL_87;
                  }

                  v50 = swift_allocObject();
                  *(v50 + 16) = v36;
                  v59[1] = v36;
                  v51 = v65;
                  *v65 = OptionalAnchorValueBox.__ivar_destroyer;
                  *(v51 + 8) = v50;
                  (*v63)(v51, v64, v70);
                  v52 = specialized Data.init(bytesNoCopy:count:deallocator:)(v60 + v48, v49, v51);
                  v54 = v53;
                  static String.Encoding.utf8.getter();
                  v60 = v54;
                  v55 = String.init(data:encoding:)();
                  if (!v56)
                  {
                    lazy protocol witness table accessor for type Image.Location.BundlePath.Error and conformance Image.Location.BundlePath.Error();
                    swift_allocError();
                    swift_willThrow();

                    outlined consume of Data._Representation(v52, v60);

                    return;
                  }

                  v57 = v55;
                  v58 = v56;

                  outlined consume of Data._Representation(v52, v60);
                  v69 = &type metadata for Image.Location.BundlePath;
                  *&v68 = v57;
                  *(&v68 + 1) = v58;
                  swift_beginAccess();

                  specialized Dictionary.subscript.setter(&v68, v27);
                  swift_endAccess();

                  v10 = v58;
                }
              }

              else
              {
              }
            }
          }
        }

        goto LABEL_7;
      }

      if (v11 >> 3 == 2)
      {
        if (v13 != 2)
        {
          goto LABEL_72;
        }

        v14 = ProtobufDecoder.decodeVarint()(v11);
        if (v1)
        {
          goto LABEL_5;
        }

        v15 = v14;
        if (v14 < 0)
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          return;
        }

        v16 = *(a1 + 8);
        if (v9 < v16 + v14)
        {
          goto LABEL_72;
        }

        v17 = 0;
        *(a1 + 8) = v16 + v14;
        if (v14)
        {
          v18 = v16 - [*a1 bytes];
          v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;
          if (__OFADD__(v18, v15))
          {
            goto LABEL_81;
          }

          if (v18 + v15 < v18)
          {
            goto LABEL_82;
          }

          v22 = v19;
          v15 = Data._Representation.subscript.getter();
          v24 = v23;
          outlined consume of Data._Representation(v22, v21);
        }

        else
        {
          v24 = 0xC000000000000000;
        }

        static String.Encoding.utf8.getter();
        String.init(data:encoding:)();
        if (!v44)
        {
          lazy protocol witness table accessor for type Image.Location.BundlePath.Error and conformance Image.Location.BundlePath.Error();
          swift_allocError();
          swift_willThrow();

          outlined consume of Data._Representation(v15, v24);
          return;
        }

        v45 = v44;

        outlined consume of Data._Representation(v15, v24);
        v10 = v45;
LABEL_7:
        v1 = v17;
        goto LABEL_8;
      }

      if ((v11 & 7) > 1)
      {
        if (v13 == 2)
        {
          v46 = ProtobufDecoder.decodeVarint()(v11);
          if (v1)
          {
            goto LABEL_5;
          }

          if (v46 < 0)
          {
            goto LABEL_84;
          }

          v43 = *(a1 + 8) + v46;
          if (v9 < v43)
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_72;
          }

          v43 = *(a1 + 8) + 4;
          if (v9 < v43)
          {
            goto LABEL_72;
          }
        }
      }

      else
      {
        if ((v11 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v11);
          if (v1)
          {
            goto LABEL_5;
          }

          goto LABEL_8;
        }

        if (v13 != 1)
        {
          goto LABEL_72;
        }

        v43 = *(a1 + 8) + 8;
        if (v9 < v43)
        {
          goto LABEL_72;
        }
      }

      *(a1 + 8) = v43;
LABEL_8:
      v8 = *(a1 + 8);
      if (v8 >= v9)
      {
        *(a1 + 24) = 0;
        if (v10)
        {
          return;
        }

        goto LABEL_4;
      }
    }
  }

  *(a1 + 24) = 0;
LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_5:
}

void _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo8RBShaderC_Tt0g503_s7a36UI6ShaderV08ResolvedC0VAAE4fromAeA15cd11Vz_tKcfcSo8l25CAHzKXEfU_AJ10Foundation4K7VKXEfU_AA013RBDisplayListD8DelegateCTf1cn_n(uint64_t a1, void *a2)
{
  v62 = a2;
  v67 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v9 >= v10)
  {
    *(a1 + 24) = 0;
LABEL_4:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_73;
  }

  v61 = v5;
  v11 = 0;
  v60 = (v6 + 104);
  v59 = *MEMORY[0x1E6969028];
  do
  {
    v12 = *(a1 + 24);
    if (v12)
    {
      v13 = *(a1 + 32);
      if (v9 < v13)
      {
        goto LABEL_14;
      }

      if (v13 < v9)
      {
        goto LABEL_70;
      }

      *(a1 + 24) = 0;
    }

    v12 = ProtobufDecoder.decodeVarint()(v12);
    if (v2)
    {
      goto LABEL_71;
    }

    if (v12 < 8)
    {
      goto LABEL_70;
    }

LABEL_14:
    v14 = v12 & 7;
    if (v12 >> 3 == 1)
    {
      if ((v12 & 7) != 0)
      {
        if (v14 != 2)
        {
          goto LABEL_70;
        }

        v12 = ProtobufDecoder.decodeVarint()(v12);
        if (v2)
        {
          goto LABEL_71;
        }

        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_78;
        }

        v25 = *(a1 + 8) + v12;
        if (v10 < v25)
        {
LABEL_70:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_71:

          return;
        }

        *(a1 + 24) = 8;
        *(a1 + 32) = v25;
      }

      v26 = ProtobufDecoder.decodeVarint()(v12);
      if (v2)
      {
        goto LABEL_71;
      }

      v27 = v26;
      v28 = *(a1 + 48);
      if (one-time initialization token for readerKey != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for CodingUserInfoKey();
      v30 = __swift_project_value_buffer(v29, static ArchiveReader.readerKey);
      if (!*(v28 + 16))
      {
        goto LABEL_6;
      }

      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
      if ((v32 & 1) == 0)
      {
        goto LABEL_6;
      }

      outlined init with copy of Any(*(v28 + 56) + 32 * v31, &v65);
      type metadata accessor for ArchiveReader();
      if (!swift_dynamicCast())
      {
        goto LABEL_6;
      }

      v33 = v64;
      if (one-time initialization token for cacheKey != -1)
      {
        swift_once();
      }

      v34 = __swift_project_value_buffer(v29, static ArchiveReader.cacheKey);
      if (*(v28 + 16))
      {
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
        if (v36)
        {
          outlined init with copy of Any(*(v28 + 56) + 32 * v35, &v65);
          type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], type metadata accessor for MutableBox);
          if (swift_dynamicCast())
          {
            if (v27 < 0)
            {
              goto LABEL_80;
            }

            v37 = v64;
            swift_beginAccess();
            v38 = *(v37 + 16);
            if (*(v38 + 16))
            {
              v39 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
              if (v40)
              {
                outlined init with copy of Any(*(v38 + 56) + 32 * v39, &v65);
                swift_endAccess();

                outlined init with take of Any(&v65, &v64);
                type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for RBShader, 0x1E69C70F0);
                if (swift_dynamicCast())
                {
                  v11 = v63;
                }

                else
                {
                  v11 = 0;
                }

                goto LABEL_6;
              }
            }

            v58 = v37;
            swift_endAccess();
            if (!*(v33 + 16))
            {
              __break(1u);
LABEL_84:
              __break(1u);
              return;
            }

            v47 = (*(v33 + 32) + 16 * v27);
            v48 = *v47;
            if (*v47 < 0)
            {
              goto LABEL_81;
            }

            v57 = *(v33 + 16);
            v49 = v47[1];

            if (v49 < 0)
            {
              goto LABEL_82;
            }

            v50 = swift_allocObject();
            v56[1] = v33;
            *(v50 + 16) = v33;
            *v8 = OptionalAnchorValueBox.__ivar_destroyer;
            v8[1] = v50;
            (*v60)(v8, v59, v61);
            v51 = specialized Data.init(bytesNoCopy:count:deallocator:)(v57 + v48, v49, v8);
            v53 = v52;
            closure #1 in closure #1 in Shader.ResolvedShader.init(from:)(v62, &v65);

            outlined consume of Data._Representation(v51, v53);
            v11 = v65;
            if (!v65)
            {
              goto LABEL_84;
            }

            v66 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for RBShader, 0x1E69C70F0);
            *&v65 = v11;
            swift_beginAccess();
            v54 = v11;
            specialized Dictionary.subscript.setter(&v65, v27);
            swift_endAccess();
          }
        }
      }

LABEL_6:
      v2 = 0;
      goto LABEL_7;
    }

    if (v12 >> 3 == 2)
    {
      if (v14 != 2)
      {
        goto LABEL_70;
      }

      v15 = ProtobufDecoder.decodeVarint()(v12);
      if (v2)
      {
        goto LABEL_71;
      }

      v16 = v15;
      if (v15 < 0)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
      }

      v17 = *(a1 + 8);
      if (v10 < v17 + v15)
      {
        goto LABEL_70;
      }

      *(a1 + 8) = v17 + v15;
      if (v15)
      {
        v18 = v17 - [*a1 bytes];
        v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
        if (__OFADD__(v18, v16))
        {
          goto LABEL_76;
        }

        if (v18 + v16 < v18)
        {
          goto LABEL_77;
        }

        v22 = v19;
        v16 = Data._Representation.subscript.getter();
        v24 = v23;
        outlined consume of Data._Representation(v22, v21);
      }

      else
      {
        v24 = 0xC000000000000000;
      }

      v42 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      *&v65 = 0;
      v44 = [v42 decodedObjectWithData:isa delegate:v62 error:&v65];

      if (!v44)
      {
        v55 = v65;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        outlined consume of Data._Representation(v16, v24);
        goto LABEL_73;
      }

      v45 = v65;

      outlined consume of Data._Representation(v16, v24);
      v11 = v44;
    }

    else
    {
      if ((v12 & 7) > 1)
      {
        if (v14 == 2)
        {
          v46 = ProtobufDecoder.decodeVarint()(v12);
          if (v2)
          {
            goto LABEL_71;
          }

          if (v46 < 0)
          {
            goto LABEL_79;
          }

          v41 = *(a1 + 8) + v46;
          if (v10 < v41)
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v14 != 5)
          {
            goto LABEL_70;
          }

          v41 = *(a1 + 8) + 4;
          if (v10 < v41)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_64;
      }

      if ((v12 & 7) != 0)
      {
        if (v14 != 1)
        {
          goto LABEL_70;
        }

        v41 = *(a1 + 8) + 8;
        if (v10 < v41)
        {
          goto LABEL_70;
        }

LABEL_64:
        *(a1 + 8) = v41;
        goto LABEL_7;
      }

      ProtobufDecoder.decodeVarint()(v12);
      if (v2)
      {
        goto LABEL_71;
      }
    }

LABEL_7:
    v9 = *(a1 + 8);
  }

  while (v9 < v10);
  *(a1 + 24) = 0;
  if (!v11)
  {
    goto LABEL_4;
  }

LABEL_73:
}

void _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFAI_Tt0g503_s7a34UI19CodablePlatformFontV4fromAcA15cd21Vz_tKcfc10Foundation4K18VAFzKXEfU_A2IXEfU_Tf1ncn_n(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v5);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v9 >= v10)
  {
    v11 = 0;
    *(a1 + 24) = 0;
    v12 = 0xF000000000000000;
LABEL_4:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    outlined consume of Data?(v11, v12);
    return;
  }

  v64 = (v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = v6;
  v71 = a2;
  v11 = 0;
  v63 = (v7 + 104);
  v62 = *MEMORY[0x1E6969028];
  v12 = 0xF000000000000000;
  while (1)
  {
    while (1)
    {
      v13 = *(a1 + 24);
      if (v13)
      {
        v14 = *(a1 + 32);
        if (v9 < v14)
        {
          goto LABEL_13;
        }

        if (v14 < v9)
        {
          goto LABEL_4;
        }

        *(a1 + 24) = 0;
      }

      v13 = ProtobufDecoder.decodeVarint()(v13);
      if (v2)
      {
        goto LABEL_73;
      }

      if (v13 < 8)
      {
        goto LABEL_4;
      }

LABEL_13:
      v15 = v13 & 7;
      if (v13 >> 3 == 1)
      {
        if ((v13 & 7) != 0)
        {
          if (v15 != 2)
          {
            goto LABEL_4;
          }

          v13 = ProtobufDecoder.decodeVarint()(v13);
          if (v2)
          {
LABEL_73:
            outlined consume of Data?(v11, v12);
            return;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_78;
          }

          v27 = *(a1 + 8) + v13;
          if (v10 < v27)
          {
            goto LABEL_4;
          }

          *(a1 + 24) = 8;
          *(a1 + 32) = v27;
        }

        v28 = ProtobufDecoder.decodeVarint()(v13);
        if (v2)
        {
          goto LABEL_73;
        }

        v29 = v28;
        v30 = *(a1 + 48);
        if (one-time initialization token for readerKey != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for CodingUserInfoKey();
        v32 = __swift_project_value_buffer(v31, static ArchiveReader.readerKey);
        if (*(v30 + 16))
        {
          v33 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
          if (v34)
          {
            outlined init with copy of Any(*(v30 + 56) + 32 * v33, &v69);
            type metadata accessor for ArchiveReader();
            if (swift_dynamicCast())
            {
              v35 = v68;
              if (one-time initialization token for cacheKey != -1)
              {
                swift_once();
              }

              v36 = __swift_project_value_buffer(v31, static ArchiveReader.cacheKey);
              if (*(v30 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(v36), (v38 & 1) != 0) && (outlined init with copy of Any(*(v30 + 56) + 32 * v37, &v69), type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], type metadata accessor for MutableBox), (swift_dynamicCast() & 1) != 0))
              {
                if (v29 < 0)
                {
                  goto LABEL_80;
                }

                v39 = v68;
                swift_beginAccess();
                v40 = *(v39 + 16);
                if (*(v40 + 16) && (v41 = specialized __RawDictionaryStorage.find<A>(_:)(v29), (v42 & 1) != 0))
                {
                  outlined init with copy of Any(*(v40 + 56) + 32 * v41, &v69);
                  swift_endAccess();
                  outlined consume of Data?(v11, v12);

                  outlined init with take of Any(&v69, &v68);
                  v43 = swift_dynamicCast();
                  if (v43)
                  {
                    v12 = v67;
                  }

                  else
                  {
                    v12 = 0xF000000000000000;
                  }

                  if (v43)
                  {
                    v11 = v66;
                  }

                  else
                  {
                    v11 = 0;
                  }
                }

                else
                {
                  swift_endAccess();
                  v46 = *(v35 + 16);
                  if (!v46)
                  {
                    goto LABEL_83;
                  }

                  v47 = (*(v35 + 32) + 16 * v29);
                  v48 = v35;
                  v49 = *v47;
                  if (*v47 < 0)
                  {
                    goto LABEL_81;
                  }

                  v60 = v46;
                  v61 = v39;
                  v50 = v47[1];
                  v51 = v48;

                  if (v50 < 0)
                  {
                    goto LABEL_82;
                  }

                  v52 = swift_allocObject();
                  v59[1] = v51;
                  *(v52 + 16) = v51;
                  v53 = v63;
                  v54 = v64;
                  *v64 = OptionalAnchorValueBox.__ivar_destroyer;
                  *(v54 + 8) = v52;
                  (*v53)(v54, v62, v65);
                  v55 = specialized Data.init(bytesNoCopy:count:deallocator:)(v60 + v49, v50, v54);
                  v57 = v56;
                  outlined consume of Data?(v11, v12);
                  v70 = MEMORY[0x1E6969080];
                  *&v69 = v55;
                  *(&v69 + 1) = v57;
                  swift_beginAccess();
                  outlined copy of Data._Representation(v55, v57);
                  specialized Dictionary.subscript.setter(&v69, v29);
                  swift_endAccess();

                  v11 = v55;
                  v12 = v57;
                }
              }

              else
              {
              }
            }
          }
        }

        goto LABEL_6;
      }

      if (v13 >> 3 == 2)
      {
        break;
      }

      if ((v13 & 7) > 1)
      {
        if (v15 == 2)
        {
          v45 = ProtobufDecoder.decodeVarint()(v13);
          if (v2)
          {
            goto LABEL_73;
          }

          if (v45 < 0)
          {
            goto LABEL_79;
          }

          v44 = *(a1 + 8) + v45;
          if (v10 < v44)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_4;
          }

          v44 = *(a1 + 8) + 4;
          if (v10 < v44)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        if ((v13 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v13);
          if (v2)
          {
            goto LABEL_73;
          }

          goto LABEL_6;
        }

        if (v15 != 1)
        {
          goto LABEL_4;
        }

        v44 = *(a1 + 8) + 8;
        if (v10 < v44)
        {
          goto LABEL_4;
        }
      }

      *(a1 + 8) = v44;
LABEL_6:
      v9 = *(a1 + 8);
      if (v9 >= v10)
      {
        *(a1 + 24) = 0;
        if (v12 >> 60 == 15)
        {
          goto LABEL_4;
        }

        goto LABEL_74;
      }
    }

    if (v15 != 2)
    {
      goto LABEL_4;
    }

    v16 = ProtobufDecoder.decodeVarint()(v13);
    if (v2)
    {
      goto LABEL_73;
    }

    v17 = v16;
    if (v16 < 0)
    {
      break;
    }

    v18 = *(a1 + 8);
    if (v10 < v18 + v16)
    {
      goto LABEL_4;
    }

    *(a1 + 8) = v18 + v16;
    if (v16)
    {
      v19 = v18 - [*a1 bytes];
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
      if (__OFADD__(v19, v17))
      {
        goto LABEL_76;
      }

      if (v19 + v17 < v19)
      {
        goto LABEL_77;
      }

      v23 = v20;
      v24 = Data._Representation.subscript.getter();
      v26 = v25;
      outlined consume of Data._Representation(v23, v22);
      outlined consume of Data?(v11, v12);
      v11 = v24;
      v12 = v26;
      goto LABEL_6;
    }

    outlined consume of Data?(v11, v12);
    v11 = 0;
    v9 = *(a1 + 8);
    v12 = 0xC000000000000000;
    if (v9 >= v10)
    {
      v11 = 0;
      *(a1 + 24) = 0;
LABEL_74:
      v58 = v71;
      *v71 = v11;
      v58[1] = v12;
      return;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
}

void _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo9CGFontRefaSg_Tt0g503_s7a11UI13Codablel11V4fromAcA15cd43Vz_tKcfcSo0D3RefaSgAFzKXEfU_AI10Foundation4K6VXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v3);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 < v8)
  {
    v63 = (v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v64 = v4;
    v62 = (v5 + 104);
    v61 = *MEMORY[0x1E6969028];
    v9 = 1;
    while (1)
    {
      v10 = *(a1 + 24);
      if (v10)
      {
        v11 = *(a1 + 32);
        if (v7 < v11)
        {
          goto LABEL_13;
        }

        if (v11 < v7)
        {
          goto LABEL_69;
        }

        *(a1 + 24) = 0;
      }

      v10 = ProtobufDecoder.decodeVarint()(v10);
      if (v1)
      {
        goto LABEL_70;
      }

      if (v10 <= 7)
      {
LABEL_69:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        goto LABEL_70;
      }

LABEL_13:
      v12 = v10 & 7;
      if (v10 >> 3 == 1)
      {
        if ((v10 & 7) != 0)
        {
          if (v12 != 2)
          {
            goto LABEL_69;
          }

          v10 = ProtobufDecoder.decodeVarint()(v10);
          if (v1)
          {
            goto LABEL_70;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_76;
          }

          v23 = *(a1 + 8) + v10;
          if (v8 < v23)
          {
            goto LABEL_69;
          }

          *(a1 + 24) = 8;
          *(a1 + 32) = v23;
        }

        v24 = ProtobufDecoder.decodeVarint()(v10);
        if (v1)
        {
          goto LABEL_70;
        }

        v25 = v24;
        v26 = *(a1 + 48);
        if (one-time initialization token for readerKey != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for CodingUserInfoKey();
        v28 = __swift_project_value_buffer(v27, static ArchiveReader.readerKey);
        if (*(v26 + 16))
        {
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
          if (v30)
          {
            outlined init with copy of Any(*(v26 + 56) + 32 * v29, &v66);
            type metadata accessor for ArchiveReader();
            if (swift_dynamicCast())
            {
              v31 = v65;
              if (one-time initialization token for cacheKey != -1)
              {
                swift_once();
              }

              v32 = __swift_project_value_buffer(v27, static ArchiveReader.cacheKey);
              if (*(v26 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(v32), (v34 & 1) != 0) && (outlined init with copy of Any(*(v26 + 56) + 32 * v33, &v66), type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], type metadata accessor for MutableBox), (swift_dynamicCast() & 1) != 0))
              {
                if (v25 < 0)
                {
                  goto LABEL_78;
                }

                v35 = v65;
                swift_beginAccess();
                v36 = *(v35 + 16);
                if (*(v36 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(v25), (v38 & 1) != 0))
                {
                  outlined init with copy of Any(*(v36 + 56) + 32 * v37, &v66);
                  swift_endAccess();
                  outlined consume of Shader.ResolvedShader?(v9);

                  outlined init with take of Any(&v66, &v65);
                  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for CGFontRef?, type metadata accessor for CGFontRef, MEMORY[0x1E69E6720]);
                  if (swift_dynamicCast())
                  {
                    v9 = v68;
                  }

                  else
                  {
                    v9 = 1;
                  }
                }

                else
                {
                  v60[1] = v35;
                  swift_endAccess();
                  v44 = *(v31 + 16);
                  if (!v44)
                  {
                    goto LABEL_83;
                  }

                  v45 = (*(v31 + 32) + 16 * v25);
                  v46 = *v45;
                  if (*v45 < 0)
                  {
                    goto LABEL_79;
                  }

                  v47 = v45[1];

                  if (v47 < 0)
                  {
                    goto LABEL_80;
                  }

                  v48 = swift_allocObject();
                  *(v48 + 16) = v31;
                  v60[0] = v31;
                  v49 = v62;
                  v50 = v63;
                  *v63 = OptionalAnchorValueBox.__ivar_destroyer;
                  *(v50 + 8) = v48;
                  (*v49)(v50, v61, v64);
                  v51 = specialized Data.init(bytesNoCopy:count:deallocator:)(v44 + v46, v47, v50);
                  v53 = v52;
                  v54 = v51;
                  isa = Data._bridgeToObjectiveC()().super.isa;
                  v56 = CGDataProviderCreateWithCFData(isa);

                  if (!v56)
                  {
                    goto LABEL_82;
                  }

                  v57 = CGFontCreateWithDataProvider(v56);

                  outlined consume of Shader.ResolvedShader?(v9);
                  outlined consume of Data._Representation(v54, v53);
                  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for CGFontRef?, type metadata accessor for CGFontRef, MEMORY[0x1E69E6720]);
                  v67 = v58;
                  *&v66 = v57;
                  swift_beginAccess();
                  v59 = v57;
                  specialized Dictionary.subscript.setter(&v66, v25);
                  swift_endAccess();

                  v9 = v57;
                }
              }

              else
              {
              }
            }
          }
        }

        goto LABEL_6;
      }

      if (v10 >> 3 == 2)
      {
        if (v12 != 2)
        {
          goto LABEL_69;
        }

        v13 = ProtobufDecoder.decodeVarint()(v10);
        if (v1)
        {
          goto LABEL_70;
        }

        v14 = v13;
        if (v13 < 0)
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
          return;
        }

        v15 = *(a1 + 8);
        if (v8 < v15 + v13)
        {
          goto LABEL_69;
        }

        *(a1 + 8) = v15 + v13;
        if (v13)
        {
          v16 = v15 - [*a1 bytes];
          v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;
          if (__OFADD__(v16, v14))
          {
            goto LABEL_74;
          }

          if (v16 + v14 < v16)
          {
            goto LABEL_75;
          }

          v20 = v17;
          v14 = Data._Representation.subscript.getter();
          v22 = v21;
          outlined consume of Data._Representation(v20, v19);
        }

        else
        {
          v22 = 0xC000000000000000;
        }

        v40 = Data._bridgeToObjectiveC()().super.isa;
        v41 = CGDataProviderCreateWithCFData(v40);

        if (!v41)
        {
          goto LABEL_81;
        }

        v42 = CGFontCreateWithDataProvider(v41);

        outlined consume of Shader.ResolvedShader?(v9);
        outlined consume of Data._Representation(v14, v22);
        v9 = v42;
        goto LABEL_6;
      }

      if ((v10 & 7) > 1)
      {
        if (v12 == 2)
        {
          v43 = ProtobufDecoder.decodeVarint()(v10);
          if (v1)
          {
            goto LABEL_70;
          }

          if (v43 < 0)
          {
            goto LABEL_77;
          }

          v39 = *(a1 + 8) + v43;
          if (v8 < v39)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_69;
          }

          v39 = *(a1 + 8) + 4;
          if (v8 < v39)
          {
            goto LABEL_69;
          }
        }
      }

      else
      {
        if ((v10 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v10);
          if (v1)
          {
            goto LABEL_70;
          }

          goto LABEL_6;
        }

        if (v12 != 1)
        {
          goto LABEL_69;
        }

        v39 = *(a1 + 8) + 8;
        if (v8 < v39)
        {
          goto LABEL_69;
        }
      }

      *(a1 + 8) = v39;
LABEL_6:
      v7 = *(a1 + 8);
      if (v7 >= v8)
      {
        *(a1 + 24) = 0;
        if (v9 == 1)
        {
          goto LABEL_4;
        }

        return;
      }
    }
  }

  *(a1 + 24) = 0;
LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  v9 = 1;
LABEL_70:
  outlined consume of Shader.ResolvedShader?(v9);
}

void _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo9CGFontRefaSg_Tt0g503_s7a11UI13Codablel11V4fromAcA15cd44Vz_tKcfcSo0D3RefaSgAFzKXEfU0_AI10Foundation4K6VXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v3);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 < v8)
  {
    v60 = (v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v61 = v4;
    v59 = (v5 + 104);
    v58 = *MEMORY[0x1E6969028];
    v9 = 1;
    while (1)
    {
      v10 = *(a1 + 24);
      if (v10)
      {
        v11 = *(a1 + 32);
        if (v7 < v11)
        {
          goto LABEL_13;
        }

        if (v11 < v7)
        {
          goto LABEL_67;
        }

        *(a1 + 24) = 0;
      }

      v10 = ProtobufDecoder.decodeVarint()(v10);
      if (v1)
      {
        goto LABEL_68;
      }

      if (v10 <= 7)
      {
LABEL_67:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        goto LABEL_68;
      }

LABEL_13:
      v12 = v10 & 7;
      if (v10 >> 3 == 1)
      {
        if ((v10 & 7) != 0)
        {
          if (v12 != 2)
          {
            goto LABEL_67;
          }

          v10 = ProtobufDecoder.decodeVarint()(v10);
          if (v1)
          {
            goto LABEL_68;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_74;
          }

          v23 = *(a1 + 8) + v10;
          if (v8 < v23)
          {
            goto LABEL_67;
          }

          *(a1 + 24) = 8;
          *(a1 + 32) = v23;
        }

        v24 = ProtobufDecoder.decodeVarint()(v10);
        if (v1)
        {
          goto LABEL_68;
        }

        v25 = v24;
        v26 = *(a1 + 48);
        if (one-time initialization token for readerKey != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for CodingUserInfoKey();
        v28 = __swift_project_value_buffer(v27, static ArchiveReader.readerKey);
        if (*(v26 + 16))
        {
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
          if (v30)
          {
            outlined init with copy of Any(*(v26 + 56) + 32 * v29, &v63);
            type metadata accessor for ArchiveReader();
            if (swift_dynamicCast())
            {
              v31 = v62;
              if (one-time initialization token for cacheKey != -1)
              {
                swift_once();
              }

              v32 = __swift_project_value_buffer(v27, static ArchiveReader.cacheKey);
              if (*(v26 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(v32), (v34 & 1) != 0) && (outlined init with copy of Any(*(v26 + 56) + 32 * v33, &v63), type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], type metadata accessor for MutableBox), (swift_dynamicCast() & 1) != 0))
              {
                if (v25 < 0)
                {
                  goto LABEL_76;
                }

                v35 = v62;
                swift_beginAccess();
                v36 = *(v35 + 16);
                if (*(v36 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(v25), (v38 & 1) != 0))
                {
                  outlined init with copy of Any(*(v36 + 56) + 32 * v37, &v63);
                  swift_endAccess();
                  outlined consume of Shader.ResolvedShader?(v9);

                  outlined init with take of Any(&v63, &v62);
                  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for CGFontRef?, type metadata accessor for CGFontRef, MEMORY[0x1E69E6720]);
                  if (swift_dynamicCast())
                  {
                    v9 = v65;
                  }

                  else
                  {
                    v9 = 1;
                  }
                }

                else
                {
                  v57[1] = v35;
                  swift_endAccess();
                  v43 = *(v31 + 16);
                  if (!v43)
                  {
                    goto LABEL_79;
                  }

                  v44 = (*(v31 + 32) + 16 * v25);
                  v45 = *v44;
                  if (*v44 < 0)
                  {
                    goto LABEL_77;
                  }

                  v46 = v44[1];

                  if (v46 < 0)
                  {
                    goto LABEL_78;
                  }

                  v47 = swift_allocObject();
                  *(v47 + 16) = v31;
                  v57[0] = v31;
                  v48 = v59;
                  v49 = v60;
                  *v60 = OptionalAnchorValueBox.__ivar_destroyer;
                  *(v49 + 8) = v47;
                  (*v48)(v49, v58, v61);
                  v50 = specialized Data.init(bytesNoCopy:count:deallocator:)(v43 + v45, v46, v49);
                  v52 = v51;
                  isa = Data._bridgeToObjectiveC()().super.isa;
                  CGFontWithData = RBDecoderCreateCGFontWithData();

                  outlined consume of Shader.ResolvedShader?(v9);
                  outlined consume of Data._Representation(v50, v52);
                  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for CGFontRef?, type metadata accessor for CGFontRef, MEMORY[0x1E69E6720]);
                  v64 = v55;
                  *&v63 = CGFontWithData;
                  swift_beginAccess();
                  v56 = CGFontWithData;
                  specialized Dictionary.subscript.setter(&v63, v25);
                  swift_endAccess();

                  v9 = CGFontWithData;
                }
              }

              else
              {
              }
            }
          }
        }

        goto LABEL_6;
      }

      if (v10 >> 3 == 2)
      {
        if (v12 != 2)
        {
          goto LABEL_67;
        }

        v13 = ProtobufDecoder.decodeVarint()(v10);
        if (v1)
        {
          goto LABEL_68;
        }

        v14 = v13;
        if (v13 < 0)
        {
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          return;
        }

        v15 = *(a1 + 8);
        if (v8 < v15 + v13)
        {
          goto LABEL_67;
        }

        *(a1 + 8) = v15 + v13;
        if (v13)
        {
          v16 = v15 - [*a1 bytes];
          v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;
          if (__OFADD__(v16, v14))
          {
            goto LABEL_72;
          }

          if (v16 + v14 < v16)
          {
            goto LABEL_73;
          }

          v20 = v17;
          v14 = Data._Representation.subscript.getter();
          v22 = v21;
          outlined consume of Data._Representation(v20, v19);
        }

        else
        {
          v22 = 0xC000000000000000;
        }

        v40 = Data._bridgeToObjectiveC()().super.isa;
        v41 = RBDecoderCreateCGFontWithData();

        outlined consume of Shader.ResolvedShader?(v9);
        outlined consume of Data._Representation(v14, v22);
        v9 = v41;
        goto LABEL_6;
      }

      if ((v10 & 7) > 1)
      {
        if (v12 == 2)
        {
          v42 = ProtobufDecoder.decodeVarint()(v10);
          if (v1)
          {
            goto LABEL_68;
          }

          if (v42 < 0)
          {
            goto LABEL_75;
          }

          v39 = *(a1 + 8) + v42;
          if (v8 < v39)
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_67;
          }

          v39 = *(a1 + 8) + 4;
          if (v8 < v39)
          {
            goto LABEL_67;
          }
        }
      }

      else
      {
        if ((v10 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v10);
          if (v1)
          {
            goto LABEL_68;
          }

          goto LABEL_6;
        }

        if (v12 != 1)
        {
          goto LABEL_67;
        }

        v39 = *(a1 + 8) + 8;
        if (v8 < v39)
        {
          goto LABEL_67;
        }
      }

      *(a1 + 8) = v39;
LABEL_6:
      v7 = *(a1 + 8);
      if (v7 >= v8)
      {
        *(a1 + 24) = 0;
        if (v9 == 1)
        {
          goto LABEL_4;
        }

        return;
      }
    }
  }

  *(a1 + 24) = 0;
LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  v9 = 1;
LABEL_68:
  outlined consume of Shader.ResolvedShader?(v9);
}

uint64_t ProtobufEncoder.archiveWriter.getter()
{
  v1 = *(v0 + 32);
  if (one-time initialization token for writerKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static ArchiveWriter.writerKey);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v4, v8);
  type metadata accessor for ArchiveWriter();
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

void ArchiveWriter.addAttachment(data:)(uint64_t a1, char *a2)
{
  outlined copy of Data._Representation(a1, a2);
  _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(a1, a2, &v9);
  v5 = v11;
  v6 = v9;
  v7 = v10;
  specialized Collection<>.firstIndex(of:)(v9, v10, v11, v2[4]);
  if (v8)
  {
    v9 = v6;
    v10 = v7;
    v11 = v5;
    v12 = 0;
    outlined copy of Data._Representation(a1, a2);
    specialized ArchiveWriter.addAttachment(hash:from:)(&v9, v2, a1, a2);
  }
}

uint64_t ProtobufEncoder.binaryPlistData<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();

  dispatch thunk of PropertyListEncoder.userInfo.setter();
  getContiguousArrayStorageType<A>(for:)(a2, a2);
  v6 = *(a2 - 8);
  swift_allocObject();
  v7 = static Array._adoptStorage(_:count:)();
  (*(v6 + 16))(v8, a1, a2);
  _finalizeUninitializedArray<A>(_:)(v7, a2);
  v13[2] = v9;
  v10 = type metadata accessor for Array();
  v13[0] = a3;
  swift_getWitnessTable(MEMORY[0x1E69E6300], v10, v13);
  v11 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  return v11;
}

uint64_t ProtobufEncoder.binaryPlistData<A>(for:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();

  dispatch thunk of PropertyListEncoder.userInfo.setter();
  getContiguousArrayStorageType<A>(for:)(a3, a3);
  v7 = *(a3 - 8);
  swift_allocObject();
  v8 = static Array._adoptStorage(_:count:)();
  (*(v7 + 16))(v9, a1, a3);
  _finalizeUninitializedArray<A>(_:)(v8, a3);
  v14[1] = v10;
  v11 = type metadata accessor for Array();
  v14[0] = a4;
  swift_getWitnessTable(MEMORY[0x1E6969E18], v11, v14);
  v12 = dispatch thunk of PropertyListEncoder.encode<A>(_:configuration:)();

  return v12;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;
  type metadata accessor for ContiguousBytes();

  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of ContiguousBytes?(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:), v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data?(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  return v32;
}

uint64_t one-time initialization function for writerKey()
{
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for CodingUserInfoKey?, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static ArchiveWriter.writerKey);
  v4 = __swift_project_value_buffer(v3, static ArchiveWriter.writerKey);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

double ArchiveWriter.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 1;
  *(v0 + 152) = MEMORY[0x1E69E7CC8];
  return result;
}

double ArchiveWriter.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 1;
  *(v0 + 152) = MEMORY[0x1E69E7CC8];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ArchiveWriter.finalize()()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v2 = *(v0 + 24);
    v3 = *(v2 + 16);
    v4 = *(*v0 + 152);
    v5 = v1;
    type metadata accessor for (offset: UInt64, size: UInt64)();
    v7 = v6;

    v4(v2 + 32, v3, v7);

    if (!v5)
    {
      if (HIDWORD(*(*(v0 + 24) + 16)))
      {
        __break(1u);
      }

      else
      {
        v8[0] = *(*(v0 + 24) + 16);
        v8[1] = -782886287;
        v4(v8, 2, MEMORY[0x1E69E7668]);
        *(v0 + 16) = 1;
      }
    }
  }
}

void specialized ArchiveWriter.addAttachment(hash:from:)(uint64_t *a1, void *a2, uint64_t a3, char *a4)
{
  v106 = a2;
  v114 = *MEMORY[0x1E69E9840];
  v98 = type metadata accessor for OSSignpostError();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for OSSignpostID();
  v107 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v90 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v90 - v13;
  v15 = a1[1];
  v101 = *a1;
  v100 = v15;
  v16 = *(a1 + 4);
  LODWORD(v104) = *(a1 + 20);
  if (one-time initialization token for archiving != -1)
  {
    swift_once();
  }

  v103 = v16;
  v17 = type metadata accessor for OSSignposter();
  v18 = __swift_project_value_buffer(v17, static OSSignposter.archiving);
  static OSSignpostID.exclusive.getter();
  v99 = v18;
  v19 = OSSignposter.logHandle.getter();
  v20 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v21 = a4;
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18D018000, v19, v20, v23, "addAttachment", "", v22, 2u);
    v24 = v22;
    a4 = v21;
    MEMORY[0x193AC4820](v24, -1, -1);
  }

  v25 = a3;

  v26 = v107;
  v27 = v105;
  (*(v107 + 16))(v11, v14, v105);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v28 = OSSignpostIntervalState.init(id:isOpen:)();
  v31 = *(v26 + 8);
  v30 = v26 + 8;
  v29 = v31;
  (v31)(v14, v27);
  v32 = v106;
  if (!v106[5])
  {
    v44 = v29;
    v45 = v28;
    v46 = a4;
    v47 = MEMORY[0x1E69E7508];
    v48 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v48[2] = 16;
    v48[5] = 0;
    v48[4] = 0;
    v49 = v108;
    (*(*v32 + 152))(v48 + 4, 16, v47);

    v108 = v49;
    a4 = v46;
    v28 = v45;
    if (v49)
    {
      v33 = v25;
      goto LABEL_16;
    }

    v29 = v44;
  }

  v33 = v25;
  v34 = v104;
  if (v104)
  {
    memset(&c, 0, sizeof(c));
    CC_SHA1_Init(&c);
    v113 = c;
    LOBYTE(md) = 0;
    swift_beginAccess();
    v35 = *&v113.data[5];
    v36 = *&v113.data[9];
    v37 = *&v113.h4;
    *(v32 + 5) = *&v113.data[1];
    *(v32 + 6) = v35;
    v38 = *&v113.data[13];
    *(v32 + 7) = v36;
    *(v32 + 8) = v38;
    *(v32 + 3) = *&v113.h0;
    *(v32 + 4) = v37;
    *(v32 + 144) = md;
  }

  v39 = v32[5];
  v40 = v108;
  (*(*v32 + 144))(v33, a4);
  v108 = v40;
  if (v40)
  {
    goto LABEL_16;
  }

  v41 = v32[5];
  v95 = v41 - v39;
  if (v41 < v39)
  {
    __break(1u);
LABEL_42:
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 2) + 1, 1, a4);
    v106[3] = a4;
LABEL_21:
    v54 = *(a4 + 2);
    v53 = *(a4 + 3);
    v91 = v29;
    if (v54 >= v53 >> 1)
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, a4);
    }

    v55 = v95;
    v56 = v95 + 15;
    *(a4 + 2) = v54 + 1;
    v57 = &a4[16 * v54];
    *(v57 + 4) = v39;
    *(v57 + 5) = v55;
    v58 = v106;
    v106[3] = a4;
    v59 = v58[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58[4] = v59;
    v61 = v92;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 2) + 1, 1, v59);
      v106[4] = v59;
    }

    v62 = v56 & 0xFFFFFFFFFFFFFFF0;
    v64 = *(v59 + 2);
    v63 = *(v59 + 3);
    if (v64 >= v63 >> 1)
    {
      v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v59);
    }

    *(v59 + 2) = v64 + 1;
    v65 = &v59[20 * v64];
    v66 = v104;
    *(v65 + 8) = v34;
    *(v65 + 9) = v66;
    *(v65 + 10) = v33;
    *(v65 + 11) = v28;
    *(v65 + 12) = v103;
    v67 = v106;
    v106[4] = v59;
    v68 = v62 >= v95;
    v69 = v62 - v95;
    if (!v69)
    {
      a4 = v91;
      v33 = v93;
      v70 = v102;
LABEL_36:
      v74 = *(v67[3] + 16) - 1;
      lazy protocol witness table accessor for type Int and conformance Int();
      default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v75, v76);
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
      default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v77, v78);
      v79 = OSSignposter.logHandle.getter();
      OSSignpostIntervalState.signpostID.getter();
      v80 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        LODWORD(v106) = v80;
        v81 = v70;

        v82 = v96;
        checkForErrorAndConsumeState(state:)();

        v83 = v97;
        v84 = v98;
        v85 = v33;
        if ((*(v97 + 88))(v82, v98) == *MEMORY[0x1E69E93E8])
        {
          v86 = 0;
          v87 = "[Error] Interval already ended";
        }

        else
        {
          (*(v83 + 8))(v82, v84);
          v87 = "index=%{name=index}ld size=%{xcode:size-in-bytes, name=size}llu";
          v86 = 2;
        }

        v88 = swift_slowAlloc();
        *v88 = 0;
        *(v88 + 1) = v86;
        *(v88 + 2) = 2048;
        *(v88 + 4) = v74;
        *(v88 + 12) = 2048;
        *(v88 + 14) = v95;
        v70 = v81;
        v89 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_18D018000, v79, v106, v89, "addAttachment", v87, v88, 0x16u);
        MEMORY[0x193AC4820](v88, -1, -1);
        v33 = v85;
        v61 = v92;
      }

      (v61)(v70, v105);
      goto LABEL_17;
    }

    a4 = v91;
    v33 = v93;
    v70 = v102;
    if (!v68)
    {
      __break(1u);
      goto LABEL_43;
    }

    if ((v69 & 0x8000000000000000) != 0)
    {
LABEL_43:
      __break(1u);
    }

    v72 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v72 + 16) = v69;
    bzero((v72 + 32), v69);
    v73 = v108;
    (*(*v67 + 152))(v72 + 32, v69, MEMORY[0x1E69E7508]);

    v108 = v73;
    if (!v73)
    {
      goto LABEL_36;
    }

LABEL_16:

LABEL_17:
    outlined consume of Data._Representation(v33, a4);
    return;
  }

  v93 = v33;
  v94 = v28;
  v92 = v29;
  if ((v34 & 1) == 0)
  {
    v34 = v101;
    LODWORD(v33) = v100;
    v28 = HIDWORD(v100);
    v42 = HIDWORD(v101);
    v43 = v103;
LABEL_19:
    v50 = v32[4];
    v104 = v42;
    specialized Collection<>.firstIndex(of:)(v34 | (v42 << 32), v33 | (v28 << 32), v43, v50);
    if ((v51 & 1) == 0)
    {
      v71 = v108;
      (*(*v32 + 160))(v39);

      v33 = v93;
      v108 = v71;
      if (!v71)
      {
        v32[5] = v39;
      }

      goto LABEL_17;
    }

    v103 = v43;
    v29 = a4;
    a4 = v32[3];
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v32[3] = a4;
    v107 = v30;
    if (v52)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

  swift_beginAccess();
  if ((v32[18] & 1) == 0)
  {
    v110 = 0;
    md = 0;
    v111 = 0;
    CC_SHA1_Final(&md, (v32 + 6));
    v34 = md;
    v42 = HIDWORD(md);
    LODWORD(v33) = v110;
    v28 = HIDWORD(v110);
    v43 = v111;
    swift_endAccess();
    LOBYTE(v113.h0) = 1;
    *(v32 + 3) = 0u;
    *(v32 + 4) = 0u;
    *(v32 + 5) = 0u;
    *(v32 + 6) = 0u;
    *(v32 + 7) = 0u;
    *(v32 + 8) = 0u;
    *(v32 + 144) = 1;
    goto LABEL_19;
  }

  __break(1u);
}

void specialized ArchiveWriter.addAttachment(hash:from:)(uint64_t a1, void *a2, void (*a3)(void), unint64_t a4)
{
  v95 = a4;
  v94 = a3;
  v96 = a2;
  v103 = *MEMORY[0x1E69E9840];
  v87 = type metadata accessor for OSSignpostError();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v89 = v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v90 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v85 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v85 - v13;
  v15 = *a1;
  v93 = *(a1 + 8);
  v92 = *(a1 + 16);
  LODWORD(v16) = *(a1 + 20);
  if (one-time initialization token for archiving != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for OSSignposter();
  v18 = __swift_project_value_buffer(v17, static OSSignposter.archiving);
  static OSSignpostID.exclusive.getter();
  v88 = v18;
  v19 = OSSignposter.logHandle.getter();
  v20 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v21 = swift_slowAlloc();
    v91 = v15;
    v22 = v7;
    v23 = v16;
    v16 = v6;
    v24 = v21;
    *v21 = 0;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18D018000, v19, v20, v25, "addAttachment", "", v24, 2u);
    v26 = v24;
    v6 = v16;
    LODWORD(v16) = v23;
    v7 = v22;
    v15 = v91;
    MEMORY[0x193AC4820](v26, -1, -1);
  }

  (*(v7 + 16))(v11, v14, v6);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v27 = OSSignpostIntervalState.init(id:isOpen:)();
  v30 = *(v7 + 8);
  v28 = v7 + 8;
  v29 = v30;
  (v30)(v14, v6);
  v31 = v96;
  if (v96[5])
  {
    if (!v16)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  LODWORD(v91) = v16;
  v16 = v15;
  v42 = MEMORY[0x1E69E7508];
  v43 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v43[2] = 16;
  v43[5] = 0;
  v43[4] = 0;
  v44 = v97;
  (*(*v31 + 152))(v43 + 4, 16, v42);

  v97 = v44;
  if (v44)
  {
    goto LABEL_15;
  }

  v15 = v16;
  LOBYTE(v16) = v91;
  if (v91)
  {
LABEL_7:
    memset(&c, 0, sizeof(c));
    CC_SHA1_Init(&c);
    v102 = c;
    LOBYTE(md) = 0;
    swift_beginAccess();
    v32 = *&v102.data[5];
    v33 = *&v102.data[9];
    v34 = *&v102.h4;
    *(v31 + 5) = *&v102.data[1];
    *(v31 + 6) = v32;
    v35 = *&v102.data[13];
    *(v31 + 7) = v33;
    *(v31 + 8) = v35;
    *(v31 + 3) = *&v102.h0;
    *(v31 + 4) = v34;
    *(v31 + 144) = md;
  }

LABEL_8:
  v36 = v31[5];
  v37 = v97;
  ArchiveWriter.withDataConsumer(do:)(v94);
  v97 = v37;
  if (v37)
  {
    goto LABEL_15;
  }

  v38 = v31[5];
  v95 = v38 - v36;
  if (v38 < v36)
  {
    __break(1u);
    goto LABEL_42;
  }

  v94 = v29;
  v85[1] = v28;
  v85[2] = v27;
  if (v16)
  {
    swift_beginAccess();
    if (v31[18])
    {
      __break(1u);
      return;
    }

    v99 = 0;
    md = 0;
    v100 = 0;
    CC_SHA1_Final(&md, (v31 + 6));
    v15 = md;
    v28 = HIDWORD(md);
    v39 = v99;
    v29 = HIDWORD(v99);
    v40 = v100;
    swift_endAccess();
    v41 = v39;
    LOBYTE(v102.h0) = 1;
    *(v31 + 3) = 0u;
    *(v31 + 4) = 0u;
    *(v31 + 5) = 0u;
    *(v31 + 6) = 0u;
    *(v31 + 7) = 0u;
    *(v31 + 8) = 0u;
    *(v31 + 144) = 1;
  }

  else
  {
    v28 = HIDWORD(v15);
    v41 = v93;
    v29 = HIDWORD(v93);
    v40 = v92;
  }

  v45 = v31[4];
  v93 = v41;
  v92 = v40;
  specialized Collection<>.firstIndex(of:)(v15 | (v28 << 32), v41 | (v29 << 32), v40, v45);
  if (v46)
  {
    v91 = v15;
    v15 = v31[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31[3] = v15;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_20:
      v49 = *(v15 + 16);
      v48 = *(v15 + 24);
      v85[0] = v6;
      if (v49 >= v48 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v15);
      }

      v50 = v95;
      v51 = v95 + 15;
      *(v15 + 16) = v49 + 1;
      v52 = (v15 + 16 * v49);
      *(v52 + 4) = v36;
      *(v52 + 5) = v50;
      v53 = v96;
      v96[3] = v15;
      v54 = v53[4];
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v53[4] = v54;
      if ((v55 & 1) == 0)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
        v53[4] = v54;
      }

      v56 = v89;
      v57 = v91;
      v58 = v51 & 0xFFFFFFFFFFFFFFF0;
      v60 = *(v54 + 2);
      v59 = *(v54 + 3);
      v61 = v93;
      v62 = v92;
      if (v60 >= v59 >> 1)
      {
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v54);
        v62 = v92;
        v61 = v93;
        v54 = v84;
      }

      *(v54 + 2) = v60 + 1;
      v63 = &v54[20 * v60];
      *(v63 + 8) = v57;
      *(v63 + 9) = v28;
      *(v63 + 10) = v61;
      *(v63 + 11) = v29;
      *(v63 + 12) = v62;
      v96[4] = v54;
      v64 = v58 >= v95;
      v65 = v58 - v95;
      if (!v65)
      {
        v66 = v85[0];
        v67 = v90;
        v68 = v94;
LABEL_36:
        v72 = *(v96[3] + 16) - 1;
        lazy protocol witness table accessor for type Int and conformance Int();
        default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v73, v74);
        lazy protocol witness table accessor for type UInt64 and conformance UInt64();
        default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v75, v76);
        v77 = OSSignposter.logHandle.getter();
        OSSignpostIntervalState.signpostID.getter();
        v78 = static os_signpost_type_t.end.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {

          checkForErrorAndConsumeState(state:)();

          v79 = v86;
          if ((*(v86 + 88))(v56, v87) == *MEMORY[0x1E69E93E8])
          {
            v80 = 0;
            v81 = "[Error] Interval already ended";
          }

          else
          {
            (*(v79 + 8))(v56, v87);
            v81 = "index=%{name=index}ld size=%{xcode:size-in-bytes, name=size}llu";
            v80 = 2;
          }

          v82 = swift_slowAlloc();
          *v82 = 0;
          *(v82 + 1) = v80;
          *(v82 + 2) = 2048;
          *(v82 + 4) = v72;
          *(v82 + 12) = 2048;
          *(v82 + 14) = v95;
          v83 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_18D018000, v77, v78, v83, "addAttachment", v81, v82, 0x16u);
          MEMORY[0x193AC4820](v82, -1, -1);
          v68 = v94;
        }

        (v68)(v67, v66);
        return;
      }

      v66 = v85[0];
      v67 = v90;
      v68 = v94;
      if (!v64)
      {
        __break(1u);
        goto LABEL_43;
      }

      if ((v65 & 0x8000000000000000) != 0)
      {
LABEL_43:
        __break(1u);
      }

      v70 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v70 + 16) = v65;
      bzero((v70 + 32), v65);
      v71 = v97;
      (*(*v96 + 152))(v70 + 32, v65, MEMORY[0x1E69E7508]);

      v97 = v71;
      if (!v71)
      {
        goto LABEL_36;
      }

LABEL_15:

      return;
    }

LABEL_42:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
    v31[3] = v15;
    goto LABEL_20;
  }

  v69 = v97;
  (*(*v31 + 160))(v36);

  v97 = v69;
  if (!v69)
  {
    v31[5] = v36;
  }
}

{
  sub_18D3BB418(a1, a2, a3, a4);
}

void ArchiveWriter.addAttachment(hash:from:)(uint64_t *a1, void (*a2)(void), char *a3)
{
  v93 = a3;
  v101 = *MEMORY[0x1E69E9840];
  v86 = type metadata accessor for OSSignpostError();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v81 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v81 - v13;
  v15 = a1[1];
  v88 = *a1;
  v91 = v15;
  v92 = *(a1 + 4);
  LODWORD(v16) = *(a1 + 20);
  if (one-time initialization token for archiving != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for OSSignposter();
  v18 = __swift_project_value_buffer(v17, static OSSignposter.archiving);
  static OSSignpostID.exclusive.getter();
  v87 = v18;
  v19 = OSSignposter.logHandle.getter();
  v20 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v21 = swift_slowAlloc();
    v84 = a2;
    v22 = v7;
    v23 = v16;
    v16 = v6;
    v24 = v21;
    *v21 = 0;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_18D018000, v19, v20, v25, "addAttachment", "", v24, 2u);
    v26 = v24;
    v6 = v16;
    LODWORD(v16) = v23;
    v7 = v22;
    a2 = v84;
    MEMORY[0x193AC4820](v26, -1, -1);
  }

  (*(v7 + 16))(v11, v14, v6);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v27 = OSSignpostIntervalState.init(id:isOpen:)();
  v30 = *(v7 + 8);
  v28 = v7 + 8;
  v29 = v30;
  v30(v14, v6);
  v31 = v94;
  if (v94[5])
  {
    if (!v16)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  LODWORD(v84) = v16;
  v16 = a2;
  v42 = v29;
  v43 = MEMORY[0x1E69E7508];
  v44 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v44[2] = 16;
  v44[5] = 0;
  v44[4] = 0;
  v45 = v95;
  (*(*v31 + 152))(v44 + 4, 16, v43);

  v95 = v45;
  if (v45)
  {
    goto LABEL_15;
  }

  v29 = v42;
  a2 = v16;
  LOBYTE(v16) = v84;
  if (v84)
  {
LABEL_7:
    memset(&c, 0, sizeof(c));
    CC_SHA1_Init(&c);
    v100 = c;
    LOBYTE(md) = 0;
    swift_beginAccess();
    v32 = *&v100.data[5];
    v33 = *&v100.data[9];
    v34 = *&v100.h4;
    *(v31 + 5) = *&v100.data[1];
    *(v31 + 6) = v32;
    v35 = *&v100.data[13];
    *(v31 + 7) = v33;
    *(v31 + 8) = v35;
    *(v31 + 3) = *&v100.h0;
    *(v31 + 4) = v34;
    *(v31 + 144) = md;
  }

LABEL_8:
  v36 = v31[5];
  v37 = v93;
  v38 = v95;
  a2(v31);
  v95 = v38;
  if (v38)
  {
    goto LABEL_15;
  }

  v39 = v31[5];
  v93 = (v39 - v36);
  if (v39 < v36)
  {
    __break(1u);
    goto LABEL_42;
  }

  v84 = v27;
  v83 = v28;
  v82 = v29;
  if (v16)
  {
    swift_beginAccess();
    if (v31[18])
    {
      __break(1u);
      return;
    }

    v97 = 0;
    md = 0;
    v98 = 0;
    CC_SHA1_Final(&md, (v31 + 6));
    LODWORD(a2) = md;
    v28 = HIDWORD(md);
    v40 = v97;
    v27 = HIDWORD(v97);
    v41 = v98;
    swift_endAccess();
    LOBYTE(v100.h0) = 1;
    *(v31 + 3) = 0u;
    *(v31 + 4) = 0u;
    *(v31 + 5) = 0u;
    *(v31 + 6) = 0u;
    *(v31 + 7) = 0u;
    *(v31 + 8) = 0u;
    *(v31 + 144) = 1;
  }

  else
  {
    LODWORD(a2) = v88;
    v28 = HIDWORD(v88);
    v40 = v91;
    v27 = HIDWORD(v91);
    v41 = v92;
  }

  v46 = v31[4];
  v92 = v41;
  specialized Collection<>.firstIndex(of:)(a2 | (v28 << 32), v40 | (v27 << 32), v41, v46);
  if (v47)
  {
    v91 = v40;
    v37 = v31[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31[3] = v37;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_20:
      v50 = *(v37 + 2);
      v49 = *(v37 + 3);
      v81 = v6;
      if (v50 >= v49 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v37);
      }

      v51 = v93;
      v52 = (v93 + 15);
      *(v37 + 2) = v50 + 1;
      v53 = &v37[16 * v50];
      *(v53 + 4) = v36;
      *(v53 + 5) = v51;
      v54 = v94;
      v94[3] = v37;
      v55 = v54[4];
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v54[4] = v55;
      if ((v56 & 1) == 0)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 2) + 1, 1, v55);
        v54[4] = v55;
      }

      v57 = v89;
      v58 = v52 & 0xFFFFFFFFFFFFFFF0;
      v60 = *(v55 + 2);
      v59 = *(v55 + 3);
      if (v60 >= v59 >> 1)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v55);
      }

      *(v55 + 2) = v60 + 1;
      v61 = &v55[20 * v60];
      *(v61 + 8) = a2;
      *(v61 + 9) = v28;
      *(v61 + 10) = v91;
      *(v61 + 11) = v27;
      *(v61 + 12) = v92;
      v94[4] = v55;
      v62 = v58 >= v93;
      v63 = v58 - v93;
      if (!v63)
      {
        v64 = v81;
        v65 = v90;
LABEL_36:
        v69 = *(v94[3] + 16) - 1;
        lazy protocol witness table accessor for type Int and conformance Int();
        default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v70, v71);
        lazy protocol witness table accessor for type UInt64 and conformance UInt64();
        default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v72, v73);
        v74 = OSSignposter.logHandle.getter();
        OSSignpostIntervalState.signpostID.getter();
        v75 = static os_signpost_type_t.end.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {

          checkForErrorAndConsumeState(state:)();

          v76 = v85;
          if ((*(v85 + 88))(v57, v86) == *MEMORY[0x1E69E93E8])
          {
            v77 = 0;
            v78 = "[Error] Interval already ended";
          }

          else
          {
            (*(v76 + 8))(v57, v86);
            v78 = "index=%{name=index}ld size=%{xcode:size-in-bytes, name=size}llu";
            v77 = 2;
          }

          v79 = swift_slowAlloc();
          *v79 = 0;
          *(v79 + 1) = v77;
          *(v79 + 2) = 2048;
          *(v79 + 4) = v69;
          *(v79 + 12) = 2048;
          *(v79 + 14) = v93;
          v80 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_18D018000, v74, v75, v80, "addAttachment", v78, v79, 0x16u);
          MEMORY[0x193AC4820](v79, -1, -1);
        }

        v82(v65, v64);
        return;
      }

      v64 = v81;
      v65 = v90;
      if (!v62)
      {
        __break(1u);
        goto LABEL_43;
      }

      if ((v63 & 0x8000000000000000) != 0)
      {
LABEL_43:
        __break(1u);
      }

      v67 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v67 + 16) = v63;
      bzero((v67 + 32), v63);
      v68 = v95;
      (*(*v94 + 152))(v67 + 32, v63, MEMORY[0x1E69E7508]);

      v95 = v68;
      if (!v68)
      {
        goto LABEL_36;
      }

LABEL_15:

      return;
    }

LABEL_42:
    v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
    v31[3] = v37;
    goto LABEL_20;
  }

  v66 = v95;
  (*(*v31 + 160))(v36);

  v95 = v66;
  if (!v66)
  {
    v31[5] = v36;
  }
}

void type metadata accessor for (offset: UInt64, size: UInt64)()
{
  if (!lazy cache variable for type metadata for (offset: UInt64, size: UInt64))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: UInt64, size: UInt64));
    }
  }
}

void ArchiveWriter.didAppendBytes(ptr:count:)(const void *a1, unint64_t a2)
{
  if (a2 >= 1)
  {
    v4 = *(v2 + 40);
    v5 = __CFADD__(v4, a2);
    v6 = v4 + a2;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 40) = v6;
      swift_beginAccess();
      if (*(v2 + 144))
      {
LABEL_7:
        swift_endAccess();
        return;
      }

      if (!a1)
      {
LABEL_11:
        __break(1u);
        return;
      }

      if (!HIDWORD(a2))
      {
        CC_SHA1_Update((v2 + 48), a1, a2);
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t ArchiveWriter.deinit()
{

  return v0;
}

uint64_t ArchiveWriter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double FileArchiveWriter.__allocating_init(file:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = v3;
  *(v2 + 40) = 0;
  result = 0.0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 1;
  *(v2 + 152) = MEMORY[0x1E69E7CC8];
  *(v2 + 160) = a1;
  return result;
}

uint64_t FileArchiveWriter.init(file:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 1;
  *(v1 + 152) = MEMORY[0x1E69E7CC8];
  *(v1 + 160) = a1;
  return v1;
}

uint64_t FileArchiveWriter.__allocating_init(url:)(uint64_t a1)
{
  v2 = v1;
  URL.path.getter();
  String.utf8CString.getter();

  v4 = open(_:_:_:)();

  if ((v4 & 0x80000000) != 0)
  {
    lazy protocol witness table accessor for type Error and conformance Error();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 1;
    swift_willThrow();
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AC00]) initWithFileDescriptor:v4 closeOnDealloc:1];
    v2 = swift_allocObject();
    v6 = MEMORY[0x1E69E7CC0];
    *(v2 + 24) = MEMORY[0x1E69E7CC0];
    *(v2 + 32) = v6;
    *(v2 + 16) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 144) = 1;
    *(v2 + 152) = MEMORY[0x1E69E7CC8];
    *(v2 + 160) = v5;
  }

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FileArchiveWriter.finalize()()
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ((*(v0 + 16) & 1) == 0)
  {
    ArchiveWriter.finalize()();
    if (!v1)
    {
      v2 = *(v0 + 160);
      v6[0] = 0;
      if ([v2 closeAndReturnError_])
      {
        v3 = v6[0];
      }

      else
      {
        v4 = v6[0];
        v5 = _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }
}

void FileArchiveWriter.append(_:)(uint64_t result, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v3)
    {
      if (result == result >> 32)
      {
        return;
      }
    }

    else if ((a2 & 0xFF000000000000) == 0)
    {
      return;
    }

LABEL_9:

    specialized Data._Representation.withUnsafeBytes<A>(_:)(result, a2, v2);
    return;
  }

  if (v3 == 2 && *(result + 16) != *(result + 24))
  {
    goto LABEL_9;
  }
}

void FileArchiveWriter.appendBytes(_:size:)(char *a1, uint64_t a2)
{
  v5 = [*(v2 + 160) fileDescriptor];
  if (a2 >= 1)
  {
    v6 = v5;
    v7 = a1;
    v8 = a2;
    do
    {
      while (1)
      {
        v9 = write(v6, v7, v8);
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

        if (MEMORY[0x193ABE310]() != 35)
        {
          v14 = MEMORY[0x193ABE310]();
          lazy protocol witness table accessor for type Error and conformance Error();
          swift_allocError();
          *v15 = v14;
          *(v15 + 8) = 0;
          swift_willThrow();
          return;
        }
      }

      v7 += v9;
      v10 = v8 <= v9;
      v8 -= v9;
    }

    while (!v10);
    v11 = *(v2 + 40);
    v12 = __CFADD__(v11, a2);
    v13 = v11 + a2;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 40) = v13;
      swift_beginAccess();
      if (*(v2 + 144))
      {
LABEL_12:
        swift_endAccess();
        return;
      }

      if (a2 <= 0xFFFFFFFFLL)
      {
        CC_SHA1_Update((v2 + 48), a1, a2);
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void FileArchiveWriter.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = UnsafeBufferPointer.baseAddress.getter();
    if (v5)
    {
      v6 = *(*(a3 - 8) + 72);
      if ((a2 * v6) >> 64 == (a2 * v6) >> 63)
      {
        FileArchiveWriter.appendBytes(_:size:)(v5, a2 * v6);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FileArchiveWriter.rewind(to:)(Swift::UInt64 to)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 160);
  v6[0] = 0;
  if ([v3 truncateAtOffset:to error:v6])
  {
    v4 = v6[0];
  }

  else
  {
    v5 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t FileArchiveWriter.deinit()
{

  return v0;
}

uint64_t FileArchiveWriter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void DataArchiveWriter.finalizeData()()
{
  if (*(v0 + 16))
  {
    goto LABEL_2;
  }

  v2 = *(v0 + 24);
  v3 = *(v2 + 16);

  specialized DataArchiveWriter.append<A>(_:)((v2 + 32), v3);

  if (!v1)
  {
    if (!HIDWORD(*(*(v0 + 24) + 16)))
    {
      v4[0] = *(*(v0 + 24) + 16);
      v4[1] = -782886287;
      specialized DataArchiveWriter.append<A>(_:)(v4, 2);
      *(v0 + 16) = 1;
LABEL_2:
      swift_beginAccess();
      outlined copy of Data._Representation(*(v0 + 160), *(v0 + 168));
      return;
    }

    __break(1u);
  }
}

double DataArchiveWriter.append(_:)(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Data.append(_:)();
  swift_endAccess();

  return specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2, v2);
}

void closure #1 in DataArchiveWriter.append(_:)(const void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a2 - a1;
    if (a2 - a1 >= 1)
    {
      v5 = *(a3 + 40);
      v6 = __CFADD__(v5, v3);
      v7 = v5 + v3;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        *(a3 + 40) = v7;
        swift_beginAccess();
        if (*(a3 + 144))
        {
LABEL_7:
          swift_endAccess();
          return;
        }

        if (!HIDWORD(v3))
        {
          CC_SHA1_Update((a3 + 48), a1, v3);
          goto LABEL_7;
        }
      }

      __break(1u);
    }
  }
}

void specialized DataArchiveWriter.append<A>(_:)(char *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (a2)
  {
    if (a1 && (a2 - 0x800000000000000) >> 60 != 15)
    {
      goto LABEL_16;
    }

    Data._Representation.append(contentsOf:)();
  }

  swift_endAccess();
  if ((a2 - 0x800000000000000) >> 60 != 15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = 16 * a2;
  if (16 * a2 < 1)
  {
    return;
  }

  v7 = *(v3 + 40);
  v8 = __CFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
    goto LABEL_15;
  }

  *(v3 + 40) = v9;
  swift_beginAccess();
  if ((*(v3 + 144) & 1) == 0)
  {
    if (!a1)
    {
LABEL_18:
      __break(1u);
      return;
    }

    if (!HIDWORD(v6))
    {
      CC_SHA1_Update((v3 + 48), a1, 16 * a2);
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  swift_endAccess();
}

{
  v3 = v2;
  swift_beginAccess();
  if (a2)
  {
    if (a1 && (a2 - 0x2000000000000000) >> 62 != 3)
    {
      goto LABEL_16;
    }

    Data._Representation.append(contentsOf:)();
  }

  swift_endAccess();
  if ((a2 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = 4 * a2;
  if (4 * a2 < 1)
  {
    return;
  }

  v7 = *(v3 + 40);
  v8 = __CFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
    goto LABEL_15;
  }

  *(v3 + 40) = v9;
  swift_beginAccess();
  if ((*(v3 + 144) & 1) == 0)
  {
    if (!a1)
    {
LABEL_18:
      __break(1u);
      return;
    }

    if (!HIDWORD(v6))
    {
      CC_SHA1_Update((v3 + 48), a1, 4 * a2);
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  swift_endAccess();
}

void DataArchiveWriter.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Data.append<A>(_:)();
  swift_endAccess();
  v5 = UnsafeBufferPointer.baseAddress.getter();
  v6 = *(*(a3 - 8) + 72);
  if ((a2 * v6) >> 64 == (a2 * v6) >> 63)
  {
    ArchiveWriter.didAppendBytes(ptr:count:)(v5, a2 * v6);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DataArchiveWriter.rewind(to:)(Swift::UInt64 to)
{
  if ((to & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v6 = 0;
    if (v5 != 2 || (v8 = v3 + 16, v3 = *(v3 + 16), v7 = *(v8 + 8), v6 = v7 - v3, !__OFSUB__(v7, v3)))
    {
LABEL_11:
      if (v6 >= to)
      {
        swift_beginAccess();
        Data._Representation.replaceSubrange(_:with:count:)();
        swift_endAccess();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(v4);
    goto LABEL_11;
  }

  v9 = __OFSUB__(HIDWORD(v3), v3);
  v10 = HIDWORD(v3) - v3;
  if (!v9)
  {
    v6 = v10;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

double DataArchiveWriter.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 160) = xmmword_18DDBA7E0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 1;
  *(v0 + 152) = MEMORY[0x1E69E7CC8];
  return result;
}

double DataArchiveWriter.init()()
{
  *(v0 + 160) = xmmword_18DDBA7E0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 1;
  *(v0 + 152) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t DataArchiveWriter.deinit()
{

  outlined consume of Data._Representation(*(v0 + 160), *(v0 + 168));
  return v0;
}

uint64_t DataArchiveWriter.__deallocating_deinit()
{

  outlined consume of Data._Representation(*(v0 + 160), *(v0 + 168));

  return swift_deallocClassInstance();
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance ArchiveReader@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < *(*v2 + 40))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance ArchiveReader(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v2 & 0x8000000000000000) == 0 && v2 < *(*v1 + 40))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

double (*protocol witness for Collection.subscript.read in conformance ArchiveReader(void *a1, uint64_t *a2))(uint64_t a1)
{
  ArchiveReader.subscript.getter(*a2);
  a1[2] = v3;
  a1[3] = v4;
  *a1 = v3;
  a1[1] = v4;
  return protocol witness for Collection.subscript.read in conformance ArchiveReader;
}

void protocol witness for Collection.subscript.getter in conformance ArchiveReader(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *a1;
  if (*a1 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = a1[1];
  if (v5 >= v7)
  {
    *a2 = v6;
    a2[1] = v7;
    a2[2] = v4;

    return;
  }

LABEL_7:
  __break(1u);
}

void protocol witness for Collection.indices.getter in conformance ArchiveReader(void *a1@<X8>)
{
  v2 = *(*v1 + 40);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v2;
  }
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance ArchiveReader@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0 && *(*v3 + 40) >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance ArchiveReader@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance ArchiveReader(uint64_t *result, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 40);
  if (v4 >= *a2)
  {
    v5 = *result;
    if (((v3 | *result) & 0x8000000000000000) == 0 && v4 >= v5)
    {
      return (v3 - v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance ArchiveReader@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || v3 >= *(*v2 + 40))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + 1;
  }

  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance ArchiveReader(uint64_t *result)
{
  v2 = *result;
  if (*result < 0 || v2 >= *(*v1 + 40))
  {
    __break(1u);
  }

  else
  {
    *result = v2 + 1;
  }

  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ArchiveReader(uint64_t a1)
{
  v3.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for ArchiveReader, a1);

  return MEMORY[0x1EEE698E0](a1, v2, v3);
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance ArchiveReader()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

double FileArchiveReader.__ivar_destroyer()
{

  return result;
}

char *DataArchiveReader.__allocating_init(data:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *(v4 + 48) = isa;
  v6 = ArchiveReader.init(buffer:)([(objc_class *)isa bytes], [(objc_class *)isa length]);
  outlined consume of Data._Representation(a1, a2);
  return v6;
}

char *DataArchiveReader.init(data:)(uint64_t a1, unint64_t a2)
{
  v5.super.isa = Data._bridgeToObjectiveC()().super.isa;
  *(v2 + 48) = v5;
  v6 = ArchiveReader.init(buffer:)(-[objc_class bytes](v5.super.isa, sel_bytes), [*(v2 + 48) length]);
  outlined consume of Data._Representation(a1, a2);
  return v6;
}

uint64_t DataArchiveReader.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void ArchiveWriter.withDataConsumer(do:)(void (*a1)(void))
{
  v10 = *MEMORY[0x1E69E9840];
  info = v1;
  v9 = 0;
  cbks.putBytes = @objc closure #1 in closure #1 in ArchiveWriter.withDataConsumer(do:);
  cbks.releaseConsumer = 0;

  v4 = CGDataConsumerCreate(&info, &cbks);
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  a1();
  if (v2)
  {
    v6 = v9;
  }

  else
  {

    if (v9)
    {
      swift_willThrow();
    }
  }
}

double ProtobufDecoder.value<A>(fromBinaryPlist:type:configuration:)@<D0>(uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v19 = a3;
  v17 = a6;
  v8 = type metadata accessor for Optional();
  v18 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();

  dispatch thunk of PropertyListDecoder.userInfo.setter();
  v11 = type metadata accessor for Array();
  v21 = a5;
  swift_getWitnessTable(MEMORY[0x1E6969E10], v11, &v21);
  v12 = v20;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:configuration:)();
  if (!v12)
  {
    v13 = v18;
    swift_getWitnessTable(MEMORY[0x1E69E6340], v11);
    Collection.first.getter();
    v14 = *(a4 - 8);
    if ((*(v14 + 48))(v10, 1, a4) != 1)
    {

      (*(v14 + 32))(v17, v10, a4);

      return result;
    }

    (*(v13 + 8))(v10, v8);

    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
  }

  return result;
}

void *closure #1 in closure #1 in ArchiveWriter.withDataConsumer(do:)(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = *(**result + 152);

    v5(a2, a3, MEMORY[0x1E69E7508]);

    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v19, 0, 14);
      closure #1 in DataArchiveWriter.append(_:)(v19, v19, a3);
      goto LABEL_13;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
LABEL_11:

    specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v11, v12, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
LABEL_13:

    return result;
  }

  if (v5)
  {
    v11 = a1;
    v12 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  data = a1;
  v14 = a2;
  v15 = BYTE2(a2);
  v16 = BYTE3(a2);
  v17 = BYTE4(a2);
  v6 = BYTE6(a2);
  v18 = BYTE5(a2);
  if (!BYTE6(a2))
  {

    return result;
  }

  v7 = *(a3 + 40);
  v8 = __CFADD__(v7, BYTE6(a2));
  v9 = v7 + BYTE6(a2);
  if (v8)
  {
LABEL_17:
    __break(1u);
  }

  *(a3 + 40) = v9;
  swift_beginAccess();
  if ((*(a3 + 144) & 1) == 0)
  {
    CC_SHA1_Update((a3 + 48), &data, v6);
  }

  swift_endAccess();

  return result;
}

void specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __DataStorage._bytes.getter();
  if (v7)
  {
    v8 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = MEMORY[0x193ABC2C0]();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v7[v12];
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  closure #1 in DataArchiveWriter.append(_:)(v7, v14, a4);
}

void specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  v4 = __DataStorage._bytes.getter();
  if (v4)
  {
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v5))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v4 += a1 - v5;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = MEMORY[0x193ABC2C0]();
  if (!v4)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  FileArchiveWriter.appendBytes(_:size:)(v4, v9);
}

{
  v4 = __DataStorage._bytes.getter();
  if (v4)
  {
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v5))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v4 += a1 - v5;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = MEMORY[0x193ABC2C0]();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = &v4[v9];
  if (v4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  ProtobufEncoder.encodeData(_:)(v4, v11);
}

uint64_t *closure #2 in Data.init<A>(_:)@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t *__return_ptr, void *, char *, double), uint64_t a2)
{
  v4 = v2;
  v18[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v18, 0, 15);
      (a1)(&v16, v18, v18);
      return;
    }

    outlined consume of Data._Representation(v7, v6);
    v16 = v7;
    v17 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_18DDBA7E0;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v16 + 16), *(v16 + 24), a1);
    v11 = v17 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v16;
      v4[1] = v11;
      return;
    }

    *v4 = v16;
    goto LABEL_18;
  }

  if (!v8)
  {
    v9 = outlined consume of Data._Representation(v7, v6);
    v18[0] = v7;
    LOWORD(v18[1]) = v6;
    BYTE2(v18[1]) = BYTE2(v6);
    BYTE3(v18[1]) = BYTE3(v6);
    BYTE4(v18[1]) = BYTE4(v6);
    BYTE5(v18[1]) = BYTE5(v6);
    BYTE6(v18[1]) = BYTE6(v6);
    a1(&v16, v18, v18 + BYTE6(v6), v9);
    v10 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
    *v4 = v18[0];
    v4[1] = v10;
    return;
  }

  v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  outlined consume of Data._Representation(v7, v6);
  *v4 = xmmword_18DDBA7E0;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  v13 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v13 < v7)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
    {
LABEL_22:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v12 = v14;
  }

  if (v13 < v7)
  {
    __break(1u);
    goto LABEL_21;
  }

  specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v7, v7 >> 32, a1);

  v11 = v12 | 0x4000000000000000;
  if (v3)
  {
    *v4 = v7;
LABEL_18:
    v4[1] = v11;
    return;
  }

  *v4 = v7;
  v4[1] = v11;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x193ABC2C0]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchiveReader and conformance ArchiveReader, a2, type metadata accessor for ArchiveReader, protocol conformance descriptor for ArchiveReader);
}

{
  lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchiveReader and conformance ArchiveReader, a2, type metadata accessor for ArchiveReader, protocol conformance descriptor for ArchiveReader);
}

void lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  if (!*a1)
  {
    v6 = a3(a2);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void lazy protocol witness table accessor for type Slice<ArchiveReader> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  if (!*a1)
  {
    type metadata accessor for Slice<ArchiveReader>(255);
    v7 = v6;
    v9 = a2();
    swift_getWitnessTable(a3, v7, &v9);
    atomic_store(v8, a1);
  }
}

void type metadata accessor for Slice<ArchiveReader>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ArchiveReader();
    lazy protocol witness table accessor for type ArchiveReader and conformance ArchiveReader(&lazy protocol witness table cache variable for type ArchiveReader and conformance ArchiveReader, v7, type metadata accessor for ArchiveReader, protocol conformance descriptor for ArchiveReader);
    v9 = a3(a1, v6, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

double specialized ProtobufEncoder.encodeAttachedValue<A>(key:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for OSSignpostID();
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  v46 = *a3;
  v47 = v13;
  v48 = *(a3 + 24);
  v14 = ProtobufEncoder.archiveWriter.getter();
  if (v14)
  {
    v15 = v14;
    v44 = a1;
    v45 = a2;
    lazy protocol witness table accessor for type Image.Location.BundlePath and conformance Image.Location.BundlePath();
    v17 = v16;

    v41 = v17;
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    v18 = v15[19];
    if (!*(v18 + 16) || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(&v46), (v20 & 1) == 0))
    {
      swift_endAccess();
      outlined destroy of AnyHashable(&v46);

      v29 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(a4, a5);
      v31 = v30;
      outlined copy of Data._Representation(v29, v30);
      _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4DataV_Tt1g5(v29, v31, &v46);
      v10 = v47;
      v32 = *(&v46 + 1);
      v12 = v46;
      v42 = specialized Collection<>.firstIndex(of:)(v46, *(&v46 + 1), v47, v15[4]);
      if (v33)
      {
        v46 = __PAIR128__(v32, v12);
        LODWORD(v47) = v10;
        BYTE4(v47) = 0;
        outlined copy of Data._Representation(v29, v31);
        v34 = v43;
        specialized ArchiveWriter.addAttachment(hash:from:)(&v46, v15, v29, v31);
        if (v34)
        {

          return outlined consume of Data._Representation(v29, v31);
        }

        v42 = v35;
        outlined consume of Data._Representation(v29, v31);
      }

      else
      {
        outlined consume of Data._Representation(v29, v31);
      }

      v44 = a1;
      v45 = a2;

      AnyHashable.init<A>(_:)();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v15[19];
      v15[19] = 0x8000000000000000;
      v21 = v42;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, &v46, isUniquelyReferenced_nonNull_native);
      outlined destroy of AnyHashable(&v46);
      v15[19] = v49;
      swift_endAccess();
      goto LABEL_15;
    }

    v21 = *(*(v18 + 56) + 8 * v19);
    swift_endAccess();
    outlined destroy of AnyHashable(&v46);
    if (one-time initialization token for archiving != -1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v22 = type metadata accessor for OSSignposter();
      __swift_project_value_buffer(v22, static OSSignposter.archiving);
      lazy protocol witness table accessor for type Int and conformance Int();
      default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ())?(v23, v24);
      static OSSignpostID.exclusive.getter();
      v25 = OSSignposter.logHandle.getter();
      v26 = static os_signpost_type_t.event.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = v21;
        v28 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_18D018000, v25, v26, v28, "addAttachment.cacheHit", "index=%{name=index}ld", v27, 0xCu);
        MEMORY[0x193AC4820](v27, -1, -1);
      }

      (*(v42 + 8))(v12, v10);
LABEL_15:
      if ((v21 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_18:
      swift_once();
    }

    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v21);
  }

  else
  {

    v37 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(a4, a5);
    v39 = v38;
    ProtobufEncoder.dataField(_:_:)(2, v37, v38);
    return outlined consume of Data._Representation(v37, v39);
  }

  return result;
}

unint64_t type metadata accessor for ContiguousBytes()
{
  result = lazy cache variable for type metadata for ContiguousBytes;
  if (!lazy cache variable for type metadata for ContiguousBytes)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ContiguousBytes);
  }

  return result;
}

uint64_t outlined destroy of ContiguousBytes?(uint64_t a1)
{
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for ContiguousBytes?, type metadata accessor for ContiguousBytes, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

void lazy protocol witness table accessor for type CodableCGImage.Error and conformance CodableCGImage.Error()
{
  if (!lazy protocol witness table cache variable for type CodableCGImage.Error and conformance CodableCGImage.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableCGImage.Error, &type metadata for CodableCGImage.Error, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableCGImage.Error and conformance CodableCGImage.Error);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableCGImage.Error and conformance CodableCGImage.Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableCGImage.Error, &type metadata for CodableCGImage.Error, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableCGImage.Error and conformance CodableCGImage.Error);
  }
}

void lazy protocol witness table accessor for type RBShader and conformance NSObject()
{
  if (!lazy protocol witness table cache variable for type RBShader and conformance NSObject)
  {
    v2 = type metadata accessor for CAMediaTimingFunction(255, &lazy cache variable for type metadata for RBShader, 0x1E69C70F0);
    swift_getWitnessTable(MEMORY[0x1E69E81B8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RBShader and conformance NSObject);
  }
}

void _ValueActionModifier.action.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));

  *v6 = a1;
  v6[1] = a2;
}

double _ValueActionModifier.sendAction(old:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v9 = *(a2 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5, v11);
  v14 = *(v9 + 48);
  if (v14(v8, 1, a2) == 1)
  {
    (*(v9 + 16))(v13, v2, a2);
    if (v14(v8, 1, a2) != 1)
    {
      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    (*(v9 + 32))(v13, v8, a2);
  }

  v15 = *&v13[*(a2 + 36)];
  v16 = *(v9 + 8);

  v16(v13, a2);
  v15(v2);

  return result;
}

uint64_t _ValueActionModifier.init(value:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  result = a6(0, a4, a5);
  v14 = (a7 + *(result + 36));
  *v14 = a2;
  v14[1] = a3;
  return result;
}

double key path getter for _ValueActionModifier.action : <A>_ValueActionModifier<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v12 = *(a2 + a3 - 16);
  v11 = *(a1 + *(a4(0, *(a2 + a3 - 16), *(a2 + a3 - 8)) + 36));
  v9 = swift_allocObject();
  *(v9 + 16) = v12;
  *(v9 + 32) = v11;
  *a7 = a6;
  a7[1] = v9;

  return result;
}

void key path setter for _ValueActionModifier.action : <A>_ValueActionModifier<A>(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void, void), uint64_t a7)
{
  v12 = *(a3 + a4 - 16);
  v13 = *a1;
  v10 = swift_allocObject();
  *(v10 + 16) = v12;
  *(v10 + 32) = v13;
  v11 = (a2 + *(a6(0, v12, *(&v12 + 1)) + 36));

  *v11 = a7;
  v11[1] = v10;
}

uint64_t _ValueActionModifier.action.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t static _ValueActionModifier3._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27[1] = a4;
  v28 = a3;
  v27[0] = a7;
  v49 = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v27 - v12;
  v15 = type metadata accessor for ValueActionDispatcher3(0, a5, a6, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v27 - v17;
  v19 = *a1;
  v47 = *a2;
  v48 = *(a2 + 2);
  LODWORD(a1) = *(a2 + 6);
  v20 = *(a2 + 7);
  v21 = a2[3];
  v43 = a2[2];
  v44 = v21;
  v45 = a2[4];
  v46 = *(a2 + 20);
  (*(*(a5 - 8) + 56))(v13, 1, 1, a5);
  default argument 8 of ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)(&v35);
  v29 = v35;
  v30 = DWORD2(v35);
  v31 = BYTE12(v35);
  ValueActionDispatcher3.init(modifier:phase:transaction:oldValue:lastResetSeed:cycleDetector:)(v19, a1, v20, v13, 0, &v29, a5, a6, v18);
  v33 = v15;
  swift_getWitnessTable(protocol conformance descriptor for ValueActionDispatcher3<A>, v15);
  v34 = v22;
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, closure #1 in Attribute.init<A>(_:)partial apply, v32, v15, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  (*(v16 + 8))(v18, v15);
  v25 = AGGraphSetFlags();
  v35 = v47;
  v36 = v48;
  v37 = a1;
  v38 = v20;
  v39 = v43;
  v40 = v44;
  v41 = v45;
  v42 = v46;
  return v28(v25, &v35);
}

uint64_t ValueActionDispatcher3.init(modifier:phase:transaction:oldValue:lastResetSeed:cycleDetector:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v14 = *(a6 + 2);
  v15 = *(a6 + 12);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v16 = type metadata accessor for ValueActionDispatcher3(0, a7, a8, a4);
  v17 = v16[11];
  v18 = type metadata accessor for Optional();
  v19 = *a6;
  result = (*(*(v18 - 8) + 32))(&a9[v17], a4, v18);
  *&a9[v16[12]] = a5;
  v21 = &a9[v16[13]];
  *v21 = v19;
  *(v21 + 2) = v14;
  v21[12] = v15;
  return result;
}

uint64_t static _ValueActionModifier3._makeViewList(modifier:inputs:body:)@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27[1] = a4;
  v28 = a3;
  v27[0] = a7;
  v38 = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v27 - v12;
  v15 = type metadata accessor for ValueActionDispatcher3(0, a5, a6, v14);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v27 - v18;
  LODWORD(a1) = *a1;
  v20 = *(a2 + 24);
  v21 = *(a2 + 28);
  (*(*(a5 - 8) + 56))(v13, 1, 1, a5, v17);
  default argument 8 of ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)(&v32);
  v29 = v32;
  v30 = v33;
  v31 = v34;
  ValueActionDispatcher3.init(modifier:phase:transaction:oldValue:lastResetSeed:cycleDetector:)(a1, v20, v21, v13, 0, &v29, a5, a6, v19);
  v36 = v15;
  swift_getWitnessTable(protocol conformance descriptor for ValueActionDispatcher3<A>, v15);
  v37 = v22;
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, closure #1 in Attribute.init<A>(_:)partial apply, v35, v15, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  (*(v16 + 8))(v19, v15);
  v25 = AGGraphSetFlags();
  return v28(v25, a2);
}

uint64_t ValueActionDispatcher3.modifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = type metadata accessor for _ValueActionModifier3(0, *(a1 + 16), *(a1 + 24), a3);
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a2, Value, v4);
}

uint64_t ValueActionDispatcher3.updateValue()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v49 = v11;
  v50 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v13 = *(a1 + 24);
  v52 = &v43 - v14;
  v53 = v13;
  v16 = type metadata accessor for _ValueActionModifier3(0, v4, v13, v15);
  v54 = *(v16 - 8);
  v55 = v16;
  v17 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v43 - v19;
  Value = AGGraphGetValue();
  v22 = *(a1 + 48);
  if (*(v2 + v22) != *Value >> 1)
  {
    *(v2 + v22) = *AGGraphGetValue() >> 1;
    v23 = *(a1 + 44);
    (*(v6 + 8))(v2 + v23, v5);
    (*(v9 + 56))(v2 + v23, 1, 1, v4);
    v24 = v2 + *(a1 + 52);
    *(v24 + 4) = 0xFFFFFFFFLL;
    *(v24 + 12) = 0;
  }

  v25 = v56;
  ValueActionDispatcher3.modifier.getter(a1, v56, v21);
  v26 = *(a1 + 44);
  (*(v6 + 16))(v8, v2 + v26, v5);
  if ((*(v9 + 48))(v8, 1, v4) != 1)
  {
    v46 = v26;
    v47 = v6;
    v48 = v5;
    v27 = v52;
    v45 = *(v9 + 32);
    v45(v52, v8, v4);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      (*(v9 + 8))(v27, v4);
    }

    else
    {
      v28 = v2 + *(a1 + 52);
      AGGraphClearUpdate();
      v29 = *AGGraphGetValue();
      AGGraphSetUpdate();
      if (*(v28 + 4) == v29)
      {
        v30 = *(v28 + 8);
        if (!v30 || (v31 = v30 - 1, (*(v28 + 8) = v31) == 0))
        {
          if (*(v28 + 12) == 1)
          {
            (*(v9 + 8))(v27, v4);
          }

          else
          {
            v57[0] = 0;
            v57[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(44);

            v57[0] = 0;
            v57[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(23);

            strcpy(v57, "onChange(of: ");
            HIWORD(v57[1]) = -4864;
            v42 = _typeName(_:qualified:)();
            MEMORY[0x193ABEDD0](v42);

            MEMORY[0x193ABEDD0](0x6E6F697463612029, 0xE800000000000000);
            MEMORY[0x193ABEDD0](0xD00000000000002ALL, 0x800000018DD75B90);
            specialized static Log.externalWarning(_:)(v57[0], v57[1]);

            (*(v9 + 8))(v27, v4);
            *(v28 + 12) = 1;
          }

          v6 = v47;
          v5 = v48;
          v25 = v56;
          goto LABEL_15;
        }
      }

      else
      {
        *(v28 + 4) = v29;
        *(v28 + 8) = 2;
      }

      AGGraphClearUpdate();
      closure #1 in ValueActionDispatcher3.updateValue()(v2, v4, v53, v57, v32);
      AGGraphSetUpdate();
      v44 = v57[0];
      LOBYTE(v57[0]) = 1;
      v33 = v27;
      v34 = v54;
      (*(v54 + 16))(v51, v56, v55);
      v35 = v50;
      (*(v9 + 16))(v50, v33, v4);
      v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v37 = (v17 + *(v9 + 80) + v36) & ~*(v9 + 80);
      v38 = (v49 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      v40 = v53;
      *(v39 + 16) = v4;
      *(v39 + 24) = v40;
      (*(v34 + 32))(v39 + v36, v51, v55);
      v45((v39 + v37), v35, v4);
      *(v39 + v38) = v44;

      static Update.enqueueAction(reason:_:)(v57, partial apply for closure #2 in ValueActionDispatcher3.updateValue(), v39);

      v25 = v56;

      (*(v9 + 8))(v52, v4);
    }

    v6 = v47;
    v5 = v48;
LABEL_15:
    v26 = v46;
    goto LABEL_16;
  }

  (*(v6 + 8))(v8, v5);
LABEL_16:
  (*(v6 + 8))(v2 + v26, v5);
  (*(v9 + 16))(v2 + v26, v25, v4);
  (*(v54 + 8))(v25, v55);
  return (*(v9 + 56))(v2 + v26, 0, 1, v4);
}

uint64_t closure #1 in ValueActionDispatcher3.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t x3_0@<X3>)
{
  v8 = type metadata accessor for ValueActionDispatcher3(0, a2, a3, x3_0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8, v10);
  v13 = *AGGraphGetValue();
  v14 = *(v9 + 8);

  result = v14(v12, v8);
  *a4 = v13;
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ValueActionDispatcher3<A>(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for ValueActionDispatcher3<A>, a1);

  return static AsyncAttribute.flags.getter();
}

uint64_t *initializeBufferWithCopyOfBuffer for ValueActionDispatcher(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v9 + 3;
  v11 = ((((v9 + 3 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 13;
  v12 = v7 & 0x100000;
  if (v8 > 7 || v12 != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v8 & 0xFC ^ 0x1FC) & (v8 + 16)));
  }

  else
  {
    *a1 = *a2;
    v16 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v17;
    v18 = ((v16 + v8 + 4) & ~v8);
    v19 = ((v17 + v8 + 4) & ~v8);
    if ((*(v5 + 48))((v17 + v8 + 4) & ~v8, 1, v4))
    {
      memcpy(v18, v19, v9);
    }

    else
    {
      (*(v6 + 16))(v18, v19, v4);
      (*(v6 + 56))(v18, 0, 1, v4);
    }

    v20 = ((v18 + v10) & 0xFFFFFFFFFFFFFFFCLL);
    v21 = ((v19 + v10) & 0xFFFFFFFFFFFFFFFCLL);
    *v20 = *v21;
    v22 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v23 = *v22;
    v24 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *(v24 + 5) = *(v22 + 5);
    *v24 = v23;
  }

  return v3;
}

_DWORD *assignWithCopy for ValueActionDispatcher(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  v11 = *(v7 + 48);
  v12 = v11(v9, 1, v6);
  v13 = v11(v10, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 16))(v9, v10, v6);
      (*(v7 + 56))(v9, 0, 1, v6);
      goto LABEL_12;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 24))(v9, v10, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v9, v6);
    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v7 + 84))
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  v18 = ((v9 + v17 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = ((v10 + v17 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v18 = *v19;
  v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v20 = *v21;
  *(v20 + 4) = *(v21 + 4);
  *(v20 + 8) = *(v21 + 8);
  *(v20 + 12) = *(v21 + 12);
  return a1;
}

_DWORD *initializeWithTake for ValueActionDispatcher(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  if ((*(v7 + 48))(v10, 1, v6))
  {
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(v9, v10, v13);
  }

  else
  {
    (*(v7 + 32))(v9, v10, v6);
    v15 = *(v7 + 56);
    v14 = v7 + 56;
    v15(v9, 0, 1, v6);
    v11 = *(v14 + 28);
    v12 = *(v14 + 8);
  }

  if (v11)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  v17 = ((v9 + v16 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v10 + v16 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v17 = *v18;
  v19 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = *v19;
  v21 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *(v21 + 5) = *(v19 + 5);
  *v21 = v20;
  return a1;
}

_DWORD *assignWithTake for ValueActionDispatcher(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v4 + v8 + 4) & ~v8);
  v10 = ((v5 + v8 + 4) & ~v8);
  v11 = *(v7 + 48);
  v12 = v11(v9, 1, v6);
  v13 = v11(v10, 1, v6);
  if (v12)
  {
    if (!v13)
    {
      (*(v7 + 32))(v9, v10, v6);
      (*(v7 + 56))(v9, 0, 1, v6);
      goto LABEL_12;
    }

    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v7 + 40))(v9, v10, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(v9, v6);
    v14 = *(v7 + 84);
    v15 = *(v7 + 64);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  memcpy(v9, v10, v16);
LABEL_12:
  if (*(v7 + 84))
  {
    v17 = *(v7 + 64);
  }

  else
  {
    v17 = *(v7 + 64) + 1;
  }

  v18 = ((v9 + v17 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = ((v10 + v17 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v18 = *v19;
  v20 = (v18 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v21 = (v19 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v20 = *v21;
  *(v20 + 4) = *(v21 + 4);
  *(v20 + 8) = *(v21 + 8);
  *(v20 + 12) = *(v21 + 12);
  return a1;
}

uint64_t getEnumTagSinglePayload for ValueActionDispatcher(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v9 + 3;
  if (v7 >= a2)
  {
    goto LABEL_32;
  }

  v11 = ((((v10 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 13;
  v12 = (a2 - v7 + 255) >> 8;
  if (v11 <= 3)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 2;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *&a1[v11];
      if (*&a1[v11])
      {
        goto LABEL_25;
      }
    }

    else
    {
      v16 = *&a1[v11];
      if (v16)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_32;
  }

  if (!v15 || (v16 = a1[v11]) == 0)
  {
LABEL_32:
    v19 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8;
    if (v6 >= 0xFE)
    {
      v20 = (*(v4 + 48))(v19);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    v22 = *(((((v10 + v19) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 12);
    if (v22 >= 2)
    {
      return ((v22 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_25:
  v17 = (v16 - 1) << (8 * v11);
  if (v11 <= 3)
  {
    v18 = *a1;
  }

  else
  {
    v17 = 0;
    v18 = *a1;
  }

  return v7 + (v18 | v17) + 1;
}

void storeEnumTagSinglePayload for ValueActionDispatcher(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((((v12 + 3 + ((v11 + 8) & ~v11)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 13;
  if (v10 < a3)
  {
    v14 = (a3 - v10 + 255) >> 8;
    if (v13 <= 3)
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
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      v19 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v11 + 4) & ~v11);
      if (v9 < 0xFE)
      {
        v23 = ((&v19[v12 + 3] & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
        if (a2 > 0xFE)
        {
          *(v23 + 12) = 0;
          *(v23 + 8) = 0;
          *v23 = a2 - 255;
        }

        else
        {
          *(v23 + 12) = a2 + 1;
        }
      }

      else if (v9 >= a2)
      {
        v24 = *(v7 + 56);
        v25 = a2 + 1;
        v26 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v11 + 4) & ~v11;

        v24(v26, v25);
      }

      else
      {
        if (v12 <= 3)
        {
          v20 = ~(-1 << (8 * v12));
        }

        else
        {
          v20 = -1;
        }

        if (v12)
        {
          v21 = v20 & (~v9 + a2);
          if (v12 <= 3)
          {
            v22 = v12;
          }

          else
          {
            v22 = 4;
          }

          bzero(v19, v12);
          if (v22 > 2)
          {
            if (v22 == 3)
            {
              *v19 = v21;
              v19[2] = BYTE2(v21);
            }

            else
            {
              *v19 = v21;
            }
          }

          else if (v22 == 1)
          {
            *v19 = v21;
          }

          else
          {
            *v19 = v21;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v17 = ~v10 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v13] = v18;
  }
}

double get_witness_table_7SwiftUI4ViewRzSQRd__r__lAA15ModifiedContentVyxAA20_ValueActionModifierVyqd__GGAaBHPxAaBHD1__AgA0cH0HPyHCHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a2(255, a1[1], a1[3]);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t type metadata completion function for ValueActionDispatcher3(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ValueActionDispatcher3(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v9 + 3;
  v11 = ((((v9 + 3 + ((v7 + 12) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 13;
  v12 = v7 & 0x100000;
  if (v8 > 7 || v12 != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v8 & 0xFC ^ 0x1FC) & (v8 + 16)));
  }

  else
  {
    *a1 = *a2;
    v16 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v17 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v17;
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v18 = *v19;
    v20 = ((v18 + v8 + 4) & ~v8);
    v21 = ((v19 + v8 + 4) & ~v8);
    if ((*(v5 + 48))((v19 + v8 + 4) & ~v8, 1, v4))
    {
      memcpy(v20, v21, v9);
    }

    else
    {
      (*(v6 + 16))(v20, v21, v4);
      (*(v6 + 56))(v20, 0, 1, v4);
    }

    v22 = ((v20 + v10) & 0xFFFFFFFFFFFFFFFCLL);
    v23 = ((v21 + v10) & 0xFFFFFFFFFFFFFFFCLL);
    *v22 = *v23;
    v24 = ((v23 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v25 = *v24;
    v26 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *(v26 + 5) = *(v24 + 5);
    *v26 = v25;
  }

  return v3;
}

uint64_t destroy for ValueActionDispatcher3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v7 = *(v2 - 8);
  v3 = *(v7 + 80);
  v4 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v3 + 4;
  result = (*(v7 + 48))(v4 & ~v3, 1, v2);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(v4 & ~v3, v2);
  }

  return result;
}

_DWORD *initializeWithCopy for ValueActionDispatcher3(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v7 + v11 + 4) & ~v11);
  v13 = ((v8 + v11 + 4) & ~v11);
  if ((*(v10 + 48))(v13, 1, v9))
  {
    v14 = *(v10 + 84);
    v15 = *(v10 + 64);
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v12, v13, v16);
  }

  else
  {
    (*(v10 + 16))(v12, v13, v9);
    v18 = *(v10 + 56);
    v17 = v10 + 56;
    v18(v12, 0, 1, v9);
    v14 = *(v17 + 28);
    v15 = *(v17 + 8);
  }

  if (v14)
  {
    v19 = v15;
  }

  else
  {
    v19 = v15 + 1;
  }

  v20 = ((v12 + v19 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v21 = ((v13 + v19 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v20 = *v21;
  v22 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v23 = *v22;
  v24 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *(v24 + 5) = *(v22 + 5);
  *v24 = v23;
  return a1;
}

_DWORD *assignWithCopy for ValueActionDispatcher3(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v7 + v11 + 4) & ~v11);
  v13 = ((v8 + v11 + 4) & ~v11);
  v14 = *(v10 + 48);
  v15 = v14(v12, 1, v9);
  v16 = v14(v13, 1, v9);
  if (v15)
  {
    if (!v16)
    {
      (*(v10 + 16))(v12, v13, v9);
      (*(v10 + 56))(v12, 0, 1, v9);
      goto LABEL_12;
    }

    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v10 + 24))(v12, v13, v9);
      goto LABEL_12;
    }

    (*(v10 + 8))(v12, v9);
    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  memcpy(v12, v13, v19);
LABEL_12:
  if (*(v10 + 84))
  {
    v20 = *(v10 + 64);
  }

  else
  {
    v20 = *(v10 + 64) + 1;
  }

  v21 = ((v12 + v20 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v22 = ((v13 + v20 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v21 = *v22;
  v23 = (v21 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v24 = (v22 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v23 = *v24;
  *(v23 + 4) = *(v24 + 4);
  *(v23 + 8) = *(v24 + 8);
  *(v23 + 12) = *(v24 + 12);
  return a1;
}

_DWORD *initializeWithTake for ValueActionDispatcher3(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 7;
  *a1 = v5;
  v6 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((v7 + v11 + 4) & ~v11);
  v13 = ((v8 + v11 + 4) & ~v11);
  if ((*(v10 + 48))(v13, 1, v9))
  {
    v14 = *(v10 + 84);
    v15 = *(v10 + 64);
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v12, v13, v16);
  }

  else
  {
    (*(v10 + 32))(v12, v13, v9);
    v18 = *(v10 + 56);
    v17 = v10 + 56;
    v18(v12, 0, 1, v9);
    v14 = *(v17 + 28);
    v15 = *(v17 + 8);
  }

  if (v14)
  {
    v19 = v15;
  }

  else
  {
    v19 = v15 + 1;
  }

  v20 = ((v12 + v19 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v21 = ((v13 + v19 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  *v20 = *v21;
  v22 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v23 = *v22;
  v24 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *(v24 + 5) = *(v22 + 5);
  *v24 = v23;
  return a1;
}
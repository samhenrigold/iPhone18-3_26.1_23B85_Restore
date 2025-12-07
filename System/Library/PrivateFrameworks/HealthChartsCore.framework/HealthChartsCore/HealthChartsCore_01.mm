uint64_t outlined init with copy of AnySeriesData(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void type metadata accessor for (lower: Date, upper: Date)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (lower: Date, upper: Date))
  {
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (lower: Date, upper: Date));
    }
  }
}

void type metadata accessor for ClosedRange<Date>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ClosedRange<Date>)
  {
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v1 = type metadata accessor for ClosedRange();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ClosedRange<Date>);
    }
  }
}

uint64_t outlined init with take of ClosedRange<Date>?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnySeriesData?(0, &lazy cache variable for type metadata for ClosedRange<Date>?, type metadata accessor for ClosedRange<Date>, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnySeriesData?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for AnySeriesData?(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of (lower: Date, upper: Date)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for AnySeriesData?(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for DateInterval(void *a1)
{
  v2 = MEMORY[0x277CC88A8];
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277CC88E8]);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, v2, MEMORY[0x277CC88D0]);
  a1[3] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, v2, MEMORY[0x277CC88B0]);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, v2, MEMORY[0x277CC88B8]);
  a1[4] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> Range<A>(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance ClosedRange<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance Range<A>, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D83D00], MEMORY[0x277D83D50]);
  a1[2] = lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, MEMORY[0x277D83A30], MEMORY[0x277D83D38]);
  a1[3] = lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, MEMORY[0x277D83A08], MEMORY[0x277D83D08]);
  result = lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, MEMORY[0x277D83A18], MEMORY[0x277D83D10]);
  a1[4] = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for Range<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83D00]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for <> ClosedRange<A>(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D83638], MEMORY[0x277D83688]);
  a1[2] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  a1[3] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  result = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
  a1[4] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>()
{
  result = lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>)
  {
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>)
  {
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>)
  {
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Date(void *a1)
{
  v2 = MEMORY[0x277CC9578];
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95C0]);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, v2, MEMORY[0x277CC95A0]);
  a1[3] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, v2, MEMORY[0x277CC9580]);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, v2, MEMORY[0x277CC9588]);
  a1[4] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Date(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], &protocol conformance descriptor for Date);
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<Double, Double>>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for _ContiguousArrayStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(Date, ClosedRange<Double>)>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    _s10Foundation4DateV_SNySdGtMaTm_0(255, a3, a4);
    v5 = type metadata accessor for _ContiguousArrayStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s10Foundation4DateV_SNySdGtMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<Range<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>)
  {
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>);
    }
  }
}

void type metadata accessor for ClosedRange<Int>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<ClosedRange<Double>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ClosedRange<Double>>)
  {
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<ClosedRange<Double>>);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = MEMORY[0x277D83638];
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v11[0] = v6;
    v11[1] = v8;
    v11[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], &protocol conformance descriptor for Date);
    v11[3] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v7, &protocol conformance descriptor for <> ClosedRange<A>);
    v9 = a3(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesData<Date, Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Date();
    v7 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], &protocol conformance descriptor for Date);
    v10[0] = v6;
    v10[1] = MEMORY[0x277D839F8];
    v10[2] = v7;
    v10[3] = &protocol witness table for Double;
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateInterval();
    v7 = MEMORY[0x277D83638];
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v11[0] = v6;
    v11[1] = v8;
    v11[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], &protocol conformance descriptor for DateInterval);
    v11[3] = lazy protocol witness table accessor for type ClosedRange<Double> and conformance ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v7, &protocol conformance descriptor for <> ClosedRange<A>);
    v9 = a3(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined destroy of HealthChartsData.SeriesPoint<DateInterval, Double>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DateInterval();
    v7 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], &protocol conformance descriptor for DateInterval);
    v10[0] = v6;
    v10[1] = MEMORY[0x277D839F8];
    v10[2] = v7;
    v10[3] = &protocol witness table for Double;
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with copy of ClosedRange<Date>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for HealthChartsData.SeriesData<Double, Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = MEMORY[0x277D839F8];
    v8[1] = MEMORY[0x277D839F8];
    v8[2] = &protocol witness table for Double;
    v8[3] = &protocol witness table for Double;
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>>)
  {
    type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>(255, &lazy cache variable for type metadata for HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesPoint);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<HealthChartsData.SeriesPoint<ClosedRange<Double>, ClosedRange<Double>>>);
    }
  }
}

void type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = MEMORY[0x277D83638];
    type metadata accessor for ClosedRange<Int>(255, &lazy cache variable for type metadata for ClosedRange<Double>, MEMORY[0x277D839F8], MEMORY[0x277D83A20], MEMORY[0x277D83638]);
    v10[0] = v7;
    v10[1] = v7;
    v11 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, &lazy cache variable for type metadata for ClosedRange<Double>, v6, &protocol conformance descriptor for <> ClosedRange<A>);
    v12 = v11;
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for AnySeriesData?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t HealthChartsUnit.subscript.getter(uint64_t a1)
{
  v2 = *v1;
  swift_getAtKeyPath();

  return v4;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsUnit.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsUnit.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HealthChartsUnit.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance HealthChartsUnit.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsUnit.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsUnit.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsUnit.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsUnit.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HealthChartsUnit.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  type metadata accessor for KeyedDecodingContainer<HealthChartsUnit.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsUnit.CodingKeys>, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = lazy protocol witness table accessor for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v26 = v9;
    v10 = v29;
    v11 = v6;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v27;
    v13 = v28;
    type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSDimension, 0x277CCA990);
    v14 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v24 = v12;
    v25 = v13;
    if (v14)
    {
      v15 = v14;
      (*(v11 + 8))(v8, v5);
      outlined consume of Data._Representation(v24, v25);
      *v10 = v15;
    }

    else
    {
      v16 = v11;
      v17 = type metadata accessor for DecodingError();
      swift_allocError();
      v19 = v18;
      type metadata accessor for _ContiguousArrayStorage<CodingKey>(0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_25149B950;
      v21 = v26;
      *(v20 + 56) = &type metadata for HealthChartsUnit.CodingKeys;
      *(v20 + 64) = v21;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84168], v17);
      swift_willThrow();
      outlined consume of Data._Representation(v24, v25);
      (*(v16 + 8))(v8, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<CodingKey>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>)
  {
    type metadata accessor for CodingKey();
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<CodingKey>);
    }
  }
}

unint64_t type metadata accessor for CodingKey()
{
  result = lazy cache variable for type metadata for CodingKey;
  if (!lazy cache variable for type metadata for CodingKey)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CodingKey);
  }

  return result;
}

uint64_t HealthChartsUnit.encode(to:)(void *a1)
{
  v19[2] = *MEMORY[0x277D85DE8];
  type metadata accessor for KeyedDecodingContainer<HealthChartsUnit.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsUnit.CodingKeys>, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-1] - v7;
  v9 = *v1;
  v10 = objc_opt_self();
  v19[0] = 0;
  v11 = [v10 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v19];
  v12 = v19[0];
  if (v11)
  {
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v2;
    v15 = v14;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v19[0] = v13;
    v19[1] = v15;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    return outlined consume of Data._Representation(v13, v15);
  }

  else
  {
    v17 = v12;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

void type metadata accessor for KeyedDecodingContainer<HealthChartsUnit.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type HealthChartsUnit.CodingKeys and conformance HealthChartsUnit.CodingKeys();
    v7 = a3(a1, &type metadata for HealthChartsUnit.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

Swift::Double __swiftcall HealthChartsUnit.convert(_:to:)(Swift::Double _, HealthChartsCore::HealthChartsUnit to)
{
  type metadata accessor for Measurement<NSDimension>(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = *v2;
  type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSDimension, 0x277CCA990);
  v12 = v11;
  Measurement.init(value:unit:)();
  Measurement<>.converted(to:)();
  v13 = *(v5 + 8);
  v13(v8, v4);
  Measurement.value.getter();
  v15 = v14;
  v13(v10, v4);
  return v15;
}

void type metadata accessor for Measurement<NSDimension>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Measurement<NSDimension>)
  {
    type metadata accessor for NSKeyedUnarchiver(255, &lazy cache variable for type metadata for NSDimension, 0x277CCA990);
    v1 = type metadata accessor for Measurement();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Measurement<NSDimension>);
    }
  }
}

uint64_t Measurement.init<>(value:unit:)(uint64_t *a1, double a2)
{
  type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSDimension, 0x277CCA990);

  return Measurement.init(value:unit:)();
}

uint64_t Measurement.converted<>(to:)(uint64_t *a1)
{
  type metadata accessor for Measurement<NSDimension>(0);

  return Measurement<>.converted(to:)();
}

uint64_t HealthChartsUnit.convert(_:to:)(uint64_t *a1, double a2, double a3)
{
  type metadata accessor for Measurement<NSDimension>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = *v3;
  type metadata accessor for NSKeyedUnarchiver(0, &lazy cache variable for type metadata for NSDimension, 0x277CCA990);
  v13 = v12;
  Measurement.init(value:unit:)();
  Measurement<>.converted(to:)();
  v14 = *(v6 + 8);
  v14(v9, v5);
  Measurement.value.getter();
  v16 = v15;
  v14(v11, v5);
  v17 = v13;
  Measurement.init(value:unit:)();
  Measurement<>.converted(to:)();
  v14(v9, v5);
  Measurement.value.getter();
  v19 = v18;
  result = (v14)(v11, v5);
  if (v16 > v19)
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for NSKeyedUnarchiver(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

Swift::Int HealthChartsUnit.hashValue.getter()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsUnit()
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsUnit(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

void __swiftcall HKUnit.healthChartsUnit()(HealthChartsCore::HealthChartsUnit_optional *__return_ptr retstr)
{
  v3 = [v1 _foundationUnit];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {

      v3 = 0;
    }
  }

  retstr->value._dimension.super.super.isa = v3;
}

unint64_t lazy protocol witness table accessor for type HealthChartsUnit and conformance HealthChartsUnit()
{
  result = lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit;
  if (!lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit;
  if (!lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit;
  if (!lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsUnit and conformance HealthChartsUnit);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsUnit(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthChartsUnit(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsUnit.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HealthChartsUnit.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

Swift::Int RoundedDateDirection.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RoundedDateDirection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RoundedDateDirection(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](v2);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.Aggregation.intervalDateComponents()@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D83D88];
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Calendar?, MEMORY[0x277CC99E8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  if (*v1 > 2u || *v1)
  {
    v13 = type metadata accessor for Calendar();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = type metadata accessor for TimeZone();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v15 = type metadata accessor for DateComponents();
    return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
  }

  else
  {
    v10 = type metadata accessor for DateComponents();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t HealthChartsData.Aggregation.intervalCalendarComponent()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 2)
  {
    if (!*v1)
    {
      v5 = type metadata accessor for Calendar.Component();
      v6 = *(*(v5 - 8) + 56);
      v7 = v5;
      v8 = a1;
      v9 = 1;
      goto LABEL_15;
    }

    if (v3 == 1)
    {
      v4 = MEMORY[0x277CC99A0];
    }

    else
    {
      v4 = MEMORY[0x277CC9980];
    }
  }

  else if (*v1 > 4u)
  {
    if (v3 == 5)
    {
      v4 = MEMORY[0x277CC9998];
    }

    else
    {
      v4 = MEMORY[0x277CC9988];
    }
  }

  else if (v3 == 3)
  {
    v4 = MEMORY[0x277CC9968];
  }

  else
  {
    v4 = MEMORY[0x277CC9940];
  }

  v10 = *v4;
  v11 = type metadata accessor for Calendar.Component();
  v13 = *(v11 - 8);
  (*(v13 + 104))(a1, v10, v11);
  v6 = *(v13 + 56);
  v8 = a1;
  v9 = 0;
  v7 = v11;
LABEL_15:

  return v6(v8, v9, 1, v7);
}

uint64_t HealthChartsData.Aggregation.aggregationDate(calendar:date:direction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v125 = a2;
  v126 = a1;
  v121 = a4;
  v5 = MEMORY[0x277D83D88];
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for DateComponents?, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v115 = &v107 - v7;
  v117 = type metadata accessor for Calendar.Component();
  v8 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v111 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], v5);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v109 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v113 = &v107 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v114 = &v107 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v110 = &v107 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v112 = &v107 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v107 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v107 - v24;
  v26 = type metadata accessor for DateComponents();
  v119 = *(v26 - 8);
  v120 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v108 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v107 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v107 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v107 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v107 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v107 - v41;
  v43 = type metadata accessor for Date();
  v122 = *(v43 - 8);
  v123 = v43;
  v44 = MEMORY[0x28223BE20](v43);
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v107 - v46;
  MEMORY[0x28223BE20](v45);
  v118 = &v107 - v48;
  v49 = *a3;
  v50 = *v124;
  v107 = v51;
  v116 = v49;
  if (v50 <= 2)
  {
    v113 = v42;
    v114 = v23;
    v112 = v25;
    if (!v50)
    {
      v62 = v122;
      v61 = v123;
      v63 = v118;
      (*(v122 + 16))(v118, v125, v123);
      v59 = v120;
      v74 = v121;
      v60 = v119;
      if (!v116)
      {
        goto LABEL_33;
      }

LABEL_31:
      v127 = v50;
      v103 = v115;
      HealthChartsData.Aggregation.intervalDateComponents()(v115);
      if ((*(v60 + 48))(v103, 1, v59) == 1)
      {
        outlined destroy of Date?(v103, &lazy cache variable for type metadata for DateComponents?, MEMORY[0x277CC8990]);
        goto LABEL_33;
      }

      v104 = v108;
      (*(v60 + 32))(v108, v103, v59);
      v102 = v109;
      Calendar.date(byAdding:to:wrappingComponents:)();
      (*(v60 + 8))(v104, v59);
      (*(v62 + 8))(v63, v61);
      if ((*(v62 + 48))(v102, 1, v61) != 1)
      {
        v105 = *(v62 + 32);
        v106 = v107;
        v105(v107, v102, v61);
        v105(v74, v106, v61);
        goto LABEL_34;
      }

LABEL_37:
      outlined destroy of Date?(v102, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
      v73 = 1;
      return (*(v62 + 56))(v74, v73, 1, v61);
    }

    LODWORD(v124) = v50;
    v59 = v120;
    v63 = v118;
    if (v50 == 1)
    {
      type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
      v64 = *(v8 + 72);
      v65 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_25149BDE0;
      v67 = v66 + v65;
      v68 = *(v8 + 104);
      v69 = v117;
      v68(v67, *MEMORY[0x277CC9978], v117);
      v68(v67 + v64, *MEMORY[0x277CC9988], v69);
      v68(v67 + 2 * v64, *MEMORY[0x277CC9998], v69);
      v68(v67 + 3 * v64, *MEMORY[0x277CC9968], v69);
      v68(v67 + 4 * v64, *MEMORY[0x277CC9980], v69);
      v68(v67 + 5 * v64, *MEMORY[0x277CC99A0], v69);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v66);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v70 = v113;
      Calendar.dateComponents(_:from:)();

      v71 = DateComponents.minute.getter();
      if ((v72 & 1) == 0)
      {
        v74 = v121;
        v62 = v122;
        v61 = v123;
        v60 = v119;
        if (v71)
        {
          DateComponents.minute.setter();
        }

        v102 = v112;
        Calendar.date(from:)();
        (*(v60 + 8))(v70, v59);
        if ((*(v62 + 48))(v102, 1, v61) == 1)
        {
          goto LABEL_37;
        }

        (*(v62 + 32))(v63, v102, v61);
        goto LABEL_30;
      }

      (*(v119 + 8))(v70, v59);
      v73 = 1;
      v74 = v121;
      v62 = v122;
      v61 = v123;
      return (*(v62 + 56))(v74, v73, 1, v61);
    }

    type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v83 = *(v8 + 72);
    v84 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_25149BDD0;
    v86 = v85 + v84;
    v87 = *(v8 + 104);
    v88 = v117;
    v87(v86, *MEMORY[0x277CC9978], v117);
    v87(v86 + v83, *MEMORY[0x277CC9988], v88);
    v87(v86 + 2 * v83, *MEMORY[0x277CC9998], v88);
    v87(v86 + 3 * v83, *MEMORY[0x277CC9968], v88);
    v87(v86 + 4 * v83, *MEMORY[0x277CC9980], v88);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v85);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    Calendar.dateComponents(_:from:)();

    v58 = v114;
    Calendar.date(from:)();
    v60 = v119;
    (*(v119 + 8))(v40, v59);
    v62 = v122;
    v61 = v123;
    if ((*(v122 + 48))(v58, 1, v123) != 1)
    {
      v63 = v118;
      (*(v62 + 32))(v118, v58, v61);
      v74 = v121;
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  LODWORD(v124) = v50;
  if (v50 > 4)
  {
    v63 = v118;
    type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    if (v50 == 5)
    {
      v75 = *(v8 + 72);
      v76 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_25149BDB0;
      v78 = v77 + v76;
      v79 = *(v8 + 104);
      v80 = v117;
      v79(v78, *MEMORY[0x277CC9978], v117);
      v79(v78 + v75, *MEMORY[0x277CC9988], v80);
      v79(v78 + 2 * v75, *MEMORY[0x277CC9998], v80);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v77);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      Calendar.dateComponents(_:from:)();

      v58 = v114;
      Calendar.date(from:)();
      v60 = v119;
      v81 = *(v119 + 8);
      v82 = v34;
    }

    else
    {
      v96 = *(v8 + 72);
      v97 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_25149BA60;
      v99 = v98 + v97;
      v100 = *(v8 + 104);
      v101 = v117;
      v100(v99, *MEMORY[0x277CC9978], v117);
      v100(v99 + v96, *MEMORY[0x277CC9988], v101);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v98);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      Calendar.dateComponents(_:from:)();

      v58 = v113;
      Calendar.date(from:)();
      v60 = v119;
      v81 = *(v119 + 8);
      v82 = v31;
    }

    v59 = v120;
    v81(v82, v120);
    v62 = v122;
    v61 = v123;
    if ((*(v122 + 48))(v58, 1, v123) != 1)
    {
      (*(v62 + 32))(v63, v58, v61);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  v52 = v117;
  if (v50 == 3)
  {
    type metadata accessor for TimeZone?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v53 = *(v8 + 72);
    v54 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_25149BDC0;
    v56 = v55 + v54;
    v57 = *(v8 + 104);
    v57(v56, *MEMORY[0x277CC9978], v52);
    v57(v56 + v53, *MEMORY[0x277CC9988], v52);
    v57(v56 + 2 * v53, *MEMORY[0x277CC9998], v52);
    v57(v56 + 3 * v53, *MEMORY[0x277CC9968], v52);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v55);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    Calendar.dateComponents(_:from:)();

    v58 = v112;
    Calendar.date(from:)();
    v60 = v119;
    v59 = v120;
    (*(v119 + 8))(v37, v120);
    v62 = v122;
    v61 = v123;
    if ((*(v122 + 48))(v58, 1, v123) != 1)
    {
      v63 = v118;
      (*(v62 + 32))(v118, v58, v61);
LABEL_24:
      v74 = v121;
      goto LABEL_30;
    }

LABEL_21:
    v94 = MEMORY[0x277CC9578];
    v95 = v58;
LABEL_22:
    outlined destroy of Date?(v95, &lazy cache variable for type metadata for Date?, v94);
    v73 = 1;
    v74 = v121;
    return (*(v62 + 56))(v74, v73, 1, v61);
  }

  v89 = *(v8 + 104);
  v90 = v111;
  v89(v111, *MEMORY[0x277CC99B8], v117);
  v91 = Calendar.component(_:from:)();
  v114 = *(v8 + 8);
  result = (v114)(v90, v52);
  if (!__OFADD__(v91, 6))
  {
    v89(v90, *MEMORY[0x277CC9968], v52);
    v93 = v110;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (v114)(v90, v52);
    v62 = v122;
    v61 = v123;
    if ((*(v122 + 48))(v93, 1, v123) != 1)
    {
      (*(v62 + 32))(v47, v93, v61);
      v63 = v118;
      Calendar.startOfDay(for:)();
      (*(v62 + 8))(v47, v61);
      v59 = v120;
      v74 = v121;
      v60 = v119;
LABEL_30:
      LOBYTE(v50) = v124;
      if (!v116)
      {
LABEL_33:
        (*(v62 + 32))(v74, v63, v61);
LABEL_34:
        v73 = 0;
        return (*(v62 + 56))(v74, v73, 1, v61);
      }

      goto LABEL_31;
    }

    v94 = MEMORY[0x277CC9578];
    v95 = v93;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void type metadata accessor for TimeZone?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    type metadata accessor for _SetStorage<Calendar.Component>(0);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99D8]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99E0]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t outlined destroy of Date?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for TimeZone?(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type RoundedDateDirection and conformance RoundedDateDirection()
{
  result = lazy protocol witness table cache variable for type RoundedDateDirection and conformance RoundedDateDirection;
  if (!lazy protocol witness table cache variable for type RoundedDateDirection and conformance RoundedDateDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedDateDirection and conformance RoundedDateDirection);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoundedDateDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RoundedDateDirection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata accessor for _SetStorage<Calendar.Component>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<Calendar.Component>)
  {
    type metadata accessor for Calendar.Component();
    lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, MEMORY[0x277CC99D8]);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<Calendar.Component>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Calendar.Component();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void static Date.fromString(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v28 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for TimeZone();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v16 = MEMORY[0x253077090](0xD000000000000013, 0x800000025149DBF0);
  [v15 setDateFormat_];

  static TimeZone.current.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v12 + 8))(v14, v11);
  [v15 setTimeZone_];

  v18 = a1;
  v19 = v27;
  v20 = MEMORY[0x253077090](v18, v27);
  v21 = [v15 dateFromString_];

  if (v21)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v28, v10, v4);
  }

  else
  {
    v22 = v8;
    v23 = v28;
    v24 = MEMORY[0x253077090](0x2D4D4D2D79797979, 0xEA00000000006464);
    [v15 setDateFormat_];

    v25 = MEMORY[0x253077090](v18, v19);
    v26 = [v15 dateFromString_];

    if (v26)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v5 + 32))(v23, v22, v4);
    }

    else
    {
      Date.init()();
    }
  }
}

uint64_t static DateInterval.fromString(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  v20[2] = a1;
  v20[3] = a2;
  v20[0] = 15917;
  v20[1] = 0xE200000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.components<A>(separatedBy:)();
  v11 = v10[2];
  if (v11 == 1)
  {
    v18 = v10[4];
    v19 = v10[5];

    static Date.fromString(_:)(v18, v19, v9);

    return DateInterval.init(start:duration:)();
  }

  if (v11 != 2)
  {

    Date.init()();
    return DateInterval.init(start:duration:)();
  }

  v12 = v10[4];
  v13 = v10[5];
  v14 = v10;

  static Date.fromString(_:)(v12, v13, v9);

  if (v14[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v16 = v14[6];
    v17 = v14[7];

    static Date.fromString(_:)(v16, v17, v7);

    return DateInterval.init(start:end:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t HealthChartsData.init(description:series:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;

  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  return result;
}

HealthChartsCore::HealthChartsData::Description __swiftcall HealthChartsData.Description.init(direction:substitutionValues:)(HealthChartsCore::HealthChartsData::DescriptionDirection_optional direction, Swift::OpaquePointer substitutionValues)
{
  *v2 = *direction.value;
  *(v2 + 8) = substitutionValues;
  result.substitutionValues = substitutionValues;
  result.direction = direction;
  return result;
}

uint64_t protocol witness for AnySeriesData.points.getter in conformance HealthChartsData.SeriesData<A, B>()
{
  specialized HealthChartsData.SeriesData.points.getter();
}

uint64_t HealthChartsData.SeriesData.points.getter()
{
  specialized HealthChartsData.SeriesData.points.getter();
}

id HealthChartsData.SeriesData.unit.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t HealthChartsData.SeriesPoint.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for HealthChartsData.SeriesPoint(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t HealthChartsData.SeriesData.init(points:aggregation:unit:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  return result;
}

uint64_t HealthChartsData.DescriptionKey.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x65676172657661;
    v8 = 0xD000000000000012;
    v9 = 0x6E694D65676E6172;
    if (v1 == 3)
    {
      v9 = 0xD000000000000012;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0xD000000000000010;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x56746E6572727563;
    v3 = 0x746E756F63;
    if (v1 != 9)
    {
      v3 = 7173491;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000015;
    v5 = 0x78614D65676E6172;
    if (v1 != 6)
    {
      v5 = 0xD000000000000015;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

HealthChartsCore::HealthChartsData::DescriptionDirection_optional __swiftcall HealthChartsData.DescriptionDirection.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HealthChartsData.DescriptionDirection.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t HealthChartsData.DescriptionDirection.rawValue.getter()
{
  v1 = 0x6973616572636564;
  if (*v0 != 1)
  {
    v1 = 0x65676E6168636E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6973616572636E69;
  }
}

void protocol witness for RawRepresentable.rawValue.getter in conformance HealthChartsData.DescriptionDirection(uint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x6973616572636564;
  v4 = 0xE900000000000064;
  if (*v1 == 1)
  {
    v4 = 0xEA0000000000676ELL;
  }

  else
  {
    v3 = 0x65676E6168636E75;
  }

  if (*v1)
  {
    v2 = v4;
  }

  else
  {
    v3 = 0x6973616572636E69;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HealthChartsData.DescriptionDirection(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x6973616572636564;
  v3 = *a1;
  v4 = 0x65676E6168636E75;
  v5 = 0xE900000000000064;
  if (v3 == 1)
  {
    v4 = 0x6973616572636564;
    v5 = 0xEA0000000000676ELL;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6973616572636E69;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA0000000000676ELL;
  }

  if (*a2 == 1)
  {
    v8 = 0xEA0000000000676ELL;
  }

  else
  {
    v2 = 0x65676E6168636E75;
    v8 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6973616572636E69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA0000000000676ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsData.DescriptionDirection()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HealthChartsData.DescriptionDirection(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.DescriptionDirection(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

HealthChartsCore::HealthChartsData::DescriptionKey_optional __swiftcall HealthChartsData.DescriptionKey.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HealthChartsData.DescriptionKey.init(rawValue:), v3);

  v7 = 11;
  if (v5 < 0xB)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HealthChartsData.DescriptionKey@<X0>(uint64_t *a1@<X8>)
{
  result = HealthChartsData.DescriptionKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance HealthChartsData.DescriptionKey(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (specialized static HealthChartsData.DescriptionKey.< infix(_:_:)(&v4, &v5) & 1) == 0;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance HealthChartsData.DescriptionKey(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (specialized static HealthChartsData.DescriptionKey.< infix(_:_:)(&v5, &v4) & 1) == 0;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance HealthChartsData.DescriptionKey(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return specialized static HealthChartsData.DescriptionKey.< infix(_:_:)(&v4, &v5) & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsData.DescriptionKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.DescriptionKey(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ16HealthChartsCore0bC4DataV14DescriptionKeyO_SdTt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    v14 = v13 == 11;
    if (v13 != 11)
    {
      v15 = *(*(v3 + 56) + 8 * v12);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if ((v16 & 1) != 0 && *(*(a2 + 56) + 8 * result) == v15)
      {
        continue;
      }
    }

    return v14;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance HealthChartsData.Description.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6F69746365726964;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsData.Description.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025149DC70 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.Description.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.Description.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HealthChartsData.Description.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>, lazy protocol witness table accessor for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys, &unk_28636DBF0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v12 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v8;
  v16 = 0;
  lazy protocol witness table accessor for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection();
  v9 = v13;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v9)
  {
    v14 = v12;
    v15 = 1;
    type metadata accessor for [HealthChartsData.DescriptionKey : Double](0);
    lazy protocol witness table accessor for type [HealthChartsData.DescriptionKey : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [HealthChartsData.DescriptionKey : Double] and conformance <> [A : B], lazy protocol witness table accessor for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey, MEMORY[0x277D83A08], MEMORY[0x277D83508]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

Swift::Int HealthChartsData.Description.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  if (v3 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return specialized Dictionary<>.hash(into:)(a1, v4);
}

Swift::Int HealthChartsData.Description.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  if (v1 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  specialized Dictionary<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.Description.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14[0] = a2;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.Description.CodingKeys>, lazy protocol witness table accessor for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys, &unk_28636DBF0, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v6;
    v10 = v14[0];
    v16 = 0;
    lazy protocol witness table accessor for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v17;
    type metadata accessor for [HealthChartsData.DescriptionKey : Double](0);
    v15 = 1;
    lazy protocol witness table accessor for type [HealthChartsData.DescriptionKey : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [HealthChartsData.DescriptionKey : Double] and conformance <> [A : B], lazy protocol witness table accessor for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey, MEMORY[0x277D83A30], MEMORY[0x277D83528]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v9 + 8))(v8, v5);
    v13 = v14[1];
    *v10 = v11;
    *(v10 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hash(into:) in conformance HealthChartsData.Description(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  if (v3 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return specialized Dictionary<>.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.Description(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  Hasher.init(_seed:)();
  if (v2 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  specialized Dictionary<>.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

HealthChartsCore::HealthChartsData::Aggregation_optional __swiftcall HealthChartsData.Aggregation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x605040302010007uLL >> (8 * rawValue);
  if (rawValue >= 8)
  {
    LOBYTE(v2) = 7;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsData.Aggregation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.Aggregation(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](v2 + 1);
  return Hasher._finalize()();
}

uint64_t static HealthChartsData.SeriesPoint.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for HealthChartsData.SeriesPoint(0, v12);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t HealthChartsData.SeriesPoint.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    return 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int HealthChartsData.SeriesPoint.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.SeriesPoint.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.SeriesPoint<A, B>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  HealthChartsData.SeriesPoint.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesPoint<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesPoint<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t HealthChartsData.SeriesPoint.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v13 = a2[2];
  v14[0] = v13;
  v5 = a2[4];
  v4 = a2[5];
  v12[2] = v3;
  v12[3] = v5;
  v14[1] = v3;
  v14[2] = v5;
  v12[1] = v4;
  v14[3] = v4;
  type metadata accessor for HealthChartsData.SeriesPoint.CodingKeys(255, v14);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14[0]) = 0;
  v10 = v14[5];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v10)
  {
    LOBYTE(v14[0]) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

Swift::Int HealthChartsData.SeriesPoint.hashValue.getter(void *a1)
{
  Hasher.init(_seed:)();
  HealthChartsData.SeriesPoint.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.SeriesPoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a6;
  v41 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v45 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v13 - 8);
  MEMORY[0x28223BE20](v11);
  v49 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v15;
  v52 = v16;
  v53 = v17;
  v54 = v18;
  type metadata accessor for HealthChartsData.SeriesPoint.CodingKeys(255, &v51);
  swift_getWitnessTable();
  v50 = type metadata accessor for KeyedDecodingContainer();
  v43 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v20 = &v37 - v19;
  v46 = a2;
  v47 = a5;
  v51 = a2;
  v52 = a3;
  v48 = a4;
  v53 = a4;
  v54 = a5;
  v21 = type metadata accessor for HealthChartsData.SeriesPoint(0, &v51);
  v40 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v37 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v23;
  v38 = v21;
  v39 = a3;
  v26 = v43;
  v27 = v44;
  v55 = a1;
  v28 = v45;
  v29 = v46;
  LOBYTE(v51) = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = *(v27 + 32);
  v48 = v25;
  v30(v25, v49, v29);
  LOBYTE(v51) = 1;
  v31 = v28;
  v32 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v20, v50);
  v33 = v38;
  v34 = v48;
  (*(v41 + 32))(&v48[*(v38 + 52)], v31, v32);
  v35 = v40;
  (*(v40 + 16))(v42, v34, v33);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return (*(v35 + 8))(v34, v33);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.SeriesPoint<A, B>(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  HealthChartsData.SeriesPoint.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

BOOL _s16HealthChartsCore0aB4DataV06SeriesD0V2eeoiySbAEy_xq_G_AGtFZ10Foundation4DateV_SdTt1B5Tm(uint64_t a1, char a2, void *a3, uint64_t a4, char a5, void *a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  v11 = a7(a1, a4);
  result = 0;
  if ((v11 & 1) != 0 && a2 == a5)
  {
    if (a3)
    {
      if (a6)
      {
        type metadata accessor for NSObject();
        v13 = a3;
        v14 = a6;
        v15 = v13;
        LOBYTE(v13) = static NSObject.== infix(_:_:)();

        return (v13 & 1) != 0;
      }

      v16 = a3;
    }

    else
    {
      if (!a6)
      {
        return 1;
      }

      v16 = a6;
    }

    v17 = v16;

    return 0;
  }

  return result;
}

BOOL _s16HealthChartsCore0aB4DataV06SeriesD0V2eeoiySbAEy_xq_G_AGtFZSd_SdTt1B5(_BOOL8 result, char a2, void *a3, uint64_t a4, char a5, void *a6)
{
  v6 = *(result + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = result == a4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    if (a2 != a5)
    {
      return 0;
    }

    if (a3)
    {
      if (a6)
      {
        type metadata accessor for NSObject();
        v13 = a3;
        v14 = a6;
        v15 = v13;
        v16 = static NSObject.== infix(_:_:)();

        return (v16 & 1) != 0;
      }

      v18 = 0;
      v17 = a3;
      v19 = a3;
    }

    else
    {
      if (!a6)
      {
        return 1;
      }

      v17 = 0;
      v18 = a6;
      v19 = a6;
    }

    v20 = v19;

    return 0;
  }

  v8 = (result + 32);
  v9 = (a4 + 32);
  while (v6)
  {
    v10 = vmovn_s64(vceqq_f64(*v8, *v9));
    if ((v10.i32[0] & v10.i32[1] & 1) == 0)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL static HealthChartsData.SeriesData.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 8);
  v7 = a1[2];
  v8 = *(a2 + 8);
  v9 = a2[2];
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  type metadata accessor for HealthChartsData.SeriesPoint(0, v18);
  swift_getWitnessTable();
  v10 = static Array<A>.== infix(_:_:)();
  result = 0;
  if ((v10 & 1) != 0 && v6 == v8)
  {
    if (v7)
    {
      if (v9)
      {
        type metadata accessor for NSObject();
        v12 = v7;
        v13 = v9;
        v14 = v12;
        v15 = static NSObject.== infix(_:_:)();

        return (v15 & 1) != 0;
      }

      v16 = v7;
    }

    else
    {
      if (!v9)
      {
        return 1;
      }

      v16 = 0;
      v7 = v9;
    }

    v17 = v7;

    return 0;
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV06SeriesE5ShapeO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v10 = 1;
    }

    else
    {
      v3 = (a2 + 48);
      v4 = (a1 + 48);
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;
        v15 = *(v4 - 2);
        v16 = v5;
        v17 = v6;
        v8 = *(v3 - 1);
        v9 = *v3;
        v12 = *(v3 - 2);
        v7 = v12;
        v13 = v8;
        v14 = v9;
        outlined copy of HealthChartsData.SeriesDataShape(v15, v5, v6);
        outlined copy of HealthChartsData.SeriesDataShape(v7, v8, v9);
        v10 = specialized static HealthChartsData.SeriesDataShape.== infix(_:_:)(&v15, &v12);
        outlined consume of HealthChartsData.SeriesDataShape(v12, v13, v14);
        outlined consume of HealthChartsData.SeriesDataShape(v15, v16, v17);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v4 += 3;
        v3 += 3;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_SNySdGAHG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v3, *v4), vceqq_f64(v3[1], v4[1]))));
    if ((v5 & 1) == 0)
    {
      break;
    }

    v3 += 2;
    v4 += 2;
    --v2;
  }

  while (v2);
  return v5 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_10Foundation4DateVSNySdGG_Tt1g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  type metadata accessor for Date();
  v16 = *(v6 + 72);
  while (1)
  {
    result = outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v14, v11, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
    if (!v12)
    {
      break;
    }

    outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v15, v9, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v9, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
      outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v11, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
      return 0;
    }

    v18 = *(v5 + 52);
    v19 = &v9[v18];
    v20 = *&v11[v18];
    v21 = *&v11[v18 + 8];
    outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v11, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
    v22 = *v19;
    v23 = v19[1];
    outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v9, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
    result = v21 == v23 && v20 == v22;
    v24 = result != 1 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v24)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_10Foundation12DateIntervalVSdG_Tt1g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  type metadata accessor for DateInterval();
  v16 = *(v6 + 72);
  while (1)
  {
    result = outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v14, v11, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
    if (!v12)
    {
      break;
    }

    outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v15, v9, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277CC88C8]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v9, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
      outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v11, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
      return 0;
    }

    v18 = *(v5 + 52);
    v19 = *&v9[v18];
    outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v9, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
    v20 = *&v11[v18];
    outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v11, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
    result = v20 == v19;
    v21 = v20 != v19 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v21)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_10Foundation12DateIntervalVSNySdGG_Tt1g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  type metadata accessor for DateInterval();
  v16 = *(v6 + 72);
  while (1)
  {
    result = outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v14, v11, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
    if (!v12)
    {
      break;
    }

    outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v15, v9, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277CC88C8]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v9, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
      outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v11, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
      return 0;
    }

    v18 = *(v5 + 52);
    v19 = &v9[v18];
    v20 = *&v11[v18];
    v21 = *&v11[v18 + 8];
    outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v11, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
    v22 = *v19;
    v23 = v19[1];
    outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v9, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
    result = v21 == v23 && v20 == v22;
    v24 = result != 1 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v24)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_10Foundation4DateVSdG_Tt1g5(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  type metadata accessor for Date();
  v16 = *(v6 + 72);
  while (1)
  {
    result = outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v14, v11, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
    if (!v12)
    {
      break;
    }

    outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v15, v9, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v9, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
      outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v11, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
      return 0;
    }

    v18 = *(v5 + 52);
    v19 = *&v9[v18];
    outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v9, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
    v20 = *&v11[v18];
    outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v11, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
    result = v20 == v19;
    v21 = v20 != v19 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v21)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t HealthChartsData.SeriesData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E696F70 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461676572676761 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
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

Swift::Int HealthChartsData.SeriesData.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](a1);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.SeriesData.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x73746E696F70;
  }

  if (a1 == 1)
  {
    return 0x7461676572676761;
  }

  return 1953066613;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.SeriesData<A, B>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  HealthChartsData.SeriesData.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsData.SeriesPoint<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance HealthChartsData.SeriesPoint<A, B>.CodingKeys@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesData<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesData<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t HealthChartsData.SeriesData.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[5];
  v22 = a2[4];
  v23 = v4;
  v21 = v6;
  v28 = v4;
  v29 = v5;
  v30 = v22;
  v31 = v6;
  type metadata accessor for HealthChartsData.SeriesData.CodingKeys(255, &v28);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v8 = *v2;
  v20 = *(v2 + 8);
  v19 = v2[2];
  v9 = a1[3];
  v10 = a1;
  v12 = &v18 - v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v32 = v8;
  v27 = 0;
  v28 = v23;
  v29 = v5;
  v30 = v22;
  v31 = v21;
  type metadata accessor for HealthChartsData.SeriesPoint(255, &v28);
  type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v13 = v25;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v13)
  {

    return (*(v24 + 8))(v12, v7);
  }

  else
  {
    v15 = v19;
    v16 = v24;

    LOBYTE(v28) = v20;
    LOBYTE(v32) = 1;
    lazy protocol witness table accessor for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v28 = v15;
    LOBYTE(v32) = 2;
    lazy protocol witness table accessor for type HealthChartsUnit and conformance HealthChartsUnit();
    v17 = v15;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    return (*(v16 + 8))(v12, v7);
  }
}

void HealthChartsData.SeriesData.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(a2 + 32);
  v7[0] = *(a2 + 16);
  v7[1] = v5;
  type metadata accessor for HealthChartsData.SeriesPoint(0, v7);
  swift_getWitnessTable();
  Array<A>.hash(into:)();
  MEMORY[0x2530774B0](v3 + 1);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    v6 = v4;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int HealthChartsData.SeriesData.hashValue.getter(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6[9] = *v1;
  v7 = v3;
  v8 = v4;
  Hasher.init(_seed:)();
  HealthChartsData.SeriesData.hash(into:)(v6, a1);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.SeriesData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a6;
  v24 = a4;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v25 = a5;
  type metadata accessor for HealthChartsData.SeriesData.CodingKeys(255, &v30);
  swift_getWitnessTable();
  v27 = type metadata accessor for KeyedDecodingContainer();
  v9 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v11 = &v22 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v11;
  v12 = v28;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v9;
  v14 = v23;
  v30 = a2;
  v31 = a3;
  v32 = v24;
  v33 = v25;
  type metadata accessor for HealthChartsData.SeriesPoint(255, &v30);
  type metadata accessor for Array();
  LOBYTE(v30) = 0;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = v27;
  v16 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v34;
  LOBYTE(v34) = 1;
  lazy protocol witness table accessor for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v30;
  LOBYTE(v34) = 2;
  lazy protocol witness table accessor for type HealthChartsUnit and conformance HealthChartsUnit();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v13 + 8))(v16, v15);
  v20 = v30;
  *v14 = v17;
  *(v14 + 8) = v18;
  *(v14 + 16) = v20;
  v21 = v20;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.SeriesData<A, B>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  HealthChartsData.SeriesData.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance HealthChartsData.SeriesDataShape.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6E696F5065746164;
  v3 = 0x615272616C616373;
  if (v1 != 5)
  {
    v3 = 0x7974706D65;
  }

  v4 = 0x4D6E694D65746164;
  if (v1 != 3)
  {
    v4 = 0x6F5072616C616373;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x676E615265746164;
  if (v1 != 1)
  {
    v5 = 0x6E61705365746164;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsData.SeriesDataShape.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized HealthChartsData.SeriesDataShape.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesDataShape.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesDataShape.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736569726573 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HealthChartsData.SeriesDataShape.encode(to:)(void *a1)
{
  v3 = MEMORY[0x277D84538];
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.SeriesDataShape.EmptyCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys, &unk_28636DA80, MEMORY[0x277D84538]);
  v57 = v4;
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v54 = &v46 - v5;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys, &unk_28636DA60, v3);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = &v46 - v7;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.SeriesDataShape.ScalarPointCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys, &unk_28636D9D0, v3);
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v51 = &v46 - v9;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys, &unk_28636D940, v3);
  v50 = v10;
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v48 = &v46 - v11;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.SeriesDataShape.DateSpanCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys, &unk_28636D8B0, v3);
  v64 = v12;
  v47 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v63 = &v46 - v13;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.SeriesDataShape.DateRangeCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys, &unk_28636D820, v3);
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.SeriesDataShape.DatePointCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys, &unk_28636D790, v3);
  v18 = v17;
  v60 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.SeriesDataShape.CodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys, &unk_28636D700, v3);
  v22 = *(v21 - 8);
  v67 = v21;
  v68 = v22;
  MEMORY[0x28223BE20](v21);
  v23 = v1[1];
  v24 = v1[2];
  v65 = *v1;
  v66 = v24;
  v25 = a1[3];
  v26 = a1;
  v28 = &v46 - v27;
  __swift_project_boxed_opaque_existential_1(v26, v25);
  lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys();
  v72 = v28;
  v29 = v23;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v30 = v23 >> 61;
  if ((v23 >> 61) <= 2)
  {
    v35 = v60;
    v36 = v61;
    v37 = v18;
    v38 = v16;
    v40 = v62;
    v39 = v63;
    v41 = v64;
    if (v30)
    {
      v31 = v67;
      if (v30 == 1)
      {
        LOBYTE(v69) = 1;
        lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys();
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v69 = v65;
        v70 = v29;
        v71 = v66;
        type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0);
        lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v36 + 8))(v38, v40);
      }

      else
      {
        LOBYTE(v69) = 2;
        lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys();
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v69 = v65;
        v70 = v29;
        v71 = v66;
        type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>(0);
        lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v47 + 8))(v39, v41);
      }
    }

    else
    {
      LOBYTE(v69) = 0;
      lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys();
      v42 = v20;
      v31 = v67;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v69 = v65;
      v70 = v29;
      v71 = v66;
      type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0);
      lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, Double>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v35 + 8))(v42, v37);
    }
  }

  else
  {
    if (v30 > 4)
    {
      v31 = v67;
      if (v30 != 5)
      {
        LOBYTE(v69) = 6;
        lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys();
        v44 = v54;
        v45 = v72;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v55 + 8))(v44, v57);
        return (*(v68 + 8))(v45, v31);
      }

      LOBYTE(v69) = 5;
      lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys();
      v32 = v56;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v69 = v65;
      v70 = v23;
      v71 = v66;
      type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>(0);
      lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
      v33 = v59;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v34 = v58;
    }

    else
    {
      v31 = v67;
      if (v30 == 3)
      {
        LOBYTE(v69) = 3;
        lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys();
        v32 = v48;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v69 = v65;
        v70 = v23;
        v71 = v66;
        type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0);
        lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
        v33 = v50;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v34 = v49;
      }

      else
      {
        LOBYTE(v69) = 4;
        lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys();
        v32 = v51;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v69 = v65;
        v70 = v23;
        v71 = v66;
        type metadata accessor for HealthChartsData.SeriesData<Double, Double>();
        lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Double, Double>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
        v33 = v53;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v34 = v52;
      }
    }

    (*(v34 + 8))(v32, v33);
  }

  return (*(v68 + 8))(v72, v31);
}

void HealthChartsData.SeriesDataShape.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v5 >> 61;
  if ((v5 >> 61) <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        MEMORY[0x2530774B0](1);
        specialized Array<A>.hash(into:)(a1, v4);
      }

      else
      {
        MEMORY[0x2530774B0](2);
        specialized Array<A>.hash(into:)(a1, v4);
      }
    }

    else
    {
      MEMORY[0x2530774B0](0);
      specialized Array<A>.hash(into:)(a1, v4);
    }
  }

  else if (v7 > 4)
  {
    if (v7 != 5)
    {
      MEMORY[0x2530774B0](6);
      return;
    }

    MEMORY[0x2530774B0](5);
    specialized Array<A>.hash(into:)(a1, v4);
  }

  else if (v7 == 3)
  {
    MEMORY[0x2530774B0](3);
    specialized Array<A>.hash(into:)(a1, v4);
  }

  else
  {
    MEMORY[0x2530774B0](4);
    specialized Array<A>.hash(into:)(a1, v4);
  }

  MEMORY[0x2530774B0](v5 + 1);
  if (v6)
  {
    Hasher._combine(_:)(1u);
    v8 = v6;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int HealthChartsData.SeriesDataShape.hashValue.getter()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  HealthChartsData.SeriesDataShape.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.SeriesDataShape.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v79 = a2;
  v3 = MEMORY[0x277D844C8];
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.SeriesDataShape.EmptyCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys, &unk_28636DA80, MEMORY[0x277D844C8]);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v78 = &v63 - v5;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys, &unk_28636DA60, v3);
  v7 = *(v6 - 8);
  v75 = v6;
  v76 = v7;
  MEMORY[0x28223BE20](v6);
  v83 = &v63 - v8;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.SeriesDataShape.ScalarPointCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys, &unk_28636D9D0, v3);
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x28223BE20](v9);
  v77 = &v63 - v10;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys, &unk_28636D940, v3);
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x28223BE20](v11);
  v82 = &v63 - v12;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.SeriesDataShape.DateSpanCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys, &unk_28636D8B0, v3);
  v67 = *(v13 - 8);
  v68 = v13;
  MEMORY[0x28223BE20](v13);
  v81 = &v63 - v14;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.SeriesDataShape.DateRangeCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys, &unk_28636D820, v3);
  v66 = v15;
  v65 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v80 = &v63 - v16;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.SeriesDataShape.DatePointCodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys, &unk_28636D790, v3);
  v18 = v17;
  v64 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v63 - v19;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.SeriesDataShape.CodingKeys>, lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys, &unk_28636D700, v3);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v63 - v24;
  v26 = a1;
  v27 = a1[3];
  v84 = v26;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys();
  v28 = v88;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v28)
  {
    v63 = v18;
    v29 = v80;
    v30 = v81;
    v31 = v82;
    v32 = v83;
    v88 = 0;
    v33 = KeyedDecodingContainer.allKeys.getter();
    if (*(v33 + 16) != 1 || (v34 = *(v33 + 32), v34 == 7))
    {
      v38 = v25;
      v39 = type metadata accessor for DecodingError();
      swift_allocError();
      v41 = v40;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v41 = &type metadata for HealthChartsData.SeriesDataShape;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
      (*(v23 + 8))(v38, v22);
    }

    else
    {
      if (*(v33 + 32) <= 2u)
      {
        if (*(v33 + 32))
        {
          v82 = v33;
          v44 = v88;
          if (v34 == 1)
          {
            LOBYTE(v85) = 1;
            lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v44)
            {
              type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>(0);
              lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, ClosedRange<Double>>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
              v45 = v66;
              KeyedDecodingContainer.decode<A>(_:forKey:)();
              (*(v65 + 8))(v29, v45);
              (*(v23 + 8))(v25, v22);
              swift_unknownObjectRelease();
              v59 = v85;
              v60 = v87;
              v61 = v86 | 0x2000000000000000;
              goto LABEL_32;
            }
          }

          else
          {
            LOBYTE(v85) = 2;
            lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys();
            v51 = v30;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v44)
            {
              type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>(0);
              lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<DateInterval, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<DateInterval, Double>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
              v57 = v68;
              KeyedDecodingContainer.decode<A>(_:forKey:)();
              (*(v67 + 8))(v51, v57);
              (*(v23 + 8))(v25, v22);
              swift_unknownObjectRelease();
              v59 = v85;
              v60 = v87;
              v61 = v86 | 0x4000000000000000;
              goto LABEL_32;
            }
          }
        }

        else
        {
          LOBYTE(v85) = 0;
          lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys();
          v49 = v20;
          v50 = v88;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v50)
          {
            v88 = v25;
            type metadata accessor for HealthChartsData.SeriesData<Date, Double>(0);
            lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, Double>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
            v56 = v63;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v64 + 8))(v49, v56);
            (*(v23 + 8))(v88, v22);
            swift_unknownObjectRelease();
            v59 = v85;
            v61 = v86;
            v60 = v87;
            goto LABEL_32;
          }
        }
      }

      else if (*(v33 + 32) > 4u)
      {
        v46 = v33;
        if (v34 == 5)
        {
          LOBYTE(v85) = 5;
          lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys();
          v47 = v88;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v47)
          {
            v82 = v46;
            v88 = v25;
            type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>(0);
            lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
            v48 = v75;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v76 + 8))(v32, v48);
            (*(v23 + 8))(v88, v22);
            swift_unknownObjectRelease();
            v59 = v85;
            v60 = v87;
            v61 = v86 | 0xA000000000000000;
            goto LABEL_32;
          }
        }

        else
        {
          LOBYTE(v85) = 6;
          lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys();
          v54 = v78;
          v55 = v88;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v55)
          {
            (*(v69 + 8))(v54, v70);
            (*(v23 + 8))(v25, v22);
            swift_unknownObjectRelease();
            v59 = 0;
            v60 = 0;
            v61 = 0xC000000000000000;
            goto LABEL_32;
          }
        }
      }

      else
      {
        v35 = v23;
        if (v34 == 3)
        {
          LOBYTE(v85) = 3;
          lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys();
          v36 = v88;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v36)
          {
            type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>(0);
            lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Date, ClosedRange<Double>> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Date, ClosedRange<Double>>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
            v37 = v72;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v71 + 8))(v31, v37);
            (*(v23 + 8))(v25, v22);
            swift_unknownObjectRelease();
            v59 = v85;
            v60 = v87;
            v61 = v86 | 0x6000000000000000;
LABEL_32:
            v42 = v84;
            v62 = v79;
            *v79 = v59;
            v62[1] = v61;
            v62[2] = v60;
            return __swift_destroy_boxed_opaque_existential_1(v42);
          }
        }

        else
        {
          LOBYTE(v85) = 4;
          lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys();
          v52 = v77;
          v53 = v88;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v53)
          {
            v88 = v25;
            type metadata accessor for HealthChartsData.SeriesData<Double, Double>();
            lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type HealthChartsData.SeriesData<Double, Double> and conformance HealthChartsData.SeriesData<A, B>, type metadata accessor for HealthChartsData.SeriesData<Double, Double>, &protocol conformance descriptor for HealthChartsData.SeriesData<A, B>);
            v58 = v74;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v73 + 8))(v52, v58);
            (*(v35 + 8))(v88, v22);
            swift_unknownObjectRelease();
            v59 = v85;
            v60 = v87;
            v61 = v86 | 0x8000000000000000;
            goto LABEL_32;
          }
        }
      }

      (*(v23 + 8))(v25, v22);
    }

    swift_unknownObjectRelease();
  }

  v42 = v84;
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsData.SeriesDataShape()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  HealthChartsData.SeriesDataShape.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.SeriesDataShape(uint64_t a1)
{
  v2 = *(v1 + 2);
  v5 = *v1;
  v6 = v2;
  Hasher.init(_seed:)();
  HealthChartsData.SeriesDataShape.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2530774B0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsData.Series.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.Series.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.Series.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HealthChartsData.Series.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.Series.CodingKeys>, lazy protocol witness table accessor for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys, &unk_28636D670, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[3] = v8;
  type metadata accessor for [HealthChartsData.SeriesDataShape]();
  lazy protocol witness table accessor for type [HealthChartsData.SeriesDataShape] and conformance <A> [A](&lazy protocol witness table cache variable for type [HealthChartsData.SeriesDataShape] and conformance <A> [A], lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape, MEMORY[0x277D83948]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v5 + 8))(v7, v4);
}

Swift::Int HealthChartsData.Series.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.Series.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.Series.CodingKeys>, lazy protocol witness table accessor for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys, &unk_28636D670, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v12;
    type metadata accessor for [HealthChartsData.SeriesDataShape]();
    lazy protocol witness table accessor for type [HealthChartsData.SeriesDataShape] and conformance <A> [A](&lazy protocol witness table cache variable for type [HealthChartsData.SeriesDataShape] and conformance <A> [A], lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape, MEMORY[0x277D83978]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsData.Series()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData.Series(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.description.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t HealthChartsData.description.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t HealthChartsData.series.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance HealthChartsData.CodingKeys()
{
  if (*v0)
  {
    return 0x736569726573;
  }

  else
  {
    return 0x7470697263736564;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HealthChartsData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736569726573 && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HealthChartsData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HealthChartsData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HealthChartsData.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HealthChartsData.CodingKeys>, lazy protocol witness table accessor for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys, &unk_28636D5E0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v12[0] = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = v8;
  v14 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type HealthChartsData.Description and conformance HealthChartsData.Description();
  v10 = v12[1];
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v10)
  {

    v13 = v12[0];
    v15 = 1;
    lazy protocol witness table accessor for type HealthChartsData.Series and conformance HealthChartsData.Series();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void HealthChartsData.hash(into:)(uint64_t a1)
{
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  if (v4)
  {
    v5 = *v1;
    Hasher._combine(_:)(1u);
    if (v5 == 3)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    specialized Dictionary<>.hash(into:)(a1, v4);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Array<A>.hash(into:)(a1, v3);
}

Swift::Int HealthChartsData.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    if (v2 == 3)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    specialized Dictionary<>.hash(into:)(v5, v1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Array<A>.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

uint64_t HealthChartsData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HealthChartsData.CodingKeys>, lazy protocol witness table accessor for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys, &unk_28636D5E0, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v9 = v6;
    v10 = v16;
    v19 = 0;
    lazy protocol witness table accessor for type HealthChartsData.Description and conformance HealthChartsData.Description();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v12 = v17;
    v11 = v18;

    v19 = 1;
    lazy protocol witness table accessor for type HealthChartsData.Series and conformance HealthChartsData.Series();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v9 + 8))(v8, v5);
    v14 = v17;
    *v10 = v12;
    v10[1] = v11;
    v10[2] = v14;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HealthChartsData()
{
  v1 = *(v0 + 2);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  HealthChartsData.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HealthChartsData(uint64_t a1)
{
  v2 = *(v1 + 2);
  v5 = *v1;
  v6 = v2;
  Hasher.init(_seed:)();
  HealthChartsData.hash(into:)(v4);
  return Hasher._finalize()();
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(0);
  v98 = *(v3 - 8);
  v99 = v3;
  MEMORY[0x28223BE20](v3);
  v109 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>(0);
  v96 = *(v5 - 8);
  v97 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>(0);
  v94 = *(v8 - 8);
  v95 = v8;
  MEMORY[0x28223BE20](v8);
  v108 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>(0);
  v93 = v10;
  v92 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  MEMORY[0x2530774B0](v13);
  v103 = v13;
  if (v13)
  {
    v14 = 0;
    v101 = v7;
    v102 = a2 + 32;
    v100 = v12;
    do
    {
      v15 = (v102 + 24 * v14);
      v17 = *v15;
      v16 = v15[1];
      v18 = v15[2];
      v19 = v16 >> 61;
      if ((v16 >> 61) <= 2)
      {
        v104 = v17;
        v105 = v14;
        v106 = v18;
        v107 = v16;
        if (v19)
        {
          if (v19 == 1)
          {
            MEMORY[0x2530774B0](1);
            MEMORY[0x2530774B0](*(v17 + 16));
            v32 = *(v17 + 16);
            if (v32)
            {
              v33 = v94;
              v34 = v108;
              v35 = (v108 + *(v95 + 52));
              v36 = v18;
              v37 = v17 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
              v38 = v36;
              v39 = *(v33 + 72);
              v40 = v34;

              do
              {
                outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v37, v40, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
                type metadata accessor for DateInterval();
                lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
                dispatch thunk of Hashable.hash(into:)();
                v41 = *v35;
                v42 = v35[1];
                if (*v35 == 0.0)
                {
                  v41 = 0.0;
                }

                MEMORY[0x2530774D0](*&v41);
                if (v42 == 0.0)
                {
                  v43 = 0.0;
                }

                else
                {
                  v43 = v42;
                }

                MEMORY[0x2530774D0](*&v43);
                v40 = v108;
                outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v108, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
                v37 += v39;
                --v32;
              }

              while (v32);
              goto LABEL_73;
            }
          }

          else
          {
            MEMORY[0x2530774B0](2);
            MEMORY[0x2530774B0](*(v17 + 16));
            v63 = *(v17 + 16);
            if (v63)
            {
              v64 = v96;
              v65 = *(v97 + 52);
              v66 = v18;
              v67 = v17 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
              v68 = v66;
              v69 = *(v64 + 72);

              do
              {
                outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v67, v7, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
                type metadata accessor for DateInterval();
                lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
                dispatch thunk of Hashable.hash(into:)();
                v70 = *&v7[v65];
                if (v70 == 0.0)
                {
                  v70 = 0.0;
                }

                MEMORY[0x2530774D0](*&v70);
                outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v7, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
                v67 += v69;
                --v63;
              }

              while (v63);
              goto LABEL_73;
            }
          }

          v84 = v18;

LABEL_73:
          v85 = v107;
          MEMORY[0x2530774B0](v107 + 1);
          v86 = v106;
          if (v106)
          {
            Hasher._combine(_:)(1u);
            v87 = v86;
            NSObject.hash(into:)();

            v88 = v104;
            v89 = v85;
            v90 = v86;
          }

          else
          {
            Hasher._combine(_:)(0);
            v88 = v104;
            v89 = v85;
            v90 = 0;
          }

          outlined consume of HealthChartsData.SeriesDataShape(v88, v89, v90);
          v14 = v105;
          v12 = v100;
          goto LABEL_4;
        }

        MEMORY[0x2530774B0](0);
        MEMORY[0x2530774B0](*(v17 + 16));
        v55 = *(v17 + 16);
        if (v55)
        {
          v56 = *(v93 + 52);
          v57 = v92;
          v58 = v18;
          v59 = v17 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
          v60 = v58;
          v61 = *(v57 + 72);

          do
          {
            outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v59, v12, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
            type metadata accessor for Date();
            lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
            dispatch thunk of Hashable.hash(into:)();
            v62 = *&v12[v56];
            if (v62 == 0.0)
            {
              v62 = 0.0;
            }

            MEMORY[0x2530774D0](*&v62);
            outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v12, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
            v59 += v61;
            --v55;
          }

          while (v55);
          goto LABEL_68;
        }

        goto LABEL_67;
      }

      if (v19 > 4)
      {
        if (v19 == 5)
        {
          v44 = v18;
          MEMORY[0x2530774B0](5);
          v45 = *(v17 + 16);
          MEMORY[0x2530774B0](v45);
          if (v45)
          {
            v46 = (v17 + 56);
            do
            {
              v47 = *(v46 - 3);
              v48 = *(v46 - 2);
              v49 = *(v46 - 1);
              v50 = *v46;
              if (v47 == 0.0)
              {
                v47 = 0.0;
              }

              MEMORY[0x2530774D0](*&v47);
              if (v48 == 0.0)
              {
                v51 = 0.0;
              }

              else
              {
                v51 = v48;
              }

              MEMORY[0x2530774D0](*&v51);
              if (v49 == 0.0)
              {
                v52 = 0.0;
              }

              else
              {
                v52 = v49;
              }

              MEMORY[0x2530774D0](*&v52);
              if (v50 == 0.0)
              {
                v53 = 0.0;
              }

              else
              {
                v53 = v50;
              }

              MEMORY[0x2530774D0](*&v53);
              v46 += 4;
              --v45;
            }

            while (v45);
          }

          MEMORY[0x2530774B0](v16 + 1);
          if (!v44)
          {
            goto LABEL_77;
          }

          Hasher._combine(_:)(1u);
          outlined copy of HealthChartsData.SeriesDataShape(v17, v16, v44);
          v54 = v44;
          NSObject.hash(into:)();

          outlined consume of HealthChartsData.SeriesDataShape(v17, v16, v44);
        }

        else
        {
          MEMORY[0x2530774B0](6);
        }
      }

      else
      {
        if (v19 == 3)
        {
          v107 = v16;
          v105 = v14;
          MEMORY[0x2530774B0](3);
          MEMORY[0x2530774B0](*(v17 + 16));
          v20 = *(v17 + 16);
          v104 = v17;
          v106 = v18;
          if (v20)
          {
            v21 = v98;
            v22 = v109;
            v23 = (v109 + *(v99 + 52));
            v24 = v18;
            v25 = v17 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
            v26 = v24;
            v27 = *(v21 + 72);
            v28 = v22;

            do
            {
              outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v25, v28, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
              type metadata accessor for Date();
              lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
              dispatch thunk of Hashable.hash(into:)();
              v29 = *v23;
              v30 = v23[1];
              if (*v23 == 0.0)
              {
                v29 = 0.0;
              }

              MEMORY[0x2530774D0](*&v29);
              if (v30 == 0.0)
              {
                v31 = 0.0;
              }

              else
              {
                v31 = v30;
              }

              MEMORY[0x2530774D0](*&v31);
              v28 = v109;
              outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v109, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
              v25 += v27;
              --v20;
            }

            while (v20);
            goto LABEL_68;
          }

LABEL_67:
          v77 = v18;

LABEL_68:
          v78 = v107;
          MEMORY[0x2530774B0](v107 + 1);
          v79 = v106;
          if (v106)
          {
            Hasher._combine(_:)(1u);
            v80 = v79;
            NSObject.hash(into:)();

            v81 = v104;
            v82 = v78;
            v83 = v79;
          }

          else
          {
            Hasher._combine(_:)(0);
            v81 = v104;
            v82 = v78;
            v83 = 0;
          }

          outlined consume of HealthChartsData.SeriesDataShape(v81, v82, v83);
          v14 = v105;
          v7 = v101;
          goto LABEL_4;
        }

        MEMORY[0x2530774B0](4);
        MEMORY[0x2530774B0](*(v17 + 16));
        v71 = *(v17 + 16);
        if (v71)
        {
          v72 = (v17 + 40);
          do
          {
            v73 = *(v72 - 1);
            v74 = *v72;
            if (v73 == 0.0)
            {
              v73 = 0.0;
            }

            MEMORY[0x2530774D0](*&v73);
            if (v74 == 0.0)
            {
              v75 = 0.0;
            }

            else
            {
              v75 = v74;
            }

            MEMORY[0x2530774D0](*&v75);
            v72 += 2;
            --v71;
          }

          while (v71);
        }

        MEMORY[0x2530774B0](v16 + 1);
        if (!v18)
        {
LABEL_77:
          Hasher._combine(_:)(0);
          goto LABEL_4;
        }

        Hasher._combine(_:)(1u);
        outlined copy of HealthChartsData.SeriesDataShape(v17, v16, v18);
        v76 = v18;
        NSObject.hash(into:)();

        outlined consume of HealthChartsData.SeriesDataShape(v17, v16, v18);
      }

LABEL_4:
      ++v14;
    }

    while (v14 != v103);
  }
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530774B0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      if (v6 == 0.0)
      {
        v6 = 0.0;
      }

      MEMORY[0x2530774D0](*&v6);
      if (v7 == 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = v7;
      }

      MEMORY[0x2530774D0](*&v10);
      if (v8 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v8;
      }

      MEMORY[0x2530774D0](*&v11);
      if (v9 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v9;
      }

      result = MEMORY[0x2530774D0](*&v12);
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  v3 = *(a2 + 16);
  result = MEMORY[0x2530774B0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      if (v6 == 0.0)
      {
        v6 = 0.0;
      }

      MEMORY[0x2530774D0](*&v6);
      if (v7 == 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v7;
      }

      result = MEMORY[0x2530774D0](*&v8);
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x2530774B0](v8);
  if (v8)
  {
    v10 = &v7[*(v4 + 52)];
    v11 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v11, v7, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
      type metadata accessor for Date();
      lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      dispatch thunk of Hashable.hash(into:)();
      v13 = *v10;
      v14 = v10[1];
      if (*v10 == 0.0)
      {
        v13 = 0.0;
      }

      MEMORY[0x2530774D0](*&v13);
      if (v14 == 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v14;
      }

      MEMORY[0x2530774D0](*&v15);
      result = outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v7, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

{
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x2530774B0](v8);
  if (v8)
  {
    v10 = *(v4 + 52);
    v11 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v11, v7, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
      type metadata accessor for DateInterval();
      lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
      dispatch thunk of Hashable.hash(into:)();
      v13 = *&v7[v10];
      if (v13 == 0.0)
      {
        v13 = 0.0;
      }

      MEMORY[0x2530774D0](*&v13);
      result = outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v7, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

{
  type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x2530774B0](v8);
  if (v8)
  {
    v10 = &v7[*(v4 + 52)];
    v11 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v11, v7, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
      type metadata accessor for DateInterval();
      lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
      dispatch thunk of Hashable.hash(into:)();
      v13 = *v10;
      v14 = v10[1];
      if (*v10 == 0.0)
      {
        v13 = 0.0;
      }

      MEMORY[0x2530774D0](*&v13);
      if (v14 == 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v14;
      }

      MEMORY[0x2530774D0](*&v15);
      result = outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v7, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

{
  type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x2530774B0](v8);
  if (v8)
  {
    v10 = *(v4 + 52);
    v11 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v11, v7, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
      type metadata accessor for Date();
      lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      dispatch thunk of Hashable.hash(into:)();
      v13 = *&v7[v10];
      if (v13 == 0.0)
      {
        v13 = 0.0;
      }

      MEMORY[0x2530774D0](*&v13);
      result = outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(v7, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

Swift::Int specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
LABEL_13:
    v13 = __clz(__rbit64(v6)) | (v10 << 6);
    v14 = *(*(a2 + 48) + v13);
    if (v14 == 11)
    {
LABEL_15:

      return MEMORY[0x2530774B0](v9);
    }

    v15 = *(*(a2 + 56) + 8 * v13);
    v6 &= v6 - 1;
    String.hash(into:)();

    if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x2530774D0](v11);
    result = Hasher._finalize()();
    v9 ^= result;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
      goto LABEL_15;
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized static HealthChartsData.Description.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v2 == 3)
  {
    if (v4 == 3)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v4 == 3)
  {
    return 0;
  }

  v7 = 0x65676E6168636E75;
  v8 = 0xE900000000000064;
  if (v2 == 1)
  {
    v7 = 0x6973616572636564;
    v8 = 0xEA0000000000676ELL;
  }

  if (*a1)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6973616572636E69;
  }

  if (v2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA0000000000676ELL;
  }

  v11 = 0x65676E6168636E75;
  if (v4 == 1)
  {
    v11 = 0x6973616572636564;
    v12 = 0xEA0000000000676ELL;
  }

  else
  {
    v12 = 0xE900000000000064;
  }

  if (*a2)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0x6973616572636E69;
  }

  if (*a2)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xEA0000000000676ELL;
  }

  if (v9 == v13 && v10 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_27:

  return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ16HealthChartsCore0bC4DataV14DescriptionKeyO_SdTt1g5(v3, v5);
}

uint64_t specialized static HealthChartsData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v5 = a2[1];
  v4 = a2[2];
  if (!v3)
  {
    if (!v5)
    {

      goto LABEL_9;
    }

LABEL_6:

    v8 = 0;
LABEL_10:

    return v8 & 1;
  }

  v6 = *a2;
  v12[0] = *a1;
  v12[1] = v3;
  if (!v5)
  {
    goto LABEL_6;
  }

  v10[0] = v6;
  v11 = v5;
  swift_bridgeObjectRetain_n();

  v7 = specialized static HealthChartsData.Description.== infix(_:_:)(v12, v10);

  if (v7)
  {
LABEL_9:

    v8 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV06SeriesE5ShapeO_Tt1g5(v2, v4);
    goto LABEL_10;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t specialized static HealthChartsData.SeriesDataShape.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = v2 >> 61;
  if ((v2 >> 61) <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        if (v5 >> 61 == 1)
        {
          outlined copy of HealthChartsData.SeriesDataShape(*a2, a2[1], v7);
          outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
          outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
          outlined copy of HealthChartsData.SeriesDataShape(v6, v5, v7);
          v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_10Foundation12DateIntervalVSNySdGG_Tt1g5;
          goto LABEL_17;
        }
      }

      else if (v5 >> 61 == 2)
      {
        outlined copy of HealthChartsData.SeriesDataShape(*a2, a2[1], v7);
        outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
        outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
        outlined copy of HealthChartsData.SeriesDataShape(v6, v5, v7);
        v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_10Foundation12DateIntervalVSdG_Tt1g5;
        goto LABEL_17;
      }
    }

    else if (!(v5 >> 61))
    {
      outlined copy of HealthChartsData.SeriesDataShape(*a2, a2[1], v7);
      outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
      outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
      outlined copy of HealthChartsData.SeriesDataShape(v6, v5, v7);
      v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_10Foundation4DateVSdG_Tt1g5;
      goto LABEL_17;
    }

LABEL_28:
    outlined copy of HealthChartsData.SeriesDataShape(*a1, v2, v4);
    outlined copy of HealthChartsData.SeriesDataShape(v6, v5, v7);
    outlined consume of HealthChartsData.SeriesDataShape(v3, v2, v4);
    outlined consume of HealthChartsData.SeriesDataShape(v6, v5, v7);
    v11 = 0;
    return v11 & 1;
  }

  if (v8 > 4)
  {
    if (v8 == 5)
    {
      if (v5 >> 61 == 5)
      {
        outlined copy of HealthChartsData.SeriesDataShape(*a2, a2[1], v7);
        outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
        outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
        outlined copy of HealthChartsData.SeriesDataShape(v6, v5, v7);
        v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_SNySdGAHG_Tt1g5;
        goto LABEL_17;
      }
    }

    else if (v5 >> 61 == 6 && v5 == 0xC000000000000000 && (v7 | v6) == 0)
    {
      outlined consume of HealthChartsData.SeriesDataShape(*a1, v2, v4);
      outlined consume of HealthChartsData.SeriesDataShape(0, 0xC000000000000000, 0);
      v11 = 1;
      return v11 & 1;
    }

    goto LABEL_28;
  }

  if (v8 != 3)
  {
    if (v5 >> 61 == 4)
    {
      outlined copy of HealthChartsData.SeriesDataShape(*a2, a2[1], v7);
      outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
      outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
      outlined copy of HealthChartsData.SeriesDataShape(v6, v5, v7);
      v10 = _s16HealthChartsCore0aB4DataV06SeriesD0V2eeoiySbAEy_xq_G_AGtFZSd_SdTt1B5(v3, v2, v4, v6, v5, v7);
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  if (v5 >> 61 != 3)
  {
    goto LABEL_28;
  }

  outlined copy of HealthChartsData.SeriesDataShape(*a2, a2[1], v7);
  outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
  outlined copy of HealthChartsData.SeriesDataShape(v3, v2, v4);
  outlined copy of HealthChartsData.SeriesDataShape(v6, v5, v7);
  v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ16HealthChartsCore0bC4DataV11SeriesPointVy_10Foundation4DateVSNySdGG_Tt1g5;
LABEL_17:
  v10 = _s16HealthChartsCore0aB4DataV06SeriesD0V2eeoiySbAEy_xq_G_AGtFZ10Foundation4DateV_SdTt1B5Tm(v3, v2, v4, v6, v5, v7, v9);
LABEL_18:
  v11 = v10;
  outlined consume of HealthChartsData.SeriesDataShape(v3, v2, v4);
  outlined consume of HealthChartsData.SeriesDataShape(v6, v5, v7);
  outlined consume of HealthChartsData.SeriesDataShape(v6, v5, v7);
  outlined consume of HealthChartsData.SeriesDataShape(v3, v2, v4);
  return v11 & 1;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Description.CodingKeys and conformance HealthChartsData.Description.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionDirection and conformance HealthChartsData.DescriptionDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey;
  if (!lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey);
  }

  return result;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Aggregation and conformance HealthChartsData.Aggregation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.EmptyCodingKeys and conformance HealthChartsData.SeriesDataShape.EmptyCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarRangeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.ScalarPointCodingKeys and conformance HealthChartsData.SeriesDataShape.ScalarPointCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys and conformance HealthChartsData.SeriesDataShape.DateMinMaxCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateSpanCodingKeys and conformance HealthChartsData.SeriesDataShape.DateSpanCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DateRangeCodingKeys and conformance HealthChartsData.SeriesDataShape.DateRangeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.DatePointCodingKeys and conformance HealthChartsData.SeriesDataShape.DatePointCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape.CodingKeys and conformance HealthChartsData.SeriesDataShape.CodingKeys);
  }

  return result;
}

void type metadata accessor for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>)
  {
    type metadata accessor for ClosedRange<Double>();
    v5[0] = v2;
    v5[1] = v2;
    v6 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Double> and conformance <> ClosedRange<A>, type metadata accessor for ClosedRange<Double>, &protocol conformance descriptor for <> ClosedRange<A>);
    v7 = v6;
    v3 = type metadata accessor for HealthChartsData.SeriesData(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for HealthChartsData.SeriesData<ClosedRange<Double>, ClosedRange<Double>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for HealthChartsData.SeriesData<Double, Double>()
{
  if (!lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x277D839F8];
    v4[1] = MEMORY[0x277D839F8];
    v4[2] = &protocol witness table for Double;
    v4[3] = &protocol witness table for Double;
    v2 = type metadata accessor for HealthChartsData.SeriesData(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for HealthChartsData.SeriesData<Double, Double>);
    }
  }
}

void type metadata accessor for (@thick Any.Type, DecodingError.Context)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (@thick Any.Type, DecodingError.Context))
  {
    type metadata accessor for @thick Any.Type();
    type metadata accessor for DecodingError.Context();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (@thick Any.Type, DecodingError.Context));
    }
  }
}

unint64_t type metadata accessor for @thick Any.Type()
{
  result = lazy cache variable for type metadata for @thick Any.Type;
  if (!lazy cache variable for type metadata for @thick Any.Type)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for @thick Any.Type);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Series.CodingKeys and conformance HealthChartsData.Series.CodingKeys);
  }

  return result;
}

void type metadata accessor for [HealthChartsData.SeriesDataShape]()
{
  if (!lazy cache variable for type metadata for [HealthChartsData.SeriesDataShape])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [HealthChartsData.SeriesDataShape]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape;
  if (!lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.SeriesDataShape and conformance HealthChartsData.SeriesDataShape);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [HealthChartsData.SeriesDataShape] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [HealthChartsData.SeriesDataShape]();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys;
  if (!lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.CodingKeys and conformance HealthChartsData.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.Description and conformance HealthChartsData.Description()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Description and conformance HealthChartsData.Description);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HealthChartsData.Series and conformance HealthChartsData.Series()
{
  result = lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series;
  if (!lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData.Series and conformance HealthChartsData.Series);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<HealthChartsData.Description.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type HealthChartsData and conformance HealthChartsData()
{
  result = lazy protocol witness table cache variable for type HealthChartsData and conformance HealthChartsData;
  if (!lazy protocol witness table cache variable for type HealthChartsData and conformance HealthChartsData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HealthChartsData and conformance HealthChartsData);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthChartsData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsData.DescriptionKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthChartsData.DescriptionKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsData.Description(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HealthChartsData.Description(uint64_t result, int a2, int a3)
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

uint64_t type metadata completion function for HealthChartsData.SeriesPoint(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsData.SeriesPoint(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
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

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
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

char *storeEnumTagSinglePayload for HealthChartsData.SeriesPoint(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
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

uint64_t type metadata instantiation function for HealthChartsData.SeriesData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for HealthChartsData.SeriesData(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthChartsData.SeriesData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_16HealthChartsCore0aB4DataV06SeriesD5ShapeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >> 62 == 3)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 >> 61;
  }
}

uint64_t getEnumTagSinglePayload for HealthChartsData.SeriesDataShape(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 3;
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

uint64_t storeEnumTagSinglePayload for HealthChartsData.SeriesDataShape(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = 8 * -a2;
      *(result + 16) = 0;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for HealthChartsData.SeriesDataShape(void *result, uint64_t a2)
{
  if (a2 < 6)
  {
    result[1] = result[1] & 7 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 6);
    *(result + 1) = xmmword_25149BE90;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsData.Aggregation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthChartsData.Aggregation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsData.DescriptionDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthChartsData.DescriptionDirection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
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
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized HealthChartsData.SeriesDataShape.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E696F5065746164 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E615265746164 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E61705365746164 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4D6E694D65746164 && a2 == 0xEA00000000007861 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F5072616C616373 && a2 == 0xEB00000000746E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x615272616C616373 && a2 == 0xEB0000000065676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7974706D65 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t outlined init with copy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DiscreteDatePointData.buildData(from:aggregation:with:preferredUnit:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, void *a5@<X3>)
{
  v14 = *a2;
  DiscreteDatePointData.buildSeries(from:aggregation:with:preferredUnit:)(a1, &v14, a3, a5, &v15);
  v7 = v15;
  v8 = v16;
  v9 = v17;
  _s16HealthChartsCore15SeriesDataShapePAAE31statisticsCollectionDescription10dataPoints0G7OptionsAA0abE0V0I0VSayAH0D5PointVy_qd__qd_0_GG_So012HKStatisticsL0VtAA18IntervalChartValueRd__AaQRd_0_Sd5BoundRtd_0_r0_lFAA016DiscreteDateSpanE0V_10Foundation0tO0VSdTt2g5Tm(v15, a3, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>, type metadata accessor for HealthChartsData.SeriesPoint<Date, Double>, &v15);
  v10 = v15;
  v11 = v16;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25149B950;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  *(v12 + 48) = v9;

  *a4 = v10;
  a4[1] = v11;
  a4[2] = v12;
  return result;
}

uint64_t DiscreteDatePointData.buildSeries(from:aggregation:with:preferredUnit:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v66 = a4;
  v78 = a3;
  v63 = a5;
  v80 = type metadata accessor for Date();
  v7 = *(v80 - 8);
  v8 = MEMORY[0x28223BE20](v80);
  v75 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v74 = &v60[-v11];
  MEMORY[0x28223BE20](v10);
  v13 = &v60[-v12];
  v14 = MEMORY[0x277CC9578];
  type metadata accessor for (Date, Double)?(0, &lazy cache variable for type metadata for (Date, Double)?, &lazy cache variable for type metadata for (Date, Double), MEMORY[0x277CC9578], type metadata accessor for (Date, Double));
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v60[-v16];
  type metadata accessor for (Date, Double)(0, &lazy cache variable for type metadata for (Date, Double), v14);
  v19 = v18;
  v65 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v73 = &v60[-v20];
  v61 = *a2;
  v62 = a1;
  v21 = [a1 statistics];
  type metadata accessor for HKStatistics();
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253077340](v54))
  {
    v24 = 0;
    v71 = v22 & 0xFFFFFFFFFFFFFF8;
    v72 = v22 & 0xC000000000000001;
    v76 = (v7 + 8);
    v64 = (v7 + 32);
    v68 = (v65 + 56);
    v77 = MEMORY[0x277D84F90];
    v67 = (v65 + 48);
    v69 = v22;
    v70 = i;
    while (1)
    {
      if (v72)
      {
        v25 = MEMORY[0x2530772A0](v24, v22);
      }

      else
      {
        if (v24 >= *(v71 + 16))
        {
          goto LABEL_30;
        }

        v25 = *(v22 + 8 * v24 + 32);
      }

      v26 = v25;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v79 = v24 + 1;
      v27 = v17;
      v28 = [v25 startDate];
      v29 = v13;
      v30 = v74;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceReferenceDate.getter();
      v31 = *v76;
      v32 = v30;
      v33 = v80;
      (*v76)(v32, v80);
      v34 = [v26 endDate];
      v7 = v75;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceReferenceDate.getter();
      v35 = v33;
      v13 = v29;
      v31(v7, v35);
      Date.init(timeIntervalSinceReferenceDate:)();
      if ((v78 & 2) != 0 && (v36 = [v26 averageQuantity]) != 0)
      {
        v37 = v36;
        v38 = v66;
        v39 = v66;
        v17 = v27;
        if (!v66)
        {
          v40 = [v36 _unit];
          v38 = v66;
          v39 = v40;
        }

        v41 = v38;
        [v37 doubleValueForUnit_];
        v43 = v42;
        v22 = v69;
      }

      else
      {
        v17 = v27;
        if ((v78 & 0x10) == 0 || (v44 = [v26 sumQuantity]) == 0)
        {

          v31(v29, v80);
          v50 = 1;
          v22 = v69;
          v49 = v70;
          goto LABEL_22;
        }

        v37 = v44;
        v45 = v66;
        v39 = v66;
        v22 = v69;
        if (!v66)
        {
          v46 = [v44 _unit];
          v45 = v66;
          v39 = v46;
        }

        v47 = v45;
        [v37 doubleValueForUnit_];
        v43 = v48;
      }

      v49 = v70;

      v7 = *(v19 + 48);
      (*v64)(v17, v29, v80);
      v50 = 0;
      *&v17[v7] = v43;
LABEL_22:
      (*v68)(v17, v50, 1, v19);
      if ((*v67)(v17, 1, v19) == 1)
      {
        outlined destroy of (Date, Double)?(v17, &lazy cache variable for type metadata for (Date, Double)?, &lazy cache variable for type metadata for (Date, Double), MEMORY[0x277CC9578], type metadata accessor for (Date, Double));
      }

      else
      {
        outlined init with take of (Date, Double)(v17, v73, &lazy cache variable for type metadata for (Date, Double), MEMORY[0x277CC9578], type metadata accessor for (Date, Double));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77[2] + 1, 1, v77);
        }

        v52 = v77[2];
        v51 = v77[3];
        v7 = v52 + 1;
        if (v52 >= v51 >> 1)
        {
          v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v77);
        }

        v53 = v77;
        v77[2] = v7;
        outlined init with take of (Date, Double)(v73, v53 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v52, &lazy cache variable for type metadata for (Date, Double), MEMORY[0x277CC9578], type metadata accessor for (Date, Double));
      }

      ++v24;
      if (v79 == v49)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    if (v22 < 0)
    {
      v54 = v22;
    }

    else
    {
      v54 = v22 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v77 = MEMORY[0x277D84F90];
LABEL_36:

  v55 = _s16HealthChartsCore15SeriesDataShapePAAE9dimension4from4with13preferredUnitSo11NSDimensionCSgSo22HKStatisticsCollectionC_So0M7OptionsVSo6HKUnitCSgtFAA016DiscreteDateSpanE0V_Tt2g5Tm(v62, v78, v66);
  result = _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation4DateV_SdTt3B5(v77, v61, v55, &v81);
  v57 = v82;
  v58 = v83;
  v59 = v63;
  *v63 = v81;
  *(v59 + 8) = v57;
  v59[2] = v58;
  return result;
}

uint64_t _s16HealthChartsCore15SeriesDataShapePAAE31statisticsCollectionDescription10dataPoints0G7OptionsAA0abE0V0I0VSayAH0D5PointVy_qd__qd_0_GG_So012HKStatisticsL0VtAA18IntervalChartValueRd__AaQRd_0_Sd5BoundRtd_0_r0_lFAA016DiscreteDateSpanE0V_10Foundation0tO0VSdTt2g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v55 = a4;
  v56 = a5;
  v9 = a3(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  v16 = MEMORY[0x277D84F90];
  v58 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16HealthChartsCore0cD4DataV14DescriptionKeyO_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v17 = *(a1 + 16);
  if (v17)
  {
    v52 = a2;
    v53 = a6;
    v51 = v9;
    v54 = *(v9 + 52);
    v18 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = *(v10 + 72);
    v20 = MEMORY[0x277D84F90];
    v21 = v18;
    v22 = v17;
    do
    {
      outlined init with copy of HealthChartsData.SeriesPoint<DateInterval, Double>(v21, v15, v55);
      v23 = *&v15[v54];
      _s16HealthChartsCore0aB4DataV11SeriesPointVy_10Foundation12DateIntervalVSdGWOhTm_0(v15, v56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      }

      v25 = *(v20 + 2);
      v24 = *(v20 + 3);
      if (v25 >= v24 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v20);
      }

      *(v20 + 2) = v25 + 1;
      *&v20[8 * v25 + 32] = v23;
      v21 += v19;
      --v22;
    }

    while (v22);
    v26 = *(v51 + 52);
    v16 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of HealthChartsData.SeriesPoint<DateInterval, Double>(v18, v13, v55);
      v27 = *&v13[v26];
      _s16HealthChartsCore0aB4DataV11SeriesPointVy_10Foundation12DateIntervalVSdGWOhTm_0(v13, v56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      }

      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v16);
      }

      *(v16 + 2) = v30;
      *&v16[8 * v29 + 32] = v27;
      v18 += v19;
      --v17;
    }

    while (v17);
    LOBYTE(a2) = v52;
    a6 = v53;
    if (v30 <= 3)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v30 = *(v16 + 2);
  if (v30)
  {
    v20 = v16;
    if (v30 <= 3)
    {
LABEL_15:
      v31 = 0;
      v32 = 0.0;
      goto LABEL_21;
    }

LABEL_18:
    v31 = v30 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = (v16 + 48);
    v32 = 0.0;
    v34 = v30 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v32 = v32 + *(v33 - 2) + *(v33 - 1) + *v33 + v33[1];
      v33 += 4;
      v34 -= 4;
    }

    while (v34);
    if (v30 == v31)
    {
LABEL_23:
      v38 = v58;
      v39 = v32 / *(v20 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v38;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, isUniquelyReferenced_nonNull_native, v39);
      v58 = v57;
      if ((a2 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_21:
    v35 = v30 - v31;
    v36 = &v16[8 * v31 + 32];
    do
    {
      v37 = *v36++;
      v32 = v32 + v37;
      --v35;
    }

    while (v35);
    goto LABEL_23;
  }

  v32 = 0.0;
  v20 = v16;
  if ((a2 & 0x10) != 0)
  {
LABEL_24:
    v41 = v58;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v41;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(10, v42, v32);
    v58 = v57;
  }

LABEL_25:
  if ((a2 & 4) != 0)
  {
    v43 = specialized Sequence<>.min()(v20);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      specialized Dictionary.subscript.setter(v43, 0, 4);
    }
  }

  else
  {
  }

  if ((a2 & 8) != 0)
  {
    v47 = specialized Sequence<>.max()(v16);
    v49 = v48;

    if ((v49 & 1) == 0)
    {
      result = specialized Dictionary.subscript.setter(v47, 0, 6);
    }
  }

  else
  {
  }

  v50 = v58;
  *a6 = 3;
  *(a6 + 8) = v50;
  return result;
}

unint64_t type metadata accessor for HKStatistics()
{
  result = lazy cache variable for type metadata for HKStatistics;
  if (!lazy cache variable for type metadata for HKStatistics)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKStatistics);
  }

  return result;
}

uint64_t _s16HealthChartsCore15SeriesDataShapePAAE31statisticsCollectionDescription10dataPoints0G7OptionsAA0abE0V0I0VSayAH0D5PointVy_qd__qd_0_GG_So012HKStatisticsL0VtAA18IntervalChartValueRd__AaQRd_0_Sd5BoundRtd_0_r0_lFAA017DiscreteDateRangeE0V_10Foundation0tO0VSNySdGTt2g5Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v55 = a4;
  v56 = a5;
  v9 = a3(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  v16 = MEMORY[0x277D84F90];
  v58 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16HealthChartsCore0cD4DataV14DescriptionKeyO_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v17 = *(a1 + 16);
  if (v17)
  {
    v52 = a2;
    v53 = a6;
    v51 = v9;
    v54 = *(v9 + 52);
    v18 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = *(v10 + 72);
    v20 = MEMORY[0x277D84F90];
    v21 = v18;
    v22 = v17;
    do
    {
      outlined init with copy of HealthChartsData.SeriesPoint<DateInterval, Double>(v21, v15, v55);
      v23 = *&v15[v54];
      _s16HealthChartsCore0aB4DataV11SeriesPointVy_10Foundation12DateIntervalVSdGWOhTm_0(v15, v56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      }

      v25 = *(v20 + 2);
      v24 = *(v20 + 3);
      if (v25 >= v24 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v20);
      }

      *(v20 + 2) = v25 + 1;
      *&v20[8 * v25 + 32] = v23;
      v21 += v19;
      --v22;
    }

    while (v22);
    v26 = &v13[*(v51 + 52)];
    v16 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of HealthChartsData.SeriesPoint<DateInterval, Double>(v18, v13, v55);
      v27 = *(v26 + 1);
      _s16HealthChartsCore0aB4DataV11SeriesPointVy_10Foundation12DateIntervalVSdGWOhTm_0(v13, v56);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      }

      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v16);
      }

      *(v16 + 2) = v30;
      *&v16[8 * v29 + 32] = v27;
      v18 += v19;
      --v17;
    }

    while (v17);
    LOBYTE(a2) = v52;
    a6 = v53;
    if (v30 <= 3)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  v30 = *(v16 + 2);
  if (v30)
  {
    v20 = v16;
    if (v30 <= 3)
    {
LABEL_15:
      v31 = 0;
      v32 = 0.0;
      goto LABEL_21;
    }

LABEL_18:
    v31 = v30 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = (v16 + 48);
    v32 = 0.0;
    v34 = v30 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v32 = v32 + *(v33 - 2) + *(v33 - 1) + *v33 + v33[1];
      v33 += 4;
      v34 -= 4;
    }

    while (v34);
    if (v30 == v31)
    {
LABEL_23:
      v38 = v58;
      v39 = v32 / *(v20 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v38;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, isUniquelyReferenced_nonNull_native, v39);
      v58 = v57;
      if ((a2 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_21:
    v35 = v30 - v31;
    v36 = &v16[8 * v31 + 32];
    do
    {
      v37 = *v36++;
      v32 = v32 + v37;
      --v35;
    }

    while (v35);
    goto LABEL_23;
  }

  v32 = 0.0;
  v20 = v16;
  if ((a2 & 0x10) != 0)
  {
LABEL_24:
    v41 = v58;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v41;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(10, v42, v32);
    v58 = v57;
  }

LABEL_25:
  if ((a2 & 4) != 0)
  {
    v43 = specialized Sequence<>.min()(v20);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      specialized Dictionary.subscript.setter(v43, 0, 4);
    }
  }

  else
  {
  }

  if ((a2 & 8) != 0)
  {
    v47 = specialized Sequence<>.max()(v16);
    v49 = v48;

    if ((v49 & 1) == 0)
    {
      result = specialized Dictionary.subscript.setter(v47, 0, 6);
    }
  }

  else
  {
  }

  v50 = v58;
  *a6 = 3;
  *(a6 + 8) = v50;
  return result;
}

id _s16HealthChartsCore15SeriesDataShapePAAE9dimension4from4with13preferredUnitSo11NSDimensionCSgSo22HKStatisticsCollectionC_So0M7OptionsVSo6HKUnitCSgtFAA016DiscreteDateSpanE0V_Tt2g5Tm(id a1, char a2, id a3)
{
  if (a3)
  {
    v5 = [a3 _foundationUnit];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        return v7;
      }
    }
  }

  v9 = [a1 statistics];
  type metadata accessor for HKStatistics();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
LABEL_21:
    if (v10 < 0)
    {
      v16 = v10;
    }

    else
    {
      v16 = v10 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = MEMORY[0x253077340](v16);
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v11 != i; ++i)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2530772A0](i, v10);
    }

    else
    {
      if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v13 = *(v10 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v8 = unit #1 <A>(from:) in SeriesDataShape.dimension(from:with:preferredUnit:)(v13, a2);

    if (v8)
    {

      return v8;
    }
  }

  return 0;
}

uint64_t DiscreteDateRangeData.buildData(from:aggregation:with:preferredUnit:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v50 = a5;
  v9 = type metadata accessor for Date();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v58 = &v47[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v57 = &v47[-v12];
  type metadata accessor for (DateInterval, ClosedRange<Double>)(0, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), MEMORY[0x277CC88A8]);
  v55 = *(v13 - 8);
  v56 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v47[-v17];
  v48 = *a2;
  v49 = a1;
  v19 = [a1 statistics];
  type metadata accessor for HKStatistics();
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253077340](v37))
  {
    v22 = 0;
    v59 = v20 & 0xFFFFFFFFFFFFFF8;
    v60 = v20 & 0xC000000000000001;
    v23 = MEMORY[0x277D84F90];
    v53 = v18;
    v54 = a4;
    v51 = i;
    v52 = v20;
    while (1)
    {
      if (v60)
      {
        v24 = MEMORY[0x2530772A0](v22, v20);
      }

      else
      {
        if (v22 >= *(v59 + 16))
        {
          goto LABEL_26;
        }

        v24 = *(v20 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if ((a3 & 2) != 0 && (v27 = [v24 averageQuantity]) != 0)
      {
        v28 = v27;
        v29 = a4;
        if (!a4)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if ((a3 & 0x10) == 0 || (v27 = [v25 sumQuantity]) == 0)
        {

          goto LABEL_5;
        }

        v28 = v27;
        v29 = a4;
        if (!a4)
        {
LABEL_17:
          v29 = [v27 _unit];
        }
      }

      v30 = a4;
      [v28 doubleValueForUnit_];
      v32 = v31;

      v18 = *(v56 + 48);
      v33 = [v25 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = [v25 endDate];
      a4 = v58;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      DateInterval.init(start:end:)();
      if (v32 < 0.0)
      {
        goto LABEL_27;
      }

      v34 = &v16[v18];
      *v34 = 0.0;
      v34[1] = v32;
      v35 = v53;
      outlined init with take of (Date, Double)(v16, v53, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), MEMORY[0x277CC88A8], type metadata accessor for (DateInterval, ClosedRange<Double>));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
      }

      a4 = v54;
      v18 = v23[2];
      v36 = v23[3];
      if (v18 >= v36 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v18 + 1, 1, v23);
      }

      v23[2] = v18 + 1;
      outlined init with take of (Date, Double)(v35, v23 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v18, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), MEMORY[0x277CC88A8], type metadata accessor for (DateInterval, ClosedRange<Double>));
      i = v51;
      v20 = v52;
LABEL_5:
      ++v22;
      if (v26 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    if (v20 < 0)
    {
      v37 = v20;
    }

    else
    {
      v37 = v20 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_33:

  v38 = _s16HealthChartsCore15SeriesDataShapePAAE9dimension4from4with13preferredUnitSo11NSDimensionCSgSo22HKStatisticsCollectionC_So0M7OptionsVSo6HKUnitCSgtFAA016DiscreteDateSpanE0V_Tt2g5Tm(v49, a3, a4);
  _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation12DateIntervalV_SNySdGTt3B5(v23, v48, v38, &v61);
  v39 = v61;
  v40 = v62;
  v41 = v63;
  _s16HealthChartsCore15SeriesDataShapePAAE31statisticsCollectionDescription10dataPoints0G7OptionsAA0abE0V0I0VSayAH0D5PointVy_qd__qd_0_GG_So012HKStatisticsL0VtAA18IntervalChartValueRd__AaQRd_0_Sd5BoundRtd_0_r0_lFAA017DiscreteDateRangeE0V_10Foundation0tO0VSNySdGTt2g5Tm(v61, a3, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, ClosedRange<Double>>, &v61);
  v42 = v61;
  v43 = v62;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>();
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_25149B950;
  *(v44 + 32) = v39;
  *(v44 + 40) = v40 | 0x2000000000000000;
  *(v44 + 48) = v41;

  v46 = v50;
  *v50 = v42;
  v46[1] = v43;
  v46[2] = v44;
  return result;
}

uint64_t DiscreteDateRangeData.buildSeries(from:aggregation:with:preferredUnit:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, char a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v46 = a5;
  v9 = type metadata accessor for Date();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v54 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v53 = &v43[-v12];
  type metadata accessor for (DateInterval, ClosedRange<Double>)(0, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), MEMORY[0x277CC88A8]);
  v51 = *(v13 - 8);
  v52 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v43[-v17];
  v44 = *a2;
  v45 = a1;
  v19 = [a1 statistics];
  type metadata accessor for HKStatistics();
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253077340](v37))
  {
    v22 = 0;
    v55 = v20 & 0xFFFFFFFFFFFFFF8;
    v56 = v20 & 0xC000000000000001;
    v23 = MEMORY[0x277D84F90];
    v49 = v18;
    v50 = a4;
    v47 = i;
    v48 = v20;
    while (1)
    {
      if (v56)
      {
        v24 = MEMORY[0x2530772A0](v22, v20);
      }

      else
      {
        if (v22 >= *(v55 + 16))
        {
          goto LABEL_26;
        }

        v24 = *(v20 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if ((a3 & 2) != 0 && (v27 = [v24 averageQuantity]) != 0)
      {
        v28 = v27;
        v29 = a4;
        if (!a4)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if ((a3 & 0x10) == 0 || (v27 = [v25 sumQuantity]) == 0)
        {

          goto LABEL_5;
        }

        v28 = v27;
        v29 = a4;
        if (!a4)
        {
LABEL_17:
          v29 = [v27 _unit];
        }
      }

      v30 = a4;
      [v28 doubleValueForUnit_];
      v32 = v31;

      v18 = *(v52 + 48);
      v33 = [v25 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = [v25 endDate];
      a4 = v54;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      DateInterval.init(start:end:)();
      if (v32 < 0.0)
      {
        goto LABEL_27;
      }

      v34 = &v16[v18];
      *v34 = 0.0;
      v34[1] = v32;
      v35 = v49;
      outlined init with take of (Date, Double)(v16, v49, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), MEMORY[0x277CC88A8], type metadata accessor for (DateInterval, ClosedRange<Double>));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
      }

      a4 = v50;
      v18 = v23[2];
      v36 = v23[3];
      if (v18 >= v36 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v18 + 1, 1, v23);
      }

      v23[2] = v18 + 1;
      outlined init with take of (Date, Double)(v35, v23 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v18, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>), MEMORY[0x277CC88A8], type metadata accessor for (DateInterval, ClosedRange<Double>));
      i = v47;
      v20 = v48;
LABEL_5:
      ++v22;
      if (v26 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    if (v20 < 0)
    {
      v37 = v20;
    }

    else
    {
      v37 = v20 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_33:

  v38 = _s16HealthChartsCore15SeriesDataShapePAAE9dimension4from4with13preferredUnitSo11NSDimensionCSgSo22HKStatisticsCollectionC_So0M7OptionsVSo6HKUnitCSgtFAA016DiscreteDateSpanE0V_Tt2g5Tm(v45, a3, a4);
  result = _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation12DateIntervalV_SNySdGTt3B5(v23, v44, v38, &v57);
  v40 = v58;
  v41 = v59;
  v42 = v46;
  *v46 = v57;
  *(v42 + 8) = v40;
  v42[2] = v41;
  return result;
}

uint64_t DiscreteDateMinMaxData.buildData(from:aggregation:with:preferredUnit:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, void *a5@<X3>)
{
  v14 = *a2;
  DiscreteDateMinMaxData.buildSeries(from:aggregation:with:preferredUnit:)(a1, &v14, a3, a5, &v15);
  v7 = v15;
  v8 = v16;
  v9 = v17;
  _s16HealthChartsCore15SeriesDataShapePAAE31statisticsCollectionDescription10dataPoints0G7OptionsAA0abE0V0I0VSayAH0D5PointVy_qd__qd_0_GG_So012HKStatisticsL0VtAA18IntervalChartValueRd__AaQRd_0_Sd5BoundRtd_0_r0_lFAA017DiscreteDateRangeE0V_10Foundation0tO0VSNySdGTt2g5Tm(v15, a3, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>, type metadata accessor for HealthChartsData.SeriesPoint<Date, ClosedRange<Double>>, &v15);
  v10 = v15;
  v11 = v16;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25149B950;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8 | 0x6000000000000000;
  *(v12 + 48) = v9;

  *a4 = v10;
  a4[1] = v11;
  a4[2] = v12;
  return result;
}

uint64_t DiscreteDateMinMaxData.buildSeries(from:aggregation:with:preferredUnit:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v69 = a4;
  v65 = a5;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v79 = &v62[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v78 = &v62[-v13];
  MEMORY[0x28223BE20](v12);
  v82 = &v62[-v14];
  v15 = MEMORY[0x277CC9578];
  type metadata accessor for (Date, Double)?(0, &lazy cache variable for type metadata for (Date, ClosedRange<Double>)?, &lazy cache variable for type metadata for (Date, ClosedRange<Double>), MEMORY[0x277CC9578], type metadata accessor for (DateInterval, ClosedRange<Double>));
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v62[-v17];
  type metadata accessor for (DateInterval, ClosedRange<Double>)(0, &lazy cache variable for type metadata for (Date, ClosedRange<Double>), v15);
  v80 = v19;
  v67 = *(v19 - 1);
  MEMORY[0x28223BE20](v19);
  v77 = &v62[-v20];
  v63 = *a2;
  v64 = a1;
  v21 = [a1 statistics];
  type metadata accessor for HKStatistics();
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v22 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253077340](v56))
  {
    v24 = 0;
    v75 = v22 & 0xFFFFFFFFFFFFFF8;
    v76 = v22 & 0xC000000000000001;
    v25 = (v9 + 2);
    v66 = (v9 + 8);
    v72 = (v67 + 56);
    v81 = MEMORY[0x277D84F90];
    v71 = (v67 + 48);
    v68 = a3;
    v70 = v8;
    v73 = i;
    v74 = v22;
    while (1)
    {
      if (v76)
      {
        v26 = MEMORY[0x2530772A0](v24, v22);
      }

      else
      {
        if (v24 >= *(v75 + 16))
        {
          goto LABEL_33;
        }

        v26 = *(v22 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v29 = v18;
      v30 = [v26 startDate];
      v22 = a3;
      v31 = v78;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceReferenceDate.getter();
      v18 = *v25;
      (*v25)(v31, v8);
      v32 = [v27 endDate];
      v33 = v79;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      a3 = v22;
      Date.timeIntervalSinceReferenceDate.getter();
      (v18)(v33, v8);
      Date.init(timeIntervalSinceReferenceDate:)();
      v34 = 0.0;
      if ((v22 & 4) != 0 && (v35 = [v27 minimumQuantity]) != 0)
      {
        v36 = v35;
        v37 = v69;
        v38 = v69;
        if (!v69)
        {
          v39 = [v35 _unit];
          v37 = v69;
          v38 = v39;
        }

        v40 = v37;
        [v36 doubleValueForUnit_];
        v34 = v41;

        v8 = 0;
        a3 = v68;
        if ((v68 & 8) == 0)
        {
LABEL_23:

LABEL_24:
          v8 = v70;
          (v18)(v82, v70);
          v50 = 1;
          v18 = v29;
          goto LABEL_25;
        }
      }

      else
      {
        v8 = 1;
        if ((v22 & 8) == 0)
        {
          goto LABEL_23;
        }
      }

      v42 = [v27 maximumQuantity];
      if (!v42)
      {
        goto LABEL_23;
      }

      v9 = v42;
      v43 = v69;
      v44 = v69;
      if (!v69)
      {
        v45 = [v42 _unit];
        v43 = v69;
        v44 = v45;
      }

      v46 = v43;
      [v9 doubleValueForUnit_];
      v48 = v47;

      a3 = v68;
      if (v8)
      {
        goto LABEL_24;
      }

      if (v34 > v48)
      {
        goto LABEL_34;
      }

      v18 = v29;
      v49 = &v29[v80[12]];
      v8 = v70;
      (*v66)(v29, v82, v70);
      v50 = 0;
      *v49 = v34;
      v49[1] = v48;
LABEL_25:
      v9 = v80;
      (*v72)(v18, v50, 1, v80);
      v51 = (*v71)(v18, 1, v9);
      v52 = v73;
      v22 = v74;
      if (v51 == 1)
      {
        outlined destroy of (Date, Double)?(v18, &lazy cache variable for type metadata for (Date, ClosedRange<Double>)?, &lazy cache variable for type metadata for (Date, ClosedRange<Double>), MEMORY[0x277CC9578], type metadata accessor for (DateInterval, ClosedRange<Double>));
      }

      else
      {
        outlined init with take of (Date, Double)(v18, v77, &lazy cache variable for type metadata for (Date, ClosedRange<Double>), MEMORY[0x277CC9578], type metadata accessor for (DateInterval, ClosedRange<Double>));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v81[2] + 1, 1, v81);
        }

        v54 = v81[2];
        v53 = v81[3];
        v9 = (v54 + 1);
        if (v54 >= v53 >> 1)
        {
          v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v81);
        }

        v55 = v81;
        v81[2] = v9;
        outlined init with take of (Date, Double)(v77, v55 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v54, &lazy cache variable for type metadata for (Date, ClosedRange<Double>), MEMORY[0x277CC9578], type metadata accessor for (DateInterval, ClosedRange<Double>));
      }

      ++v24;
      if (v28 == v52)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    if (v22 < 0)
    {
      v56 = v22;
    }

    else
    {
      v56 = v22 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v81 = MEMORY[0x277D84F90];
LABEL_40:

  v57 = _s16HealthChartsCore15SeriesDataShapePAAE9dimension4from4with13preferredUnitSo11NSDimensionCSgSo22HKStatisticsCollectionC_So0M7OptionsVSo6HKUnitCSgtFAA016DiscreteDateSpanE0V_Tt2g5Tm(v64, a3, v69);
  result = _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation4DateV_SNySdGTt3B5(v81, v63, v57, &v83);
  v59 = v84;
  v60 = v85;
  v61 = v65;
  *v65 = v83;
  *(v61 + 8) = v59;
  v61[2] = v60;
  return result;
}

uint64_t DiscreteDateSpanData.buildData(from:aggregation:with:preferredUnit:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v51 = a5;
  v9 = type metadata accessor for Date();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v59 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v58 = &v48[-v12];
  type metadata accessor for (Date, Double)(0, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8]);
  v56 = *(v13 - 8);
  v57 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v48[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v48[-v17];
  v49 = *a2;
  v50 = a1;
  v19 = [a1 statistics];
  type metadata accessor for HKStatistics();
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253077340](v38))
  {
    v22 = 0;
    v60 = v20 & 0xFFFFFFFFFFFFFF8;
    v61 = v20 & 0xC000000000000001;
    v23 = MEMORY[0x277D84F90];
    v54 = v18;
    v55 = a4;
    v52 = i;
    v53 = v20;
    while (1)
    {
      if (v61)
      {
        v24 = MEMORY[0x2530772A0](v22, v20);
      }

      else
      {
        if (v22 >= *(v60 + 16))
        {
          goto LABEL_25;
        }

        v24 = *(v20 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if ((a3 & 2) != 0)
      {
        v27 = [v24 averageQuantity];
        if (v27)
        {
          v28 = v27;
          v29 = a4;
          if (!a4)
          {
LABEL_17:
            v29 = [v27 _unit];
          }

LABEL_18:
          v30 = a4;
          [v28 doubleValueForUnit_];
          v32 = v31;

          v33 = *(v57 + 48);
          v34 = [v25 startDate];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v35 = [v25 endDate];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          DateInterval.init(start:end:)();
          *&v16[v33] = v32;
          v36 = v54;
          outlined init with take of (Date, Double)(v16, v54, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8], type metadata accessor for (Date, Double));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
          }

          v18 = v23[2];
          v37 = v23[3];
          a4 = v55;
          if (v18 >= v37 >> 1)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v18 + 1, 1, v23);
          }

          v23[2] = v18 + 1;
          outlined init with take of (Date, Double)(v36, v23 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v18, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8], type metadata accessor for (Date, Double));
          i = v52;
          v20 = v53;
          goto LABEL_5;
        }
      }

      if ((a3 & 0x10) != 0)
      {
        v27 = [v25 sumQuantity];
        if (v27)
        {
          v28 = v27;
          v29 = a4;
          if (!a4)
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }
      }

LABEL_5:
      ++v22;
      if (v26 == i)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    if (v20 < 0)
    {
      v38 = v20;
    }

    else
    {
      v38 = v20 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_31:

  v39 = _s16HealthChartsCore15SeriesDataShapePAAE9dimension4from4with13preferredUnitSo11NSDimensionCSgSo22HKStatisticsCollectionC_So0M7OptionsVSo6HKUnitCSgtFAA016DiscreteDateSpanE0V_Tt2g5Tm(v50, a3, a4);
  _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation12DateIntervalV_SdTt3B5(v23, v49, v39, &v62);
  v40 = v62;
  v41 = v63;
  v42 = v64;
  _s16HealthChartsCore15SeriesDataShapePAAE31statisticsCollectionDescription10dataPoints0G7OptionsAA0abE0V0I0VSayAH0D5PointVy_qd__qd_0_GG_So012HKStatisticsL0VtAA18IntervalChartValueRd__AaQRd_0_Sd5BoundRtd_0_r0_lFAA016DiscreteDateSpanE0V_10Foundation0tO0VSdTt2g5Tm(v62, a3, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>, type metadata accessor for HealthChartsData.SeriesPoint<DateInterval, Double>, &v62);
  v43 = v62;
  v44 = v63;
  type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>();
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_25149B950;
  *(v45 + 32) = v40;
  *(v45 + 40) = v41 | 0x4000000000000000;
  *(v45 + 48) = v42;

  v47 = v51;
  *v51 = v43;
  v47[1] = v44;
  v47[2] = v45;
  return result;
}

uint64_t DiscreteDateSpanData.buildSeries(from:aggregation:with:preferredUnit:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, char a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v47 = a5;
  v9 = type metadata accessor for Date();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v55 = &v44[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v54 = &v44[-v12];
  type metadata accessor for (Date, Double)(0, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8]);
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v44[-v17];
  v45 = *a2;
  v46 = a1;
  v19 = [a1 statistics];
  type metadata accessor for HKStatistics();
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253077340](v38))
  {
    v22 = 0;
    v56 = v20 & 0xFFFFFFFFFFFFFF8;
    v57 = v20 & 0xC000000000000001;
    v23 = MEMORY[0x277D84F90];
    v50 = v18;
    v51 = a4;
    v48 = i;
    v49 = v20;
    while (1)
    {
      if (v57)
      {
        v24 = MEMORY[0x2530772A0](v22, v20);
      }

      else
      {
        if (v22 >= *(v56 + 16))
        {
          goto LABEL_25;
        }

        v24 = *(v20 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if ((a3 & 2) != 0)
      {
        v27 = [v24 averageQuantity];
        if (v27)
        {
          v28 = v27;
          v29 = a4;
          if (!a4)
          {
LABEL_17:
            v29 = [v27 _unit];
          }

LABEL_18:
          v30 = a4;
          [v28 doubleValueForUnit_];
          v32 = v31;

          v33 = *(v53 + 48);
          v34 = [v25 startDate];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v35 = [v25 endDate];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          DateInterval.init(start:end:)();
          *&v16[v33] = v32;
          v36 = v50;
          outlined init with take of (Date, Double)(v16, v50, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8], type metadata accessor for (Date, Double));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
          }

          v18 = v23[2];
          v37 = v23[3];
          a4 = v51;
          if (v18 >= v37 >> 1)
          {
            v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v18 + 1, 1, v23);
          }

          v23[2] = v18 + 1;
          outlined init with take of (Date, Double)(v36, v23 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v18, &lazy cache variable for type metadata for (DateInterval, Double), MEMORY[0x277CC88A8], type metadata accessor for (Date, Double));
          i = v48;
          v20 = v49;
          goto LABEL_5;
        }
      }

      if ((a3 & 0x10) != 0)
      {
        v27 = [v25 sumQuantity];
        if (v27)
        {
          v28 = v27;
          v29 = a4;
          if (!a4)
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }
      }

LABEL_5:
      ++v22;
      if (v26 == i)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    if (v20 < 0)
    {
      v38 = v20;
    }

    else
    {
      v38 = v20 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_31:

  v39 = _s16HealthChartsCore15SeriesDataShapePAAE9dimension4from4with13preferredUnitSo11NSDimensionCSgSo22HKStatisticsCollectionC_So0M7OptionsVSo6HKUnitCSgtFAA016DiscreteDateSpanE0V_Tt2g5Tm(v46, a3, a4);
  result = _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation12DateIntervalV_SdTt3B5(v23, v45, v39, &v58);
  v41 = v59;
  v42 = v60;
  v43 = v47;
  *v47 = v58;
  *(v43 + 8) = v41;
  v43[2] = v42;
  return result;
}

id unit #1 <A>(from:) in SeriesDataShape.dimension(from:with:preferredUnit:)(id a1, char a2)
{
  if (((a2 & 2) == 0 || (result = [a1 averageQuantity]) == 0) && ((a2 & 0x10) == 0 || (result = objc_msgSend(a1, sel_sumQuantity)) == 0) && ((a2 & 4) == 0 || (result = objc_msgSend(a1, sel_minimumQuantity)) == 0))
  {
    if ((a2 & 8) == 0)
    {
      return 0;
    }

    result = [a1 maximumQuantity];
    if (!result)
    {
      return result;
    }
  }

  v5 = result;
  v6 = [result _unit];
  v7 = [v6 _foundationUnit];

  if (v7)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t outlined init with take of (Date, Double)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void type metadata accessor for (Date, Double)?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = type metadata accessor for Optional();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for (DateInterval, ClosedRange<Double>)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for ClosedRange<Double>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t outlined destroy of (Date, Double)?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for (Date, Double)?(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void type metadata accessor for (Date, Double)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t _s10Foundation4DateVAC16HealthChartsCore18IntervalChartValueADWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for HealthChartsDataShape(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HealthChartsDataShape(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for HealthChartsDataShape(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
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

uint64_t outlined init with copy of HealthChartsData.SeriesPoint<DateInterval, Double>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s16HealthChartsCore0aB4DataV11SeriesPointVy_10Foundation12DateIntervalVSdGWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int specialized Dictionary.subscript.setter(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v7)
    {
      v8 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v13 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v10 = v13;
      }

      result = specialized _NativeDictionary._delete(at:)(v8, v10);
      *v4 = v10;
    }
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, v12, *&a1);
    *v3 = v14;
  }

  return result;
}

void DiscreteDateRangeData.buildData(from:aggregation:histogramBucketSize:zeroCountForGap:preferredUnit:)(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v103 = a5;
  v104 = a6;
  type metadata accessor for (DateInterval, ClosedRange<Double>)(0);
  v121 = *(v10 - 8);
  v122 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v114 = &v101[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v124 = &v101[-v13];
  v14 = type metadata accessor for Date();
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v113 = &v101[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v112 = &v101[-v17];
  v123 = type metadata accessor for DateInterval();
  v18 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v125 = &v101[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v102 = *a2;
    v20 = [a3 _unit];
    [a3 doubleValueForUnit_];
    v22 = v21;

    v23 = (a1 & 0xFFFFFFFFFFFFFF8);
    v106 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_122;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x253077340](v88))
    {
      v25 = 0;
      v111 = a1 & 0xC000000000000001;
      v105 = a1 + 32;
      v120 = (v18 + 16);
      v23 = &v130;
      v110 = (v18 + 8);
      v126 = MEMORY[0x277D84F90];
      v18 = 1;
      v26 = 0.0;
      v27 = 0.0;
      v108 = a3;
      v107 = a1;
      v109 = i;
      while (1)
      {
        if (v111)
        {
          v28 = MEMORY[0x2530772A0](v25, a1);
        }

        else
        {
          if (v25 >= *(v106 + 16))
          {
            goto LABEL_121;
          }

          v28 = *(v105 + 8 * v25);
        }

        v29 = v28;
        v30 = __OFADD__(v25++, 1);
        if (v30)
        {
          break;
        }

        v31 = [v28 startDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = [v29 endDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        DateInterval.init(start:end:)();
        v33 = [v29 minimumValue];
        v34 = [a3 _unit];
        [v33 doubleValueForUnit_];
        v36 = v35;

        v37 = [v29 maximumValue];
        v38 = [a3 _unit];
        [v37 doubleValueForUnit_];
        v40 = v39;

        if (v36 <= v27)
        {
          v41 = v36;
        }

        else
        {
          v41 = v27;
        }

        if (v40 > v26)
        {
          v42 = v40;
        }

        else
        {
          v42 = v26;
        }

        if (v18)
        {
          v27 = v36;
        }

        else
        {
          v27 = v41;
        }

        if (v18)
        {
          v26 = v40;
        }

        else
        {
          v26 = v42;
        }

        v43 = [v29 minimumBucketValue];
        v44 = [a3 _unit];
        [v43 doubleValueForUnit_];
        v46 = v45;

        v119 = v29;
        v47 = [v29 histogramCounts];
        type metadata accessor for NSNumber();
        v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v48 >> 62)
        {
          if (v48 < 0)
          {
            v84 = v48;
          }

          else
          {
            v84 = v48 & 0xFFFFFFFFFFFFFF8;
          }

          v49 = MEMORY[0x253077340](v84);
          if (!v49)
          {
LABEL_5:

            i = v109;
LABEL_6:
            (*v110)(v125, v123);
            goto LABEL_7;
          }
        }

        else
        {
          v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v49)
          {
            goto LABEL_5;
          }
        }

        v115 = v25;
        v116 = v27;
        v117 = v26;
        v50 = 0;
        a1 = 0;
        v51 = v48 & 0xC000000000000001;
        v18 = v48 & 0xFFFFFFFFFFFFFF8;
        v118 = v48 + 32;
        v52 = v46;
        while (2)
        {
          if (v52 > v36)
          {
            v53 = v52;
          }

          else
          {
            v53 = v36;
          }

          if (v40 >= v53)
          {
            v54 = v53;
          }

          else
          {
            v54 = v40;
          }

LABEL_34:
          a3 = 0;
          if (v46 > v36)
          {
            v55 = v46;
          }

          else
          {
            v55 = v36;
          }

          if (v40 >= v55)
          {
            v56 = v55;
          }

          else
          {
            v56 = v40;
          }

          v57 = v46;
          v58 = a1;
          while (1)
          {
            if (v51)
            {
              v59 = MEMORY[0x2530772A0](v58, v48);
            }

            else
            {
              if (v58 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_117;
              }

              v59 = *(v118 + 8 * v58);
            }

            v60 = v59;
            a1 = v58 + 1;
            if (__OFADD__(v58, 1))
            {
              goto LABEL_115;
            }

            v61 = [v59 integerValue];
            if ((v50 & 1) == 0)
            {
              break;
            }

            if (v61 > 0)
            {
LABEL_71:

              v46 = v22 + v57;
              v50 = 1;
              if (a1 != v49)
              {
                goto LABEL_34;
              }

LABEL_86:
              v57 = v52;
              goto LABEL_87;
            }

            v62 = a3 + 1;
            if (__OFADD__(a3, 1))
            {
              goto LABEL_116;
            }

            if (v62 != a4)
            {

              if (a1 != v49)
              {
                a1 = v58 + 5;
                while (1)
                {
                  v68 = a1 - 4;
                  if (v51)
                  {
                    v69 = MEMORY[0x2530772A0](a1 - 4, v48);
                  }

                  else
                  {
                    if (v68 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_117;
                    }

                    v69 = *(v48 + 8 * a1);
                  }

                  v60 = v69;
                  v30 = __OFADD__(v68, 1);
                  v58 = a1 - 3;
                  if (v30)
                  {
                    break;
                  }

                  v57 = v22 + v57;
                  if ([v69 integerValue] > 0)
                  {
                    a1 -= 3;
                    goto LABEL_71;
                  }

                  if (__OFADD__(v62, 1))
                  {
                    goto LABEL_116;
                  }

                  if (v62 + 1 == a4)
                  {
                    goto LABEL_51;
                  }

                  ++v62;
                  ++a1;
                  if (v58 == v49)
                  {
                    goto LABEL_86;
                  }
                }

LABEL_115:
                __break(1u);
LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
LABEL_118:
                __break(1u);
                goto LABEL_119;
              }

              goto LABEL_86;
            }

            ++v58;
LABEL_51:
            v63 = v126;
            if (v54 > v56)
            {
              goto LABEL_118;
            }

            v64 = &v124[*(v122 + 48)];
            (*v120)();
            *v64 = v54;
            v64[1] = v56;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63);
            }

            v66 = v63[2];
            v65 = v63[3];
            a1 = v66 + 1;
            if (v66 >= v65 >> 1)
            {
              v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v63);
            }

            v63[2] = a1;
            v67 = (*(v121 + 80) + 32) & ~*(v121 + 80);
            v126 = v63;
            outlined init with take of (DateInterval, ClosedRange<Double>)(v124, v63 + v67 + *(v121 + 72) * v66);
            v50 = 0;
            v57 = v22 + v57;
            a3 = a4;
            if (v58 == v49)
            {
              goto LABEL_85;
            }
          }

          a3 = v61;

          if (a3 <= 0)
          {
            if (a1 == v49)
            {
LABEL_85:

              a3 = v108;
              a1 = v107;
              i = v109;
              v26 = v117;
              v27 = v116;
              v25 = v115;
              goto LABEL_6;
            }

            a3 = v58 + 5;
            while (1)
            {
              v70 = a3 - 4;
              if (v51)
              {
                v71 = MEMORY[0x2530772A0](a3 - 4, v48);
              }

              else
              {
                if (v70 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_117;
                }

                v71 = *(v48 + 8 * a3);
              }

              v72 = v71;
              a1 = a3 - 3;
              if (__OFADD__(v70, 1))
              {
                goto LABEL_115;
              }

              v57 = v22 + v57;
              v73 = [v71 integerValue];

              if (v73 >= 1)
              {
                break;
              }

              ++a3;
              if (a1 == v49)
              {
                goto LABEL_85;
              }
            }
          }

          v46 = v22 + v57;
          v50 = 1;
          v52 = v57;
          if (a1 != v49)
          {
            continue;
          }

          break;
        }

LABEL_87:

        if (v57 > v36)
        {
          v74 = v57;
        }

        else
        {
          v74 = v36;
        }

        if (v40 >= v74)
        {
          v75 = v74;
        }

        else
        {
          v75 = v40;
        }

        if (v46 > v36)
        {
          v76 = v46;
        }

        else
        {
          v76 = v36;
        }

        if (v40 >= v76)
        {
          v77 = v76;
        }

        else
        {
          v77 = v40;
        }

        if (v75 > v77)
        {
          goto LABEL_120;
        }

        v78 = &v114[*(v122 + 48)];
        (*v120)();
        *v78 = v75;
        v78[1] = v77;
        v79 = v126;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79[2] + 1, 1, v79);
        }

        a3 = v108;
        a1 = v107;
        i = v109;
        v26 = v117;
        v27 = v116;
        v25 = v115;
        v80 = v119;
        v82 = v126[2];
        v81 = v126[3];
        if (v82 >= v81 >> 1)
        {
          v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1, v126);
        }

        (*v110)(v125, v123);
        v83 = v126;
        v126[2] = v82 + 1;
        outlined init with take of (DateInterval, ClosedRange<Double>)(v114, v83 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v82);
LABEL_7:
        v18 = 0;
        if (v25 == i)
        {
          goto LABEL_127;
        }
      }

LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      if ((a1 & 0x8000000000000000) == 0)
      {
        v88 = v23;
      }

      else
      {
        v88 = a1;
      }
    }

    v126 = MEMORY[0x277D84F90];
    v26 = 0.0;
    v27 = 0.0;
LABEL_127:
    v89 = specialized static DiscreteDateRangeData.dimension(for:preferredUnit:)(a3, v103);
    v90 = v89;
    _s16HealthChartsCore0aB4DataV06SeriesD0V_11aggregation4unitAEy_xq_GSayx_q_tG_AC11AggregationOAA0aB4UnitVSgtcfC10Foundation12DateIntervalV_SNySdGTt3B5(v126, v102, v89, &v127);
    v91 = v127;
    v92 = v128;
    v93 = v129;
    v94 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16HealthChartsCore0cD4DataV14DescriptionKeyO_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    if (i)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v127 = v94;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(4, isUniquelyReferenced_nonNull_native, v27);
      v96 = v127;
      v97 = swift_isUniquelyReferenced_nonNull_native();
      v127 = v96;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(6, v97, v26);
      v94 = v127;
    }

    v98 = v92 | 0x2000000000000000;
    type metadata accessor for _ContiguousArrayStorage<HealthChartsData.SeriesDataShape>();
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_25149B950;
    *(v99 + 32) = v91;
    *(v99 + 40) = v98;
    *(v99 + 48) = v93;

    v100 = v104;
    *v104 = 3;
    v100[1] = v94;
    v100[2] = v99;
  }

  else
  {
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    v85 = unk_27F435E30;
    v86 = qword_27F435E38;
    v87 = v104;
    *v104 = static HealthChartsData.empty;
    v87[1] = v85;
    v87[2] = v86;
  }
}

void type metadata accessor for (DateInterval, ClosedRange<Double>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>))
  {
    type metadata accessor for DateInterval();
    type metadata accessor for ClosedRange<Double>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DateInterval, ClosedRange<Double>));
    }
  }
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  type metadata accessor for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>(0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_32:
  *v3 = v7;
  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    specialized _NativeDictionary.copy()();
    result = v17;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a1;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>(0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16HealthChartsCore0cD4DataV14DescriptionKeyO_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>(0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t specialized static DiscreteDateRangeData.dimension(for:preferredUnit:)(id a1, id a2)
{
  if (a2)
  {
    v3 = [a2 _foundationUnit];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }
    }
  }

  v6 = [a1 _unit];
  v7 = [v6 _foundationUnit];

  if (v7)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t outlined init with take of (DateInterval, ClosedRange<Double>)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (DateInterval, ClosedRange<Double>)(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>)
  {
    lazy protocol witness table accessor for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<HealthChartsData.DescriptionKey, Double>);
    }
  }
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x2821FC138]();
}

{
  return MEMORY[0x2821FC150]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x2821FC1B8]();
}

{
  return MEMORY[0x2821FC1D0]();
}
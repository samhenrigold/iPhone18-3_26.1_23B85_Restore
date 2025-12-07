uint64_t protocol witness for CodingKey.stringValue.getter in conformance Calendar.CodingKeys()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6565577473726966;
  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0x746E6572727563;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x656E6F5A656D6974;
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

unint64_t lazy protocol witness table accessor for type Calendar.Current and conformance Calendar.Current()
{
  result = lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current;
  if (!lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current;
  if (!lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current;
  if (!lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current;
  if (!lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Current and conformance Calendar.Current);
  }

  return result;
}

void Calendar.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation8CalendarV10CodingKeys33_F3BDB2D973DC43C399EBDEAB6295AE62LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation8CalendarV10CodingKeys33_F3BDB2D973DC43C399EBDEAB6295AE62LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Calendar.CodingKeys and conformance Calendar.CodingKeys();
  v9 = v3;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  ObjectType = swift_getObjectType();
  (*(v8 + 24))(&v22, ObjectType, v8);
  Calendar.Identifier.cfCalendarIdentifier.getter();
  LOBYTE(v22) = 0;
  v11 = v23;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v11)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v23 = v4;

    v12 = (*(v8 + 32))(&v22, ObjectType, v8);
    v13 = v22;
    if (v22)
    {
      v14 = *(&v22 + 1);
    }

    else
    {
      if (one-time initialization token for cache != -1)
      {
        v12 = swift_once();
      }

      v15 = static LocaleCache.cache;
      MEMORY[0x1EEE9AC00](v12);
      *(&v20 - 2) = 0;
      *(&v20 - 1) = 0xE000000000000000;
      os_unfair_lock_lock((v15 + 48));
      closure #1 in LocaleCache.fixed(_:)partial apply((v15 + 16), &v21);
      os_unfair_lock_unlock((v15 + 48));
      v14 = *(&v21 + 1);
      v13 = v21;
      v9 = v3;
    }

    *&v22 = v13;
    *(&v22 + 1) = v14;
    LOBYTE(v21) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    lazy protocol witness table accessor for type Locale? and conformance <A> A?();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    (*(v8 + 48))(&v22, ObjectType, v8);
    v21 = v22;
    LOBYTE(v20) = 2;
    lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    (*(v8 + 56))(ObjectType, v8);
    LOBYTE(v22) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v8 + 72))(ObjectType, v8);
    LOBYTE(v22) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v22 = v7;
    *(&v22 + 1) = v8;
    type metadata accessor for _CalendarAutoupdating();
    inited = swift_initStaticObject();
    v17 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, type metadata accessor for _CalendarAutoupdating, &protocol conformance descriptor for _CalendarAutoupdating);
    *&v21 = inited;
    *(&v21 + 1) = v17;
    LOBYTE(inited) = specialized static Calendar.== infix(_:_:)(&v22, &v21);
    swift_unknownObjectRelease();
    v18 = v23;
    if (inited)
    {
      LOBYTE(v22) = 2;
    }

    else
    {
      *&v22 = v7;
      *(&v22 + 1) = v8;
      static Calendar.current.getter(&v21);
      v20 = v21;
      v19 = specialized static Calendar.== infix(_:_:)(&v22, &v20);
      swift_unknownObjectRelease();
      LOBYTE(v22) = (v19 & 1) != 0;
    }

    LOBYTE(v21) = 5;
    lazy protocol witness table accessor for type Calendar.Current and conformance Calendar.Current();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v18 + 8))(v6, v9);
  }
}

unint64_t lazy protocol witness table accessor for type Calendar.CodingKeys and conformance Calendar.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.CodingKeys and conformance Calendar.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Locale? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Locale? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    lazy protocol witness table accessor for type Locale and conformance Locale();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale? and conformance <A> A?);
  }

  return result;
}

uint64_t _NSProgressIPCDebugLog()
{
  if (qword_1ED43F0A8 != -1)
  {
    dispatch_once(&qword_1ED43F0A8, &__block_literal_global_91);
  }

  return _MergedGlobals_25_0;
}

uint64_t lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields and conformance Duration.TimeFormatStyle.Pattern.Fields(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t instantiation function for generic protocol witness table for Duration.TimeFormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields and conformance Duration.TimeFormatStyle.Pattern.Fields(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, type metadata accessor for Duration.TimeFormatStyle, &protocol conformance descriptor for Duration.TimeFormatStyle);
  a1[2] = lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields and conformance Duration.TimeFormatStyle.Pattern.Fields(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, type metadata accessor for Duration.TimeFormatStyle, &protocol conformance descriptor for Duration.TimeFormatStyle);
  result = lazy protocol witness table accessor for type Duration.TimeFormatStyle.Pattern.Fields and conformance Duration.TimeFormatStyle.Pattern.Fields(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, type metadata accessor for Duration.TimeFormatStyle, &protocol conformance descriptor for Duration.TimeFormatStyle);
  a1[3] = result;
  return result;
}

uint64_t Duration.formatted<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a2;
  v6[1] = a3;
  return (*(a5 + 48))(v6, a4, a5);
}

uint64_t PredicateExpressions.Comparison<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v7)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v11 = *v6;
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    lazy protocol witness table accessor for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.ComparisonOperator and conformance PredicateExpressions.ComparisonOperator);
  }

  return result;
}

uint64_t PredicateExpressions.ComparisonOperator.encode(to:)(void *a1)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation15EmptyCodingKeysOGMd, &_ss22KeyedEncodingContainerVy10Foundation15EmptyCodingKeysOGMR);
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = &v12 - v4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation20PredicateExpressionsO18ComparisonOperatorO10CodingKeys33_ABF9C2C4EB35CAE5C3D84C740B7347C5LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation20PredicateExpressionsO18ComparisonOperatorO10CodingKeys33_ABF9C2C4EB35CAE5C3D84C740B7347C5LLOGMR);
  v6 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v8 = &v12 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PredicateExpressions.ComparisonOperator.CodingKeys and conformance PredicateExpressions.ComparisonOperator.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v17 = 2;
    }

    else
    {
      v18 = 3;
    }
  }

  else if (v9)
  {
    v16 = 1;
  }

  else
  {
    v15 = 0;
  }

  lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
  v10 = v13;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v14);
  return (*(v6 + 8))(v8, v10);
}

void NSObject.KVOSubscription.cancel()()
{
  v1 = *v0;
  v2 = *&v0[*(*v0 + 176)];
  os_unfair_lock_lock(v2);
  v3 = *(v0 + 2);
  if (v3)
  {
    v13 = v3;
    os_unfair_lock_unlock(v2);
    v4 = *(v0 + 2);
    *(v0 + 2) = 0;

    v5 = *(*v0 + 144);
    v6 = *(v1 + 96);
    v7 = type metadata accessor for Optional();
    (*(*(v7 - 8) + 8))(&v0[v5], v7);
    (*(*(v6 - 8) + 56))(&v0[v5], 1, 1, v6);
    v8 = *(*v0 + 136);
    v9 = *(v1 + 88);
    v10 = type metadata accessor for Optional();
    (*(*(v10 - 8) + 8))(&v0[v8], v10);
    (*(*(v9 - 8) + 56))(&v0[v8], 1, 1, v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      NSKeyValueObservation.Helper.invalidate()();
    }

    swift_unknownObjectWeakAssign();
  }

  else
  {

    os_unfair_lock_unlock(v2);
  }
}

uint64_t NSObject.KVOSubscription.__deallocating_deinit()
{
  MEMORY[0x1865D2690](*(v0 + *(*v0 + 22)), -1, -1);
  MEMORY[0x1865D2690](*(v0 + *(*v0 + 23)), -1, -1);

  v1 = *(*v0 + 17);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 18);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  MEMORY[0x1865D27A0](v0 + *(*v0 + 19));

  return swift_deallocClassInstance();
}

void partial apply for closure #1 in _CalendarICU.copy(changingLocale:changingTimeZone:changingFirstWeekday:changingMinimumDaysInFirstWeek:)(uint64_t *a1@<X8>)
{
  closure #1 in _CalendarICU.copy(changingLocale:changingTimeZone:changingFirstWeekday:changingMinimumDaysInFirstWeek:)(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), a1, *(v1 + 80));
}

{
  partial apply for closure #1 in _CalendarICU.copy(changingLocale:changingTimeZone:changingFirstWeekday:changingMinimumDaysInFirstWeek:)(a1);
}

double partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

{
  return partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)(a1);
}

void closure #1 in _CalendarICU.copy(changingLocale:changingTimeZone:changingFirstWeekday:changingMinimumDaysInFirstWeek:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, char a10)
{
  v13 = a4;
  v17 = *(a1 + 40);
  v16 = *(a1 + 48);
  v18 = a2;
  if (a2)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *(a1 + 104);
    a3 = *(a1 + 112);
    swift_unknownObjectRetain();
    if (v13)
    {
LABEL_3:
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = a10;
      if (a7)
      {
        goto LABEL_4;
      }

LABEL_8:
      v20 = 0;
      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = v17;
  a5 = v16;
  v19 = a10;
  if ((a7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  a6 = *(a1 + 56);
  v20 = *(a1 + 64);
  if ((v19 & 1) == 0)
  {
LABEL_5:
    v21 = 0;
    goto LABEL_10;
  }

LABEL_9:
  a8 = *(a1 + 72);
  v21 = *(a1 + 80);
LABEL_10:
  v22 = *(a1 + 24);
  type metadata accessor for _CalendarICU();
  v23 = swift_allocObject();
  *(v23 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMR);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v23 + 16) = v24;
  *(v23 + 104) = v18;
  *(v23 + 112) = a3;
  *(v23 + 40) = v13;
  *(v23 + 48) = a5;
  *(v23 + 56) = a6;
  *(v23 + 64) = v20;
  *(v23 + 72) = a8;
  *(v23 + 80) = v21;
  *(v23 + 88) = 0;
  *(v23 + 96) = 1;
  swift_unknownObjectRetain();
  v36 = v22;
  v35[0] = v13;
  v35[1] = a5;
  if (v18)
  {
    swift_unknownObjectRetain();
LABEL_16:
    v33 = v18;
    v34 = a3;
    v28 = specialized static _CalendarICU.icuCalendar(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:)(&v36, v35, &v33, a6, v20, a8, v21);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v23 + 32) = v28;
    v29 = lazy protocol witness table accessor for type _CalendarICU and conformance _CalendarICU(&lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU, &protocol conformance descriptor for _CalendarICU);
    *a9 = v23;
    a9[1] = v29;
    return;
  }

  v25 = one-time initialization token for cache;
  v26 = swift_unknownObjectRetain();
  if (v25 != -1)
  {
    v26 = swift_once();
  }

  v27 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v26);
  os_unfair_lock_lock((v27 + 48));
  partial apply for closure #1 in LocaleCache.fixed(_:)((v27 + 16), &v33);
  if (!v31)
  {
    os_unfair_lock_unlock((v27 + 48));
    v18 = v33;
    a3 = v34;
    goto LABEL_16;
  }

  os_unfair_lock_unlock((v27 + 48));
  __break(1u);
}

uint64_t specialized static _CalendarICU.icuCalendar(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v252 = *MEMORY[0x1E69E9840];
  v171 = *a1;
  v147 = *(a2 + 8);
  v7 = *(a3 + 8);
  ObjectType = swift_getObjectType();
  v145 = v7;
  v8 = (*(v7 + 64))(ObjectType, v7);
  v10 = v9;
  memset(v251, 0, 96);
  outlined destroy of Locale.Language.Components(v251);
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  v12 = 0;
  v13 = 0;
  if (Language > 0)
  {
    v250[Language] = 0;
    v12 = MEMORY[0x1865CAEB0](v250);
    v13 = v14;
  }

  String.utf8CString.getter();
  Script = uloc_getScript();

  v16 = 0;
  v17 = 0;
  if (Script > 0)
  {
    v249[Script] = 0;
    v16 = MEMORY[0x1865CAEB0](v249);
    v17 = v18;
  }

  String.utf8CString.getter();
  Country = uloc_getCountry();

  v20 = 0;
  v21 = 0;
  if (Country > 0)
  {
    v248[Country] = 0;
    v20 = MEMORY[0x1865CAEB0](v248);
    v21 = v22;
  }

  if (v13)
  {
    v23 = String.lowercased()();
    object = v23._object;
    countAndFlagsBits = v23._countAndFlagsBits;
    if (v17)
    {
LABEL_9:
      v195._countAndFlagsBits = v16;
      v195._object = v17;

      String.init<A>(_:)();
      v24 = String._capitalized()();
      v184 = v24._object;
      v185 = v24._countAndFlagsBits;

      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    object = 0;
    countAndFlagsBits = 0;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  v16 = 0;
  v184 = 0;
  v185 = 0;
LABEL_12:
  v188 = v13;
  v182 = v8;
  v193 = v10;
  if (v21)
  {
    v25 = String.uppercased()();
    v26 = v25._countAndFlagsBits;
    v27 = v25._object;
  }

  else
  {
    v20 = 0;
    v26 = 0;
    v27 = 0;
  }

  v190 = v26;
  v175 = v20;
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  v247[0] = v12;
  v247[1] = v188;
  v247[2] = countAndFlagsBits;
  v247[3] = object;
  v247[4] = v16;
  v247[5] = v17;
  v247[6] = v185;
  v247[7] = v184;
  v247[8] = v20;
  v247[9] = v21;
  v247[10] = v26;
  v247[11] = v27;
  outlined copy of Locale.LanguageCode?(v12, v188, countAndFlagsBits, object);
  outlined copy of Locale.LanguageCode?(v16, v17, v185, v184);
  v174 = v27;
  outlined copy of Locale.LanguageCode?(v20, v21, v26, v27);
  outlined destroy of Locale.Language.Components(v247);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  LODWORD(v195._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Variant = uloc_getVariant();

  v189 = v21;
  v154 = v12;
  v155 = v17;
  v156 = v16;
  if (Variant > 0 && (v246[Variant] = 0, v29 = MEMORY[0x1865CAEB0](v246), v30))
  {
    v142 = v29;
    v165 = v30;
    v31 = String.lowercased()();
    v153 = v31._countAndFlagsBits;
    v162 = v31._object;
    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  }

  else
  {
    v142 = 0;
    v165 = 0;
    v153 = 0;
    v162 = 0;
  }

  String.utf8CString.getter();
  v32 = uloc_openKeywords();

  v33 = 0;
  v170 = 4;
  v176 = 7;
  v34 = v171;
  v177 = 0;
  v163 = 0;
  v164 = 0;
  v183 = 0;
  v151 = 0;
  v152 = 0;
  v172 = 0;
  v173 = 0;
  v160 = 0;
  v161 = 0;
  v180 = 0;
  v181 = 0;
  v149 = 0;
  v150 = 0;
  v168 = 0;
  v169 = 0;
  v158 = 0;
  v159 = 0;
  v178 = 0;
  v179 = 0;
  v35 = 0;
  v36 = 0;
  v166 = 0;
  v167 = 0;
  v157 = 0;
  if (v32)
  {
    type metadata accessor for ICU.Enumerator();
    *(swift_allocObject() + 16) = v32;
    LODWORD(v195._countAndFlagsBits) = 0;
    LODWORD(v238._countAndFlagsBits) = 0;
    v37 = uenum_next();
    v157 = 0;
    v158 = 0;
    v166 = 0;
    v167 = 0;
    v178 = 0;
    v179 = 0;
    v149 = 0;
    v150 = 0;
    v36 = 0;
    v163 = 0;
    v164 = 0;
    v192 = 0;
    v168 = 0;
    v169 = 0;
    v159 = 0;
    v160 = 0;
    v180 = 0;
    v181 = 0;
    v172 = 0;
    v173 = 0;
    v151 = 0;
    v152 = 0;
    v161 = 0;
    v183 = 0;
    v33 = 0;
    v176 = 7;
    v177 = 0;
    v170 = 4;
    while (1)
    {
      if (!v37)
      {
LABEL_21:

        v35 = v192;
        v34 = v171;
        break;
      }

      v57 = String.init(cString:)();
      static Locale.legacyKey(forKey:)(v57, v58, &v195._countAndFlagsBits);

      v59 = v195._object;
      if (v195._object)
      {
        v60 = v195._countAndFlagsBits;
        LODWORD(v195._countAndFlagsBits) = 0;
        String.utf8CString.getter();
        String.utf8CString.getter();
        KeywordValue = uloc_getKeywordValue();

        if (SLODWORD(v195._countAndFlagsBits) > 0)
        {
          goto LABEL_56;
        }

        if (KeywordValue <= 0)
        {
          goto LABEL_56;
        }

        v194[KeywordValue] = 0;
        v62 = MEMORY[0x1865CAEB0](v194);
        if (!v63)
        {
          goto LABEL_56;
        }

        v64 = v62;
        v65 = v63;
        if (v60 == 0x7261646E656C6163 && v59 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v66._countAndFlagsBits = v64;
          v66._object = v65;
          Calendar.Identifier.init(identifierString:)(v66);
          goto LABEL_57;
        }

        if (v60 == 0x6F6974616C6C6F63 && v59 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v67 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v33, v177, v164, v183);
          v33 = v64;
          v177 = v65;
          v164 = v67._countAndFlagsBits;
          v183 = v67._object;
          goto LABEL_57;
        }

        if (v60 == 0x79636E6572727563 && v59 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v68 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v152, v173, v161, v181);
          v152 = v64;
          v173 = v65;
          v161 = v68._countAndFlagsBits;
          v181 = v68._object;
          goto LABEL_57;
        }

        if (v60 == 0x737265626D756ELL && v59 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v69 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v151, v172, v160, v180);
          v151 = v64;
          v172 = v65;
          v160 = v69._countAndFlagsBits;
          v180 = v69._object;
          goto LABEL_57;
        }

        if (v60 == 30566 && v59 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v253._countAndFlagsBits = v64;
          v253._object = v65;
          Locale.Weekday.init(rawValue:)(&v195._countAndFlagsBits, v253);
          v176 = v195._countAndFlagsBits;
          goto LABEL_57;
        }

        if ((v60 != 0x7372756F68 || v59 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v60 == 0x6572757361656DLL && v59 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if (v64 == 0x6C61697265706D69 && v65 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              if (one-time initialization token for uk != -1)
              {
                swift_once();
              }

              v73 = static Locale.MeasurementSystem.uk;
              v72 = *algn_1EA7AFAD8;
              v74 = xmmword_1EA7AFAE0;

              outlined consume of Locale.LanguageCode?(v150, v169, v159, v179);
              v150 = v73;
              v169 = v72;
              v179 = *(&v74 + 1);
              v159 = v74;
            }

            else
            {
              v80 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v150, v169, v159, v179);
              v150 = v64;
              v169 = v65;
              v159 = v80._countAndFlagsBits;
              v179 = v80._object;
            }

            goto LABEL_57;
          }

          if (v60 == 26482 && v59 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if (String.count.getter() > 2)
            {
              specialized Collection.prefix(_:)(2, v64, v65);

              v75 = Substring.uppercased()();

              v195 = v75;
              v76 = String.init<A>(_:)();
              v78 = v77;
              v79 = String.uppercased()();
              outlined consume of Locale.LanguageCode?(v168, v192, v163, v36);
              v168 = v76;
              v192 = v78;
              v163 = v79._countAndFlagsBits;
              v36 = v79._object;
              goto LABEL_57;
            }
          }

          else
          {
            if (v60 == 25715 && v59 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v81 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v149, v167, v158, v178);
              v149 = v64;
              v167 = v65;
              v158 = v81._countAndFlagsBits;
              v178 = v81._object;
              goto LABEL_57;
            }

            if (v60 == 0x656E6F7A656D6974 && v59 == 0xE800000000000000)
            {

LABEL_120:
              if (one-time initialization token for cache != -1)
              {
                v82 = swift_once();
              }

              v84 = static TimeZoneCache.cache;
              MEMORY[0x1EEE9AC00](v82);
              os_unfair_lock_lock(v84 + 30);
              partial apply for closure #1 in TimeZoneCache.fixed(_:)(&v195._countAndFlagsBits);
              os_unfair_lock_unlock(v84 + 30);
              v85 = v195;

              if (v85._countAndFlagsBits)
              {
                v86 = v85._object;
              }

              else
              {
                v86 = 0;
              }

              v157 = v86;
              swift_unknownObjectRelease();
              v166 = v85._countAndFlagsBits;
              goto LABEL_57;
            }

            v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v83)
            {
              goto LABEL_120;
            }
          }

LABEL_56:

          goto LABEL_57;
        }

        v70._countAndFlagsBits = v64;
        v70._object = v65;
        v71 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Locale.HourCycle.init(rawValue:), v70);

        if (v71 > 1)
        {
          if (v71 == 2)
          {
            v170 = 2;
            goto LABEL_57;
          }

          if (v71 != 3)
          {
            goto LABEL_103;
          }

          v170 = 3;
        }

        else
        {
          if (!v71)
          {
            v170 = 0;
            goto LABEL_57;
          }

          if (v71 != 1)
          {
LABEL_103:
            v170 = 4;
            goto LABEL_57;
          }

          v170 = 1;
        }
      }

LABEL_57:
      LODWORD(v195._countAndFlagsBits) = 0;
      LODWORD(v238._countAndFlagsBits) = 0;
      v37 = uenum_next();
      if (SLODWORD(v195._countAndFlagsBits) > 0)
      {
        goto LABEL_21;
      }
    }
  }

  v191 = v35;
  if (v34 != 27)
  {
    LOBYTE(v195._countAndFlagsBits) = v34;
    v41 = Calendar.Identifier.cldrIdentifier.getter();
    v43 = v42;
    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v45 = v38[2];
    v44 = v38[3];
    v39 = v165;
    if (v45 >= v44 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v38);
    }

    v40 = v168;
    v38[2] = v45 + 1;
    v46 = &v38[4 * v45];
    v46[4] = 0x7261646E656C6163;
    v46[5] = 0xE800000000000000;
    v46[6] = v41;
    v46[7] = v43;
    if (!v177)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  v38 = MEMORY[0x1E69E7CC0];
  v39 = v165;
  v40 = v168;
  if (v177)
  {
LABEL_28:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
    }

    v48 = v38[2];
    v47 = v38[3];
    if (v48 >= v47 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v38);
    }

    v38[2] = v48 + 1;
    v49 = &v38[4 * v48];
    v49[4] = 0x6F6974616C6C6F63;
    v49[5] = 0xE90000000000006ELL;
    v49[6] = v164;
    v49[7] = v183;
  }

LABEL_33:
  if (v173)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
    }

    v51 = v38[2];
    v50 = v38[3];
    if (v51 >= v50 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v38);
    }

    v38[2] = v51 + 1;
    v52 = &v38[4 * v51];
    v52[4] = 0x79636E6572727563;
    v52[5] = 0xE800000000000000;
    v52[6] = v161;
    v52[7] = v181;
  }

  if (v172)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
    }

    v54 = v38[2];
    v53 = v38[3];
    if (v54 >= v53 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v38);
    }

    v38[2] = v54 + 1;
    v55 = &v38[4 * v54];
    v55[4] = 0x737265626D756ELL;
    v55[5] = 0xE700000000000000;
    v55[6] = v160;
    v55[7] = v180;
  }

  if (v176 <= 3u)
  {
    if (v176 > 1u)
    {
      if (v176 == 2)
      {
        v56 = 6649204;
      }

      else
      {
        v56 = 6579575;
      }
    }

    else
    {
      v56 = 7237485;
      if (!v176)
      {
        v56 = 7239027;
      }
    }

LABEL_129:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_130;
    }

    goto LABEL_222;
  }

  if (v176 <= 5u)
  {
    if (v176 == 4)
    {
      v56 = 7694452;
    }

    else
    {
      v56 = 6910566;
    }

    goto LABEL_129;
  }

  if (v176 == 6)
  {
    v56 = 7627123;
    goto LABEL_129;
  }

LABEL_133:
  if (v170 <= 1u)
  {
    v90 = 3223912;
    if (v170)
    {
      v90 = 3289448;
    }
  }

  else if (v170 == 2)
  {
    v90 = 3355240;
  }

  else
  {
    if (v170 != 3)
    {
      goto LABEL_145;
    }

    v90 = 3420776;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
  }

  v92 = v38[2];
  v91 = v38[3];
  if (v92 >= v91 >> 1)
  {
    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v38);
  }

  v38[2] = v92 + 1;
  v93 = &v38[4 * v92];
  v93[4] = 0x7372756F68;
  v93[5] = 0xE500000000000000;
  v93[6] = v90;
  v93[7] = 0xE300000000000000;
LABEL_145:
  if (v169)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
    }

    v95 = v38[2];
    v94 = v38[3];
    if (v95 >= v94 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v38);
    }

    v38[2] = v95 + 1;
    v96 = &v38[4 * v95];
    v96[4] = 0x6572757361656DLL;
    v96[5] = 0xE700000000000000;
    v96[6] = v159;
    v96[7] = v179;
  }

  v148 = v36;
  if (!v191)
  {
    goto LABEL_156;
  }

  if (v189)
  {
    if (v163 == v190 && v36 == v174)
    {
      outlined copy of Locale.LanguageCode?(v40, v191, v190, v174);
      outlined copy of Locale.LanguageCode?(v175, v189, v190, v174);
      outlined copy of Locale.LanguageCode?(v40, v191, v190, v174);
      outlined consume of Locale.LanguageCode?(v175, v189, v190, v174);

      outlined consume of Locale.LanguageCode?(v40, v191, v190, v174);
LABEL_156:
      v36 = v166;
      goto LABEL_164;
    }

    v140 = v33;
    v139 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v165 = v39;
    v99 = v36;
    v98 = v191;
    outlined copy of Locale.LanguageCode?(v40, v191, v163, v99);
    outlined copy of Locale.LanguageCode?(v175, v189, v190, v174);
    outlined copy of Locale.LanguageCode?(v40, v191, v163, v99);
    outlined consume of Locale.LanguageCode?(v175, v189, v190, v174);

    v100 = v99;
    v39 = v165;
    outlined consume of Locale.LanguageCode?(v40, v191, v163, v100);
    if (v139)
    {
      v36 = v166;
      goto LABEL_164;
    }
  }

  else
  {
    v140 = v33;
    v97 = v36;
    v98 = v191;
    outlined copy of Locale.LanguageCode?(v40, v191, v163, v97);
    outlined copy of Locale.LanguageCode?(v175, 0, v190, v174);
    outlined copy of Locale.LanguageCode?(v40, v191, v163, v97);

    outlined consume of Locale.LanguageCode?(v40, v191, v163, v97);
    outlined consume of Locale.LanguageCode?(v175, 0, v190, v174);
  }

  v195._countAndFlagsBits = v40;
  v195._object = v98;

  MEMORY[0x1865CB0E0](2054847098, 0xE400000000000000);
  v101 = String.lowercased()();
  v102 = v101._countAndFlagsBits;
  v103 = v101._object;

  v33 = v140;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_225;
  }

  while (1)
  {
    v105 = v38[2];
    v104 = v38[3];
    v36 = v166;
    if (v105 >= v104 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1, v38);
    }

    v38[2] = v105 + 1;
    v106 = &v38[4 * v105];
    v106[4] = 26482;
    v106[5] = 0xE200000000000000;
    v106[6] = v102;
    v106[7] = v103;
LABEL_164:
    if (v167)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
      }

      v108 = v38[2];
      v107 = v38[3];
      if (v108 >= v107 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v108 + 1, 1, v38);
      }

      v38[2] = v108 + 1;
      v109 = &v38[4 * v108];
      v109[4] = 25715;
      v109[5] = 0xE200000000000000;
      v109[6] = v158;
      v109[7] = v178;
    }

    if (v36)
    {
      v110 = swift_getObjectType();
      v111 = v157[4](v110);
      v113 = v112;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
      }

      v115 = v38[2];
      v114 = v38[3];
      if (v115 >= v114 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v38);
      }

      v38[2] = v115 + 1;
      v116 = &v38[4 * v115];
      v116[4] = 0x656E6F7A656D6974;
      v116[5] = 0xE800000000000000;
      v116[6] = v111;
      v116[7] = v113;
    }

    if (v39)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
      }

      v118 = v38[2];
      v117 = v38[3];
      if (v118 >= v117 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v117 > 1), v118 + 1, 1, v38);
      }

      v38[2] = v118 + 1;
      v119 = &v38[4 * v118];
      v119[4] = 24950;
      v119[5] = 0xE200000000000000;
      v119[6] = v153;
      v119[7] = v162;
    }

    v195._countAndFlagsBits = v154;
    v195._object = v188;
    *&v196 = countAndFlagsBits;
    *(&v196 + 1) = object;
    *&v197 = v156;
    *(&v197 + 1) = v155;
    *&v198 = v185;
    *(&v198 + 1) = v184;
    *&v199 = v175;
    *(&v199 + 1) = v189;
    *&v200 = v190;
    *(&v200 + 1) = v174;
    v238._countAndFlagsBits = Locale.Language.Components.identifier.getter();
    v238._object = v120;
    v56 = v38[2];
    if (v56)
    {
      MEMORY[0x1865CB0E0](64, 0xE100000000000000);
      v121 = v38[2];
      if (v121)
      {
        v122 = 0;
        v40 = v56 - 1;
        v39 = v38 + 7;
        while (v122 < v121)
        {
          v124 = *(v39 - 1);
          v123 = *v39;
          v125 = *(v39 - 2);
          v195._countAndFlagsBits = *(v39 - 3);
          v195._object = v125;

          MEMORY[0x1865CB0E0](61, 0xE100000000000000);
          MEMORY[0x1865CB0E0](v124, v123);

          v56 = v195._object;
          MEMORY[0x1865CB0E0](v195._countAndFlagsBits, v195._object);

          if (v40 != v122)
          {
            MEMORY[0x1865CB0E0](59, 0xE100000000000000);
          }

          ++v122;
          v121 = v38[2];
          v39 += 4;
          if (v122 == v121)
          {
            goto LABEL_189;
          }
        }

        __break(1u);
        goto LABEL_221;
      }
    }

LABEL_189:

    v56 = v238._object;
    v126 = swift_getObjectType();
    v127 = (*(v147 + 32))(v126);
    v102 = specialized _copyCollectionToContiguousArray<A>(_:)(v127, v128);

    v40 = *(v102 + 16);
    if (v40 >> 31)
    {
LABEL_221:
      __break(1u);
LABEL_222:
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
LABEL_130:
      v88 = v38[2];
      v87 = v38[3];
      if (v88 >= v87 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v38);
      }

      v38[2] = v88 + 1;
      v89 = &v38[4 * v88];
      v89[4] = 30566;
      v89[5] = 0xE200000000000000;
      v89[6] = v56;
      v89[7] = 0xE300000000000000;
      goto LABEL_133;
    }

    v39 = v190;
    String.utf8CString.getter();
    v129 = ucal_open();

    if (!v129)
    {
      goto LABEL_231;
    }

    v38 = v155;
    if (!v171)
    {
      ucal_getGregorianChange();
      ucal_setGregorianChange();
    }

    v103 = &v195;
    if (a5)
    {
      break;
    }

LABEL_207:
    if (a4 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a4 <= 0x7FFFFFFF)
    {
LABEL_209:
      ucal_setAttribute();
LABEL_210:
      if ((a7 & 1) == 0)
      {
        goto LABEL_217;
      }

LABEL_211:
      (*(v145 + 464))(&v238, ObjectType);
      v200 = v243;
      v201 = v244;
      v202[0] = v245[0];
      *(v202 + 12) = *(v245 + 12);
      v196 = v239;
      v197 = v240;
      v198 = v241;
      v199 = v242;
      v195 = v238;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v195) == 1)
      {
        goto LABEL_218;
      }

      v136 = *(&v198 + 1);

      outlined destroy of LocalePreferences?(&v238);
      if (!v136)
      {
        goto LABEL_218;
      }

      if (!*(v136 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v171), (v137 & 1) == 0))
      {

        goto LABEL_218;
      }

LABEL_217:
      ucal_setAttribute();
LABEL_218:
      v195._countAndFlagsBits = v154;
      v195._object = v188;
      *&v196 = countAndFlagsBits;
      *(&v196 + 1) = object;
      *&v197 = v156;
      *(&v197 + 1) = v155;
      *&v198 = v185;
      *(&v198 + 1) = v184;
      *&v199 = v175;
      *(&v199 + 1) = v189;
      *&v200 = v190;
      *(&v200 + 1) = v174;
      LOBYTE(v201) = v171;
      *(&v201 + 1) = v33;
      *&v202[0] = v177;
      *(&v202[0] + 1) = v164;
      *&v202[1] = v183;
      *(&v202[1] + 1) = v152;
      v203 = v173;
      v204 = v161;
      v205 = v181;
      v206 = v151;
      v207 = v172;
      v208 = v160;
      v209 = v180;
      v210 = v176;
      v211 = v170;
      v212 = v150;
      v213 = v169;
      v214 = v159;
      v215 = v179;
      v216 = v168;
      v217 = v191;
      v218 = v163;
      v219 = v148;
      v220 = v149;
      v221 = v167;
      v222 = v158;
      v223 = v178;
      v224 = v166;
      v225 = v157;
      v226 = v142;
      v227 = v165;
      v228 = v153;
      v229 = v162;
      outlined destroy of Locale.Components(&v195);
      return v129;
    }

    __break(1u);
LABEL_225:
    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
  }

  (*(v145 + 464))(&v230, ObjectType);
  v243 = v235;
  v244 = v236;
  v245[0] = v237[0];
  *(v245 + 12) = *(v237 + 12);
  v240 = v232;
  v241 = v233;
  v242 = v234;
  v238 = v230;
  v239 = v231;
  v200 = v235;
  v201 = v236;
  v202[0] = v237[0];
  *(v202 + 12) = *(v237 + 12);
  v196 = v231;
  v197 = v232;
  v198 = v233;
  v199 = v234;
  v195 = v230;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v195) == 1)
  {
    goto LABEL_210;
  }

  v102 = v198;

  outlined destroy of LocalePreferences?(&v238);
  if (!v102)
  {
    goto LABEL_210;
  }

  if (!*(v102 + 16) || (v130 = specialized __RawDictionaryStorage.find<A>(_:)(v171), (v131 & 1) == 0))
  {

    if ((a7 & 1) == 0)
    {
      goto LABEL_217;
    }

    goto LABEL_211;
  }

  v132 = *(*(v102 + 56) + 8 * v130);

  if (v132 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
  }

  if (v132 > 0x7FFFFFFF)
  {
    goto LABEL_227;
  }

  if (v132 <= 0 || v132 > 7)
  {
    goto LABEL_210;
  }

  v133 = specialized Collection<>.firstIndex(of:)(outlined read-only object #0 of one-time initialization function for weekdays[v132 + 31], outlined read-only object #0 of one-time initialization function for weekdays);
  if ((v134 & 1) == 0)
  {
    v135 = v133 + 1;
    if (__OFADD__(v133, 1))
    {
      goto LABEL_228;
    }

    if (v135 < 0xFFFFFFFF80000000)
    {
      goto LABEL_229;
    }

    if (v135 <= 0x7FFFFFFF)
    {
      goto LABEL_209;
    }

    __break(1u);
    goto LABEL_207;
  }

  __break(1u);
LABEL_231:
  v195._countAndFlagsBits = 0;
  v195._object = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  MEMORY[0x1865CB0E0](0xD000000000000030, 0x800000018147E380);
  MEMORY[0x1865CB0E0](v182, v193);
  MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  LOBYTE(v238._countAndFlagsBits) = v171;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](8250, 0xE200000000000000);
  LODWORD(v238._countAndFlagsBits) = 0;
  type metadata accessor for UErrorCode(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t DateComponents.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation14DateComponentsV10CodingKeys33_A6EB5CE9F6026BED8852DBF300CCA004LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation14DateComponentsV10CodingKeys33_A6EB5CE9F6026BED8852DBF300CCA004LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v44 = v1[3];
  v45 = v9;
  v10 = v1[4];
  v49 = *(v1 + 40);
  v42 = v1[6];
  v43 = v10;
  LODWORD(v10) = *(v1 + 56);
  v39 = v1[8];
  v40 = *(v1 + 72);
  v41 = v10;
  v37 = v1[10];
  v38 = *(v1 + 88);
  v14 = v1[12];
  v15 = *(v1 + 104);
  v35 = v1[14];
  v36 = *(v1 + 120);
  v33 = v1[16];
  v34 = *(v1 + 136);
  v31 = v1[18];
  v32 = *(v1 + 152);
  v29 = v1[20];
  v30 = *(v1 + 168);
  v27 = v1[22];
  v28 = *(v1 + 184);
  v25 = v1[24];
  v26 = *(v1 + 200);
  v23 = v1[26];
  v24 = *(v1 + 216);
  v21 = v1[30];
  v22 = *(v1 + 248);
  v19 = v1[32];
  v20 = *(v1 + 264);
  v17 = v1[34];
  v18 = *(v1 + 280);
  v16 = *(v1 + 281);
  v13[3] = *(v1 + 282);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v47 = v8;
  v48 = v7;
  v50 = 0;
  lazy protocol witness table accessor for type Calendar and conformance Calendar();
  swift_unknownObjectRetain();
  v11 = v46;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v11)
  {
    swift_unknownObjectRelease();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v46 = v4;
    swift_unknownObjectRelease();
    v47 = v45;
    v48 = v44;
    v50 = 1;
    lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    swift_unknownObjectRelease();
    LOBYTE(v47) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v47) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v47) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v47) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v47) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v47) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v47) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v47) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v47) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v47) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v47) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v47) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v47) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v47) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v47) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v47) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v47) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    return (*(v46 + 8))(v6, v3);
  }
}

unint64_t lazy protocol witness table accessor for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys;
  if (!lazy protocol witness table cache variable for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DateComponents.CodingKeys and conformance DateComponents.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar and conformance Calendar()
{
  result = lazy protocol witness table cache variable for type Calendar and conformance Calendar;
  if (!lazy protocol witness table cache variable for type Calendar and conformance Calendar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar and conformance Calendar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar and conformance Calendar;
  if (!lazy protocol witness table cache variable for type Calendar and conformance Calendar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar and conformance Calendar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar and conformance Calendar;
  if (!lazy protocol witness table cache variable for type Calendar and conformance Calendar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar and conformance Calendar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar and conformance Calendar;
  if (!lazy protocol witness table cache variable for type Calendar and conformance Calendar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar and conformance Calendar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar and conformance Calendar;
  if (!lazy protocol witness table cache variable for type Calendar and conformance Calendar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar and conformance Calendar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar and conformance Calendar;
  if (!lazy protocol witness table cache variable for type Calendar and conformance Calendar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar and conformance Calendar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar and conformance Calendar;
  if (!lazy protocol witness table cache variable for type Calendar and conformance Calendar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar and conformance Calendar);
  }

  return result;
}

uint64_t DateComponents.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7261646E656C6163;
  switch(a1)
  {
    case 1:
      result = 0x656E6F5A656D6974;
      break;
    case 2:
      result = 6386277;
      break;
    case 3:
      result = 1918985593;
      break;
    case 4:
      result = 0x68746E6F6DLL;
      break;
    case 5:
      result = 7954788;
      break;
    case 6:
      result = 1920298856;
      break;
    case 7:
      result = 0x6574756E696DLL;
      break;
    case 8:
      result = 0x646E6F636573;
      break;
    case 9:
      result = 0x6F6365736F6E616ELL;
      break;
    case 10:
      result = 0x7961646B656577;
      break;
    case 11:
      result = 0x4F7961646B656577;
      break;
    case 12:
      result = 0x72657472617571;
      break;
    case 13:
      v3 = 0x664F6B656577;
      goto LABEL_16;
    case 14:
      result = 0x6559664F6B656577;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      v3 = 0x7061654C7369;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F4D000000000000;
      break;
    case 17:
      result = 0x7461657065527369;
      break;
    case 18:
      result = 0x616559664F796164;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for _CalendarProtocol.firstWeekday.getter in conformance _CalendarICU()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  closure #1 in LockedState<A>.withLock<A>(_:)specialized partial apply(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void *partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

{
  return partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)(a1);
}

void partial apply for closure #1 in _CalendarICU.firstWeekday.getter(void *a1@<X8>)
{
  if (*(v1 + 64) == 1)
  {
    Attribute = ucal_getAttribute();
  }

  else
  {
    Attribute = *(v1 + 56);
  }

  *a1 = Attribute;
}

void _CalendarICU.date(from:)(void *__src)
{
  v2 = memcpy(v16, __src, 0x11BuLL);
  if (v16[2])
  {
    v3 = *(v1 + 16);
    MEMORY[0x1EEE9AC00](v2);
    MEMORY[0x1EEE9AC00](v4);
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v3 + 4);
    closure #1 in LockedState<A>.withLock<A>(_:)specialized partial apply(&v15);
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(&v15 + 1);
    memcpy(v11, v16, sizeof(v11));
    v13[1] = 0;
    v13[0] = 0;
    outlined init with copy of DateComponents(v16, v14);
    DateComponents.timeZone.setter(v13);
    ObjectType = swift_getObjectType();
    memcpy(v12, v11, 0x11BuLL);
    memcpy(v10, v11, 0x11BuLL);
    v7 = *(v5 + 176);
    outlined init with copy of DateComponents(v12, v14);
    v7(v10, ObjectType, v5);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    memcpy(v13, v10, 0x11BuLL);
    outlined destroy of DateComponents(v13);
    memcpy(v14, v11, 0x11BuLL);
    outlined destroy of DateComponents(v14);
  }

  else
  {
    v8 = *(v1 + 16);
    MEMORY[0x1EEE9AC00](v2);
    MEMORY[0x1EEE9AC00](v9);
    os_unfair_lock_lock(v8 + 4);
    closure #1 in LockedState<A>.withLock<A>(_:)specialized partial apply();
    os_unfair_lock_unlock(v8 + 4);
  }
}

uint64_t protocol witness for _CalendarProtocol.copy(changingLocale:changingTimeZone:changingFirstWeekday:changingMinimumDaysInFirstWeek:) in conformance _CalendarICU()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  closure #1 in LockedState<A>.withLock<A>(_:)specialized partial apply(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t lazy protocol witness table accessor for type _CalendarICU and conformance _CalendarICU(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _CalendarICU();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for _CalendarProtocol.minimumDaysInFirstWeek.getter in conformance _CalendarICU()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in LockedState<A>.withLock<A>(_:)(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void partial apply for closure #1 in _CalendarICU.minimumDaysInFirstWeek.getter(void *a1@<X8>)
{
  if (*(v1 + 80) == 1)
  {
    Attribute = ucal_getAttribute();
  }

  else
  {
    Attribute = *(v1 + 72);
  }

  *a1 = Attribute;
}

CFMutableCharacterSetRef specialized SetAlgebra.init<A>(_:)@<X0>(uint64_t *a3@<X8>)
{
  v21 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v19 - v4;
  result = CFCharacterSetCreateMutable(0);
  if (result)
  {
    v7 = result;
    type metadata accessor for __CharacterSetStorage();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = 1;
    dispatch thunk of Sequence.makeIterator()();
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      while (1)
      {
        dispatch thunk of IteratorProtocol.next()();
        if (v23)
        {
          result = (*(v20 + 8))(v5, AssociatedTypeWitness);
          *v21 = v8;
          return result;
        }

        v9 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = *(v8 + 24);
          v11 = *(v8 + 16);
          result = CFCharacterSetCreateMutableCopy(0, v11);
          v12 = result;
          if (v10)
          {
            if (!result)
            {
              goto LABEL_17;
            }
          }

          else if (!result)
          {
            goto LABEL_16;
          }

          v13 = swift_allocObject();
          *(v13 + 16) = v12;
          *(v13 + 24) = 1;

          v8 = v13;
        }

        v14 = *(v8 + 16);
        if ((*(v8 + 24) & 1) == 0)
        {
          break;
        }

        v24.location = v9;
        v24.length = 1;
        CFCharacterSetAddCharactersInRange(v14, v24);
      }

      v15 = v14;
      result = CFCharacterSetCreateMutableCopy(0, v15);
      if (!result)
      {
        break;
      }

      v16 = result;
      v17 = result;
      v25.location = v9;
      v25.length = 1;
      CFCharacterSetAddCharactersInRange(v17, v25);

      v18 = *(v8 + 16);
      *(v8 + 16) = v16;
      *(v8 + 24) = 1;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *Duration.factor(intoUnits:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = *v4++;
      v6 = v7;
      if (v7 <= 4uLL)
      {
        break;
      }

      if ((v6 - 5) > 2u)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
        }

        v19 = *(v5 + 2);
        v18 = *(v5 + 3);
        if (v19 >= v18 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v5);
        }

        *(v5 + 2) = v19 + 1;
        *&v5[8 * v19 + 32] = 0;
        if (!--v3)
        {
          return v5;
        }
      }

      else
      {
        v8 = qword_18122ABB0[(v6 - 5)];
        Duration.components.getter();
        v10 = (v9 / v8);
        if (Duration.components.getter())
        {
          v11 = Duration.components.getter();
          v10 = __exp10(dbl_18122ABC8[v6 - 5]) * v11 + v10;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
        }

        v13 = *(v5 + 2);
        v12 = *(v5 + 3);
        if (v13 >= v12 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v5);
        }

        *(v5 + 2) = v13 + 1;
        *&v5[8 * v13 + 32] = v10;
LABEL_4:
        Duration.init(secondsComponent:attosecondsComponent:)();
        if (!--v3)
        {
          return v5;
        }
      }
    }

    v14 = qword_18122AB88[v6];
    v15 = Duration.components.getter();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    }

    v17 = *(v5 + 2);
    v16 = *(v5 + 3);
    if (v17 >= v16 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v5);
    }

    *(v5 + 2) = v17 + 1;
    *&v5[8 * v17 + 32] = (v15 / v14);
    Duration.components.getter();
    goto LABEL_4;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit()
{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit);
  }

  return result;
}

double *closure #1 in _CalendarICU.date(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  MEMORY[0x1865D2A80](*(a1 + 32));
  ucal_set();
  ucal_set();
  ucal_set();
  ucal_set();
  ucal_set();
  ucal_set();
  ucal_set();
  ucal_set();
  ucal_set();
  if (*(a2 + 40))
  {
    if (*(a2 + 56))
    {
      goto LABEL_3;
    }
  }

  else
  {
    ucal_set();
    if (*(a2 + 56))
    {
LABEL_3:
      if (*(a2 + 264))
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  ucal_set();
  if (*(a2 + 264))
  {
LABEL_4:
    if (*(a2 + 248))
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  ucal_set();
  if (*(a2 + 248))
  {
LABEL_5:
    if (*(a2 + 280))
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  ucal_set();
  if (*(a2 + 280))
  {
LABEL_6:
    if (*(a2 + 184))
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  ucal_set();
  if (*(a2 + 184))
  {
LABEL_7:
    if (*(a2 + 200))
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  ucal_set();
  if (*(a2 + 200))
  {
LABEL_8:
    if (*(a2 + 72))
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  ucal_set();
  if (*(a2 + 72))
  {
LABEL_9:
    if (*(a2 + 104))
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_33:
  if (__OFSUB__(*(a2 + 64), 1))
  {
    __break(1u);
  }

  ucal_set();
  if (*(a2 + 104))
  {
LABEL_10:
    if (*(a2 + 88))
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  ucal_set();
  if (*(a2 + 88))
  {
LABEL_11:
    if (*(a2 + 120))
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  ucal_set();
  if (*(a2 + 120))
  {
LABEL_12:
    if (*(a2 + 136))
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  ucal_set();
  if (*(a2 + 136))
  {
LABEL_13:
    if (*(a2 + 152))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_38:
  ucal_set();
  if ((*(a2 + 152) & 1) == 0)
  {
LABEL_14:
    ucal_set();
  }

LABEL_15:
  if (*(a2 + 168))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = *(a2 + 160) * 0.000000001;
  }

  v6 = *(a2 + 281);
  if (v6 != 2 && (v6 & 1) != 0)
  {
    ucal_set();
  }

  v13 = 0;
  ucal_getMillis();
  v8 = v5 + v7 / 1000.0 + -978307200.0;
  v12 = v8;
  result = _CalendarICU._locked_timeZoneTransitionInterval(at:)(&v12, v14);
  if ((v16 & 1) == 0)
  {
    v8 = v8 - v15;
  }

  v10 = v13 > 0;
  v11 = 0.0;
  if (v13 <= 0)
  {
    v11 = v8;
  }

  *a3 = v11;
  *(a3 + 8) = v10;
  return result;
}

double *_CalendarICU._locked_timeZoneTransitionInterval(at:)@<X0>(double *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  if (*result < -3187299600.0 || (v17 = v4 + -172800.0, v16 = v4 + -172800.0 + 34400000.0, result = _CalendarICU._locked_nextDaylightSavingTimeTransition(startingAt:limit:)(&v17, &v16, &v18), (v19 & 1) != 0) || (v5 = v18, v6 = v18, v4 < v18))
  {
LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    return result;
  }

  v7 = *(v2 + 48);
  ObjectType = swift_getObjectType();
  v18 = v6 + -1.0;
  v9 = *(v7 + 40);
  swift_unknownObjectRetain();
  v10 = v9(&v18, ObjectType, v7);
  swift_unknownObjectRelease();
  v11 = *(v2 + 48);
  v12 = swift_getObjectType();
  v18 = v6 + 1.0;
  v13 = *(v11 + 40);
  swift_unknownObjectRetain();
  v14 = v13(&v18, v12, v11);
  result = swift_unknownObjectRelease();
  v15 = v10 - v14;
  if (!__OFSUB__(v10, v14))
  {
    if (v15 >= 1 && v4 < v6 + v15)
    {
      *a2 = v5;
      *(a2 + 8) = v15;
      *(a2 + 16) = 0;
      return result;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

double *_CalendarICU._locked_nextDaylightSavingTimeTransition(startingAt:limit:)@<X0>(double *result@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (*a2 + 978307200.0) * 1000.0;
  if (v4 >= (*result + 978307200.0) * 1000.0)
  {
    ucal_getMillis();
    ucal_setMillis();
    if (ucal_getTimeZoneTransitionDate() && v4 >= 0.0)
    {
      *a3 = 0.0 / 1000.0 + -978307200.0;
      *(a3 + 8) = 0;
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 1;
    }

    return ucal_setMillis();
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 1;
  }

  return result;
}

char *specialized static Duration.TimeFormatStyle.Attributed.componentsFromPatternString(_:patternSet:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v41 = a3;
  v6 = HIBYTE(a2) & 0xF;
  v48[0] = a1;
  v48[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v48[2] = 0;
  v48[3] = v6;

  v7 = v48;
  v10 = String.Iterator.next()();
  object = v10.value._object;
  countAndFlagsBits = v10.value._countAndFlagsBits;
  if (v10.value._object)
  {
    v11 = v10.value._countAndFlagsBits;
    v39[4] = a1;
    v39[5] = a2;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v45 = 0;
    v43 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = 1;
    v42 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_58:
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
LABEL_52:
        v36 = *(v3 + 2);
        v35 = *(v3 + 3);
        if (v36 >= v35 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v3);
        }

        *(v3 + 2) = v36 + 1;
        v37 = &v3[32 * v36];
        *(v37 + 4) = v16;
        v37[40] = v17 & 1;
        *(v37 + 6) = v45;
        *(v37 + 7) = v7;
        return v3;
      }

      v19 = v14;
      v20 = v13;
      v13 = object;
      v14 = v11;
      if (v15)
      {
        break;
      }

      v44 = v15;
      v21 = v16;
      v46 = v11;
      v47[0] = v11;
      v47[1] = object;
      MEMORY[0x1EEE9AC00](countAndFlagsBits);
      v3 = v39;
      v39[2] = v47;

      v23 = v43;
      v24 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v39, v41);
      v43 = v23;
      v22 = v45;
      if (v45 >= v12)
      {
        v17 = v24;
        goto LABEL_29;
      }

      if ((v24 & 1) == 0)
      {
        goto LABEL_19;
      }

      if (v20)
      {
        if (v11 == v19 && v13 == v20 || (v25 = 1, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          v17 = 1;
LABEL_29:
          v16 = v21;
          goto LABEL_30;
        }
      }

      else
      {
        v25 = 1;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v42 + 2);
      v27 = *(v42 + 3);
      v3 = (v28 + 1);
      if (v28 >= v27 >> 1)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v42);
      }

      v29 = v42;
      *(v42 + 2) = v3;
      v30 = &v29[32 * v28];
      *(v30 + 4) = v21;
      v30[40] = v40 & 1;
      *(v30 + 6) = v22;
      *(v30 + 7) = v12;
      v17 = v25;
      v45 = v12;
      v16 = MEMORY[0x1E69E7CC0];
LABEL_30:
      v15 = v44;
      v14 = v46;
      if (v11 == 39)
      {
LABEL_31:
        if (v13 == 0xE100000000000000)
        {
          goto LABEL_33;
        }
      }

LABEL_32:
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v3 = *(v16 + 2);
        v33 = *(v16 + 3);
        if (v3 >= v33 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), (v3 + 1), 1, v16);
        }

        *(v16 + 2) = v3 + 1;
        v34 = &v16[16 * v3];
        *(v34 + 4) = v14;
        *(v34 + 5) = v13;
        goto LABEL_7;
      }

LABEL_33:

      if (v20)
      {
        if (v19 == 39 && v20 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          }

          v3 = *(v16 + 2);
          v31 = *(v16 + 3);
          if (v3 >= v31 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), (v3 + 1), 1, v16);
          }

          *(v16 + 2) = v3 + 1;
          v32 = &v16[16 * v3];
          *(v32 + 4) = 39;
          *(v32 + 5) = 0xE100000000000000;
          goto LABEL_7;
        }
      }

      v15 ^= 1u;
LABEL_7:
      v7 = v48;
      v18 = String.Iterator.next()();
      object = v18.value._object;
      countAndFlagsBits = v18.value._countAndFlagsBits;
      v11 = v18.value._countAndFlagsBits;
      ++v12;
      if (!v18.value._object)
      {
        v3 = v42;
        goto LABEL_50;
      }
    }

    if (v45 >= v12)
    {
      v17 = 0;
      if (v11 == 39)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    v46 = v11;
    v44 = v15;
    v21 = v16;
    v22 = v45;
LABEL_19:
    v25 = 0;
    if ((v17 & 1) == 0)
    {
      v17 = 0;
      v45 = v22;
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v45 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  LOBYTE(v17) = 1;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_50:

  if (*(v16 + 2))
  {
    v7 = String.count.getter();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  return v3;
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance Duration.TimeFormatStyle@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = Duration.TimeFormatStyle.format(_:)(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t static Duration.interval(fractionalSecondsLength:)(uint64_t a1)
{
  v1 = a1 % 3;
  if (a1 % 3 == 2)
  {
    if (a1 >= 1)
    {
      if (a1 < 4)
      {
        return 10000000000000000;
      }

      if (a1 >= 7)
      {
        if (a1 <= 9)
        {
          return 10000000000;
        }

        goto LABEL_18;
      }

      return 10000000000000;
    }

    return 1000000000000000000;
  }

  if (v1 == 1)
  {
    if (a1 >= 1)
    {
      if (a1 < 4)
      {
        return 100000000000000000;
      }

      if (a1 >= 7)
      {
        if (a1 <= 9)
        {
          return 100000000000;
        }

        goto LABEL_18;
      }

      return 100000000000000;
    }

    return 1000000000000000000;
  }

  if (v1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a1 <= 0)
  {
    return 1000000000000000000;
  }

  if (a1 < 4)
  {
    return 1000000000000000;
  }

  if (a1 < 7)
  {
    return 1000000000000;
  }

  if (a1 >= 0xA)
  {
LABEL_18:
    pow(0.1, a1);
    return static Duration.seconds(_:)();
  }

  return 1000000000;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

uint64_t PredicateExpressions.Comparison.description.getter(uint64_t a1)
{
  BYTE8(v3) = 0;
  _StringGuts.grow(_:)(42);
  MEMORY[0x1865CB0E0](0xD000000000000010, 0x8000000181483AA0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x74617265706F202CLL, 0xEC000000203A726FLL);
  *&v3 = *v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x203A736872202CLL, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return *(&v3 + 1);
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t @objc _AttributedStringFromMarkdownCreatorConcrete.append(_:with:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v8 = v7;
  v9 = _sSD10FoundationE36_unconditionallyBridgeFromObjectiveCySDyxq_GSo12NSDictionaryCSgFZSS_ypTt0g5(a4);
  v10 = a1;
  _AttributedStringFromMarkdownCreatorConcrete.append(_:with:)(v6, v8, v9);
}

uint64_t _s10Foundation14AttributeScopePAAE16scopeDescription33_4D406B8DD906487F9F362CE42830919ELLAA0cE0AELLVvgZAA0B6ScopesO0A10AttributesV_Ttg5()
{
  if (one-time initialization token for _loadedScopeCache != -1)
  {
LABEL_83:
    swift_once();
  }

  v0 = _loadedScopeCache;
  os_unfair_lock_lock(_loadedScopeCache + 10);
  v1 = specialized closure #1 in static AttributeScope.scopeDescription.getter(&v0[4], &type metadata for AttributeScopes.FoundationAttributes);
  os_unfair_lock_unlock(v0 + 10);
  if (v1)
  {
    return v1;
  }

  v2 = MEMORY[0x1E69E7CC8];
  v94 = MEMORY[0x1E69E7CC8];
  v95 = MEMORY[0x1E69E7CC8];
  v3 = Fields.endIndex.getter();
  if (!v3)
  {
    v1 = v2;
LABEL_76:
    MEMORY[0x1EEE9AC00](v3);

    os_unfair_lock_lock(v0 + 10);
    partial apply for specialized closure #2 in static AttributeScope.scopeDescription.getter(&v0[4]);
    os_unfair_lock_unlock(v0 + 10);

    return v1;
  }

  v4 = 0;
  v93 = v0;
  while (1)
  {
    if (v4 >= Fields.endIndex.getter())
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (static Metadata.Kind.tuple.getter() == 512)
    {
      TupleMetadata.init(_:)();
      TupleMetadata.Elements.subscript.getter();
      v7 = TupleMetadata.Elements.Element.metadata.getter();
LABEL_13:
      v10 = v7;
      goto LABEL_14;
    }

    v8 = (FieldDescriptor.subscript.getter() + 4);
    v9 = *v8;
    v10 = MangledTypeReference.standardSubstitution.getter();
    if (!v10)
    {
      v7 = MEMORY[0x1865C9F00](v8 + v9, &type metadata for AttributeScopes.FoundationAttributes);
      goto LABEL_13;
    }

LABEL_14:
    v11 = swift_conformsToProtocol2();
    if (!v11 || !v10)
    {
      if (swift_conformsToProtocol2() && v10)
      {
        v26 = static AttributeScope.scopeDescription.getter(v10);
        ScopeDescription.merge(_:)(v26, v27);
      }

      goto LABEL_7;
    }

    v12 = v11;
    v13 = (*(v11 + 24))(v10, v11);
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
    v19 = *(v94 + 16);
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_79;
    }

    v22 = v17;
    if (*(v94 + 24) >= v21)
    {
      break;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, isUniquelyReferenced_nonNull_native);
    v23 = v94;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
    if ((v22 & 1) != (v25 & 1))
    {
      goto LABEL_86;
    }

    v18 = v24;
    if (v22)
    {
LABEL_26:

      v28 = (*(v23 + 56) + 16 * v18);
      *v28 = v10;
      v28[1] = v12;
      goto LABEL_46;
    }

LABEL_44:
    *(v23 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    v47 = (*(v23 + 48) + 16 * v18);
    *v47 = v13;
    v47[1] = v15;
    v48 = (*(v23 + 56) + 16 * v18);
    *v48 = v10;
    v48[1] = v12;
    v49 = *(v23 + 16);
    v50 = __OFADD__(v49, 1);
    v51 = v49 + 1;
    if (v50)
    {
      goto LABEL_81;
    }

    *(v23 + 16) = v51;
LABEL_46:
    v94 = v23;
    v52 = swift_conformsToProtocol2();
    v0 = v93;
    if (!v52)
    {
      goto LABEL_7;
    }

    v53 = v52;
    v54 = (*(v52 + 24))(v10, v52);
    v56 = v55;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56);
    v60 = *(v95 + 16);
    v61 = (v59 & 1) == 0;
    v50 = __OFADD__(v60, v61);
    v62 = v60 + v61;
    if (v50)
    {
      goto LABEL_80;
    }

    v63 = v59;
    if (*(v95 + 24) < v62)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, v57);
      v64 = v95;
      v58 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56);
      if ((v63 & 1) != (v65 & 1))
      {
        goto LABEL_86;
      }

LABEL_53:
      if ((v63 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_5;
    }

    if (v57)
    {
      v64 = v95;
      goto LABEL_53;
    }

    v90 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation36MarkdownDecodableAttributedStringKey_pXpGMd, &_ss18_DictionaryStorageCySS10Foundation36MarkdownDecodableAttributedStringKey_pXpGMR);
    v70 = static _DictionaryStorage.copy(original:)();
    v64 = v70;
    if (*(v95 + 16))
    {
      v71 = (v70 + 64);
      v72 = (v95 + 64);
      v73 = ((1 << *(v64 + 32)) + 63) >> 6;
      if (v64 != v95 || v71 >= &v72[8 * v73])
      {
        memmove(v71, v72, 8 * v73);
      }

      v74 = 0;
      *(v64 + 16) = *(v95 + 16);
      v75 = 1 << *(v95 + 32);
      if (v75 < 64)
      {
        v76 = ~(-1 << v75);
      }

      else
      {
        v76 = -1;
      }

      v77 = v76 & *(v95 + 64);
      v78 = (v75 + 63) >> 6;
      if (v77)
      {
        do
        {
          v79 = __clz(__rbit64(v77));
          v92 = (v77 - 1) & v77;
LABEL_70:
          v82 = 16 * (v79 | (v74 << 6));
          v83 = (*(v95 + 48) + v82);
          v85 = *v83;
          v84 = v83[1];
          v86 = *(*(v95 + 56) + v82);
          v87 = (*(v64 + 48) + v82);
          *v87 = v85;
          v87[1] = v84;
          *(*(v64 + 56) + v82) = v86;

          v77 = v92;
        }

        while (v92);
      }

      v80 = v74;
      while (1)
      {
        v74 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          goto LABEL_85;
        }

        if (v74 >= v78)
        {
          break;
        }

        v81 = *(v95 + 64 + 8 * v74);
        ++v80;
        if (v81)
        {
          v79 = __clz(__rbit64(v81));
          v92 = (v81 - 1) & v81;
          goto LABEL_70;
        }
      }
    }

    v58 = v90;
    v0 = v93;
    if ((v63 & 1) == 0)
    {
LABEL_54:
      *(v64 + 8 * (v58 >> 6) + 64) |= 1 << v58;
      v66 = (*(v64 + 48) + 16 * v58);
      *v66 = v54;
      v66[1] = v56;
      v67 = (*(v64 + 56) + 16 * v58);
      *v67 = v10;
      v67[1] = v53;
      v68 = *(v64 + 16);
      v50 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      if (v50)
      {
        goto LABEL_82;
      }

      *(v64 + 16) = v69;
      goto LABEL_6;
    }

LABEL_5:
    v5 = v58;

    v6 = (*(v64 + 56) + 16 * v5);
    *v6 = v10;
    v6[1] = v53;
LABEL_6:
    v95 = v64;
LABEL_7:
    ++v4;
    v3 = Fields.endIndex.getter();
    if (v4 == v3)
    {
      v1 = v94;
      goto LABEL_76;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v23 = v94;
    if (v17)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd, &_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMR);
  v29 = static _DictionaryStorage.copy(original:)();
  v23 = v29;
  if (!*(v94 + 16))
  {
LABEL_43:

    if (v22)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

  v30 = (v29 + 64);
  v31 = (v94 + 64);
  v32 = ((1 << *(v23 + 32)) + 63) >> 6;
  if (v23 != v94 || v30 >= &v31[8 * v32])
  {
    memmove(v30, v31, 8 * v32);
  }

  v33 = 0;
  *(v23 + 16) = *(v94 + 16);
  v34 = 1 << *(v94 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v36 = v35 & *(v94 + 64);
  v37 = (v34 + 63) >> 6;
  v89 = v37;
  if (v36)
  {
    do
    {
      v38 = __clz(__rbit64(v36));
      v91 = (v36 - 1) & v36;
LABEL_41:
      v41 = 16 * (v38 | (v33 << 6));
      v42 = (*(v94 + 48) + v41);
      v44 = *v42;
      v43 = v42[1];
      v45 = *(*(v94 + 56) + v41);
      v46 = (*(v23 + 48) + v41);
      *v46 = v44;
      v46[1] = v43;
      *(*(v23 + 56) + v41) = v45;

      v37 = v89;
      v36 = v91;
    }

    while (v91);
  }

  v39 = v33;
  while (1)
  {
    v33 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v33 >= v37)
    {
      goto LABEL_43;
    }

    v40 = *(v94 + 64 + 8 * v33);
    ++v39;
    if (v40)
    {
      v38 = __clz(__rbit64(v40));
      v91 = (v40 - 1) & v40;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in static AttributeScope.scopeDescription.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 16 * v3);

  return v5;
}

void StringProtocol.localizedStandardRange<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v19 = static LocaleCache.cache;
  LocaleCache._currentAndCache.getter();
  v6 = v5;
  swift_unknownObjectRetain();
  StringProtocol._ephemeralString.getter();
  StringProtocol._ephemeralString.getter();
  v7 = String._bridgeToObjectiveCImpl()();

  v8 = String._bridgeToObjectiveCImpl()();

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v18 >> 14 < v19 >> 14)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = StringProtocol._toUTF16Offsets(_:)();
  v11 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  ObjectType = swift_getObjectType();
  v14 = (*(v6 + 488))(ObjectType, v6);
  v15 = [v7 rangeOfString:v8 options:129 range:v12 locale:{v11, v14}];
  v17 = v16;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    swift_unknownObjectRelease_n();
    return;
  }

  if (!__OFADD__(v15, v17))
  {
    StringProtocol._toUTF16Indices(_:)();
    swift_unknownObjectRelease_n();
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t specialized static PresentationIntent._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, char **a2)
{
  v2 = a1;
  v75 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = &selRef_initWithBundleIdentifier_storeIdentifier_;
  v5 = &selRef_lastEditorFormattedName;
  v78 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v2;
    v10 = [v9 v4[336]];
    v77 = v9;
    if (v10 <= 5)
    {
      break;
    }

    if (v10 <= 8)
    {
      if (v10 == 6)
      {
        v11 = [v9 identity];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
        }

        v47 = *(v78 + 2);
        v46 = *(v78 + 3);
        if (v47 >= v46 >> 1)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v78);
        }

        *(v78 + 2) = v47 + 1;
        v6 = &v78[32 * v47];
        v7 = xmmword_18121B8E0;
        goto LABEL_3;
      }

      if (v10 == 7)
      {
        v11 = [v9 identity];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
        }

        v34 = *(v78 + 2);
        v33 = *(v78 + 3);
        if (v34 >= v33 >> 1)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v78);
        }

        *(v78 + 2) = v34 + 1;
        v6 = &v78[32 * v34];
        v7 = xmmword_1812E5050;
        goto LABEL_3;
      }

      v14 = [v9 columnAlignments];
      if (!v14)
      {
        v52 = v3;
        if (!(v3 >> 62))
        {
          goto LABEL_86;
        }

        goto LABEL_80;
      }

      v15 = v14;
      type metadata accessor for __SwiftDeferredNSArray();
      if (swift_dynamicCastClass())
      {
      }

      else
      {
        v55 = v15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8NSNumberCGMd, &_ss23_ContiguousArrayStorageCySo8NSNumberCGMR);
      v56 = swift_dynamicCastClass();
      if (v56)
      {
        v52 = v56;

        if (!(v52 >> 62))
        {
          goto LABEL_86;
        }

LABEL_80:
        v53 = __CocoaSet.count.getter();
        if (!v53)
        {
LABEL_81:

          v54 = v3;
LABEL_97:
          v11 = [v77 identity];
          v5 = &selRef_lastEditorFormattedName;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
          }

          v64 = *(v78 + 2);
          v63 = *(v78 + 3);
          if (v64 >= v63 >> 1)
          {
            v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v78);
          }

          *(v78 + 2) = v64 + 1;
          v65 = &v78[32 * v64];
          *(v65 + 4) = v54;
          *(v65 + 5) = 0;
          v8 = v65 + 32;
          v8[16] = 3;
          goto LABEL_5;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        [v15 copy];
        type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber, off_1E69EE6D0);
        v52 = _bridgeCocoaArray<A>(_:)();

        swift_unknownObjectRelease();
        if (v52 >> 62)
        {
          goto LABEL_80;
        }

LABEL_86:
        v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v53)
        {
          goto LABEL_81;
        }
      }

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53 & ~(v53 >> 63), 0);
      if (v53 < 0)
      {
        __break(1u);
LABEL_125:
        __break(1u);
      }

      v57 = 0;
      v54 = v3;
      do
      {
        if ((v52 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x1865CC0E0](v57, v52);
        }

        else
        {
          v58 = *(v52 + 8 * v57 + 32);
        }

        v59 = v58;
        v60 = [v58 integerValue];

        if (v60 > 2)
        {
          goto LABEL_125;
        }

        v62 = *(v3 + 16);
        v61 = *(v3 + 24);
        if (v62 >= v61 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
        }

        ++v57;
        *(v3 + 16) = v62 + 1;
        *(v3 + v62 + 32) = v60;
      }

      while (v53 != v57);

      v4 = &selRef_initWithBundleIdentifier_storeIdentifier_;
      goto LABEL_97;
    }

    switch(v10)
    {
      case 9:
        v11 = [v9 identity];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
        }

        v51 = *(v78 + 2);
        v50 = *(v78 + 3);
        if (v51 >= v50 >> 1)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v78);
        }

        *(v78 + 2) = v51 + 1;
        v6 = &v78[32 * v51];
        v7 = xmmword_1812E5040;
        goto LABEL_3;
      case 10:
        v39 = [v9 row];
        v11 = [v9 identity];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
        }

        v41 = *(v78 + 2);
        v40 = *(v78 + 3);
        if (v41 >= v40 >> 1)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v78);
        }

        *(v78 + 2) = v41 + 1;
        v42 = &v78[32 * v41];
        *(v42 + 4) = v39;
        *(v42 + 5) = 0;
        v8 = v42 + 32;
        v8[16] = 4;
        break;
      case 11:
        v25 = [v9 column];
        v11 = [v9 identity];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
        }

        v27 = *(v78 + 2);
        v26 = *(v78 + 3);
        if (v27 >= v26 >> 1)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v78);
        }

        *(v78 + 2) = v27 + 1;
        v28 = &v78[32 * v27];
        *(v28 + 4) = v25;
        *(v28 + 5) = 0;
        v8 = v28 + 32;
        v8[16] = 5;
        break;
      default:
LABEL_123:

        return 0;
    }

LABEL_5:
    *(v8 + 3) = v11;
    v2 = [v77 v5[348]];

    if (!v2)
    {

      *a2 = v78;
      return 1;
    }
  }

  if (v10 <= 2)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        v29 = [v9 headerLevel];
        v11 = [v9 identity];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
        }

        v31 = *(v78 + 2);
        v30 = *(v78 + 3);
        if (v31 >= v30 >> 1)
        {
          v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v78);
        }

        *(v78 + 2) = v31 + 1;
        v32 = &v78[32 * v31];
        *(v32 + 4) = v29;
        *(v32 + 5) = 0;
        v8 = v32 + 32;
        v8[16] = 0;
        goto LABEL_5;
      }

      if (v10 != 2)
      {
        goto LABEL_123;
      }

      v11 = [v9 identity];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
      }

      v13 = *(v78 + 2);
      v12 = *(v78 + 3);
      if (v13 >= v12 >> 1)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v78);
      }

      *(v78 + 2) = v13 + 1;
      v6 = &v78[32 * v13];
      v7 = xmmword_18121B2B0;
LABEL_3:
      *(v6 + 2) = v7;
      v8 = v6 + 32;
    }

    else
    {
      v11 = [v9 identity];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
      }

      v44 = *(v78 + 2);
      v43 = *(v78 + 3);
      if (v44 >= v43 >> 1)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v78);
      }

      *(v78 + 2) = v44 + 1;
      v45 = &v78[32 * v44];
      *(v45 + 4) = 0;
      *(v45 + 5) = 0;
      v8 = v45 + 32;
    }

    v8[16] = 6;
    goto LABEL_5;
  }

  if (v10 == 3)
  {
    v11 = [v9 identity];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
    }

    v49 = *(v78 + 2);
    v48 = *(v78 + 3);
    if (v49 >= v48 >> 1)
    {
      v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v78);
    }

    *(v78 + 2) = v49 + 1;
    v6 = &v78[32 * v49];
    v7 = xmmword_18121D490;
    goto LABEL_3;
  }

  if (v10 == 4)
  {
    v35 = [v9 ordinal];
    v11 = [v9 identity];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
    }

    v37 = *(v78 + 2);
    v36 = *(v78 + 3);
    if (v37 >= v36 >> 1)
    {
      v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v78);
    }

    *(v78 + 2) = v37 + 1;
    v38 = &v78[32 * v37];
    *(v38 + 4) = v35;
    *(v38 + 5) = 0;
    v8 = v38 + 32;
    v8[16] = 1;
    goto LABEL_5;
  }

  v16 = [v9 languageHint];
  if (!v16)
  {
    v22 = 0;
    v24 = 0;
    goto LABEL_117;
  }

  v17 = v16;
  isTaggedPointer = _objc_isTaggedPointer(v16);
  v19 = v17;
  v20 = v19;
  if (!isTaggedPointer)
  {
LABEL_77:
    LOBYTE(v79) = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v66 = v20;
      v67 = String.init(_nativeStorage:)();
      if (v68)
      {
        v22 = v67;
        v24 = v68;

        goto LABEL_117;
      }

      if ([v66 length])
      {
        v22 = String.init(_cocoaString:)();
        v24 = v71;
        goto LABEL_116;
      }
    }

    v22 = 0;
    v24 = 0xE000000000000000;
    goto LABEL_117;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v19);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v70)
    {
      [v20 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v22 = v79;
      v24 = v80;
      goto LABEL_116;
    }

LABEL_111:
    v22 = result;
    v24 = v70;

LABEL_116:
    goto LABEL_117;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v22 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v24 = v23;

LABEL_117:
      v11 = [v9 identity];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
      }

      v73 = *(v78 + 2);
      v72 = *(v78 + 3);
      if (v73 >= v72 >> 1)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v78);
      }

      *(v78 + 2) = v73 + 1;
      v74 = &v78[32 * v73];
      *(v74 + 4) = v22;
      *(v74 + 5) = v24;
      v8 = v74 + 32;
      v8[16] = 2;
      v5 = &selRef_lastEditorFormattedName;
      goto LABEL_5;
    }

    goto LABEL_77;
  }

  result = [v20 UTF8String];
  if (!result)
  {
    goto LABEL_126;
  }

  result = String.init(utf8String:)(result);
  if (v70)
  {
    goto LABEL_111;
  }

  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationIntent and conformance PresentationIntent()
{
  result = lazy protocol witness table cache variable for type PresentationIntent and conformance PresentationIntent;
  if (!lazy protocol witness table cache variable for type PresentationIntent and conformance PresentationIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent and conformance PresentationIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationIntent and conformance PresentationIntent;
  if (!lazy protocol witness table cache variable for type PresentationIntent and conformance PresentationIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationIntent and conformance PresentationIntent);
  }

  return result;
}

double sub_1809EA8C4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1812187D0;
  return result;
}

uint64_t static AttributedStringKey.invalidationConditions.getter()
{
  return 0;
}

{
  return 0;
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2)
{
  v4 = v2;
  v15[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v15, 0, 15);
      a1(&v13, v15, v15);
      return;
    }

    outlined consume of Data._Representation(v7, v6);
    v13 = v7;
    v14 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    specialized Data.LargeSlice.withUnsafeMutableBytes<A>(_:)(a1);
    if (v3)
    {
      v9 = v13;
      v10 = v14 | 0x8000000000000000;
      goto LABEL_10;
    }

    v11 = v13;
    v12 = v14 | 0x8000000000000000;
  }

  else if (v8)
  {

    outlined consume of Data._Representation(v7, v6);
    v13 = v7;
    v14 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(a1);
    if (v3)
    {
      v9 = v13;
      v10 = v14 | 0x4000000000000000;
      goto LABEL_10;
    }

    v11 = v13;
    v12 = v14 | 0x4000000000000000;
  }

  else
  {
    outlined consume of Data._Representation(v7, v6);
    v15[0] = v7;
    LOWORD(v15[1]) = v6;
    BYTE2(v15[1]) = BYTE2(v6);
    BYTE3(v15[1]) = BYTE3(v6);
    BYTE4(v15[1]) = BYTE4(v6);
    BYTE5(v15[1]) = BYTE5(v6);
    BYTE6(v15[1]) = BYTE6(v6);
    a1(&v13, v15, v15 + BYTE6(v6));
    if (v3)
    {
      v9 = v15[0];
      v10 = LODWORD(v15[1]) | ((WORD2(v15[1]) | (BYTE6(v15[1]) << 16)) << 32);
LABEL_10:
      *v4 = v9;
      v4[1] = v10;
      return;
    }

    v11 = v15[0];
    v12 = LODWORD(v15[1]) | ((WORD2(v15[1]) | (BYTE6(v15[1]) << 16)) << 32);
  }

  *v4 = v11;
  v4[1] = v12;
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  Data.InlineSlice.ensureUniqueReference()();
  v3 = *v1;
  v4 = v1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = *(v1 + 1);
  v6 = v5[2];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v5[5];
  v8 = __OFSUB__(v3, v7);
  v9 = v3 - v7;
  if (v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v4 - v3;
  if (v5[3] >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5[3];
  }

  v12 = v6 + v9;

  a1(&v13, v12, v12 + v11);
}

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t convertTextToDecimal(const char *a1, double *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v4 = strtod_l(a1, v8, 0);
  if (v8[0])
  {
    v5 = v8[0] == a1;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || *v8[0])
  {
    v6 = [[NSString alloc] initWithCString:a1];
    *a2 = [[NSDecimalNumber alloc] initWithString:v6];

    return 294;
  }

  else
  {
    *a2 = v4;
    return 293;
  }
}

NSFunctionExpression *CreateUserFunctionExpression(void *a1)
{
  v2 = [a1 count];
  if (v2 <= 1)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = [NSString stringWithFormat:@"User-defined function expressions must have at least a target and a selector; got (%@)", a1];
    v15 = v12;
    v16 = v13;
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [a1 objectAtIndex:0];
  v5 = [a1 objectAtIndex:1];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = [NSString stringWithFormat:@"User-defined function expressions must have a predefinedSelector; got (%@)", v5];
LABEL_11:
    v14 = v19;
    v15 = v17;
    v16 = v18;
    goto LABEL_13;
  }

  v6 = [objc_msgSend(a1 objectAtIndex:{1), "expressionValueWithObject:context:", 0, 0}];
  if ((_NSIsNSString() & 1) == 0)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = [NSString stringWithFormat:@"Can't get selector from non-string (%@)", v6];
    goto LABEL_11;
  }

  v7 = NSSelectorFromString(v6);
  if (!v7)
  {
    v14 = [NSString stringWithFormat:@"Unable to parse function name '%@' into supported selector", v6];
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
LABEL_13:
    objc_exception_throw([v15 exceptionWithName:v16 reason:v14 userInfo:0]);
  }

  v8 = v7;
  v9 = [a1 subarrayWithRange:{2, v3 - 2}];
  v10 = [NSFunctionExpression alloc];

  return [(NSFunctionExpression *)v10 initWithExpressionType:4 operand:v4 selector:v8 argumentArray:v9];
}

uint64_t StringProtocol.compare<A>(_:options:range:locale:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v11 = v10;
  LODWORD(v62) = a5;
  v60 = a3;
  v61 = a2;
  v15 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v19);
  v25 = *v20;
  if (!*v20)
  {
    v59 = v23;
    (*(v22 + 16))(&v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v11, a7, v24);
    v42 = Substring.init<A>(_:)();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    if ((v62 & 1) == 0)
    {
      v42 = Substring.subscript.getter();
      v44 = v49;
      v46 = v50;
      v52 = v51;

      v48 = v52;
    }

    (*(v15 + 16))(v18, v59, a8);
    v53 = Substring.init<A>(_:)();
    v41 = Substring._unlocalizedCompare(other:options:)(v53, v54, v55, v56, v61, v42, v44, v46, v48);

    return v41;
  }

  v26 = v20[1];
  StringProtocol._ephemeralString.getter();
  StringProtocol._ephemeralString.getter();
  v27 = String._bridgeToObjectiveCImpl()();

  v28 = String._bridgeToObjectiveCImpl()();

  if (v62)
  {
    dispatch thunk of Collection.startIndex.getter();
    v29 = v63[0];
    result = dispatch thunk of Collection.endIndex.getter();
    a4 = v64;
    if (v64 >> 14 < v29 >> 14)
    {
      goto LABEL_16;
    }
  }

  v31 = v11;
  result = StringProtocol._toUTF16Offsets(_:)();
  if (__OFSUB__(v32, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  a7 = result;
  v60 = v32 - result;
  v62 = v27;
  ObjectType = swift_getObjectType();
  v34 = *(v26 + 488);
  swift_unknownObjectRetain();
  v35 = v34(ObjectType, v26);
  swift_unknownObjectRelease();
  v25 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSLocale, 0x1E695DF58);
  v63[3] = v25;
  v63[0] = v35;
  v36 = __swift_project_boxed_opaque_existential_1(v63, v25);
  a4 = *(v25 - 8);
  v37 = *(a4 + 64);
  a9 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v31 = (&v58 - a9);
  v27 = *(a4 + 16);
  (v27)(&v58 - a9, v38);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
LABEL_14:
    v59 = &v58;
    v57 = MEMORY[0x1EEE9AC00](result);
    (v27)(&v58 - a9, v31, v25, v57);
    v39 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(a4 + 8))(v31, v25);
    goto LABEL_8;
  }

  if (v37 == 8)
  {
    v39 = *v31;
    v40 = *(a4 + 8);
    swift_unknownObjectRetain();
    v40(&v58 - a9, v25);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v63);
    v41 = [v62 compare:v28 options:v61 range:a7 locale:{v60, v39}];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v41;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

double DateInterval.start.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

void _NSSetSizeValueAndNotify(void *a1, const void *a2, double a3, double a4)
{
  v13[9] = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v10 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v11 = [CFDictionaryGetValue(v10[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v10[5])
    {
      [a1 willChangeValueForKey:v11];
      MethodImplementation = class_getMethodImplementation(*v10, a2);
      (MethodImplementation)(a1, a2, a3, a4);
      [a1 didChangeValueForKey:v11];
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___NSSetSizeValueAndNotify_block_invoke;
      v13[3] = &unk_1E69F46E0;
      v13[5] = v10;
      v13[6] = a2;
      v13[4] = a1;
      *&v13[7] = a3;
      *&v13[8] = a4;
      [a1 _changeValueForKey:v11 key:0 key:0 usingBlock:v13];
    }
  }

  else
  {

    [a1 a2];
  }
}

BOOL specialized static CGSize._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for CGSize(0);
  v5 = strcmp(v4, "{CGSize=dd}");
  *a2 = 0;
  *(a2 + 8) = 0;
  if (v5)
  {
    *(a2 + 16) = 1;
  }

  else
  {
    *(a2 + 16) = 0;
    [a1 getValue:a2 size:16];
  }

  return v5 == 0;
}

uint64_t closure #1 in _NSSwiftCalendar.init(coder:)(uint64_t *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, void *a10)
{
  swift_unknownObjectRelease();
  type metadata accessor for _NSSwiftLocale();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = *(v14 + OBJC_IVAR____NSSwiftLocale_locale);
    v16 = *(v14 + OBJC_IVAR____NSSwiftLocale_locale + 8);
    swift_unknownObjectRetain();
    if (a10)
    {
LABEL_3:
      [a10 timeIntervalSinceReferenceDate];
      v18 = v17;
      goto LABEL_6;
    }
  }

  else
  {
    type metadata accessor for _LocaleBridged();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    v16 = lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged, &protocol conformance descriptor for _LocaleBridged);
    v19 = a3;
    if (a10)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  if (a2 != 7 && a2)
  {
    v20 = type metadata accessor for _CalendarICU();
    v21 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
    v22 = type metadata accessor for _CalendarICU;
    v23 = &protocol conformance descriptor for _CalendarICU;
  }

  else
  {
    v20 = type metadata accessor for _CalendarGregorian();
    v21 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
    v22 = type metadata accessor for _CalendarGregorian;
    v23 = &protocol conformance descriptor for _CalendarGregorian;
  }

  v24 = lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(v21, v22, v23);
  v35 = a2;
  v34[0] = a4;
  v34[1] = a5;
  v33[0] = v15;
  v33[1] = v16;
  v31 = v18;
  v32 = a10 == 0;
  v25 = *(v24 + 16);
  swift_unknownObjectRetain();
  result = v25(&v35, v34, v33, a6, a7 & 1, a8, a9 & 1, &v31, v20, v24);
  *a1 = result;
  a1[1] = v24;
  return result;
}

void closure #1 in URLRequest.allHTTPHeaderFields.setter(void *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;

    v3 = _NativeDictionary.bridged()();
    a1 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [a1 setAllHTTPHeaderFields_];
}

uint64_t URLRequest.allHTTPHeaderFields.setter(uint64_t a1)
{
  specialized URLRequest.allHTTPHeaderFields.setter(a1);
}

void specialized URLRequest.allHTTPHeaderFields.setter(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(*v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMd, &_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMR);
    v5 = swift_allocObject();
    v6 = v4;
    [v6 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest, 0x1E695AC18);
    swift_dynamicCast();
    v4 = v8;
    *(v5 + 16) = v8;

    *v1 = v5;
  }

  v7 = v4;
  closure #1 in URLRequest.allHTTPHeaderFields.setter(v7, a1);
}

void (*URLComponents.queryItems.modify(uint64_t *a1))(Swift::OpaquePointer_optional a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  *a1 = v3;
  *(v3 + 168) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[5];
  *(v3 + 64) = v1[4];
  *(v3 + 80) = v7;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  *(v3 + 138) = *(v1 + 138);
  *(v3 + 112) = v9;
  *(v3 + 128) = v10;
  *(v3 + 96) = v8;
  *(v3 + 160) = URLComponents._URLComponents.queryItems(percentEncoded:)(0);
  return URLComponents.queryItems.modify;
}

void URLComponents.queryItems.modify(Swift::OpaquePointer_optional a1)
{
  v1 = *a1.value._rawValue;
  a1.value._rawValue = *(*a1.value._rawValue + 160);
  if (a1.is_nil)
  {

    URLComponents._URLComponents.setQueryItems(_:)(v3);
  }

  else
  {
    URLComponents._URLComponents.setQueryItems(_:)(a1);
  }

  free(v1);
}

Swift::String __swiftcall Locale.identifier(_:)(Foundation::Locale::IdentifierType a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v8 = v2;
  v5 = (*(v3 + 416))(&v8, ObjectType, v3);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

NSURLComponents __swiftcall URLComponents._bridgeToObjectiveC()()
{
  v1 = v0[7];
  v15[6] = v0[6];
  v15[7] = v1;
  v16[0] = v0[8];
  *(v16 + 10) = *(v0 + 138);
  v2 = v0[3];
  v15[2] = v0[2];
  v15[3] = v2;
  v3 = v0[5];
  v15[4] = v0[4];
  v15[5] = v3;
  v4 = v0[1];
  v15[0] = *v0;
  v15[1] = v4;
  v5 = type metadata accessor for _NSSwiftURLComponents();
  v6 = objc_allocWithZone(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation13URLComponentsVSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy10Foundation13URLComponentsVSo16os_unfair_lock_sVGMR);
  v7 = swift_allocObject();
  *(v7 + 172) = 0;
  v8 = v0[7];
  *(v7 + 112) = v0[6];
  *(v7 + 128) = v8;
  *(v7 + 144) = v0[8];
  *(v7 + 154) = *(v0 + 138);
  v9 = v0[3];
  *(v7 + 48) = v0[2];
  *(v7 + 64) = v9;
  v10 = v0[5];
  *(v7 + 80) = v0[4];
  *(v7 + 96) = v10;
  v11 = v0[1];
  *(v7 + 16) = *v0;
  *(v7 + 32) = v11;
  *&v6[OBJC_IVAR____NSSwiftURLComponents_lock] = v7;
  outlined init with copy of URLComponents(v15, v14);
  v13.receiver = v6;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, sel_init);
}

char *static RegexComponent<>.iso8601WithTimeZone(includingFractionalSeconds:dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:)@<X0>(char a1@<W0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, _OWORD *a6@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  if (one-time initialization token for cache != -1)
  {
    v38 = a1;
    swift_once();
    a1 = v38;
  }

  v13 = *(&xmmword_1ED440468 + 1);
  v12 = xmmword_1ED440468;
  BYTE3(v65) = v8;
  BYTE4(v65) = v9;
  *(&v65 + 1) = 0;
  v67 = xmmword_1ED440468;
  LOBYTE(v65) = v10;
  BYTE2(v65) = v11;
  BYTE1(v65) = a1 & 1;
  v14 = one-time initialization token for cache;
  swift_unknownObjectRetain_n();
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v16 = *(v15 + 16);
  if (*(v16 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v18 & 1) != 0))
  {
    v57 = *(*(v16 + 56) + 16 * v17);
    v19 = *(*(v16 + 56) + 16 * v17);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v15 + 24));
    if (v19)
    {
LABEL_41:
      v66 = v57;
      v62 = v12;
      v63 = v13;
      result = Calendar.timeZone.setter(&v62);
      v53 = v66;
      *a6 = v65;
      a6[1] = v53;
      a6[2] = v67;
      return result;
    }
  }

  else
  {
    os_unfair_lock_unlock((v15 + 24));
  }

  v20 = type metadata accessor for _CalendarGregorian();
  v21 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v64 = 7;
  v62 = 0;
  v63 = 0;
  v61[0] = 0;
  v61[1] = 0;
  v59 = 0;
  v60 = 1;
  v22 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v64, &v62, v61, 0, 1, 0, 1, &v59);
  os_unfair_lock_lock((v15 + 24));
  v23 = *(v15 + 16);
  if (*(v23 + 16))
  {
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v25)
    {
      v26 = *(*(v23 + 56) + 16 * v24);
LABEL_40:
      v57 = v26;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v15 + 24));

      goto LABEL_41;
    }
  }

  v58 = v13;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(v15 + 16);
  v28 = v62;
  v29 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v31 = *(v28 + 16);
  v32 = (v30 & 1) == 0;
  v33 = __OFADD__(v31, v32);
  v34 = v31 + v32;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    v6 = v30;
    if (*(v28 + 24) < v34)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
      v35 = v62;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v6 & 1) == (v36 & 1))
      {
        goto LABEL_19;
      }

      v29 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v35 = v28;
LABEL_19:
      v13 = v58;
      if (v6)
      {
LABEL_20:
        v37 = (*(v35 + 56) + 16 * v29);
        *v37 = v22;
        v37[1] = v21;
        swift_unknownObjectRelease();
LABEL_39:
        *(v15 + 16) = v35;
        *&v26 = v22;
        *(&v26 + 1) = v21;
        goto LABEL_40;
      }

LABEL_38:
      specialized _NativeDictionary._insert(at:key:value:)(v29, 7, v22, v35, v20, v21);
      goto LABEL_39;
    }
  }

  v54 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd, "nC)");
  v39 = static _DictionaryStorage.copy(original:)();
  v35 = v39;
  if (!*(v28 + 16))
  {
LABEL_37:

    v29 = v54;
    v13 = v58;
    if (v6)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

  result = (v39 + 64);
  v41 = (v28 + 64);
  v42 = ((1 << *(v35 + 32)) + 63) >> 6;
  if (v35 != v28 || result >= &v41[8 * v42])
  {
    result = memmove(result, v41, 8 * v42);
  }

  v43 = 0;
  *(v35 + 16) = *(v28 + 16);
  v44 = 1 << *(v28 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v28 + 64);
  v47 = (v44 + 63) >> 6;
  v55 = v47;
  if (v46)
  {
    do
    {
      v48 = __clz(__rbit64(v46));
      v56 = (v46 - 1) & v46;
LABEL_35:
      v51 = v48 | (v43 << 6);
      v52 = *(*(v28 + 56) + 16 * v51);
      *(*(v35 + 48) + v51) = *(*(v28 + 48) + v51);
      *(*(v35 + 56) + 16 * v51) = v52;
      result = swift_unknownObjectRetain();
      v47 = v55;
      v46 = v56;
    }

    while (v56);
  }

  v49 = v43;
  while (1)
  {
    v43 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v43 >= v47)
    {
      goto LABEL_37;
    }

    v50 = *(v28 + 64 + 8 * v43);
    ++v49;
    if (v50)
    {
      v48 = __clz(__rbit64(v50));
      v56 = (v50 - 1) & v50;
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

id _BridgedStoredNSError.errorCode.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 64))(a1);
  v3 = [v2 code];

  return v3;
}

uint64_t String.LocalizationValue.FormatArgument.CodableStorage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v259 = a2;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys2OGMd, &_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys2OGMR);
  v261 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260);
  v258 = &v223 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v256 = &v223 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v268 = &v223 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v257 = &v223 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v267 = &v223 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v255 = &v223 - v13;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageO26AttributedStringCodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd, &_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageO26AttributedStringCodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMR);
  v242 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v254 = &v223 - v14;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd, &_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMR);
  v263 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262);
  v253 = &v223 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v252 = &v223 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v251 = &v223 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v266 = &v223 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v250 = &v223 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v249 = &v223 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v248 = &v223 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v247 = &v223 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v246 = &v223 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v244 = &v223 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v245 = &v223 - v35;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageO10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd, &_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageO10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMR);
  v270 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v273 = &v223 - v36;
  v269 = type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
  MEMORY[0x1EEE9AC00](v269);
  v239 = (&v223 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v38);
  v233 = (&v223 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v264 = &v223 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v241 = (&v223 - v43);
  MEMORY[0x1EEE9AC00](v44);
  v240 = (&v223 - v45);
  MEMORY[0x1EEE9AC00](v46);
  v232 = (&v223 - v47);
  MEMORY[0x1EEE9AC00](v48);
  v231 = (&v223 - v49);
  MEMORY[0x1EEE9AC00](v50);
  v230 = (&v223 - v51);
  MEMORY[0x1EEE9AC00](v52);
  v238 = (&v223 - v53);
  MEMORY[0x1EEE9AC00](v54);
  v237 = (&v223 - v55);
  MEMORY[0x1EEE9AC00](v56);
  v236 = (&v223 - v57);
  MEMORY[0x1EEE9AC00](v58);
  v235 = (&v223 - v59);
  MEMORY[0x1EEE9AC00](v60);
  v234 = (&v223 - v61);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v223 - v63;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v223 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v223 - v69;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v223 - v72;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v223 - v75;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v223 - v78;
  v80 = a1[3];
  v271 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v80);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys();
  v81 = v272;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v272 = v81;
  if (v81)
  {
LABEL_9:
    v105 = v271;
    return __swift_destroy_boxed_opaque_existential_1(v105);
  }

  v224 = v73;
  v225 = v70;
  v226 = v67;
  v227 = v76;
  v228 = v64;
  v82 = v264;
  v83 = v266;
  v84 = v267;
  v85 = v268;
  v229 = v79;
  v86 = v265;
  v87 = KeyedDecodingContainer.allKeys.getter();
  v88 = (2 * *(v87 + 16)) | 1;
  v282 = v87;
  v283 = v87 + 32;
  v284 = 0;
  v285 = v88;
  v89 = specialized Collection<>.popFirst()();
  if (v284 != v285 >> 1)
  {
LABEL_7:
    v99 = v86;
    v100 = type metadata accessor for DecodingError();
    v101 = swift_allocError();
    v103 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v103 = v269;
    v104 = v273;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v100 - 8) + 104))(v103, *MEMORY[0x1E69E6AF8], v100);
    v272 = v101;
    swift_willThrow();
    (*(v270 + 8))(v104, v99);
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v90 = v273;
  v91 = v263;
  switch(v89)
  {
    case 0:
      v274[0] = 0;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v92 = v245;
      v93 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v93;
      if (v93)
      {
        goto LABEL_60;
      }

      lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource();
      v94 = v91;
      v95 = v262;
      v96 = v272;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v97 = (v94 + 8);
      v98 = (v270 + 8);
      v272 = v96;
      if (v96)
      {
        (*v97)(v92, v95);
        (*v98)(v90, v86);
        goto LABEL_8;
      }

      (*v97)(v92, v95);
      (*v98)(v90, v86);
      swift_unknownObjectRelease();
      v203 = v278;
      v129 = v227;
      *(v227 + 4) = v277;
      *(v129 + 5) = v203;
      v129[12] = *v279;
      v204 = *&v274[16];
      *v129 = *v274;
      *(v129 + 1) = v204;
      v205 = v276;
      *(v129 + 2) = v275;
      *(v129 + 3) = v205;
      goto LABEL_73;
    case 1:
      v274[0] = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v164 = v244;
      v165 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v165;
      if (v165)
      {
        goto LABEL_60;
      }

      v166 = v262;
      v167 = KeyedDecodingContainer.decode(_:forKey:)();
      v272 = 0;
      v206 = v167;
      (*(v263 + 8))(v164, v166);
      (*(v270 + 8))(v90, v86);
      swift_unknownObjectRelease();
      v139 = v224;
      *v224 = v206;
      goto LABEL_68;
    case 2:
      v274[0] = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v148 = v246;
      v149 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v149;
      if (v149)
      {
        goto LABEL_60;
      }

      v150 = v262;
      v151 = KeyedDecodingContainer.decode(_:forKey:)();
      v152 = v270;
      v272 = 0;
      v153 = v151;
      (*(v91 + 8))(v148, v150);
      (*(v152 + 8))(v90, v86);
      swift_unknownObjectRelease();
      v139 = v225;
      *v225 = v153;
      goto LABEL_68;
    case 3:
      v274[0] = 3;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v157 = v247;
      v158 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v158;
      if (v158)
      {
        goto LABEL_60;
      }

      v159 = v262;
      v160 = KeyedDecodingContainer.decode(_:forKey:)();
      v161 = v270;
      v272 = 0;
      v202 = v160;
      (*(v91 + 8))(v157, v159);
      (*(v161 + 8))(v90, v86);
      swift_unknownObjectRelease();
      v139 = v226;
      *v226 = v202;
      goto LABEL_68;
    case 4:
      v274[0] = 4;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v133 = v248;
      v134 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v134;
      if (v134)
      {
        goto LABEL_60;
      }

      v135 = v262;
      v136 = KeyedDecodingContainer.decode(_:forKey:)();
      v137 = v270;
      v272 = 0;
      v138 = v136;
      (*(v91 + 8))(v133, v135);
      (*(v137 + 8))(v90, v86);
      swift_unknownObjectRelease();
      v139 = v228;
      *v228 = v138;
LABEL_68:
      swift_storeEnumTagMultiPayload();
      v207 = v139;
      goto LABEL_74;
    case 5:
      v274[0] = 5;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v170 = v249;
      v171 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v171;
      if (v171)
      {
        goto LABEL_60;
      }

      v172 = v86;
      v173 = v262;
      KeyedDecodingContainer.decode(_:forKey:)();
      v174 = v270;
      v272 = 0;
      v176 = v175;
      (*(v263 + 8))(v170, v173);
      (*(v174 + 8))(v90, v172);
      swift_unknownObjectRelease();
      v129 = v234;
      *v234 = v176;
      goto LABEL_73;
    case 6:
      v274[0] = 6;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v179 = v250;
      v180 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v180;
      if (v180)
      {
        goto LABEL_60;
      }

      v181 = v86;
      v182 = v262;
      KeyedDecodingContainer.decode(_:forKey:)();
      v183 = v270;
      v272 = 0;
      v211 = v210;
      (*(v263 + 8))(v179, v182);
      (*(v183 + 8))(v90, v181);
      swift_unknownObjectRelease();
      v129 = v235;
      *v235 = v211;
      goto LABEL_73;
    case 7:
      v274[0] = 7;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v142 = v83;
      v162 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v162;
      if (v162)
      {
        goto LABEL_60;
      }

      v144 = v86;
      lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      v145 = v262;
      v163 = v272;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v147 = v270;
      v272 = v163;
      if (v163)
      {
        goto LABEL_55;
      }

      (*(v263 + 8))(v83, v145);
      (*(v147 + 8))(v90, v144);
      swift_unknownObjectRelease();
      v129 = v236;
      *v236 = *v274;
      goto LABEL_73;
    case 8:
      v274[0] = 8;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v188 = v251;
      v189 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v189;
      if (v189)
      {
        goto LABEL_60;
      }

      v190 = v262;
      v191 = KeyedDecodingContainer.decode(_:forKey:)();
      v192 = v270;
      v272 = 0;
      v214 = v191;
      v216 = v215;
      (*(v263 + 8))(v188, v190);
      (*(v192 + 8))(v90, v86);
      swift_unknownObjectRelease();
      v129 = v237;
      *v237 = v214;
      v129[1] = v216;
      goto LABEL_73;
    case 9:
      v274[0] = 9;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v142 = v252;
      v143 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v143;
      if (v143)
      {
        goto LABEL_60;
      }

      v144 = v86;
      lazy protocol witness table accessor for type Date and conformance Date();
      v145 = v262;
      v146 = v272;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v147 = v270;
      v272 = v146;
      if (v146)
      {
        goto LABEL_55;
      }

      (*(v263 + 8))(v142, v145);
      (*(v147 + 8))(v90, v144);
      swift_unknownObjectRelease();
      v129 = v238;
      *v238 = *v274;
      goto LABEL_73;
    case 10:
      v274[0] = 10;
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys();
      v184 = v254;
      v185 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v185;
      if (v185)
      {
        goto LABEL_60;
      }

      LOBYTE(v280) = 0;
      lazy protocol witness table accessor for type AttributedString and conformance AttributedString();
      v186 = v243;
      v187 = v272;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v115 = v270;
      v272 = v187;
      if (v187)
      {
        (*(v242 + 8))(v184, v186);
        goto LABEL_52;
      }

      v212 = *v274;
      LOBYTE(v280) = 1;
      v213 = KeyedDecodingContainer.decode(_:forKey:)();
      v272 = 0;
      v221 = v213;
      (*(v242 + 8))(v184, v186);
      (*(v115 + 8))(v90, v86);
      swift_unknownObjectRelease();
      v222 = v230;
      *v230 = v212;
      v222[1] = v221;
      swift_storeEnumTagMultiPayload();
      v207 = v222;
      goto LABEL_74;
    case 11:
      v274[0] = 11;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2();
      v120 = v255;
      v121 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v121;
      if (v121)
      {
        goto LABEL_60;
      }

      v122 = v86;
      v274[0] = 0;
      lazy protocol witness table accessor for type Date and conformance Date();
      v123 = v260;
      v124 = v272;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v125 = v270;
      v272 = v124;
      if (v124)
      {
        goto LABEL_25;
      }

      v126 = v280;
      v286 = 1;
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle();
      v127 = v272;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v128 = v261;
      v272 = v127;
      if (v127)
      {
        goto LABEL_26;
      }

      (*(v261 + 8))(v120, v123);
      (*(v125 + 8))(v90, v122);
      swift_unknownObjectRelease();
      v129 = v231;
      *v231 = v126;
      v130 = v278;
      *(v129 + 9) = v277;
      *(v129 + 11) = v130;
      *(v129 + 13) = *v279;
      *(v129 + 114) = *&v279[10];
      v131 = *&v274[16];
      *(v129 + 1) = *v274;
      *(v129 + 3) = v131;
      v132 = v276;
      *(v129 + 5) = v275;
      *(v129 + 7) = v132;
      goto LABEL_73;
    case 12:
      v274[0] = 12;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2();
      v120 = v84;
      v140 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v140;
      if (v140)
      {
        goto LABEL_60;
      }

      v122 = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation4DateVGMd, &_sSny10Foundation4DateVGMR);
      v274[0] = 0;
      lazy protocol witness table accessor for type Range<Date> and conformance <> Range<A>();
      v123 = v260;
      v141 = v272;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v125 = v270;
      v272 = v141;
      if (v141)
      {
LABEL_25:
        v128 = v261;
LABEL_26:
        (*(v128 + 8))(v120, v123);
        (*(v125 + 8))(v90, v122);
        goto LABEL_8;
      }

      v196 = v280;
      v197 = v281;
      v286 = 1;
      lazy protocol witness table accessor for type Date.IntervalFormatStyle and conformance Date.IntervalFormatStyle();
      v198 = v272;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v128 = v261;
      v272 = v198;
      if (v198)
      {
        goto LABEL_26;
      }

      (*(v261 + 8))(v120, v123);
      (*(v125 + 8))(v90, v122);
      swift_unknownObjectRelease();
      v129 = v232;
      *v232 = v196;
      v129[1] = v197;
      v199 = v278;
      *(v129 + 5) = v277;
      *(v129 + 6) = v199;
      *(v129 + 56) = *v279;
      v200 = *&v274[16];
      *(v129 + 1) = *v274;
      *(v129 + 2) = v200;
      v201 = v276;
      *(v129 + 3) = v275;
      *(v129 + 4) = v201;
      goto LABEL_73;
    case 13:
      v274[0] = 13;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2();
      v85 = v257;
      v177 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v177;
      if (v177)
      {
        goto LABEL_60;
      }

      v274[0] = 0;
      v114 = v260;
      v178 = KeyedDecodingContainer.decode(_:forKey:)();
      v115 = v270;
      v272 = 0;
      v208 = v178;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleVtMd, &_sSi_SS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleVtMR);
      v82 = v240;
      *v240 = v208;
      type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle(0);
      v274[0] = 1;
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
      v209 = v272;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v119 = v261;
      v272 = v209;
      if (!v209)
      {
        goto LABEL_70;
      }

      goto LABEL_51;
    case 14:
      v274[0] = 14;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2();
      v113 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v113;
      if (v113)
      {
        goto LABEL_60;
      }

      v274[0] = 0;
      v114 = v260;
      KeyedDecodingContainer.decode(_:forKey:)();
      v115 = v270;
      v272 = 0;
      v117 = v116;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd_SS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleVtMd, &_sSd_SS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleVtMR);
      v82 = v241;
      *v241 = v117;
      type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle(0);
      v274[0] = 1;
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
      v118 = v272;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v119 = v261;
      v272 = v118;
      if (!v118)
      {
        goto LABEL_70;
      }

      goto LABEL_51;
    case 15:
      v274[0] = 15;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2();
      v85 = v256;
      v154 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v154;
      if (v154)
      {
        goto LABEL_60;
      }

      type metadata accessor for NSDecimal(0);
      v274[0] = 0;
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type NSDecimal and conformance NSDecimal, type metadata accessor for NSDecimal, &protocol conformance descriptor for NSDecimal);
      v114 = v260;
      v155 = v272;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v115 = v270;
      v272 = v155;
      if (v155)
      {
        v119 = v261;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala_SS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalfE5StyleVtMd, &_sSo9NSDecimala_SS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalfE5StyleVtMR);
        type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(0);
        v274[0] = 1;
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
        v156 = v272;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v119 = v261;
        v272 = v156;
        if (!v156)
        {
LABEL_70:
          (*(v261 + 8))(v85, v114);
          (*(v115 + 8))(v90, v86);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v207 = v82;
          goto LABEL_74;
        }
      }

LABEL_51:
      (*(v119 + 8))(v85, v114);
LABEL_52:
      (*(v115 + 8))(v90, v86);
      goto LABEL_8;
    case 16:
      v274[0] = 16;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys2 and conformance DefaultAssociatedValueCodingKeys2();
      v107 = v258;
      v108 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v108;
      if (v108)
      {
        goto LABEL_60;
      }

      v109 = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation23LocalizedStringResourceVGMd, &_sSay10Foundation23LocalizedStringResourceVGMR);
      v274[0] = 0;
      lazy protocol witness table accessor for type [LocalizedStringResource] and conformance <A> [A](&lazy protocol witness table cache variable for type [LocalizedStringResource] and conformance <A> [A], lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource, MEMORY[0x1E69E6330]);
      v110 = v260;
      v111 = v272;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v112 = v270;
      v272 = v111;
      if (v111)
      {
        (*(v261 + 8))(v107, v110);
LABEL_64:
        (*(v112 + 8))(v273, v109);
        goto LABEL_8;
      }

      v193 = v280;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ListFormatStyleVyAA06StringD0VSaySSGGMd, &_s10Foundation15ListFormatStyleVyAA06StringD0VSaySSGGMR);
      v286 = 1;
      v194 = v258;
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>, &_s10Foundation15ListFormatStyleVyAA06StringD0VSaySSGGMd, &_s10Foundation15ListFormatStyleVyAA06StringD0VSaySSGGMR, &protocol conformance descriptor for ListFormatStyle<A, B>);
      v195 = v272;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v272 = v195;
      if (v195)
      {

        (*(v261 + 8))(v194, v110);
        goto LABEL_64;
      }

      (*(v261 + 8))(v194, v110);
      (*(v112 + 8))(v273, v109);
      swift_unknownObjectRelease();
      v217 = v274[0];
      v218 = v274[1];
      v129 = v233;
      *v233 = v193;
      *(v129 + 8) = v217;
      *(v129 + 9) = v218;
      *(v129 + 1) = *&v274[8];
LABEL_73:
      swift_storeEnumTagMultiPayload();
      v207 = v129;
LABEL_74:
      v219 = v229;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v207, v229, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v220 = v271;
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v219, v259, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v105 = v220;
      break;
    case 17:
      v274[0] = 17;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v142 = v253;
      v168 = v272;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v272 = v168;
      if (v168)
      {
LABEL_60:
        (*(v270 + 8))(v90, v86);
      }

      else
      {
        v144 = v86;
        lazy protocol witness table accessor for type String.LocalizationValue.Placeholder and conformance String.LocalizationValue.Placeholder();
        v145 = v262;
        v169 = v272;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v147 = v270;
        v272 = v169;
        if (!v169)
        {
          (*(v263 + 8))(v142, v145);
          (*(v147 + 8))(v90, v144);
          swift_unknownObjectRelease();
          v129 = v239;
          *v239 = v274[0];
          goto LABEL_73;
        }

LABEL_55:
        (*(v263 + 8))(v142, v145);
        (*(v147 + 8))(v90, v144);
      }

      goto LABEL_8;
    default:
      goto LABEL_7;
  }

  return __swift_destroy_boxed_opaque_existential_1(v105);
}

uint64_t outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of String.LocalizationValue.FormatArgument.CodableStorage(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _assertValidDecodedFormat(_:validFormatSpecifiers:codingPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  String._bridgeToObjectiveCImpl()();
  String._bridgeToObjectiveCImpl()();
  _CFStringValidateFormat();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t String.LocalizationValue.FormatArgument.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v72 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v72 - v10;
  v12 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v72 - v16;
  v18 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v72 - v22;
  v24 = type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(a1, v26, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v43 = MEMORY[0x1E69E72F0];
      v58 = *v26;
      v59 = MEMORY[0x1E69E7358];
      goto LABEL_17;
    case 2u:
      v43 = MEMORY[0x1E69E7360];
      v44 = *v26;
      v45 = MEMORY[0x1E69E73D8];
      goto LABEL_11;
    case 3u:
      v43 = MEMORY[0x1E69E7668];
      v58 = *v26;
      v59 = MEMORY[0x1E69E76D0];
LABEL_17:
      *(&v75 + 1) = v43;
      *&v76 = v59;
      LODWORD(v74) = v58;
      goto LABEL_25;
    case 4u:
      v43 = MEMORY[0x1E69E76D8];
      v44 = *v26;
      v45 = MEMORY[0x1E69E7738];
LABEL_11:
      *(&v75 + 1) = v43;
      *&v76 = v45;
      *&v74 = v44;
      goto LABEL_25;
    case 5u:
      v43 = MEMORY[0x1E69E6448];
      v61 = *v26;
      *(&v75 + 1) = MEMORY[0x1E69E6448];
      *&v76 = MEMORY[0x1E69E64A8];
      LODWORD(v74) = v61;
      goto LABEL_25;
    case 6u:
      v43 = MEMORY[0x1E69E63B0];
      v64 = *v26;
      *(&v75 + 1) = MEMORY[0x1E69E63B0];
      *&v76 = MEMORY[0x1E69E6438];
      *&v74 = v64;
      goto LABEL_25;
    case 7u:
      v60 = *v26;
      v43 = MEMORY[0x1E69E7DE0];
      *(&v75 + 1) = MEMORY[0x1E69E7DE0];
      *&v76 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *&v74 = v60;
      goto LABEL_25;
    case 8u:
      v68 = *v26;
      v67 = *(v26 + 1);
      v43 = MEMORY[0x1E69E6158];
      *(&v75 + 1) = MEMORY[0x1E69E6158];
      *&v76 = lazy protocol witness table accessor for type String and conformance String();
      *&v74 = v68;
      *(&v74 + 1) = v67;
      goto LABEL_25;
    case 9u:
      v53 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
      v43 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSDate, 0x1E695DF00);
      *(&v75 + 1) = v43;
      *&v76 = lazy protocol witness table accessor for type NSDate and conformance NSObject();
      *&v74 = v53;
LABEL_25:
      v69 = __swift_project_boxed_opaque_existential_1(&v74, v43);
      v70 = v72;
      *(v72 + 24) = v43;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v70);
      (*(*(v43 - 8) + 16))(boxed_opaque_existential_0, v69, v43);
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v73, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      *(v70 + 104) = 0;
      return __swift_destroy_boxed_opaque_existential_1(&v74);
    case 0xAu:
      result = outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v73, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v65 = *(v26 + 1);
      v66 = v72;
      *v72 = *v26;
      *(v66 + 8) = v65;
      *(v66 + 104) = 1;
      return result;
    case 0xBu:
      v38 = *v26;
      v39 = *(v26 + 88);
      v78 = *(v26 + 72);
      v79 = v39;
      v80[0] = *(v26 + 104);
      *(v80 + 10) = *(v26 + 114);
      v40 = *(v26 + 24);
      v74 = *(v26 + 8);
      v75 = v40;
      v41 = *(v26 + 56);
      v76 = *(v26 + 40);
      v77 = v41;
      v42 = v72;
      _sSS10FoundationE17LocalizationValueV14FormatArgumentV7StorageO06StringD7WrapperV_6formatAIx_q_tcs8SendableRz0D5InputQy_RszAA0D5StyleR_sAKR_Sy0D6OutputRp_r0_lufCAA4DateV_AE0nedL0VTt2B5(&v74, v72, v38);
      goto LABEL_8;
    case 0xCu:
      v46 = *v26;
      v47 = *(v26 + 1);
      v48 = *(v26 + 6);
      v78 = *(v26 + 5);
      v79 = v48;
      LOWORD(v80[0]) = *(v26 + 56);
      v49 = *(v26 + 2);
      v74 = *(v26 + 1);
      v75 = v49;
      v50 = *(v26 + 4);
      v76 = *(v26 + 3);
      v77 = v50;
      v42 = v72;
      _sSS10FoundationE17LocalizationValueV14FormatArgumentV7StorageO06StringD7WrapperV_6formatAIx_q_tcs8SendableRz0D5InputQy_RszAA0D5StyleR_sAKR_Sy0D6OutputRp_r0_lufCSnyAA4DateVG_AR08IntervaldL0VTt2B5(&v74, v72, v46, v47);
LABEL_8:
      v51 = type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage;
      v52 = v73;
      goto LABEL_13;
    case 0xDu:
      v62 = *v26;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleVtMd, &_sSi_SS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleVtMR);
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(&v26[*(v63 + 48)], v23, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v23, v20, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
      _sSS10FoundationE17LocalizationValueV14FormatArgumentV_6formatAEx_q_tc0D5InputQy_RszAA0D5StyleR_Sy0D6OutputRp_r0_lufCSi_AE07IntegeredH0VTt2g5(v62, v20, v72);
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v73, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      return outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v23, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
    case 0xEu:
      v36 = *v26;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd_SS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleVtMd, &_sSd_SS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleVtMR);
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(&v26[*(v37 + 48)], v17, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v17, v14, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
      _sSS10FoundationE17LocalizationValueV14FormatArgumentV_6formatAEx_q_tc0D5InputQy_RszAA0D5StyleR_Sy0D6OutputRp_r0_lufCSd_AE013FloatingPointedH0VTt2g5(v14, v72, v36);
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v73, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      return outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v17, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
    case 0xFu:
      v54 = *(v26 + 4);
      v56 = *v26;
      v55 = *(v26 + 1);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala_SS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalfE5StyleVtMd, &_sSo9NSDecimala_SS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalfE5StyleVtMR);
      outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(&v26[*(v57 + 48)], v11, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v11, v8, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
      outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v8, v5, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
      v42 = v72;
      _sSS10FoundationE17LocalizationValueV14FormatArgumentV7StorageO06StringD7WrapperV_6formatAIx_q_tcs8SendableRz0D5InputQy_RszAA0D5StyleR_sAKR_Sy0D6OutputRp_r0_lufCSo9NSDecimala_AE07DecimaledL0VTt2g5(v56, v55, v54, v5, v72);
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v73, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v8, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
      v52 = v11;
      v51 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle;
LABEL_13:
      result = outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v52, v51);
      *(v42 + 104) = 2;
      return result;
    case 0x10u:
      result = outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v73, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v33 = v26[8];
      v34 = v26[9];
      v35 = v72;
      *v72 = *v26;
      *(v35 + 8) = v33;
      *(v35 + 9) = v34;
      *(v35 + 16) = *(v26 + 1);
      *(v35 + 104) = 5;
      return result;
    case 0x11u:
      result = outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v73, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v29 = v72;
      *v72 = *v26;
      v32 = 6;
      goto LABEL_19;
    default:
      result = outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v73, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v28 = *(v26 + 5);
      v29 = v72;
      *(v72 + 64) = *(v26 + 4);
      *(v29 + 80) = v28;
      *(v29 + 96) = *(v26 + 12);
      v30 = *(v26 + 1);
      *v29 = *v26;
      *(v29 + 16) = v30;
      v31 = *(v26 + 3);
      *(v29 + 32) = *(v26 + 2);
      *(v29 + 48) = v31;
      v32 = 4;
LABEL_19:
      *(v29 + 104) = v32;
      return result;
  }
}

uint64_t outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t storeEnumTagSinglePayload for String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t specialized String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x800000018147D940 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x3233746E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x3436746E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x3233746E6975 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x3436746E6975 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74616F6C666763 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000018147D960 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xED00006574614464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x800000018147D980 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xEC000000746E4964 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xEE0074616F6C4664 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x800000018147D9A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xED00007473694C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    return 17;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 18;
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
    return 27;
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

unint64_t String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys.stringValue.getter(char a1)
{
  result = 0x3233746E69;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x3436746E69;
      break;
    case 3:
      result = 0x3233746E6975;
      break;
    case 4:
      result = 0x3436746E6975;
      break;
    case 5:
      result = 0x74616F6C66;
      break;
    case 6:
      result = 0x656C62756F64;
      break;
    case 7:
      result = 0x74616F6C666763;
      break;
    case 8:
      result = 0x676E69727473;
      break;
    case 9:
      result = 1702125924;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
    case 13:
    case 14:
    case 16:
      result = 0x657474616D726F66;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x6C6F686563616C70;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

unint64_t BPlistScanner.scanUTF16BEString(rawTypeMarker:index:objectRangeEndIndex:)(int a1, uint64_t a2, unint64_t a3)
{
  v5 = a2 + 1;
  v12 = a2 + 1;
  if ((~a1 & 0xF) != 0)
  {
    result = a1 & 0xF;
    v9 = a3 - v5;
    if ((a3 - v5) < 0)
    {
LABEL_9:
      lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
      swift_allocError();
      *v11 = xmmword_181247370;
      return swift_willThrow();
    }
  }

  else
  {
    v6 = v3[1];
    v13 = *v3;
    v14 = v6;
    v15 = *(v3 + 4);
    result = BufferReader.readInt(updatingIndex:objectRangeEnd:for:)(&v12, a3, 0x7473203631465455, 0xEC000000676E6972);
    if (v4)
    {
      return result;
    }

    v5 = v12;
    v9 = a3 - v12;
    if ((a3 - v12) < 0)
    {
      goto LABEL_9;
    }
  }

  if (v9 < result)
  {
    goto LABEL_9;
  }

  v10 = 2 * result;
  result = swift_allocObject();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v5 - *(v3 + 5);
    *(result + 24) = v10;
    *(result + 32) = 0;
  }

  return result;
}

void *closure #2 in String.init<A>(bytes:encoding:)@<X0>(uint64_t isStackAllocationSafe@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(_OWORD *, uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, _OWORD *a5@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = (a2 * 3) >> 64;
  v12 = 3 * a2;
  if (v11 == v12 >> 63)
  {
    if (v12 < 0)
    {
      __break(1u);
    }

    v5 = a4;
    v7 = a3;
    v8 = isStackAllocationSafe;
    if (v12 <= 1024)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  v15 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    a5 = swift_slowAlloc();
    v5(a5, v15, v8, a2, v7);
    v16 = v6;
    if (!v6)
    {
      return MEMORY[0x1865D2690](a5, -1, -1);
    }

    goto LABEL_13;
  }

LABEL_4:
  v13 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  result = (v5)(&v17, v13);
  if (v6)
  {
    v16 = v6;
    swift_willThrow();

    __break(1u);
LABEL_13:

    result = MEMORY[0x1865D2690](a5, -1, -1);
    __break(1u);
    return result;
  }

  *a5 = v17;
  return result;
}

uint64_t closure #1 in closure #2 in String.init<A>(bytes:encoding:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t *a5@<X8>)
{
  v6 = 0;
  v7 = 0;
  v8 = a3 + a2;
  if (!a2)
  {
    v8 = 0;
  }

  v28 = a2;
  v29 = v8;
  v30 = a4;
  v31 = 0;
  v32 = 0;
  for (i = 0; ; v6 = i)
  {
    if (v6)
    {
      v10 = v32;
      if ((v32 & 0xF800) != 0xD800)
      {
        lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser();
        v9 = WeekendRange.onsetTime.modify();
        v21 = *(v20 + 4);
        if (!v21)
        {
          goto LABEL_51;
        }

        *v20 = *(v20 + 2);
        *(v20 + 4) = v21 - 16;
        v9 = (v9)(v27, 0);
        v10 = v10;
        v12 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      v9 = specialized UTF16EndianAdaptor.Iterator.next()();
      if ((v9 & 0x10000) != 0)
      {
        goto LABEL_46;
      }

      if ((v9 & 0xF800) != 0xD800)
      {
        v10 = v9;
        v12 = 1;
        goto LABEL_27;
      }

      v10 = v9 & 0xDFFF | (HIWORD(v32) << 16);
      v6 = 16;
    }

    v9 = specialized UTF16EndianAdaptor.Iterator.next()();
    if ((v9 & 0x10000) != 0)
    {
      break;
    }

    v10 = ((-65535 << v6) - 1) & v10 | (v9 << v6);
    v11 = v6 + 16;
    if ((v6 + 16) <= 0x1Fu)
    {
      v9 = specialized UTF16EndianAdaptor.Iterator.next()();
      if ((v9 & 0x10000) != 0)
      {
        goto LABEL_17;
      }

      v10 = ((-65535 << v11) - 1) & v10 | (v9 << v11);
      v11 = v6 + 32;
      if (v6 >= 0xE0u)
      {
        v9 = specialized UTF16EndianAdaptor.Iterator.next()();
        if ((v9 & 0x10000) != 0)
        {
          goto LABEL_17;
        }

        v10 = ((-65535 << v6) - 1) & v10 | (v9 << v6);
        v11 = v6 + 48;
      }
    }

LABEL_18:
    v13 = v10 & 0xFC00FC00;
    if ((v10 & 0xFC00FC00) == 0xDC00D800)
    {
      v14 = 32;
    }

    else
    {
      v14 = 16;
    }

    i = v11 - v14;
    v15 = v13 == -603924480;
    if (v13 == -603924480)
    {
      v16 = 32;
    }

    else
    {
      v16 = 16;
    }

    v32 = v10 >> v16;
    if (!v15)
    {
      goto LABEL_49;
    }

    v12 = 0;
LABEL_27:
    if (v10 >= 0x80u)
    {
      v22 = (v10 & 0x3F) << 8;
      if (v10 >= 0x800u)
      {
        if ((v10 & 0xF800) == 0xD800)
        {
          if (v12)
          {
            if (v10 > 0x7Fu)
            {
              v24 = (v10 & 0x3F) << 8;
              v17 = ((v10 >> 12) | ((v24 | (v10 >> 6) & 0x3F) << 8)) + 8487393;
              if (v10 < 0x800u)
              {
                v17 = (v10 >> 6) + v24 + 33217;
              }
            }

            else
            {
              v17 = v10 + 1;
            }
          }

          else
          {
            v23 = ((v10 & 0x3FF) << 10) | HIWORD(v10) & 0x3FF;
            v17 = (((v23 + 0x10000) >> 4) & 0x3F00 | ((v23 + 0x10000) >> 18) | (((v23 >> 6) & 0x3F | (((v23 + 0x10000) & 0x3F) << 8)) << 16)) - 2122219023;
          }
        }

        else
        {
          v17 = (((v22 | (v10 >> 6) & 0x3F) << 8) | (v10 >> 12)) + 8487393;
        }
      }

      else
      {
        v17 = v22 + (v10 >> 6) + 33217;
      }

LABEL_29:
      while (1)
      {
        *(result + v7) = v17 - 1;
        v18 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        ++v7;
        v19 = v17 >= 0x100;
        v17 >>= 8;
        if (!v19)
        {
          v7 = v18;
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_49:
      *a5 = 0;
      a5[1] = 0;
      return v9;
    }

    v17 = (v10 + 1);
    if (v10 != 0xFF)
    {
      goto LABEL_29;
    }

LABEL_4:
    ;
  }

  v11 = v6;
LABEL_17:
  if (v11)
  {
    goto LABEL_18;
  }

LABEL_46:
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = static String._tryFromUTF8(_:)();
    *a5 = v9;
    a5[1] = v25;
    return v9;
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return v9;
}

uint64_t specialized UTF16EndianAdaptor.Iterator.next()()
{
  v1 = *v0;
  if (*(v0 + 17))
  {
    if (!v1)
    {
LABEL_9:
      v4 = 1;
      return v1 | (v4 << 16);
    }

    goto LABEL_3;
  }

  v4 = 1;
  *(v0 + 17) = 1;
  if (v1)
  {
    v5 = v0[1];
    if (v1 == v5)
    {
      goto LABEL_8;
    }

    v7 = v1 + 1;
    *v0 = v1 + 1;
    v8 = *v1;
    if (v8 <= 0xFD)
    {
      if (v7 != v5)
      {
        *v0 = v1 + 2;
        LODWORD(v1) = v8 | (v1[1] << 8);
        goto LABEL_19;
      }

      goto LABEL_8;
    }

    if (v7 == v5)
    {
LABEL_8:
      LOWORD(v1) = 0;
      goto LABEL_9;
    }

    v9 = v1 + 2;
    *v0 = v1 + 2;
    v10 = v1[1];
    if (v8 == 255 && v10 == 254)
    {
      LODWORD(v1) = *(v0 + 16);
      if (v1 == 2)
      {
        *(v0 + 16) = 0;
LABEL_26:
        v1 = v9;
LABEL_3:
        v2 = v0[1];
        if (v1 != v2)
        {
          *v0 = v1 + 1;
          if (v1 + 1 != v2)
          {
            v3 = *v1;
            *v0 = v1 + 2;
            LODWORD(v1) = v3 | (v1[1] << 8);
LABEL_19:
            v11 = *(v0 + 16);
            if (v11 == 2 || (v11 & 1) != 0)
            {
              v4 = 0;
              LODWORD(v1) = bswap32(v1) >> 16;
              return v1 | (v4 << 16);
            }

LABEL_30:
            v4 = 0;
            return v1 | (v4 << 16);
          }
        }

        goto LABEL_8;
      }

      v4 = 0;
      v13 = (v1 & 1) == 0;
      LOWORD(v1) = -257;
      v14 = -2;
    }

    else
    {
      if (v8 != 254 || v10 != 255)
      {
        LODWORD(v1) = v8 | (v10 << 8);
        v12 = *(v0 + 16);
        if (v12 == 2 || (v12 & 1) != 0)
        {
          v4 = 0;
          LOWORD(v1) = __rev16(v1);
          return v1 | (v4 << 16);
        }

        goto LABEL_30;
      }

      LODWORD(v1) = *(v0 + 16);
      if (v1 == 2)
      {
        *(v0 + 16) = 1;
        goto LABEL_26;
      }

      v4 = 0;
      v13 = (v1 & 1) == 0;
      LOWORD(v1) = -2;
      v14 = -257;
    }

    if (!v13)
    {
      LOWORD(v1) = v14;
    }
  }

  return v1 | (v4 << 16);
}

{
  if (*(v0 + 41) == 1)
  {
    v1 = *(v0 + 8);
    v2 = *(v0 + 32);
LABEL_3:
    if (v2 != v1)
    {
      v3 = *(v0 + 16);
      v4 = *(v3 + v2);
      *(v0 + 32) = v2 + 1;
      if (v2 + 1 != v1)
      {
        v5 = *(v3 + v2 + 1);
        *(v0 + 32) = v2 + 2;
        v6 = *(v0 + 40);
        v7 = v4 | (v5 << 8);
        if (v6 != 2 && (v6 & 1) == 0)
        {
LABEL_28:
          v8 = 0;
          return v7 | (v8 << 16);
        }

        goto LABEL_20;
      }
    }

    goto LABEL_17;
  }

  v8 = 1;
  *(v0 + 41) = 1;
  v1 = *(v0 + 8);
  v9 = *(v0 + 32);
  if (v9 == v1)
  {
    LOWORD(v7) = 0;
  }

  else
  {
    v10 = *(v0 + 16);
    v11 = *(v10 + v9);
    v12 = v9 + 1;
    *(v0 + 32) = v9 + 1;
    if (v11 < 0xFE)
    {
      if (v12 != v1)
      {
        v15 = v9 + 2;
        v16 = *(v10 + v12);
        *(v0 + 32) = v15;
        v17 = *(v0 + 40);
        v7 = v11 | (v16 << 8);
        if (v17 != 2 && (v17 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_20:
        v8 = 0;
        v7 = bswap32(v7) >> 16;
        return v7 | (v8 << 16);
      }

      goto LABEL_17;
    }

    if (v12 == v1)
    {
LABEL_17:
      LOWORD(v7) = 0;
      v8 = 1;
      return v7 | (v8 << 16);
    }

    v13 = *(v10 + v12);
    v2 = v9 + 2;
    *(v0 + 32) = v9 + 2;
    if (v11 == 255 && v13 == 254)
    {
      v14 = *(v0 + 40);
      if (v14 == 2)
      {
        *(v0 + 40) = 0;
        goto LABEL_3;
      }

      v8 = 0;
      if (v14)
      {
        LOWORD(v7) = -2;
      }

      else
      {
        LOWORD(v7) = -257;
      }
    }

    else
    {
      v18 = *(v0 + 40);
      if (v11 == 254 && v13 == 255)
      {
        if (v18 == 2)
        {
          *(v0 + 40) = 1;
          goto LABEL_3;
        }

        v8 = 0;
        if (v18)
        {
          LOWORD(v7) = -257;
        }

        else
        {
          LOWORD(v7) = -2;
        }
      }

      else
      {
        v7 = v11 | (v13 << 8);
        if (v18 != 2 && (v18 & 1) == 0)
        {
          goto LABEL_28;
        }

        v8 = 0;
        LOWORD(v7) = __rev16(v7);
      }
    }
  }

  return v7 | (v8 << 16);
}

{
  if (*(v0 + 65))
  {
LABEL_2:
    v1 = Data.Iterator.next()();
    if ((*&v1 & 0x100) != 0)
    {
      goto LABEL_17;
    }

    value = v1.value;
    LOWORD(v3) = Data.Iterator.next()();
    if ((v3 & 0x100) != 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v8 = value | (v3 << 8);
    v9 = *(v0 + 64);
    if (v9 == 2 || (v9 & 1) != 0)
    {
LABEL_16:
      v4 = 0;
      v8 = bswap32(v8) >> 16;
      return v8 | (v4 << 16);
    }

LABEL_25:
    v4 = 0;
    return v8 | (v4 << 16);
  }

  v4 = 1;
  *(v0 + 65) = 1;
  v5 = Data.Iterator.next()();
  if ((*&v5 & 0x100) != 0)
  {
    LOWORD(v8) = 0;
    return v8 | (v4 << 16);
  }

  value = v5.value;
  v6 = v5.value;
  LOWORD(v3) = Data.Iterator.next()();
  if (v6 < 0xFE)
  {
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    LOWORD(v8) = 0;
    v4 = 1;
    return v8 | (v4 << 16);
  }

  if ((v3 & 0x100) != 0)
  {
    goto LABEL_17;
  }

  if (v6 == 255 && v3 == 254)
  {
    v7 = *(v0 + 64);
    if (v7 == 2)
    {
      *(v0 + 64) = 0;
      goto LABEL_2;
    }

    v4 = 0;
    if (v7)
    {
      LOWORD(v8) = -2;
    }

    else
    {
      LOWORD(v8) = -257;
    }
  }

  else
  {
    if (v6 != 254 || v3 != 255)
    {
      v8 = value | (v3 << 8);
      v12 = *(v0 + 64);
      if (v12 == 2 || (v12 & 1) != 0)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }

    v11 = *(v0 + 64);
    if (v11 == 2)
    {
      *(v0 + 64) = 1;
      goto LABEL_2;
    }

    v4 = 0;
    if (v11)
    {
      LOWORD(v8) = -257;
    }

    else
    {
      LOWORD(v8) = -2;
    }
  }

  return v8 | (v4 << 16);
}

{
  if (*(v0 + 17))
  {
LABEL_2:
    v1 = *v0;
    if (*v0 >= v0[1])
    {
      goto LABEL_17;
    }

    v2 = *v1;
    *v0 = v1 + 1;
    v3 = specialized BufferViewIterator.next()();
    if ((v3 & 0x100) != 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v7 = v2 | (v3 << 8);
    v8 = *(v0 + 16);
    if (v8 == 2 || (v8 & 1) != 0)
    {
LABEL_16:
      v4 = 0;
      v7 = bswap32(v7) >> 16;
      return v7 | (v4 << 16);
    }

LABEL_25:
    v4 = 0;
    return v7 | (v4 << 16);
  }

  v4 = 1;
  *(v0 + 17) = 1;
  v5 = *v0;
  if (*v0 >= v0[1])
  {
    LOWORD(v7) = 0;
    return v7 | (v4 << 16);
  }

  v2 = *v5;
  *v0 = v5 + 1;
  v3 = specialized BufferViewIterator.next()();
  if (v2 <= 0xFD)
  {
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    LOWORD(v7) = 0;
    v4 = 1;
    return v7 | (v4 << 16);
  }

  if ((v3 & 0x100) != 0)
  {
    goto LABEL_17;
  }

  if (v2 == 255 && v3 == 254)
  {
    v6 = *(v0 + 16);
    if (v6 == 2)
    {
      *(v0 + 16) = 0;
      goto LABEL_2;
    }

    v4 = 0;
    if (v6)
    {
      LOWORD(v7) = -2;
    }

    else
    {
      LOWORD(v7) = -257;
    }
  }

  else
  {
    if (v2 != 254 || v3 != 255)
    {
      v7 = v2 | (v3 << 8);
      v11 = *(v0 + 16);
      if (v11 == 2 || (v11 & 1) != 0)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }

    v10 = *(v0 + 16);
    if (v10 == 2)
    {
      *(v0 + 16) = 1;
      goto LABEL_2;
    }

    v4 = 0;
    if (v10)
    {
      LOWORD(v7) = -257;
    }

    else
    {
      LOWORD(v7) = -2;
    }
  }

  return v7 | (v4 << 16);
}

uint64_t specialized Rope.builder<A>(removing:in:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  ++v3[3];
  v5 = *v3;
  if (*v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (result < 0 || v6 < a2)
  {
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (result == a2)
  {

    return specialized Rope.builder<A>(splittingAt:in:)(result, a3);
  }

  v8 = v3[1];
  v70 = v4;
  *v71 = MEMORY[0x1E69E7CC0];
  memset(&v71[8], 0, 72);
  v72 = MEMORY[0x1E69E7CC0];
  v68 = v5;
  v69 = v8;
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  v9 = result;
  v66 = a2;
  v67 = result;
  while (1)
  {
    v10 = (v5 + 16);
    if (!*(v5 + 18))
    {
      v17 = v5 + 24;
      result = specialized closure #2 in Rope.builder<A>(removing:in:)(v5 + 16, (v5 + 24), &v67, v9, a2);
      v19 = result;
      v14 = v20;
      v16 = v21;
      v22 = v69;
      v23 = v70;
      if (result < v18)
      {
        if (result < 0)
        {
          goto LABEL_64;
        }

        v24 = v18;
        swift_unknownObjectRetain_n();
        specialized Rope.Builder._insertBeforeTip(slots:in:)(0, v19, v5);
        result = swift_unknownObjectRelease();
        v25 = *v10;
        if (v24 < v25)
        {
          swift_unknownObjectRetain();
          specialized Rope.Builder._insertAfterTip(slots:in:)(v24 + 1, v25, v5);
          result = swift_unknownObjectRelease();
        }

        if (*(v5 + 18))
        {
          v26 = (v17 + 24 * v19);
          v27 = *v26;
          v28 = v26[1];
          v29 = v26[2];
          v30 = (v17 + 24 * v24);
          goto LABEL_32;
        }

        if (((v14 | v16) & 0x8000000000000000) == 0)
        {
          v46 = (v17 + 24 * v19);
          v47 = (v17 + 24 * v24);
          v48 = *v47;
          if (*v46 >= v14 && v48 >= v16)
          {
            v50 = v46[1];
            v51 = v46[2];
            v52 = v47[1];
            v53 = v47[2];
            if (v14)
            {
              v54 = *&v71[32];
              v55 = *&v71[40];
              memset(&v71[32], 0, 24);
              if (v55)
              {
                v63 = v54;
                swift_bridgeObjectRetain_n();
                swift_bridgeObjectRetain_n();

                specialized Rope.Builder._appendNow(_:)(v63, v55, *(&v55 + 1));
                outlined consume of Rope<AttributedString._InternalRun>._Item?(*&v71[32], *&v71[40], *&v71[48]);
                *&v71[32] = v14;
                *&v71[40] = v50;
                *&v71[48] = v51;
LABEL_54:
                result = v48 - v16;
                if (!__OFSUB__(v48, v16))
                {
                  goto LABEL_60;
                }

                __break(1u);
                goto LABEL_57;
              }

              *&v71[32] = v14;
              *&v71[40] = v50;
              *&v71[48] = v51;
              swift_bridgeObjectRetain_n();
              swift_bridgeObjectRetain_n();
            }

            else
            {
            }

            goto LABEL_54;
          }
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      swift_unknownObjectRetain();
      result = specialized Rope._Node._leafSplit(at:into:)(v19, v71, v5, v22, v23);
      if ((v16 & 0x8000000000000000) == 0)
      {
        v33 = result - v16;
        if (result >= v16)
        {
          v34 = v31;
          v35 = v32;

          result = specialized Rope.Builder._insertAfterTip(_:)(v33, v34, v35);
          if (v14 > v16)
          {
            goto LABEL_66;
          }

          if (v14)
          {
            v36 = *&v71[32];
            v37 = *&v71[40];
            memset(&v71[32], 0, 24);
            if (v37)
            {
              specialized Rope.Builder._appendNow(_:)(v36, v37, *(&v37 + 1));
              outlined consume of Rope<AttributedString._InternalRun>._Item?(*&v71[32], *&v71[40], *&v71[48]);
            }

            result = swift_unknownObjectRelease();
            *&v71[32] = v14;
            *&v71[40] = v34;
            *&v71[48] = v35;
            goto LABEL_62;
          }

          swift_unknownObjectRelease();
          goto LABEL_61;
        }
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v11 = v5 + 24;
    result = specialized closure #1 in Rope.builder<A>(removing:in:)(v5 + 16, v5 + 24, &v67, &v66);
    v14 = v13;
    v16 = v15;
    if (result < v12)
    {
      break;
    }

    specialized Rope._Node._innerSplit(at:into:)(result, v71);
    v66 = v16;
    v67 = v14;
    v5 = v68;
  }

  if (result < 0)
  {
    goto LABEL_67;
  }

  v38 = v12;
  v39 = result;
  swift_unknownObjectRetain_n();
  specialized Rope.Builder._insertBeforeTip(slots:in:)(0, v39, v5);
  result = swift_unknownObjectRelease();
  v40 = *v10;
  v41 = v38;
  if (v38 < v40)
  {
    swift_unknownObjectRetain();
    specialized Rope.Builder._insertAfterTip(slots:in:)(v38 + 1, v40, v5);
    result = swift_unknownObjectRelease();
    v41 = v38;
  }

  if (*(v5 + 18))
  {
    v42 = (v11 + 24 * v39);
    v27 = *v42;
    v28 = v42[1];
    v29 = v42[2];
    v30 = (v11 + 24 * v41);
LABEL_32:
    v43 = *v30;
    v44 = v30[1];
    v45 = v30[2];
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    specialized Rope._Node.removeSuffix<A>(from:in:into:)(v14, v71, v27, v28, v29);
    specialized Rope._Node.removePrefix<A>(upTo:in:into:)(v16, v71, v43, v44, v45);
    swift_unknownObjectRelease_n();
    result = swift_unknownObjectRelease();
LABEL_62:
    v61 = *&v71[48];
    *(a3 + 32) = *&v71[32];
    *(a3 + 48) = v61;
    *(a3 + 64) = *&v71[64];
    *(a3 + 80) = v72;
    v62 = *&v71[16];
    *a3 = *v71;
    *(a3 + 16) = v62;
    return result;
  }

  if (((v14 | v16) & 0x8000000000000000) == 0)
  {
    v56 = (v11 + 24 * v39);
    v57 = (v11 + 24 * v41);
    v48 = *v57;
    if (*v56 >= v14 && v48 >= v16)
    {
      v50 = v56[1];
      v51 = v56[2];
      v52 = v57[1];
      v53 = v57[2];
      if (v14)
      {
        v59 = *&v71[32];
        v60 = *&v71[40];
        memset(&v71[32], 0, 24);
        if (v60)
        {
          v64 = v59;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();

          specialized Rope.Builder._appendNow(_:)(v64, v60, *(&v60 + 1));
          outlined consume of Rope<AttributedString._InternalRun>._Item?(*&v71[32], *&v71[40], *&v71[48]);
          *&v71[32] = v14;
          *&v71[40] = v50;
          *&v71[48] = v51;
LABEL_59:
          result = v48 - v16;
          if (__OFSUB__(v48, v16))
          {
            goto LABEL_70;
          }

LABEL_60:
          specialized Rope.Builder._insertAfterTip(_:)(result, v52, v53);
          swift_unknownObjectRelease_n();
LABEL_61:

          goto LABEL_62;
        }

LABEL_57:
        *&v71[32] = v14;
        *&v71[40] = v50;
        *&v71[48] = v51;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
      }

      else
      {
      }

      goto LABEL_59;
    }
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t specialized Rope._Node._leafSplit(at:into:)(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a5;
  v8 = a3;
  v57 = a3;
  v59 = a5;
  swift_unknownObjectRetain();
  if (swift_isUniquelyReferenced_nonNull())
  {
    v11 = v8;
  }

  else
  {
    v11 = specialized Rope._Node.copy()(v8);
    a4 = v12;
    v6 = v13;
    swift_unknownObjectRelease();
    v57 = v11;
    v59 = v6;
  }

  if (*(v11 + 16) - 2 != a1)
  {
    swift_unknownObjectRelease();
    if (a1 != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  v14 = *(v8 + 16);
  swift_unknownObjectRelease();
  v15 = v14 - 1;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v16 = specialized Rope._Node.copy()(v11);
    a4 = v17;
    v6 = v18;
    swift_unknownObjectRelease();
    v57 = v16;
    v58 = a4;
    v11 = v16;
    v59 = v6;
  }

  swift_unknownObjectRetain();
  v8 = specialized Rope._UnsafeHandle._removeChild(at:)(v15, (v11 + 16), v11 + 24);
  v20 = v19;
  v22 = v21;
  swift_unknownObjectRelease();
  v23 = __OFSUB__(a4, 1);
  a4 = (a4 - 1);
  if (v23)
  {
    goto LABEL_42;
  }

  v23 = __OFSUB__(v6, v8);
  v6 -= v8;
  if (v23)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v24 = v8;
  v8 = a2;
  specialized Rope.Builder._insertAfterTip(_:)(v24, v20, v22);
  if (a1 == 1)
  {
LABEL_12:
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v8 = specialized Rope._Node.copy()(v11);
      a4 = v25;
      v6 = v26;
      swift_unknownObjectRelease();
      v57 = v8;
      v58 = a4;
      v11 = v8;
      v59 = v6;
    }

    swift_unknownObjectRetain();
    v5 = specialized Rope._UnsafeHandle._removeChild(at:)(0, (v11 + 16), v11 + 24);
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    v23 = __OFSUB__(a4, 1);
    a4 = (a4 - 1);
    if (v23)
    {
      goto LABEL_43;
    }

    v23 = __OFSUB__(v6, v5);
    v6 -= v5;
    if (v23)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4[2] + 1, 1, a4);
      goto LABEL_31;
    }

    if (v5)
    {
      v31 = a2[4];
      v32 = a2[5];
      v33 = a2[6];
      a2[5] = 0;
      a2[6] = 0;
      a2[4] = 0;
      if (v32)
      {
        specialized Rope.Builder._appendNow(_:)(v31, v32, v33);
        outlined consume of Rope<AttributedString._InternalRun>._Item?(a2[4], a2[5], a2[6]);
      }

      a1 = 0;
      a2[4] = v5;
      a2[5] = v28;
      a2[6] = v30;
    }

    else
    {

      a1 = 0;
    }
  }

LABEL_21:
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v34 = specialized Rope._Node.copy()(v11);
    a4 = v35;
    v6 = v36;
    swift_unknownObjectRelease();
    v57 = v34;
    v11 = v34;
  }

  swift_unknownObjectRetain();
  v5 = specialized Rope._UnsafeHandle._removeChild(at:)(a1, (v11 + 16), v11 + 24);
  swift_unknownObjectRelease();
  v8 = a4 - 1;
  if (__OFSUB__(a4, 1))
  {
    __break(1u);
    goto LABEL_41;
  }

  v58 = (a4 - 1);
  v23 = __OFSUB__(v6, v5);
  v6 -= v5;
  if (v23)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v59 = v6;
  if (!*(v11 + 16))
  {
    swift_unknownObjectRelease();
    return v5;
  }

  if (a1)
  {
    if (a1 == *(v11 + 16))
    {
      specialized Rope.Builder._insertBeforeTip(_:)(v11, a4 - 1, v6);
    }

    else
    {
      v40 = specialized Rope._Node.split(keeping:)(a1);
      v55 = v41;
      v43 = v42;
      v44 = swift_unknownObjectRetain();
      v45 = specialized Rope.Builder._insertBeforeTip(_:)(v44, v58, v59);
      v56 = 0;
      MEMORY[0x1865D26B0](&v56, 8, v45);
      v46 = v56;
      v47 = a2[10];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
      }

      v49 = v47[2];
      v48 = v47[3];
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v47);
        v50 = v49 + 1;
        v47 = v53;
      }

      v47[2] = v50;
      v51 = &v47[4 * v49];
      v51[4] = v40;
      v51[5] = v55;
      v51[6] = v43;
      v51[7] = v46;
      swift_unknownObjectRelease();
      a2[10] = v47;
    }

    return v5;
  }

  v56 = 0;
  swift_unknownObjectRetain();
  MEMORY[0x1865D26B0](&v56, 8);
  a4 = a2[10];
  v54 = v56;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_31:
  v38 = a4[2];
  v37 = a4[3];
  if (v38 >= v37 >> 1)
  {
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, a4);
  }

  a4[2] = v38 + 1;
  v39 = &a4[4 * v38];
  v39[4] = v11;
  v39[5] = v8;
  v39[6] = v6;
  v39[7] = v54;
  swift_unknownObjectRelease();
  a2[10] = a4;
  return v5;
}

uint64_t specialized Rope.Builder._insertAfterTip(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v6 = v3;
    v7 = result;
    v8 = v3[8];
    if (!v8)
    {
LABEL_19:
      v6[7] = v7;
      v6[8] = a2;
      v6[9] = a3;
      return result;
    }

    v9 = v3[7];
    v11 = v3[9];
    v10 = v3[10];
    v12 = v10[2];
    if (v12)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      }

      if (v12 <= v10[2])
      {
        v13 = &v10[4 * v12];
        ++v13[3];
        if (*v13)
        {
          v14 = *(*v13 + 18);
        }

        else
        {
          v14 = 0;
        }

        specialized Rope.insert(_:at:)(v9, v8, v11, v14);

LABEL_18:
        v6[10] = v10;
        goto LABEL_19;
      }

      __break(1u);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMd, &_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 18) = 0;
      v22[0] = v15;

      specialized Rope._Node._appendItem(_:)(v9, v8, v11);
      v20 = 0;
      v21 = v22[0];
      v19 = 0;
      memset(v22, 0, sizeof(v22));
      MEMORY[0x1865D26B0](v22, 8);
      v9 = v22[0];
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_13:
        v17 = v10[2];
        v16 = v10[3];
        if (v17 >= v16 >> 1)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v10);
        }

        v10[2] = v17 + 1;
        v18 = &v10[4 * v17];
        v18[4] = v21;
        v18[5] = v20;
        v18[6] = v19;
        v18[7] = v9;
        goto LABEL_18;
      }
    }

    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
    goto LABEL_13;
  }
}

void specialized AttributedString.append<A>(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v19 = *(*v1 + 24);
  v20 = v4;
  v21 = *(v3 + 56);
  v5 = BigString.endIndex.getter();
  v6 = *(v3 + 16);
  *&v10 = v5;
  *(&v10 + 1) = v7;
  v11 = v8;
  v12 = v9;
  v13 = v6;
  v14 = v5;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v6;
  specialized AttributedString.replaceSubrange<A, B>(_:with:)(&v10, a1);
}

void specialized AttributedString.replaceSubrange<A, B>(_:with:)(_OWORD *a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v7 + 40);
    v24 = *(v7 + 24);
    v25 = v8;
    v26 = *(v7 + 56);
    v9 = *(v7 + 72);
    v10 = *(v7 + 80);
    v11 = *(v7 + 88);
    v12 = *(v7 + 96);
    type metadata accessor for AttributedString.Guts();
    v7 = swift_allocObject();
    v13 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v24, v23);
    v14 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v14);
    if (v9)
    {
      v15 = v11 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = v15;
    if (v16 == v13)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v18 = v25;
        *(v7 + 24) = v24;
        *(v7 + 16) = add_explicit;
        *(v7 + 40) = v18;
        *(v7 + 56) = v26;
        *(v7 + 72) = v9;
        *(v7 + 80) = v10;
        *(v7 + 88) = v11;
        *(v7 + 96) = v12;
        *(v7 + 104) = MEMORY[0x1E69E7CC0];

        *v3 = v7;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (one-time initialization token for _nextVersion != -1)
  {
    swift_once();
  }

  *(v7 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v19 = *(v7 + 40);
  v23[0] = *(v7 + 24);
  v23[1] = v19;
  v23[2] = *(v7 + 56);
  BigString.startIndex.getter();
  BigString.endIndex.getter();
  v20 = a1[1];
  v22[0] = *a1;
  v22[1] = v20;
  v21 = *(a1 + 56);
  v22[2] = *(a1 + 40);
  v22[3] = v21;
  specialized AttributedString.Guts.replaceSubrange<A>(_:with:)(v22, a2);
}

{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v7 + 40);
    v24 = *(v7 + 24);
    v25 = v8;
    v26 = *(v7 + 56);
    v9 = *(v7 + 72);
    v10 = *(v7 + 80);
    v11 = *(v7 + 88);
    v12 = *(v7 + 96);
    type metadata accessor for AttributedString.Guts();
    v7 = swift_allocObject();
    v13 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v24, v23);
    v14 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v14);
    if (v9)
    {
      v15 = v11 == 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = v15;
    if (v16 == v13)
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_10:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v18 = v25;
        *(v7 + 24) = v24;
        *(v7 + 16) = add_explicit;
        *(v7 + 40) = v18;
        *(v7 + 56) = v26;
        *(v7 + 72) = v9;
        *(v7 + 80) = v10;
        *(v7 + 88) = v11;
        *(v7 + 96) = v12;
        *(v7 + 104) = MEMORY[0x1E69E7CC0];

        *v3 = v7;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  if (one-time initialization token for _nextVersion != -1)
  {
    swift_once();
  }

  *(v7 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v19 = *(v7 + 40);
  v23[0] = *(v7 + 24);
  v23[1] = v19;
  v23[2] = *(v7 + 56);
  BigString.startIndex.getter();
  BigString.endIndex.getter();
  v20 = a1[1];
  v22[0] = *a1;
  v22[1] = v20;
  v21 = *(a1 + 56);
  v22[2] = *(a1 + 40);
  v22[3] = v21;
  specialized AttributedString.Guts.replaceSubrange<A>(_:with:)(v22, a2);
}

void specialized AttributedString.Guts.replaceSubrange<A>(_:with:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v72[0] = *(a2 + 24);
  v72[1] = v4;
  v72[2] = *(a2 + 56);
  v6 = *(a2 + 56);
  v5 = *(a2 + 64);
  v33 = *(a2 + 40);
  v36 = *(a2 + 24);
  v60 = BigString.startIndex.getter();
  v61 = v7;
  v62 = v8;
  v9 = v2;
  v63 = v10;
  v64 = BigString.endIndex.getter();
  v65 = v11;
  v66 = v12;
  v67 = v13;
  v68 = v36;
  v69 = v33;
  v70 = v6;
  v71 = v5;

  outlined init with copy of BigString(v72, v47);
  BigString.UnicodeScalarView.subscript.getter();
  outlined destroy of BigString(v72);
  outlined destroy of BigSubstring.UnicodeScalarView(v41);
  v40[7] = v42;
  v40[8] = v43;
  v40[9] = v44;
  v40[10] = v45;
  v74 = v42;
  v75 = v43;
  v76 = v44;
  v77 = v45;
  v73 = a2;
  v78 = 0;
  v14 = *(a2 + 56);
  v15 = *(a2 + 64);
  v37 = *(a2 + 24);
  v34 = *(a2 + 40);
  swift_unknownObjectRetain();
  outlined destroy of AttributedString.UnicodeScalarView(&v73);
  v50 = v74;
  v51 = v75;
  v52 = v76;
  v53 = v77;
  v47[0] = v37;
  v47[1] = v34;
  v48 = v14;
  v49 = v15;
  v16 = *(v9 + 40);
  v17 = *(v9 + 56);
  v57 = *(v9 + 24);
  v58 = v16;
  v59 = v17;
  swift_unknownObjectRetain();
  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();
  LOBYTE(v14) = BigSubstring.UnicodeScalarView.isIdentical(to:)();
  outlined destroy of BigSubstring.UnicodeScalarView(v46);
  v18 = v50 >> 11;
  v19 = v52 >> 11;
  v20 = *a1 >> 11;
  v21 = a1[4] >> 11;
  if (v14)
  {

    specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v20, v21, a2, v18, v19);
    v22 = v20;
    v23 = v21;
    v24 = 0;
LABEL_7:
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v22, v23, v24, 0);
    outlined destroy of BigSubstring.UnicodeScalarView(v47);

    return;
  }

  v35 = AttributedString.Guts.enforceAttributeConstraintsBeforeMutation(to:)(v20, v21);
  v38 = v25;
  AttributedString.Guts._prepareTrackedIndicesUpdate(mutationRange:)(a1);
  v26 = *(v9 + 40);
  v54 = *(v9 + 24);
  v55 = v26;
  v56 = *(v9 + 56);
  v27 = BigString.UTF8View.count.getter();
  outlined init with copy of BigSubstring.UnicodeScalarView(v47, v40);
  v28 = BigString.unicodeScalars.modify();
  BigString.UnicodeScalarView.replaceSubrange(_:with:)();
  v28(v40, 0);
  specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v20, v21, a2, v18, v19);
  v29 = *(v9 + 40);
  v40[0] = *(v9 + 24);
  v40[1] = v29;
  v40[2] = *(v9 + 56);
  v30 = BigString.UTF8View.count.getter();
  v31 = __OFSUB__(v30, v27);
  v32 = v30 - v27;
  if (v31)
  {
    __break(1u);
    goto LABEL_9;
  }

  AttributedString.Guts._finalizeTrackedIndicesUpdate(mutationStartOffset:isInsertion:utf8LengthDelta:)(v20, v20 == v21, v32);
  v23 = v38 + v32;
  if (__OFADD__(v38, v32))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = v35;
  if (v23 >= v35)
  {
    v24 = 1;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

{
  v3 = v2;
  v6 = *a2;
  v7 = *(a2 + 24);
  v39 = *(a2 + 8);
  v40 = v7;
  v8 = *(a2 + 56);
  v41 = *(a2 + 40);
  v42 = v8;
  v9 = *(v6 + 40);
  v56 = *(v6 + 24);
  v57 = v9;
  v58 = *(v6 + 56);
  outlined init with copy of AttributedSubstring(a2, v43);
  swift_unknownObjectRetain();
  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();
  outlined destroy of BigSubstring.UnicodeScalarView(v33);
  v32[7] = v34;
  v32[8] = v35;
  v32[9] = v36;
  v32[10] = v37;
  v63 = v37;
  v62 = v36;
  v61 = v35;
  v60 = v34;
  v59 = v6;
  v64 = 0;
  v10 = *(v6 + 56);
  v11 = *(v6 + 64);
  v28 = *(v6 + 24);
  v30 = *(v6 + 40);
  swift_unknownObjectRetain();
  outlined destroy of AttributedString.UnicodeScalarView(&v59);
  v46 = v60;
  v47 = v61;
  v48 = v62;
  v49 = v63;
  v43[0] = v28;
  v43[1] = v30;
  v44 = v10;
  v45 = v11;
  v12 = *(v3 + 40);
  v13 = *(v3 + 56);
  v53 = *(v3 + 24);
  v54 = v12;
  v55 = v13;
  swift_unknownObjectRetain();
  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();
  LOBYTE(v10) = BigSubstring.UnicodeScalarView.isIdentical(to:)();
  outlined destroy of BigSubstring.UnicodeScalarView(v38);
  v14 = v46 >> 11;
  v15 = v48 >> 11;
  v16 = *a1 >> 11;
  v17 = a1[4] >> 11;
  if (v10)
  {
    outlined init with copy of AttributedSubstring(a2, v32);
    specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v16, v17, v6, v14, v15);
    v18 = v16;
    v19 = v17;
    v20 = 0;
LABEL_7:
    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v18, v19, v20, 0);
    outlined destroy of BigSubstring.UnicodeScalarView(v43);
    outlined destroy of AttributedSubstring(a2);
    return;
  }

  outlined init with copy of AttributedSubstring(a2, v32);
  v27 = AttributedString.Guts.enforceAttributeConstraintsBeforeMutation(to:)(v16, v17);
  v29 = v21;
  AttributedString.Guts._prepareTrackedIndicesUpdate(mutationRange:)(a1);
  v22 = *(v3 + 40);
  v50 = *(v3 + 24);
  v51 = v22;
  v52 = *(v3 + 56);
  v31 = BigString.UTF8View.count.getter();
  outlined init with copy of BigSubstring.UnicodeScalarView(v43, v32);
  v23 = BigString.unicodeScalars.modify();
  BigString.UnicodeScalarView.replaceSubrange(_:with:)();
  v23(v32, 0);
  specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v16, v17, v6, v14, v15);
  v24 = *(v3 + 40);
  v32[0] = *(v3 + 24);
  v32[1] = v24;
  v32[2] = *(v3 + 56);
  v25 = BigString.UTF8View.count.getter();
  v26 = v25 - v31;
  if (__OFSUB__(v25, v31))
  {
    __break(1u);
    goto LABEL_9;
  }

  AttributedString.Guts._finalizeTrackedIndicesUpdate(mutationStartOffset:isInsertion:utf8LengthDelta:)(v16, v16 == v17, v26);
  v19 = v29 + v26;
  if (__OFADD__(v29, v26))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = v27;
  if (v19 >= v27)
  {
    v20 = 1;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t AttributedString.Guts.enforceAttributeConstraintsBeforeMutation(to:)(uint64_t a1, int64_t a2)
{
  v5 = v2;
  v294 = *MEMORY[0x1E69E9840];
  v272 = a1;
  v276 = a2;
  v277 = a1;
  v6 = a2 - 1;
  v270 = a2;
  v264 = 0;
  if (a2 >= 1)
  {
    v7 = v2[9];
    v3 = v2[11];
    if (v7)
    {
      v8 = v2[11];
    }

    else
    {
      v8 = 0;
    }

    if (v8 < v6)
    {
      goto LABEL_407;
    }

    v4 = v2[10];
    v9 = v2[12];
    if (!v7 || ((v10 = (v7 + 16), v11 = *(v7 + 16), v3 >= a2) ? (v12 = v11 == 0) : (v12 = 1), v12))
    {
      v13 = swift_unknownObjectRetain();
      v3 = specialized Rope._endPath.getter(v13);
      v14 = v4;
      v4 = 0;
      v15 = 0;
      if (!v7)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v269 = *(v5 + 80);
    v274 = v9;
    v84 = *(v7 + 18);
    swift_unknownObjectRetain_n();
    v271 = v3;
    if (v84)
    {
      v5 = -15;
      v85 = v84;
      v3 = v7;
      do
      {
        v86 = *v10;
        if (*v10)
        {
          v87 = 0;
          v88 = (v3 + 40);
          while (1)
          {
            v89 = *v88;
            v88 += 3;
            v90 = v6 - v89;
            if (__OFSUB__(v6, v89))
            {
              goto LABEL_365;
            }

            if (__OFADD__(v90, 1))
            {
              goto LABEL_366;
            }

            if (v90 + 1 < 1)
            {
              break;
            }

            ++v87;
            v6 = v90;
            if (v86 == v87)
            {
              goto LABEL_98;
            }
          }

          v86 = v87;
        }

        else
        {
          v90 = v6;
LABEL_98:
          if (v90)
          {
            goto LABEL_392;
          }

          v6 = 0;
        }

        v85 = (v86 << ((4 * v84 + 8) & 0x3C)) | ((-15 << ((4 * v84 + 8) & 0x3C)) - 1) & v85;
        v4 = *(v3 + 24 + 24 * v86);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v10 = (v4 + 16);
        v84 = *(v4 + 18);
        v3 = v4;
      }

      while (*(v4 + 18));
      v11 = *v10;
      if (!*v10)
      {
        v5 = v273;
        v3 = 0;
        if (!v6)
        {
LABEL_188:
          swift_unknownObjectRelease();
          v3 = v85 & 0xFFFFFFFFFFFFF0FFLL | (v3 << 8);
          v9 = v274;
          v14 = v269;
LABEL_13:
          specialized Rope._Node.distanceFromStart<A>(to:in:)(v9, v3, v4, v7, v14);
          swift_unknownObjectRelease();
          v15 = v4;
LABEL_14:
          v16 = *(v5 + 72);
          v17 = *(v5 + 80);
          v18 = *(v5 + 88);
          v19 = *(v5 + 96);
          swift_unknownObjectRetain();
          specialized Rope.subscript.getter(v9, v3, v15, v16, v17, v18, v19);
          v4 = v20;
          v269 = v21;
          v22 = swift_unknownObjectRelease();
          v23 = *(v4 + 32);
          v6 = ((1 << v23) + 63) >> 6;
          if ((v23 & 0x3Fu) <= 0xD)
          {
            goto LABEL_15;
          }

          goto LABEL_408;
        }

LABEL_214:
        __break(1u);
        goto LABEL_215;
      }

      v5 = v273;
    }

    else
    {
      v85 = 0;
      v4 = v7;
    }

    v3 = 0;
    v154 = 24;
    do
    {
      v155 = *(v4 + v154);
      v43 = __OFSUB__(v6, v155);
      v6 -= v155;
      if (v43)
      {
        goto LABEL_390;
      }

      if (__OFADD__(v6, 1))
      {
        goto LABEL_391;
      }

      if (v6 + 1 < 1)
      {
        goto LABEL_188;
      }

      ++v3;
      v154 += 24;
    }

    while (v11 != v3);
    v3 = v11;
    if (!v6)
    {
      goto LABEL_188;
    }

    goto LABEL_214;
  }

  v269 = MEMORY[0x1E69E7CD0];
  v271 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    v6 = v272;
LABEL_45:
    v45 = *(v5 + 40);
    v291 = *(v5 + 24);
    v292 = v45;
    v293 = *(v5 + 56);
    if (BigString.UTF8View.count.getter() <= v6)
    {
      goto LABEL_272;
    }

    v7 = *(v5 + 72);
    v4 = *(v5 + 88);
    if (v7)
    {
      v46 = *(v5 + 88);
    }

    else
    {
      v46 = 0;
    }

    if (v6 < 0 || v46 < v6)
    {
LABEL_411:
      __break(1u);
      goto LABEL_412;
    }

    v47 = *(v5 + 80);
    v48 = *(v5 + 96);
    if (!v7 || ((v10 = (v7 + 16), v3 = *(v7 + 16), *(v7 + 16)) ? (v49 = v4 <= v6) : (v49 = 1), v49))
    {
      v50 = swift_unknownObjectRetain();
      v51 = specialized Rope._endPath.getter(v50);
      v84 = 0;
      v52 = v47;
      v53 = 0;
      if (!v7)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    v268 = *(v5 + 80);
    v274 = v48;
    v6 = *(v7 + 18);
    swift_unknownObjectRetain_n();
    if (!v6)
    {
      v85 = 0;
      v11 = v272;
      v84 = v7;
      goto LABEL_192;
    }

    v267 = v4;
    v5 = -15;
    v4 = 24;
    v11 = v272;
    v85 = v6;
    v3 = v7;
    do
    {
      v128 = *v10;
      if (*v10)
      {
        v129 = 0;
        v130 = (v3 + 40);
        while (1)
        {
          v131 = *v130;
          v130 += 3;
          v132 = v11 - v131;
          if (__OFSUB__(v11, v131))
          {
            goto LABEL_367;
          }

          if (__OFADD__(v132, 1))
          {
            goto LABEL_368;
          }

          if (v132 + 1 < 1)
          {
            break;
          }

          ++v129;
          v11 = v132;
          if (v128 == v129)
          {
            goto LABEL_157;
          }
        }

        v128 = v129;
      }

      else
      {
        v132 = v11;
LABEL_157:
        if (v132)
        {
          goto LABEL_399;
        }

        v11 = 0;
      }

      v85 = (v128 << ((4 * v6 + 8) & 0x3C)) | ((-15 << ((4 * v6 + 8) & 0x3C)) - 1) & v85;
      v84 = *(v3 + 24 + 24 * v128);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v10 = (v84 + 16);
      v6 = *(v84 + 18);
      v3 = v84;
    }

    while (*(v84 + 18));
    v3 = *v10;
    if (*v10)
    {
      v5 = v273;
      v4 = v267;
LABEL_192:
      v6 = 0;
      v156 = 24;
      do
      {
        v157 = *(v84 + v156);
        v43 = __OFSUB__(v11, v157);
        v11 -= v157;
        if (v43)
        {
          goto LABEL_395;
        }

        if (__OFADD__(v11, 1))
        {
          goto LABEL_396;
        }

        if (v11 + 1 < 1)
        {
          goto LABEL_198;
        }

        ++v6;
        v156 += 24;
      }

      while (v3 != v6);
      v6 = v3;
      if (!v11)
      {
        goto LABEL_198;
      }

LABEL_216:
      __break(1u);
LABEL_217:
      v164 = v5 & 0xFFFFFFFFFFFFF0FFLL;
      v5 = v273;
      goto LABEL_219;
    }

LABEL_215:
    v5 = v273;
    v4 = v267;
    v6 = 0;
    if (v11)
    {
      goto LABEL_216;
    }

LABEL_198:
    swift_unknownObjectRelease();
    v51 = v85 & 0xFFFFFFFFFFFFF0FFLL | (v6 << 8);
    v48 = v274;
    v52 = v268;
LABEL_58:
    specialized Rope._Node.distanceFromStart<A>(to:in:)(v48, v51, v84, v7, v52);
    swift_unknownObjectRelease();
    v53 = v84;
LABEL_59:
    v54 = *(v5 + 72);
    v55 = *(v5 + 80);
    v56 = *(v5 + 88);
    v57 = *(v5 + 96);
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v48, v51, v53, v54, v55, v56, v57);
    v3 = v58;
    v267 = v59;
    v60 = swift_unknownObjectRelease();
    v61 = *(v3 + 32);
    v262 = ((1 << v61) + 63) >> 6;
    if ((v61 & 0x3Fu) <= 0xD)
    {
      goto LABEL_60;
    }

LABEL_412:

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_60:
      v263 = &v261;
      MEMORY[0x1EEE9AC00](v60);
      v265 = (&v261 - ((v62 + 15) & 0x3FFFFFFFFFFFFFF0));
      bzero(v265, v62);
      v266 = 0;
      v63 = 0;
      v6 = v3 + 64;
      v64 = 1 << *(v3 + 32);
      if (v64 < 64)
      {
        v65 = ~(-1 << v64);
      }

      else
      {
        v65 = -1;
      }

      v66 = v65 & *(v3 + 64);
      v5 = (v64 + 63) >> 6;
      v4 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd;
      v268 = v3;
      do
      {
        while (1)
        {
          if (v66)
          {
            v67 = __clz(__rbit64(v66));
            v66 &= v66 - 1;
          }

          else
          {
            v68 = v63;
            do
            {
              v63 = v68 + 1;
              if (__OFADD__(v68, 1))
              {
                goto LABEL_372;
              }

              if (v63 >= v5)
              {
                goto LABEL_83;
              }

              v69 = *(v6 + 8 * v63);
              ++v68;
            }

            while (!v69);
            v67 = __clz(__rbit64(v69));
            v66 = (v69 - 1) & v69;
          }

          v70 = v67 | (v63 << 6);
          v71 = *(v3 + 56);
          v72 = (*(v3 + 48) + 16 * v70);
          v73 = *v72;
          v74 = v72[1];
          outlined init with copy of AttributedString._AttributeValue(v71 + 72 * v70, &v289);
          *&v284 = v73;
          *(&v284 + 1) = v74;
          outlined init with copy of AttributedString._AttributeValue(&v289, &v285);
          v75 = v4;
          outlined init with copy of FloatingPointRoundingRule?(&v284, &v278, v4, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
          swift_bridgeObjectRetain_n();

          v76 = v283;
          if (v283)
          {
            if (*(v283 + 16))
            {
              Hasher.init(_seed:)();
              MEMORY[0x1865CD060](0);
              v77 = Hasher._finalize()();
              v78 = v76 + 56;
              v79 = -1 << *(v76 + 32);
              v80 = v77 & ~v79;
              if ((*(v76 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80))
              {
                break;
              }
            }
          }

          v4 = v75;
LABEL_79:
          outlined destroy of TermOfAddress?(&v284, v4, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
          outlined destroy of AttributedString._AttributeValue(&v279);
          outlined destroy of AttributedString._AttributeValue(&v289);

          v3 = v268;
        }

        v81 = ~v79;
        v82 = *(v76 + 48);
        v4 = v75;
        while (*(v82 + 16 * v80 + 8))
        {
          v80 = (v80 + 1) & v81;
          if (((*(v78 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
          {
            goto LABEL_79;
          }
        }

        outlined destroy of TermOfAddress?(&v284, v75, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
        outlined destroy of AttributedString._AttributeValue(&v279);
        outlined destroy of AttributedString._AttributeValue(&v289);

        *(v265 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
        v43 = __OFADD__(v266++, 1);
        v3 = v268;
      }

      while (!v43);
      __break(1u);
LABEL_83:
      v83 = v266;
      if (v266)
      {
        if (v266 == *(v3 + 16))
        {

          v274 = v3;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
          v133 = static _DictionaryStorage.allocate(capacity:)();
          v134 = 0;
          v5 = *v265;
          v274 = v133;
          v6 = v133 + 64;
          v4 = v133;
          do
          {
            if (v5)
            {
              v139 = __clz(__rbit64(v5));
              v5 &= v5 - 1;
            }

            else
            {
              v140 = v134;
              v5 = v273;
              do
              {
                v134 = v140 + 1;
                if (__OFADD__(v140, 1))
                {
                  goto LABEL_382;
                }

                if (v134 >= v262)
                {
                  goto LABEL_121;
                }

                v141 = v265[v134];
                ++v140;
              }

              while (!v141);
              v139 = __clz(__rbit64(v141));
              v5 = (v141 - 1) & v141;
            }

            v142 = v139 | (v134 << 6);
            v143 = *(v3 + 56);
            v144 = (*(v3 + 48) + 16 * v142);
            v145 = *v144;
            v3 = v144[1];
            outlined init with copy of AttributedString._AttributeValue(v143 + 72 * v142, &v284);
            v280 = v286;
            v281 = v287;
            v282 = v288;
            v278 = v284;
            v279 = v285;
            Hasher.init(_seed:)();

            String.hash(into:)();
            v146 = Hasher._finalize()();
            v147 = -1 << *(v4 + 32);
            v148 = v146 & ~v147;
            v149 = v148 >> 6;
            if (((-1 << v148) & ~*(v6 + 8 * (v148 >> 6))) != 0)
            {
              v135 = __clz(__rbit64((-1 << v148) & ~*(v6 + 8 * (v148 >> 6)))) | v148 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v150 = 0;
              v151 = (63 - v147) >> 6;
              do
              {
                if (++v149 == v151 && (v150 & 1) != 0)
                {
                  goto LABEL_387;
                }

                v152 = v149 == v151;
                if (v149 == v151)
                {
                  v149 = 0;
                }

                v150 |= v152;
                v153 = *(v6 + 8 * v149);
              }

              while (v153 == -1);
              v135 = __clz(__rbit64(~v153)) + (v149 << 6);
            }

            *(v6 + ((v135 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v135;
            v136 = v274;
            v137 = (*(v274 + 48) + 16 * v135);
            *v137 = v145;
            v137[1] = v3;
            v138 = *(v136 + 56) + 72 * v135;
            *(v138 + 16) = v279;
            *(v138 + 32) = v280;
            *(v138 + 48) = v281;
            *(v138 + 64) = v282;
            *v138 = v278;
            ++*(v136 + 16);
            --v83;
            v3 = v268;
          }

          while (v83);
        }
      }

      else
      {
        v274 = MEMORY[0x1E69E7CC8];
      }

      v5 = v273;
      goto LABEL_121;
    }

    v256 = swift_slowAlloc();

    v259 = v264;
    _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v256, v262, v3, specialized thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error));
    v274 = v260;
    v264 = v259;
    if (v259)
    {
      goto LABEL_425;
    }

    MEMORY[0x1865D2690](v256, -1, -1);
LABEL_121:
    v113 = v274;

    v114 = 0;
    *&v278 = MEMORY[0x1865CB700](*(v113 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v116 = *(v113 + 64);
    v6 = v113 + 64;
    v115 = v116;
    v117 = 1 << *(v6 - 32);
    v118 = -1;
    if (v117 < 64)
    {
      v118 = ~(-1 << v117);
    }

    v4 = v118 & v115;
    v119 = (v117 + 63) >> 6;
    if ((v118 & v115) != 0)
    {
      while (1)
      {
        v120 = v114;
LABEL_129:
        v121 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v122 = (*(v274 + 48) + ((v120 << 10) | (16 * v121)));
        v123 = *v122;
        v3 = v122[1];

        specialized Set._Variant.insert(_:)(&v284, v123, v3);

        if (!v4)
        {
          goto LABEL_125;
        }
      }
    }

    while (1)
    {
LABEL_125:
      v120 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        goto LABEL_373;
      }

      if (v120 >= v119)
      {
        break;
      }

      v4 = *(v6 + 8 * v120);
      ++v114;
      if (v4)
      {
        v114 = v120;
        goto LABEL_129;
      }
    }

    *&v289 = v278;
    v10 = *(v5 + 72);
    v7 = *(v5 + 80);
    v124 = *(v5 + 88);
    v125 = *(v5 + 96);
    v6 = v272;
    if (!v272)
    {
      v268 = *(v5 + 96);
      if (!v10)
      {
        goto LABEL_141;
      }

      if (v124 < 0)
      {
        goto LABEL_422;
      }

      v4 = (v10 + 8);
      if (!v10[8] || v124 == 0)
      {
LABEL_141:
        swift_unknownObjectRetain();

        v125 = v268;
        v3 = specialized Rope._endPath.getter(v10);
        v84 = 0;
        v127 = 0;
        if (!v10)
        {
          goto LABEL_221;
        }

        goto LABEL_142;
      }

      v6 = *(v10 + 18);
      swift_unknownObjectRetain_n();

      if (v6)
      {
        v3 = 0;
        v5 = v6;
        v158 = v10;
        while (1)
        {
          v159 = *v4;
          if (*v4)
          {
            v160 = 0;
            v161 = (v158 + 20);
            while (1)
            {
              v162 = *v161;
              v161 += 3;
              v163 = v3 - v162;
              if (__OFSUB__(v3, v162))
              {
                goto LABEL_376;
              }

              if (__OFADD__(v163, 1))
              {
                goto LABEL_377;
              }

              if (v163 + 1 < 1)
              {
                break;
              }

              ++v160;
              v3 = v163;
              if (v159 == v160)
              {
                goto LABEL_211;
              }
            }

            v159 = v160;
          }

          else
          {
            v163 = v3;
LABEL_211:
            if (v163)
            {
              __break(1u);
              goto LABEL_411;
            }

            v3 = 0;
          }

          v5 = (v159 << ((4 * v6 + 8) & 0x3C)) | ((-15 << ((4 * v6 + 8) & 0x3C)) - 1) & v5;
          v84 = *&v158[12 * v159 + 12];
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v4 = v84 + 16;
          v6 = *(v84 + 18);
          v158 = v84;
          if (!*(v84 + 18))
          {
            goto LABEL_217;
          }
        }
      }

      v164 = 0;
      v3 = 0;
      v84 = v10;
LABEL_219:
      v165 = specialized Rope._UnsafeHandle.findSlot<A>(at:in:preferEnd:)(v3, 0, v4, (v84 + 24));
      if (v165 < 0)
      {
        goto LABEL_423;
      }

      v167 = v165;
      v127 = v166;
      swift_unknownObjectRelease();
      v3 = v164 | (v167 << 8);
      v6 = v272;
      v125 = v268;
      if (!v10)
      {
LABEL_221:
        v7 = 0;
        v124 = -v127;
        if (__OFSUB__(0, v127))
        {
LABEL_420:
          __break(1u);
LABEL_421:
          __break(1u);
LABEL_422:
          __break(1u);
LABEL_423:
          __break(1u);
LABEL_424:
          __break(1u);
        }

        goto LABEL_222;
      }

LABEL_142:
      v7 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v125, v3, v84, v10, v7);
      swift_unknownObjectRelease();
      v124 = -v127;
      if (__OFSUB__(0, v127))
      {
        goto LABEL_420;
      }

      goto LABEL_222;
    }

    swift_unknownObjectRetain();

    v3 = specialized Rope._endPath.getter(v10);
    if (v10)
    {
      swift_unknownObjectRelease();
      v84 = 0;
    }

    else
    {
      v84 = 0;
      v7 = 0;
      v124 = 0;
    }

LABEL_222:
    *&v284 = v125;
    *(&v284 + 1) = v3;
    *&v285 = v84;
    *(&v285 + 1) = v7;
    *&v286 = v124;
    while (1)
    {
      v4 = *(v5 + 72);
      if (v4)
      {
        v171 = *(v5 + 88);
        if ((v171 & 0x8000000000000000) != 0)
        {
          goto LABEL_388;
        }

        v172 = *(v5 + 80);
        v268 = *(v5 + 96);
        v5 = v4 + 16;
        v6 = *(v4 + 18);
        if (!*(v4 + 16) || v171 == 0)
        {
          v174 = ((-15 << ((4 * v6 + 8) & 0x3C)) - 1) & v6 | (*(v4 + 16) << ((4 * v6 + 8) & 0x3C));
          swift_unknownObjectRetain();
          v3 = 0;
          v175 = 0;
        }

        else
        {
          swift_unknownObjectRetain_n();
          if (v6)
          {
            v266 = v172;
            v3 = 0;
            v176 = v6;
            v177 = v4;
            while (1)
            {
              v178 = *v5;
              if (*v5)
              {
                break;
              }

              v182 = v3;
LABEL_246:
              if (v182)
              {
                goto LABEL_375;
              }

              v3 = 0;
LABEL_237:
              v176 = (v178 << ((4 * v6 + 8) & 0x3C)) | ((-15 << ((4 * v6 + 8) & 0x3C)) - 1) & v176;
              v175 = *(v177 + 24 + 24 * v178);
              swift_unknownObjectRetain();
              swift_unknownObjectRelease();
              v5 = v175 + 16;
              v6 = *(v175 + 18);
              v177 = v175;
              if (!*(v175 + 18))
              {
                v6 = v176 & 0xFFFFFFFFFFFFF0FFLL;
                v172 = v266;
                goto LABEL_250;
              }
            }

            v179 = 0;
            v180 = (v177 + 40);
            while (1)
            {
              v181 = *v180;
              v180 += 3;
              v182 = v3 - v181;
              if (__OFSUB__(v3, v181))
              {
                break;
              }

              if (__OFADD__(v182, 1))
              {
                goto LABEL_357;
              }

              if (v182 + 1 < 1)
              {
                v178 = v179;
                goto LABEL_237;
              }

              ++v179;
              v3 = v182;
              if (v178 == v179)
              {
                goto LABEL_246;
              }
            }

            __break(1u);
LABEL_357:
            __break(1u);
LABEL_358:
            v252 = v4 & 0xFFFFFFFFFFFFF0FFLL;
            v4 = v272;
            v213 = v267;
LABEL_360:
            v253 = specialized Rope._UnsafeHandle.findSlot<A>(at:in:preferEnd:)(v3, 0, v171, (v5 + 24));
            if (v253 < 0)
            {
              goto LABEL_421;
            }

            v255 = v253;
            v216 = v254;
            swift_unknownObjectRelease();
            v3 = v252 | (v255 << 8);
            v211 = v270;
            if (v176)
            {
              goto LABEL_295;
            }

LABEL_362:
            v217 = 0;
            v6 = v211 - v216;
            if (!__OFSUB__(v211, v216))
            {
              goto LABEL_296;
            }

LABEL_364:
            __break(1u);
LABEL_365:
            __break(1u);
LABEL_366:
            __break(1u);
LABEL_367:
            __break(1u);
LABEL_368:
            __break(1u);
LABEL_369:
            __break(1u);
LABEL_370:
            __break(1u);
LABEL_371:
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
LABEL_374:
            __break(1u);
LABEL_375:
            __break(1u);
LABEL_376:
            __break(1u);
LABEL_377:
            __break(1u);
LABEL_378:
            __break(1u);
LABEL_379:
            __break(1u);
LABEL_380:
            __break(1u);
LABEL_381:
            __break(1u);
LABEL_382:
            __break(1u);
LABEL_383:
            __break(1u);
LABEL_384:
            __break(1u);
LABEL_385:
            __break(1u);
LABEL_386:
            __break(1u);
LABEL_387:
            __break(1u);
LABEL_388:
            __break(1u);
LABEL_389:
            __break(1u);
LABEL_390:
            __break(1u);
LABEL_391:
            __break(1u);
LABEL_392:
            __break(1u);
LABEL_393:
            __break(1u);
LABEL_394:
            __break(1u);
LABEL_395:
            __break(1u);
LABEL_396:
            __break(1u);
LABEL_397:
            __break(1u);
LABEL_398:
            __break(1u);
LABEL_399:
            __break(1u);
LABEL_400:
            __break(1u);
LABEL_401:
            __break(1u);
LABEL_402:
            __break(1u);
LABEL_403:
            __break(1u);
LABEL_404:
            __break(1u);
LABEL_405:
            __break(1u);
LABEL_406:
            __break(1u);
LABEL_407:
            __break(1u);
LABEL_408:

            if (swift_stdlib_isStackAllocationSafe())
            {

LABEL_15:
              v266 = v6;
              v267 = &v261;
              MEMORY[0x1EEE9AC00](v22);
              v268 = (&v261 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0));
              bzero(v268, v24);
              v274 = 0;
              v25 = 0;
              v6 = v4 + 64;
              v26 = 1 << *(v4 + 32);
              if (v26 < 64)
              {
                v27 = ~(-1 << v26);
              }

              else
              {
                v27 = -1;
              }

              v28 = v27 & *(v4 + 64);
              v29 = (v26 + 63) >> 6;
              do
              {
                while (1)
                {
                  if (v28)
                  {
                    v30 = __clz(__rbit64(v28));
                    v28 &= v28 - 1;
                  }

                  else
                  {
                    v31 = v25;
                    do
                    {
                      v25 = v31 + 1;
                      if (__OFADD__(v31, 1))
                      {
                        goto LABEL_371;
                      }

                      if (v25 >= v29)
                      {
                        goto LABEL_38;
                      }

                      v32 = *(v6 + 8 * v25);
                      ++v31;
                    }

                    while (!v32);
                    v30 = __clz(__rbit64(v32));
                    v28 = (v32 - 1) & v32;
                  }

                  v33 = v30 | (v25 << 6);
                  v5 = v4;
                  v34 = (*(v4 + 48) + 16 * v33);
                  v35 = *v34;
                  v3 = v34[1];
                  outlined init with copy of AttributedString._AttributeValue(*(v4 + 56) + 72 * v33, &v289);
                  *&v284 = v35;
                  *(&v284 + 1) = v3;
                  outlined init with copy of AttributedString._AttributeValue(&v289, &v285);
                  outlined init with copy of FloatingPointRoundingRule?(&v284, &v278, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
                  swift_bridgeObjectRetain_n();

                  v36 = v283;
                  if (v283)
                  {
                    if (*(v283 + 16))
                    {
                      Hasher.init(_seed:)();
                      MEMORY[0x1865CD060](0);
                      v37 = Hasher._finalize()();
                      v38 = v36 + 56;
                      v39 = -1 << *(v36 + 32);
                      v40 = v37 & ~v39;
                      if ((*(v36 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
                      {
                        break;
                      }
                    }
                  }

                  v4 = v5;
LABEL_34:
                  outlined destroy of TermOfAddress?(&v284, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
                  outlined destroy of AttributedString._AttributeValue(&v279);
                  outlined destroy of AttributedString._AttributeValue(&v289);
                }

                v41 = ~v39;
                v42 = *(v36 + 48);
                v4 = v5;
                while (*(v42 + 16 * v40 + 8))
                {
                  v40 = (v40 + 1) & v41;
                  if (((*(v38 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
                  {
                    goto LABEL_34;
                  }
                }

                outlined destroy of TermOfAddress?(&v284, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
                outlined destroy of AttributedString._AttributeValue(&v279);
                outlined destroy of AttributedString._AttributeValue(&v289);

                *(v268 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
                v43 = __OFADD__(v274++, 1);
              }

              while (!v43);
              __break(1u);
LABEL_38:
              v44 = v274;
              if (v274)
              {
                if (v274 == *(v4 + 16))
                {

                  v271 = v4;
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
                  v91 = static _DictionaryStorage.allocate(capacity:)();
                  v92 = 0;
                  v93 = *v268;
                  v271 = v91;
                  v6 = v91 + 64;
                  do
                  {
                    if (v93)
                    {
                      v5 = v44;
                      v98 = __clz(__rbit64(v93));
                      v93 &= v93 - 1;
                    }

                    else
                    {
                      v99 = v92;
                      do
                      {
                        v92 = v99 + 1;
                        if (__OFADD__(v99, 1))
                        {
                          goto LABEL_380;
                        }

                        if (v92 >= v266)
                        {
                          goto LABEL_44;
                        }

                        v100 = v268[v92];
                        ++v99;
                      }

                      while (!v100);
                      v5 = v44;
                      v98 = __clz(__rbit64(v100));
                      v93 = (v100 - 1) & v100;
                    }

                    v101 = v98 | (v92 << 6);
                    v102 = (*(v4 + 48) + 16 * v101);
                    v103 = *v102;
                    v3 = v102[1];
                    outlined init with copy of AttributedString._AttributeValue(*(v4 + 56) + 72 * v101, &v284);
                    v280 = v286;
                    v281 = v287;
                    v282 = v288;
                    v278 = v284;
                    v279 = v285;
                    v104 = v271;
                    Hasher.init(_seed:)();

                    String.hash(into:)();
                    v105 = Hasher._finalize()();
                    v106 = -1 << *(v104 + 32);
                    v107 = v105 & ~v106;
                    v108 = v107 >> 6;
                    if (((-1 << v107) & ~*(v6 + 8 * (v107 >> 6))) != 0)
                    {
                      v94 = __clz(__rbit64((-1 << v107) & ~*(v6 + 8 * (v107 >> 6)))) | v107 & 0x7FFFFFFFFFFFFFC0;
                    }

                    else
                    {
                      v109 = 0;
                      v110 = (63 - v106) >> 6;
                      do
                      {
                        if (++v108 == v110 && (v109 & 1) != 0)
                        {
                          goto LABEL_381;
                        }

                        v111 = v108 == v110;
                        if (v108 == v110)
                        {
                          v108 = 0;
                        }

                        v109 |= v111;
                        v112 = *(v6 + 8 * v108);
                      }

                      while (v112 == -1);
                      v94 = __clz(__rbit64(~v112)) + (v108 << 6);
                    }

                    *(v6 + ((v94 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v94;
                    v95 = v271;
                    v96 = (*(v271 + 48) + 16 * v94);
                    *v96 = v103;
                    v96[1] = v3;
                    v97 = *(v95 + 56) + 72 * v94;
                    *(v97 + 16) = v279;
                    *(v97 + 32) = v280;
                    *(v97 + 48) = v281;
                    *(v97 + 64) = v282;
                    *v97 = v278;
                    ++*(v95 + 16);
                    v44 = v5 - 1;
                  }

                  while (v5 != 1);
                }
              }

              else
              {
                v271 = MEMORY[0x1E69E7CC8];
              }

LABEL_44:
              v6 = v272;

              v5 = v273;
              goto LABEL_45;
            }

            goto LABEL_416;
          }

          v6 = 0;
          v3 = 0;
          v175 = v4;
LABEL_250:
          v183 = specialized Rope._UnsafeHandle.findSlot<A>(at:in:preferEnd:)(v3, 0, v5, (v175 + 24));
          if (v183 < 0)
          {
            goto LABEL_404;
          }

          v185 = v183;
          v3 = v184;
          swift_unknownObjectRelease();
          v174 = v6 | (v185 << 8);
        }

        specialized Rope._Node.distanceFromStart<A>(to:in:)(v268, v174, v175, v4, v172);
        swift_unknownObjectRelease();
        v6 = v272;
        v5 = v273;
      }

      else
      {
        v3 = 0;
      }

      if (__OFSUB__(0, v3))
      {
        goto LABEL_384;
      }

      if (-v3 >= v124 || !*(v289 + 16))
      {
        break;
      }

      v4 = *(v5 + 72);
      if (v4)
      {
        if (v124 == *(v5 + 88))
        {
          goto LABEL_258;
        }
      }

      else if (!v124)
      {
LABEL_258:
        v186 = *(v5 + 80);
        v3 = *(v5 + 88);
        v187 = *(v5 + 96);
        swift_unknownObjectRetain();
        if (specialized Rope.find<A>(at:in:preferEnd:)(v6, 1, v4, v186, v3, v187) != v187)
        {
          goto LABEL_397;
        }

        v191 = v188;
        v192 = v189;
        v193 = v190;
        if (v4)
        {
          v3 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v187, v188, v189, v4, v186);
          swift_unknownObjectRelease();
          v168 = v6 - v193;
          if (__OFSUB__(v6, v193))
          {
            goto LABEL_398;
          }
        }

        else
        {
          v3 = 0;
          v168 = v6 - v190;
          if (__OFSUB__(v6, v190))
          {
            goto LABEL_398;
          }
        }

        goto LABEL_224;
      }

      v194 = v5;
      v195 = *(v5 + 80);
      v5 = *(v5 + 88);
      v187 = *(v194 + 96);
      v278 = v284;
      *&v279 = v285;
      v3 = *(&v285 + 1) - 1;
      if (__OFSUB__(*(&v285 + 1), 1))
      {
        goto LABEL_393;
      }

      swift_unknownObjectRetain();
      specialized Rope.formIndex(before:)(&v278, v4, v195, v5, v187);
      if (v278 != v187)
      {
        goto LABEL_394;
      }

      v191 = *(&v278 + 1);
      v192 = v279;
      if (v279)
      {
        v6 = *(v279 + 24 * ((*(&v278 + 1) >> ((4 * *(v279 + 18) + 8) & 0x3C)) & 0xFLL) + 24);

        swift_unknownObjectRelease();
        v168 = v124 - v6;
        v5 = v273;
        if (__OFSUB__(v124, v6))
        {
          goto LABEL_403;
        }

        v6 = v272;
      }

      else
      {
        v196 = specialized Rope._Node.subscript.getter(*(&v278 + 1), v4);
        v5 = v197;
        swift_unknownObjectRelease();

        v168 = v124 - v196;
        if (__OFSUB__(v124, v196))
        {
          goto LABEL_405;
        }

        v192 = 0;
        v5 = v273;
      }

LABEL_224:
      *&v284 = v187;
      *(&v284 + 1) = v191;
      *&v285 = v192;
      *(&v285 + 1) = v3;
      *&v286 = v168;
      v169 = v274;

      v170 = v267;

      specialized AttributedString.Guts.updateRun(at:within:with:)(&v284, 0, v6, v5, &v289, v169, v170, &v277);

      v124 = v286;
    }

LABEL_272:
    if (v270 < 1)
    {

      goto LABEL_340;
    }

    v198 = v271;
    v199 = *(v271 + 16);

    v200 = 0;
    *&v278 = MEMORY[0x1865CB700](v199, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v202 = *(v198 + 64);
    v6 = v198 + 64;
    v201 = v202;
    v203 = 1 << *(v6 - 32);
    v204 = -1;
    if (v203 < 64)
    {
      v204 = ~(-1 << v203);
    }

    v4 = v204 & v201;
    v205 = (v203 + 63) >> 6;
    if ((v204 & v201) != 0)
    {
      while (1)
      {
        v206 = v200;
LABEL_281:
        v207 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v208 = (*(v271 + 48) + ((v206 << 10) | (16 * v207)));
        v209 = *v208;
        v3 = v208[1];

        specialized Set._Variant.insert(_:)(&v284, v209, v3);

        if (!v4)
        {
          goto LABEL_277;
        }
      }
    }

    while (1)
    {
LABEL_277:
      v206 = v200 + 1;
      if (__OFADD__(v200, 1))
      {
        goto LABEL_374;
      }

      if (v206 >= v205)
      {
        break;
      }

      v4 = *(v6 + 8 * v206);
      ++v200;
      if (v4)
      {
        v200 = v206;
        goto LABEL_281;
      }
    }

    v275[0] = v278;
    v210 = *(v5 + 40);
    v284 = *(v5 + 24);
    v285 = v210;
    v286 = *(v5 + 56);
    v274 = BigString.UTF8View.count.getter();
    v211 = v270;
    if (v274 < v270)
    {
      __break(1u);
LABEL_415:
      __break(1u);
LABEL_416:
      v256 = swift_slowAlloc();

      v257 = v264;
      _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v256, v6, v4, specialized thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error));
      v271 = v258;
      v264 = v257;
      if (v257)
      {
LABEL_425:

        result = MEMORY[0x1865D2690](v256, -1, -1);
        __break(1u);
        return result;
      }

      MEMORY[0x1865D2690](v256, -1, -1);

      continue;
    }

    break;
  }

  v176 = *(v5 + 72);
  v6 = *(v5 + 88);
  if (v176)
  {
    v212 = *(v5 + 88);
  }

  else
  {
    v212 = 0;
  }

  if (v212 < v270)
  {
    goto LABEL_415;
  }

  v213 = *(v5 + 80);
  v4 = *(v5 + 96);
  if (v176)
  {
    v171 = v176 + 16;
    if (*(v176 + 16) && v6 > v270)
    {
      v245 = *(v176 + 18);
      swift_unknownObjectRetain_n();

      if (v245)
      {
        v267 = v213;
        v268 = v6;
        v272 = v4;
        v6 = 24;
        v3 = v270;
        v4 = v245;
        v246 = v176;
        while (1)
        {
          v247 = *v171;
          if (*v171)
          {
            v248 = 0;
            v249 = (v246 + 40);
            while (1)
            {
              v250 = *v249;
              v249 += 3;
              v251 = v3 - v250;
              if (__OFSUB__(v3, v250))
              {
                goto LABEL_369;
              }

              if (__OFADD__(v251, 1))
              {
                goto LABEL_370;
              }

              if (v251 + 1 < 1)
              {
                break;
              }

              ++v248;
              v3 = v251;
              if (v247 == v248)
              {
                goto LABEL_354;
              }
            }

            v247 = v248;
          }

          else
          {
            v251 = v3;
LABEL_354:
            if (v251)
            {
              goto LABEL_402;
            }

            v3 = 0;
          }

          v4 = (v247 << ((4 * v245 + 8) & 0x3C)) | ((-15 << ((4 * v245 + 8) & 0x3C)) - 1) & v4;
          v5 = *(v246 + 24 + 24 * v247);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v171 = v5 + 16;
          LOBYTE(v245) = *(v5 + 18);
          v246 = v5;
          if (!v245)
          {
            goto LABEL_358;
          }
        }
      }

      v252 = 0;
      v5 = v176;
      v3 = v270;
      goto LABEL_360;
    }
  }

  v215 = swift_unknownObjectRetain();
  v3 = specialized Rope._endPath.getter(v215);
  v5 = 0;
  v216 = 0;
  if (!v176)
  {
    goto LABEL_362;
  }

LABEL_295:
  v217 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v4, v3, v5, v176, v213);
  swift_unknownObjectRelease();
  v6 = v211 - v216;
  if (__OFSUB__(v211, v216))
  {
    goto LABEL_364;
  }

LABEL_296:
  *&v278 = v4;
  *(&v278 + 1) = v3;
  *&v279 = v5;
  *(&v279 + 1) = v217;
  *&v280 = v6;
  v5 = v273;
  while (1)
  {
    v219 = *(v5 + 72);
    if (v274 == v211)
    {
      v3 = *(v5 + 80);
      v220 = *(v5 + 88);
      v221 = *(v5 + 96);
      swift_unknownObjectRetain();
      if (specialized Rope.find<A>(at:in:preferEnd:)(v211, 0, v219, v3, v220, v221) != v221)
      {
        goto LABEL_385;
      }

      v4 = v224;
      if (v219)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v221, v222, v223, v219, v3);
        swift_unknownObjectRelease();
      }

      if (__OFSUB__(v211, v4))
      {
        goto LABEL_386;
      }

      if (v6 >= v211 - v4)
      {
        break;
      }
    }

    else if (v219)
    {
      if (v6 >= *(v5 + 88))
      {
        break;
      }
    }

    else if (v6 >= 0)
    {
      break;
    }

    if (!*(v275[0] + 16))
    {
      break;
    }

    v225 = v271;

    v226 = v269;

    specialized AttributedString.Guts.updateRun(at:within:with:)(&v278, v211, v274, v5, v275, v225, v226, &v276);

    v227 = v278;
    v228 = v279;
    v6 = v280;
    v3 = *(v5 + 72);
    v4 = *(v5 + 80);
    v229 = *(v5 + 96);
    v289 = v278;
    v290 = v279;
    v272 = *(&v279 + 1) + 1;
    if (__OFADD__(*(&v279 + 1), 1))
    {
      goto LABEL_378;
    }

    if (v278 != v229)
    {
      goto LABEL_379;
    }

    if (v279)
    {
      v230 = *(v279 + 24 * ((*(&v278 + 1) >> ((4 * *(v279 + 18) + 8) & 0x3C)) & 0xFLL) + 24);
      v6 = v280 + v230;
      if (__OFADD__(v280, v230))
      {
        goto LABEL_383;
      }

      if (!v3)
      {
        goto LABEL_424;
      }

      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v231 = specialized Rope._Node.subscript.getter(*(&v227 + 1), v3);
      v5 = v232;

      v43 = __OFADD__(v6, v231);
      v6 += v231;
      if (v43)
      {
        goto LABEL_389;
      }

      if (!v3)
      {
        goto LABEL_424;
      }
    }

    if (*(&v227 + 1) >= (((-15 << ((4 * *(v3 + 18) + 8) & 0x3C)) - 1) & *(v3 + 18) | (*(v3 + 16) << ((4 * *(v3 + 18) + 8) & 0x3C))))
    {
      goto LABEL_424;
    }

    if (v228 && (v233 = (4 * *(v228 + 18) + 8) & 0x3C, v234 = ((*(&v227 + 1) >> v233) & 0xFLL) + 1, v234 < *(v228 + 16)))
    {
      swift_unknownObjectRelease();
      v235 = (v234 << v233) | ((-15 << v233) - 1) & *(&v227 + 1);
    }

    else if (specialized Rope._Node.formSuccessor(of:)(&v289, v3))
    {
      swift_unknownObjectRelease();
      v235 = *(&v289 + 1);
    }

    else
    {
      v236 = *(v3 + 18);
      v237 = *(v3 + 16);
      swift_unknownObjectRelease();
      v235 = ((-15 << ((4 * v236 + 8) & 0x3C)) - 1) & v236 | (v237 << ((4 * v236 + 8) & 0x3C));
      *&v289 = v227;
      *(&v289 + 1) = v235;
      v290 = 0;
    }

    v238 = v272;
    v5 = v273;
    v211 = v270;
    if (v6 < v274)
    {
      v3 = v289;
      v218 = v290;
    }

    else
    {
      v4 = v273[9];
      if (v274 == v270)
      {
        v239 = v273[10];
        v240 = v273[11];
        v3 = v273[12];
        swift_unknownObjectRetain();
        if (specialized Rope.find<A>(at:in:preferEnd:)(v211, 0, v4, v239, v240, v3) != v3)
        {
          goto LABEL_400;
        }

        v235 = v241;
        v218 = v242;
        v5 = v243;
        if (v4)
        {
          v238 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v3, v241, v242, v4, v239);
          swift_unknownObjectRelease();
          v6 = v211 - v5;
          if (__OFSUB__(v211, v5))
          {
            goto LABEL_401;
          }
        }

        else
        {
          v238 = 0;
          v6 = v211 - v243;
          if (__OFSUB__(v211, v243))
          {
            goto LABEL_401;
          }
        }

        v5 = v273;
      }

      else
      {
        v3 = v273[12];
        if (v4)
        {
          v218 = 0;
          v238 = v273[10];
          v6 = v273[11];
          v235 = ((-15 << ((4 * *(v4 + 18) + 8) & 0x3C)) - 1) & *(v4 + 18) | (*(v4 + 16) << ((4 * *(v4 + 18) + 8) & 0x3C));
        }

        else
        {
          v235 = 0;
          v218 = 0;
          v238 = 0;
          v6 = 0;
        }
      }
    }

    *&v278 = v3;
    *(&v278 + 1) = v235;
    *&v279 = v218;
    *(&v279 + 1) = v238;
    *&v280 = v6;
  }

LABEL_340:

  result = v277;
  if (v276 < v277)
  {
    goto LABEL_406;
  }

  return result;
}
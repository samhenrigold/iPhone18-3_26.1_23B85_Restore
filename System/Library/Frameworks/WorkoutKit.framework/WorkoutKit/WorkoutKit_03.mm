uint64_t getEnumTag for Apple_Workout_PowerValue.PowerUnit(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Apple_Workout_PowerValue.PowerUnit(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_PowerValue.PowerUnit@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance Apple_Workout_PowerValue.PowerUnit()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_PowerValue.PowerUnit@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Apple_Workout_PowerValue.PowerUnit(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_PowerValue.PowerUnit(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_PowerValue.PowerUnit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_PowerValue.PowerUnit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_PowerValue.PowerUnit(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_PowerValue.PowerUnit] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_PowerValue.PowerUnit] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_PowerValue.PowerUnit] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10WorkoutKit06Apple_A11_PowerValueV0D4UnitOGMd, &_sSay10WorkoutKit06Apple_A11_PowerValueV0D4UnitOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_PowerValue.PowerUnit] and conformance [A]);
  }

  return result;
}

uint64_t Apple_Workout_PowerAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        closure #3 in Apple_Workout_PowerAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 2:
        closure #2 in Apple_Workout_PowerAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 1:
        closure #1 in Apple_Workout_PowerAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_PowerAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Workout_PowerValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1, v12, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v12, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v12, v19, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v19, v16, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v16, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
      v30 = v45;
    }

    else
    {
      outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
      v32 = v40;
      outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v16, v40, type metadata accessor for Apple_Workout_PowerValue);
      outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v32, v25, type metadata accessor for Apple_Workout_PowerValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue, &protocol conformance descriptor for Apple_Workout_PowerValue);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  }

  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v25, v33, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
    return outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v33, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  }

  else
  {
    v36 = v41;
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v33, v41, type metadata accessor for Apple_Workout_PowerValue);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
    v37 = v39;
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v39, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v36, v37, type metadata accessor for Apple_Workout_PowerValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #2 in Apple_Workout_PowerAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Workout_PowerRange(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerRangeVSgMd, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1, v12, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v12, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v12, v19, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v19, v16, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMd, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMR);
      v32 = v41;
      outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v16, v41, type metadata accessor for Apple_Workout_PowerRange);
      outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v32, v25, type metadata accessor for Apple_Workout_PowerRange);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v16, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
      v30 = v45;
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange, type metadata accessor for Apple_Workout_PowerRange, &protocol conformance descriptor for Apple_Workout_PowerRange);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMd, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMR);
  }

  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v25, v33, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMd, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMd, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMR);
    return outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v33, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMd, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v33, v40, type metadata accessor for Apple_Workout_PowerRange);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMd, &_s10WorkoutKit06Apple_A11_PowerRangeVSgMR);
    v37 = v39;
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v39, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v36, v37, type metadata accessor for Apple_Workout_PowerRange);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #3 in Apple_Workout_PowerAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Workout_ZoneValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1, v12, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v12, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v12, v19, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v19, v16, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v25, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
      v32 = v41;
      outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v16, v41, type metadata accessor for Apple_Workout_ZoneValue);
      outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v32, v25, type metadata accessor for Apple_Workout_ZoneValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v16, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
      v30 = v45;
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue, &protocol conformance descriptor for Apple_Workout_ZoneValue);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v25, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
  }

  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v25, v33, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v25, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
    return outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v33, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v33, v40, type metadata accessor for Apple_Workout_ZoneValue);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v25, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
    v37 = v39;
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v39, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v36, v37, type metadata accessor for Apple_Workout_ZoneValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t Apple_Workout_PowerAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v3, &v14 - v9, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v11 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in Apple_Workout_PowerAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in Apple_Workout_PowerAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in Apple_Workout_PowerAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v10, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for Apple_Workout_PowerAlert(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_PowerAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Workout_PowerValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1, v7, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v11 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v7, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v7, v10, type metadata accessor for Apple_Workout_PowerValue);
    lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue, &protocol conformance descriptor for Apple_Workout_PowerValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v10, type metadata accessor for Apple_Workout_PowerValue);
  }

  result = outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v7, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_PowerAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Workout_PowerRange(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1, v7, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v11 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v7, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v7, v10, type metadata accessor for Apple_Workout_PowerRange);
    lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange, type metadata accessor for Apple_Workout_PowerRange, &protocol conformance descriptor for Apple_Workout_PowerRange);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v10, type metadata accessor for Apple_Workout_PowerRange);
  }

  result = outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v7, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_PowerAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Workout_ZoneValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1, v7, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v11 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v7, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v7, v10, type metadata accessor for Apple_Workout_ZoneValue);
    lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue, &protocol conformance descriptor for Apple_Workout_ZoneValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v10, type metadata accessor for Apple_Workout_ZoneValue);
  }

  result = outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v7, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_PowerAlert@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_PowerAlert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_PowerAlert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_PowerAlert(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert, type metadata accessor for Apple_Workout_PowerAlert, &protocol conformance descriptor for Apple_Workout_PowerAlert);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_PowerAlert(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert, type metadata accessor for Apple_Workout_PowerAlert, &protocol conformance descriptor for Apple_Workout_PowerAlert);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_PowerAlert(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert, type metadata accessor for Apple_Workout_PowerAlert, &protocol conformance descriptor for Apple_Workout_PowerAlert);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_PowerValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_PowerValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type Apple_Workout_PowerValue.PowerUnit and conformance Apple_Workout_PowerValue.PowerUnit(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (!v3[2] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for Apple_Workout_PowerValue(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_PowerValue@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_PowerValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_PowerValue(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_PowerValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue, &protocol conformance descriptor for Apple_Workout_PowerValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_PowerValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue, &protocol conformance descriptor for Apple_Workout_PowerValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_PowerValue(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue, &protocol conformance descriptor for Apple_Workout_PowerValue);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_PowerRange.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in Apple_Workout_PowerRange.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_PowerRange.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_PowerRange.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_PowerRange(0);
  type metadata accessor for Apple_Workout_PowerValue(0);
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue, &protocol conformance descriptor for Apple_Workout_PowerValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_PowerRange.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_PowerRange(0);
  type metadata accessor for Apple_Workout_PowerValue(0);
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue, &protocol conformance descriptor for Apple_Workout_PowerValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_PowerRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_PowerRange.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_PowerRange.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_PowerRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_PowerValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_PowerRange(0);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1 + *(v12 + 20), v7, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v7, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  }

  outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v7, v11, type metadata accessor for Apple_Workout_PowerValue);
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue, &protocol conformance descriptor for Apple_Workout_PowerValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v11, type metadata accessor for Apple_Workout_PowerValue);
}

uint64_t closure #2 in Apple_Workout_PowerRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_PowerValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_PowerRange(0);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1 + *(v12 + 24), v7, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v7, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  }

  outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v7, v11, type metadata accessor for Apple_Workout_PowerValue);
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue, &protocol conformance descriptor for Apple_Workout_PowerValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v11, type metadata accessor for Apple_Workout_PowerValue);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_PowerRange@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_PowerValue(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_PowerRange@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_PowerRange(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_PowerRange(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange, type metadata accessor for Apple_Workout_PowerRange, &protocol conformance descriptor for Apple_Workout_PowerRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_PowerAlert@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_PowerRange(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange, type metadata accessor for Apple_Workout_PowerRange, &protocol conformance descriptor for Apple_Workout_PowerRange);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_PowerAlert(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_PowerRange(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange, type metadata accessor for Apple_Workout_PowerRange, &protocol conformance descriptor for Apple_Workout_PowerRange);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_PowerAlert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized static Apple_Workout_PowerValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (*(a1 + 2) == *(a2 + 2))
  {
    type metadata accessor for Apple_Workout_PowerValue(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Apple_Workout_PowerRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_PowerValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v42 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSg_ADtMd, &_s10WorkoutKit06Apple_A11_PowerValueVSg_ADtMR);
  MEMORY[0x28223BE20](v14);
  v47 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v45 = type metadata accessor for Apple_Workout_PowerRange(0);
  v46 = v14;
  v19 = *(v45 + 20);
  v20 = *(v14 + 48);
  v48 = a1;
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1 + v19, v18, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  v49 = a2;
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a2 + v19, &v18[v20], &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    if (v21(&v18[v20], 1, v4) == 1)
    {
      v22 = v4;
      outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v18, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v18, v13, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  if (v21(&v18[v20], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v13, type metadata accessor for Apple_Workout_PowerValue);
LABEL_10:
    v27 = &_s10WorkoutKit06Apple_A11_PowerValueVSg_ADtMd;
    v28 = &_s10WorkoutKit06Apple_A11_PowerValueVSg_ADtMR;
LABEL_33:
    v34 = v18;
    goto LABEL_34;
  }

  v29 = &v18[v20];
  v30 = v44;
  outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v29, v44, type metadata accessor for Apple_Workout_PowerValue);
  v31 = *v13;
  v32 = *v30;
  if (*(v13 + 8))
  {
    v31 = *v13 != 0;
  }

  if (*(v30 + 8) == 1)
  {
    if (v32)
    {
      if (v31 != 1)
      {
        goto LABEL_32;
      }
    }

    else if (v31)
    {
LABEL_32:
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v30, type metadata accessor for Apple_Workout_PowerValue);
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v13, type metadata accessor for Apple_Workout_PowerValue);
      v27 = &_s10WorkoutKit06Apple_A11_PowerValueVSgMd;
      v28 = &_s10WorkoutKit06Apple_A11_PowerValueVSgMR;
      goto LABEL_33;
    }
  }

  else if (v31 != v32)
  {
    goto LABEL_32;
  }

  if (v13[2] != *(v30 + 16))
  {
    goto LABEL_32;
  }

  v22 = v4;
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v30, type metadata accessor for Apple_Workout_PowerValue);
  outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v13, type metadata accessor for Apple_Workout_PowerValue);
  outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v18, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  if ((v39 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_4:
  v23 = *(v45 + 24);
  v24 = *(v46 + 48);
  v25 = v47;
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v48 + v23, v47, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v49 + v23, v25 + v24, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  if (v21(v25, 1, v22) != 1)
  {
    v33 = v43;
    outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v25, v43, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
    if (v21((v25 + v24), 1, v22) == 1)
    {
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v33, type metadata accessor for Apple_Workout_PowerValue);
      goto LABEL_19;
    }

    v35 = v25 + v24;
    v36 = v42;
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v35, v42, type metadata accessor for Apple_Workout_PowerValue);
    v37 = *v33;
    v38 = *v36;
    if (*(v33 + 8))
    {
      v37 = *v33 != 0;
    }

    if (*(v36 + 8) == 1)
    {
      if (v38)
      {
        if (v37 != 1)
        {
          goto LABEL_43;
        }
      }

      else if (v37)
      {
LABEL_43:
        outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v36, type metadata accessor for Apple_Workout_PowerValue);
        outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v33, type metadata accessor for Apple_Workout_PowerValue);
        v27 = &_s10WorkoutKit06Apple_A11_PowerValueVSgMd;
        v28 = &_s10WorkoutKit06Apple_A11_PowerValueVSgMR;
        v34 = v25;
        goto LABEL_34;
      }
    }

    else if (v37 != v38)
    {
      goto LABEL_43;
    }

    if (*(v33 + 16) == *(v36 + 16))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v36, type metadata accessor for Apple_Workout_PowerValue);
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v33, type metadata accessor for Apple_Workout_PowerValue);
      outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
      if (v41)
      {
        goto LABEL_7;
      }

LABEL_35:
      v26 = 0;
      return v26 & 1;
    }

    goto LABEL_43;
  }

  if (v21((v25 + v24), 1, v22) != 1)
  {
LABEL_19:
    v27 = &_s10WorkoutKit06Apple_A11_PowerValueVSg_ADtMd;
    v28 = &_s10WorkoutKit06Apple_A11_PowerValueVSg_ADtMR;
    v34 = v25;
LABEL_34:
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v34, v27, v28);
    goto LABEL_35;
  }

  outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
LABEL_7:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v26 & 1;
}

uint64_t specialized static Apple_Workout_PowerAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSg_AFtMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSg_AFtMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a1, &v20 - v12, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(a2, &v13[v15], &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v13, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
LABEL_9:
      type metadata accessor for Apple_Workout_PowerAlert(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(v13, v10, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v10, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
LABEL_6:
    outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v13, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSg_AFtMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(&v13[v15], v7, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  v18 = specialized static Apple_Workout_PowerAlert.OneOf_PowerAlertTarget.== infix(_:_:)(v10, v7);
  outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v7, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v10, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v13, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static Apple_Workout_PowerAlert.OneOf_PowerAlertTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v40 = type metadata accessor for Apple_Workout_ZoneValue(0);
  MEMORY[0x28223BE20](v40);
  v41 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Apple_Workout_PowerRange(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_PowerValue(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = (&v39 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetO_AEtMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetO_AEtMR);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v39 - v20;
  v23 = *(v22 + 56);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(a1, &v39 - v20);
  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v42, &v21[v23]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v21, v18);
    if (swift_getEnumCaseMultiPayload())
    {
      v26 = type metadata accessor for Apple_Workout_PowerValue;
      v27 = v18;
LABEL_13:
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v27, v26);
      outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(v21, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetO_AEtMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetO_AEtMR);
LABEL_32:
      v25 = 0;
      return v25 & 1;
    }

    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(&v21[v23], v9, type metadata accessor for Apple_Workout_PowerValue);
    v33 = *v18;
    v34 = *v9;
    if (*(v18 + 8))
    {
      v33 = *v18 != 0;
    }

    if (*(v9 + 8) == 1)
    {
      if (v34)
      {
        if (v33 != 1)
        {
          goto LABEL_29;
        }
      }

      else if (v33)
      {
        goto LABEL_29;
      }
    }

    else if (v33 != v34)
    {
      goto LABEL_29;
    }

    if (v18[2] == v9[2])
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v9, type metadata accessor for Apple_Workout_PowerValue);
      if (v37)
      {
        v31 = type metadata accessor for Apple_Workout_PowerValue;
        v32 = v18;
        goto LABEL_28;
      }

      goto LABEL_30;
    }

LABEL_29:
    outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v9, type metadata accessor for Apple_Workout_PowerValue);
LABEL_30:
    v35 = type metadata accessor for Apple_Workout_PowerValue;
    v36 = v18;
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v21, v12);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v26 = type metadata accessor for Apple_Workout_ZoneValue;
      v27 = v12;
      goto LABEL_13;
    }

    v28 = &v21[v23];
    v29 = v41;
    outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v28, v41, type metadata accessor for Apple_Workout_ZoneValue);
    if (*v12 == *v29)
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v29, type metadata accessor for Apple_Workout_ZoneValue);
      if (v30)
      {
        v31 = type metadata accessor for Apple_Workout_ZoneValue;
        v32 = v12;
LABEL_28:
        outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v32, v31);
        outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v21, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
        v25 = 1;
        return v25 & 1;
      }
    }

    else
    {
      outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v29, type metadata accessor for Apple_Workout_ZoneValue);
    }

    v35 = type metadata accessor for Apple_Workout_ZoneValue;
    v36 = v12;
LABEL_31:
    outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v36, v35);
    outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v21, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
    goto LABEL_32;
  }

  outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v21, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26 = type metadata accessor for Apple_Workout_PowerRange;
    v27 = v15;
    goto LABEL_13;
  }

  outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(&v21[v23], v6, type metadata accessor for Apple_Workout_PowerRange);
  v25 = specialized static Apple_Workout_PowerRange.== infix(_:_:)(v15, v6);
  outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v6, type metadata accessor for Apple_Workout_PowerRange);
  outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v15, type metadata accessor for Apple_Workout_PowerRange);
  outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(v21, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  return v25 & 1;
}

uint64_t outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of (Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata completion function for Apple_Workout_SpeedAlert(uint64_t a1)
{
  type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_SpeedValue(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_SpeedRange(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_SpeedAlert(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_SpeedRange(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_SpeedValue?, type metadata accessor for Apple_Workout_SpeedValue);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for Apple_Workout_SpeedValue(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_DistanceValue?, type metadata accessor for Apple_Workout_DistanceValue);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_TimeValue?, type metadata accessor for Apple_Workout_TimeValue);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Apple_Workout_SpeedAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in Apple_Workout_SpeedAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_SpeedAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_SpeedAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1, v12, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v12, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v12, v19, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v19, v16, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v16, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
      v30 = v45;
    }

    else
    {
      outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
      v32 = v41;
      outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v16, v41, type metadata accessor for Apple_Workout_SpeedValue);
      outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v32, v25, type metadata accessor for Apple_Workout_SpeedValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue, &protocol conformance descriptor for Apple_Workout_SpeedValue);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  }

  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v25, v33, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
    return outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v33, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v33, v40, type metadata accessor for Apple_Workout_SpeedValue);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
    v37 = v39;
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v39, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v36, v37, type metadata accessor for Apple_Workout_SpeedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #2 in Apple_Workout_SpeedAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Workout_SpeedRange(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedRangeVSgMd, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1, v12, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v12, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v12, v19, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v19, v16, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMd, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMR);
      v32 = v41;
      outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v16, v41, type metadata accessor for Apple_Workout_SpeedRange);
      outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v32, v25, type metadata accessor for Apple_Workout_SpeedRange);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v16, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
      v30 = v45;
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange, type metadata accessor for Apple_Workout_SpeedRange, &protocol conformance descriptor for Apple_Workout_SpeedRange);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMd, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMR);
  }

  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v25, v33, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMd, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMd, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMR);
    return outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v33, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMd, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v33, v40, type metadata accessor for Apple_Workout_SpeedRange);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v25, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMd, &_s10WorkoutKit06Apple_A11_SpeedRangeVSgMR);
    v37 = v39;
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v39, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v36, v37, type metadata accessor for Apple_Workout_SpeedRange);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t Apple_Workout_SpeedAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v3, &v13 - v9, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v11 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in Apple_Workout_SpeedAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in Apple_Workout_SpeedAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v10, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for Apple_Workout_SpeedAlert(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_SpeedAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Workout_SpeedValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1, v7, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v11 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v7, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v7, v10, type metadata accessor for Apple_Workout_SpeedValue);
    lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue, &protocol conformance descriptor for Apple_Workout_SpeedValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v10, type metadata accessor for Apple_Workout_SpeedValue);
  }

  result = outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v7, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_SpeedAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Workout_SpeedRange(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1, v7, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v11 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v7, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v7, v10, type metadata accessor for Apple_Workout_SpeedRange);
    lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange, type metadata accessor for Apple_Workout_SpeedRange, &protocol conformance descriptor for Apple_Workout_SpeedRange);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v10, type metadata accessor for Apple_Workout_SpeedRange);
  }

  result = outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v7, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_SpeedAlert@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_SpeedAlert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_SpeedAlert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_SpeedAlert(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert, type metadata accessor for Apple_Workout_SpeedAlert, &protocol conformance descriptor for Apple_Workout_SpeedAlert);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_SpeedAlert(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert, type metadata accessor for Apple_Workout_SpeedAlert, &protocol conformance descriptor for Apple_Workout_SpeedAlert);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_SpeedAlert(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert, type metadata accessor for Apple_Workout_SpeedAlert, &protocol conformance descriptor for Apple_Workout_SpeedAlert);

  return Message.hash(into:)();
}

uint64_t closure #1 in Apple_Workout_SpeedValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_SpeedValue(0);
  type metadata accessor for Apple_Workout_DistanceValue(0);
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue, &protocol conformance descriptor for Apple_Workout_DistanceValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_SpeedValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_SpeedValue(0);
  type metadata accessor for Apple_Workout_TimeValue(0);
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in Apple_Workout_SpeedValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_SpeedValue(0);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1 + *(v12 + 20), v7, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v7, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  }

  outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v7, v11, type metadata accessor for Apple_Workout_DistanceValue);
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue, &protocol conformance descriptor for Apple_Workout_DistanceValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v11, type metadata accessor for Apple_Workout_DistanceValue);
}

uint64_t closure #2 in Apple_Workout_SpeedValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_TimeValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_SpeedValue(0);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1 + *(v12 + 24), v7, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v7, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  }

  outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v7, v11, type metadata accessor for Apple_Workout_TimeValue);
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v11, type metadata accessor for Apple_Workout_TimeValue);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_SpeedValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_DistanceValue(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Apple_Workout_TimeValue(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_SpeedValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue, &protocol conformance descriptor for Apple_Workout_SpeedValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_SpeedValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue, &protocol conformance descriptor for Apple_Workout_SpeedValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_SpeedValue(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue, &protocol conformance descriptor for Apple_Workout_SpeedValue);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_SpeedValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_SpeedRange.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_SpeedRange(0);
  type metadata accessor for Apple_Workout_SpeedValue(0);
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue, &protocol conformance descriptor for Apple_Workout_SpeedValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_SpeedRange.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_SpeedRange(0);
  type metadata accessor for Apple_Workout_SpeedValue(0);
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue, &protocol conformance descriptor for Apple_Workout_SpeedValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_SpeedValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    a5(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_SpeedRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_SpeedRange(0);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1 + *(v12 + 20), v7, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v7, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  }

  outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v7, v11, type metadata accessor for Apple_Workout_SpeedValue);
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue, &protocol conformance descriptor for Apple_Workout_SpeedValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v11, type metadata accessor for Apple_Workout_SpeedValue);
}

uint64_t closure #2 in Apple_Workout_SpeedRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_SpeedRange(0);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1 + *(v12 + 24), v7, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v7, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  }

  outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v7, v11, type metadata accessor for Apple_Workout_SpeedValue);
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue, &protocol conformance descriptor for Apple_Workout_SpeedValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v11, type metadata accessor for Apple_Workout_SpeedValue);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_SpeedRange@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_SpeedValue@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_SpeedValue(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_SpeedRange(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange, type metadata accessor for Apple_Workout_SpeedRange, &protocol conformance descriptor for Apple_Workout_SpeedRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_SpeedAlert@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_SpeedRange(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange, type metadata accessor for Apple_Workout_SpeedRange, &protocol conformance descriptor for Apple_Workout_SpeedRange);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_SpeedAlert(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_SpeedRange(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange, type metadata accessor for Apple_Workout_SpeedRange, &protocol conformance descriptor for Apple_Workout_SpeedRange);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_SpeedAlert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized static Apple_Workout_SpeedRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedValueVSg_ADtMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSg_ADtMR);
  MEMORY[0x28223BE20](v12);
  v34 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v33 = type metadata accessor for Apple_Workout_SpeedRange(0);
  v17 = *(v33 + 20);
  v18 = *(v12 + 48);
  v35 = a1;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1 + v17, v16, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  v36 = a2;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a2 + v17, &v16[v18], &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v16, v11, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v32;
      outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(&v16[v18], v32, type metadata accessor for Apple_Workout_SpeedValue);
      v22 = specialized static Apple_Workout_SpeedValue.== infix(_:_:)(v11, v21);
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v21, type metadata accessor for Apple_Workout_SpeedValue);
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v11, type metadata accessor for Apple_Workout_SpeedValue);
      outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v16, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
      if ((v22 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v11, type metadata accessor for Apple_Workout_SpeedValue);
LABEL_6:
    v20 = v16;
LABEL_14:
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v20, &_s10WorkoutKit06Apple_A11_SpeedValueVSg_ADtMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSg_ADtMR);
    goto LABEL_15;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v16, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
LABEL_8:
  v23 = v34;
  v24 = *(v33 + 24);
  v25 = *(v12 + 48);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v35 + v24, v34, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v36 + v24, v23 + v25, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  if (v19(v23, 1, v4) == 1)
  {
    if (v19((v23 + v25), 1, v4) == 1)
    {
      outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v23, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
LABEL_18:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_13;
  }

  v26 = v31;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v23, v31, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  if (v19((v23 + v25), 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v26, type metadata accessor for Apple_Workout_SpeedValue);
LABEL_13:
    v20 = v23;
    goto LABEL_14;
  }

  v29 = v32;
  outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v23 + v25, v32, type metadata accessor for Apple_Workout_SpeedValue);
  v30 = specialized static Apple_Workout_SpeedValue.== infix(_:_:)(v26, v29);
  outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v29, type metadata accessor for Apple_Workout_SpeedValue);
  outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v26, type metadata accessor for Apple_Workout_SpeedValue);
  outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v23, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  if (v30)
  {
    goto LABEL_18;
  }

LABEL_15:
  v27 = 0;
  return v27 & 1;
}

uint64_t specialized static Apple_Workout_SpeedAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSg_AFtMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSg_AFtMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1, &v20 - v12, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a2, &v13[v15], &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v13, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
LABEL_9:
      type metadata accessor for Apple_Workout_SpeedAlert(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v13, v10, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v10, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
LABEL_6:
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v13, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSg_AFtMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(&v13[v15], v7, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
  v18 = specialized static Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget.== infix(_:_:)(v10, v7);
  outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v7, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
  outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v10, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
  outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v13, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static Apple_Workout_SpeedValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for Apple_Workout_TimeValue(0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v37 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMd, &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMR);
  MEMORY[0x28223BE20](v41);
  v44 = &v37 - v7;
  v8 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v37 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v40 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v19 = *(v40 + 20);
  v20 = *(v16 + 56);
  v45 = a1;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(a1 + v19, v18, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v46 + v19, &v18[v20], &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) != 1)
  {
    outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v18, v14, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    if (v21(&v18[v20], 1, v8) != 1)
    {
      outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(&v18[v20], v11, type metadata accessor for Apple_Workout_DistanceValue);
      v25 = specialized static Apple_Workout_DistanceValue.== infix(_:_:)(v14, v11);
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v11, type metadata accessor for Apple_Workout_DistanceValue);
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v14, type metadata accessor for Apple_Workout_DistanceValue);
      outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v18, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v14, type metadata accessor for Apple_Workout_DistanceValue);
LABEL_6:
    v22 = &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMd;
    v23 = &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMR;
    v24 = v18;
LABEL_14:
    outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v18, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
LABEL_8:
  v26 = *(v40 + 24);
  v27 = *(v41 + 48);
  v28 = v44;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v45 + v26, v44, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v46 + v26, v28 + v27, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v29 = v43;
  v30 = *(v42 + 48);
  if (v30(v28, 1, v43) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v28, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
LABEL_18:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v39;
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(v28, v39, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v31, type metadata accessor for Apple_Workout_TimeValue);
LABEL_13:
    v22 = &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMd;
    v23 = &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMR;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v38;
  outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v34, v38, type metadata accessor for Apple_Workout_TimeValue);
  v36 = static Apple_Workout_TimeValue.== infix(_:_:)(v31, v35);
  outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v35, type metadata accessor for Apple_Workout_TimeValue);
  outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v31, type metadata accessor for Apple_Workout_TimeValue);
  outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v28, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t specialized static Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_SpeedRange(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_SpeedValue(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetO_AEtMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetO_AEtMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(a1, &v27 - v17);
  outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(a2, &v18[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(&v18[v20], v6, type metadata accessor for Apple_Workout_SpeedRange);
      v21 = specialized static Apple_Workout_SpeedRange.== infix(_:_:)(v12, v6);
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v6, type metadata accessor for Apple_Workout_SpeedRange);
      v22 = v12;
      v23 = type metadata accessor for Apple_Workout_SpeedRange;
LABEL_9:
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v22, v23);
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v18, type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget);
      return v21 & 1;
    }

    v24 = type metadata accessor for Apple_Workout_SpeedRange;
    v25 = v12;
  }

  else
  {
    outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v18, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(&v18[v20], v9, type metadata accessor for Apple_Workout_SpeedValue);
      v21 = specialized static Apple_Workout_SpeedValue.== infix(_:_:)(v15, v9);
      outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v9, type metadata accessor for Apple_Workout_SpeedValue);
      v22 = v15;
      v23 = type metadata accessor for Apple_Workout_SpeedValue;
      goto LABEL_9;
    }

    v24 = type metadata accessor for Apple_Workout_SpeedValue;
    v25 = v15;
  }

  outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(v25, v24);
  outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(v18, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetO_AEtMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetO_AEtMR);
  v21 = 0;
  return v21 & 1;
}

uint64_t outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of (Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?, Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for Apple_Workout_PacerWorkoutComposition(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_PacerWorkoutComposition;
  if (!type metadata singleton initialization cache for Apple_Workout_PacerWorkoutComposition)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_PacerWorkoutComposition(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?();
    if (v2 <= 0x3F)
    {
      _s10WorkoutKit06Apple_A14_DistanceValueVSgMaTm_0(319, &lazy cache variable for type metadata for Apple_Workout_DistanceValue?, type metadata accessor for Apple_Workout_DistanceValue);
      if (v3 <= 0x3F)
      {
        _s10WorkoutKit06Apple_A14_DistanceValueVSgMaTm_0(319, &lazy cache variable for type metadata for Apple_Workout_TimeValue?, type metadata accessor for Apple_Workout_TimeValue);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void _s10WorkoutKit06Apple_A14_DistanceValueVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Apple_Workout_PacerWorkoutComposition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        closure #3 in Apple_Workout_PacerWorkoutComposition.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }

      else if (result == 4)
      {
        closure #4 in Apple_Workout_PacerWorkoutComposition.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for Apple_Workout_PacerWorkoutComposition(0);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_PacerWorkoutComposition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_PacerWorkoutComposition(0);
  type metadata accessor for Apple_Workout_DistanceValue(0);
  lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue, &protocol conformance descriptor for Apple_Workout_DistanceValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #4 in Apple_Workout_PacerWorkoutComposition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_PacerWorkoutComposition(0);
  type metadata accessor for Apple_Workout_TimeValue(0);
  lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_PacerWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_PacerWorkoutComposition.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in Apple_Workout_PacerWorkoutComposition.traverse<A>(visitor:)(v3, a1, a2, a3);
      closure #3 in Apple_Workout_PacerWorkoutComposition.traverse<A>(visitor:)(v3, a1, a2, a3);
      type metadata accessor for Apple_Workout_PacerWorkoutComposition(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_PacerWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_PacerWorkoutComposition(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_PacerWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_PacerWorkoutComposition(0);
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(a1 + *(v12 + 28), v7, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of (Apple_Workout_DistanceValue?, Apple_Workout_DistanceValue?)(v7, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  }

  _s10WorkoutKit06Apple_A10_TimeValueVWObTm_1(v7, v11, type metadata accessor for Apple_Workout_DistanceValue);
  lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue, &protocol conformance descriptor for Apple_Workout_DistanceValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(v11, type metadata accessor for Apple_Workout_DistanceValue);
}

uint64_t closure #3 in Apple_Workout_PacerWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_TimeValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_PacerWorkoutComposition(0);
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(a1 + *(v12 + 32), v7, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of (Apple_Workout_DistanceValue?, Apple_Workout_DistanceValue?)(v7, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  }

  _s10WorkoutKit06Apple_A10_TimeValueVWObTm_1(v7, v11, type metadata accessor for Apple_Workout_TimeValue);
  lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(v11, type metadata accessor for Apple_Workout_TimeValue);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_PacerWorkoutComposition@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = a1[7];
  v5 = &a2[a1[6]];
  *v5 = 0;
  v5[4] = 1;
  v6 = type metadata accessor for Apple_Workout_DistanceValue(0);
  (*(*(v6 - 8) + 56))(&a2[v4], 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for Apple_Workout_TimeValue(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_PacerWorkoutComposition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_PacerWorkoutComposition(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_PacerWorkoutComposition(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition, type metadata accessor for Apple_Workout_PacerWorkoutComposition, &protocol conformance descriptor for Apple_Workout_PacerWorkoutComposition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_PacerWorkoutComposition@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_PacerWorkoutComposition._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_PacerWorkoutComposition(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition, type metadata accessor for Apple_Workout_PacerWorkoutComposition, &protocol conformance descriptor for Apple_Workout_PacerWorkoutComposition);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_PacerWorkoutComposition(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_PacerWorkoutComposition(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition, type metadata accessor for Apple_Workout_PacerWorkoutComposition, &protocol conformance descriptor for Apple_Workout_PacerWorkoutComposition);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_PacerWorkoutComposition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_PacerWorkoutComposition.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Apple_Workout_TimeValue(0);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = &v47 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMd, &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMR);
  MEMORY[0x28223BE20](v52);
  v10 = &v47 - v9;
  v11 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMR);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  if (*a1 != *a2)
  {
    goto LABEL_22;
  }

  v21 = type metadata accessor for Apple_Workout_PacerWorkoutComposition(0);
  v22 = *(v21 + 24);
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 4);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 4);
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      goto LABEL_22;
    }
  }

  v47 = v6;
  v48 = v10;
  v27 = *(v21 + 28);
  v28 = *(v18 + 48);
  v49 = a1;
  v50 = v21;
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(a1 + v27, v20, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v29 = a2 + v27;
  v30 = a2;
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(v29, &v20[v28], &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v31 = *(v12 + 48);
  if (v31(v20, 1, v11) != 1)
  {
    _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(v20, v17, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    if (v31(&v20[v28], 1, v11) != 1)
    {
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_1(&v20[v28], v14, type metadata accessor for Apple_Workout_DistanceValue);
      v35 = static Apple_Workout_DistanceValue.== infix(_:_:)();
      _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(v14, type metadata accessor for Apple_Workout_DistanceValue);
      _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(v17, type metadata accessor for Apple_Workout_DistanceValue);
      outlined destroy of (Apple_Workout_DistanceValue?, Apple_Workout_DistanceValue?)(v20, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      if ((v35 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(v17, type metadata accessor for Apple_Workout_DistanceValue);
LABEL_13:
    v32 = &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMd;
    v33 = &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMR;
    v34 = v20;
LABEL_21:
    outlined destroy of (Apple_Workout_DistanceValue?, Apple_Workout_DistanceValue?)(v34, v32, v33);
    goto LABEL_22;
  }

  if (v31(&v20[v28], 1, v11) != 1)
  {
    goto LABEL_13;
  }

  outlined destroy of (Apple_Workout_DistanceValue?, Apple_Workout_DistanceValue?)(v20, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
LABEL_15:
  v36 = *(v50 + 32);
  v37 = *(v52 + 48);
  v38 = v48;
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(v49 + v36, v48, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(v30 + v36, v38 + v37, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v39 = v54;
  v40 = *(v53 + 48);
  if (v40(v38, 1, v54) == 1)
  {
    if (v40(v38 + v37, 1, v39) == 1)
    {
      outlined destroy of (Apple_Workout_DistanceValue?, Apple_Workout_DistanceValue?)(v38, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
LABEL_25:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v42 & 1;
    }

    goto LABEL_20;
  }

  v41 = v51;
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(v38, v51, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v40(v38 + v37, 1, v39) == 1)
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(v41, type metadata accessor for Apple_Workout_TimeValue);
LABEL_20:
    v32 = &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMd;
    v33 = &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMR;
    v34 = v38;
    goto LABEL_21;
  }

  v44 = v38 + v37;
  v45 = v47;
  _s10WorkoutKit06Apple_A10_TimeValueVWObTm_1(v44, v47, type metadata accessor for Apple_Workout_TimeValue);
  v46 = static Apple_Workout_TimeValue.== infix(_:_:)(v41, v45);
  _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(v45, type metadata accessor for Apple_Workout_TimeValue);
  _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(v41, type metadata accessor for Apple_Workout_TimeValue);
  outlined destroy of (Apple_Workout_DistanceValue?, Apple_Workout_DistanceValue?)(v38, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v46)
  {
    goto LABEL_25;
  }

LABEL_22:
  v42 = 0;
  return v42 & 1;
}

uint64_t _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of (Apple_Workout_DistanceValue?, Apple_Workout_DistanceValue?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10WorkoutKit06Apple_A10_TimeValueVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10WorkoutKit06Apple_A10_TimeValueVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double *closure #1 in CLLocationCoordinate2D.protoRepresentation.getter(double *result, double a2, double a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

Swift::Double __swiftcall CLLocationCoordinate2D.distance(from:)(__C::CLLocationCoordinate2D from)
{
  v3 = v2;
  v4 = v1;
  v5 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:from.latitude longitude:from.longitude];
  v6 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v4 longitude:v3];
  [v6 distanceFromLocation_];
  v8 = v7;

  return v8;
}

uint64_t CLLocationCoordinate2D.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x23EEA0D70](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x23EEA0D70](*&v3);
}

Swift::Int CLLocationCoordinate2D.hashValue.getter(double a1, double a2)
{
  Hasher.init(_seed:)();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x23EEA0D70](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x23EEA0D70](*&v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CLLocationCoordinate2D()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  CLLocationCoordinate2D.hash(into:)(v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CLLocationCoordinate2D(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  CLLocationCoordinate2D.hash(into:)(v2, v3);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CLLocationCoordinate2D and conformance CLLocationCoordinate2D()
{
  result = lazy protocol witness table cache variable for type CLLocationCoordinate2D and conformance CLLocationCoordinate2D;
  if (!lazy protocol witness table cache variable for type CLLocationCoordinate2D and conformance CLLocationCoordinate2D)
  {
    type metadata accessor for CLLocationCoordinate2D(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLLocationCoordinate2D and conformance CLLocationCoordinate2D);
  }

  return result;
}

uint64_t Array<A>.calculateLocationDistance()(double *a1)
{
  v1 = *(a1 + 2);
  if (v1)
  {
    v2 = a1 + 5;
    v3 = a1[5];
    v4 = a1[4];
    v5 = 0.0;
    do
    {
      v6 = *(v2 - 1);
      v7 = *v2;
      v8 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v4 longitude:v3];
      v9 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v6 longitude:v7];
      [v9 distanceFromLocation_];
      v11 = v10;

      v5 = v5 + v11;
      v2 += 2;
      v4 = v6;
      v3 = v7;
      --v1;
    }

    while (v1);
  }

  v12 = [objc_opt_self() meters];
  type metadata accessor for NSUnitLength();

  return Measurement.init(value:unit:)();
}

unint64_t type metadata accessor for NSUnitLength()
{
  result = lazy cache variable for type metadata for NSUnitLength;
  if (!lazy cache variable for type metadata for NSUnitLength)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUnitLength);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static Apple_Workout_PowerAlert.targetAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  type metadata accessor for Apple_Workout_PowerValue(0);
  v10 = a2;
  lazy protocol witness table accessor for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue, &protocol conformance descriptor for Apple_Workout_PowerValue);
  static Message.with(_:)();
  v7 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_1(v6, a1, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
}

uint64_t closure #1 in static Apple_Workout_PowerAlert.targetAlert(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18[-v11];
  v13 = (a3)(0, v10);
  v14 = 4;
  if (*(a2 + *(v13 + 20)))
  {
    v14 = 6;
  }

  *a1 = v14;
  *(a1 + 8) = 1;
  *(a1 + 16) = a4;
  *(a1 + 24) = 1;
  type metadata accessor for Apple_Workout_PowerAlert(0);
  v19 = a2;
  lazy protocol witness table accessor for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert(&lazy protocol witness table cache variable for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert, type metadata accessor for Apple_Workout_PowerAlert, &protocol conformance descriptor for Apple_Workout_PowerAlert);
  static Message.with(_:)();
  v15 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  v16 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_1(v12, a1 + *(v16 + 24), &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
}

uint64_t closure #1 in closure #1 in static Apple_Workout_PowerAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  type metadata accessor for Apple_Workout_PowerRange(0);
  v10 = a2;
  lazy protocol witness table accessor for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert(&lazy protocol witness table cache variable for type Apple_Workout_PowerRange and conformance Apple_Workout_PowerRange, type metadata accessor for Apple_Workout_PowerRange, &protocol conformance descriptor for Apple_Workout_PowerRange);
  static Message.with(_:)();
  v7 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_1(v6, a1, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in static Apple_Workout_PowerAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v4 = type metadata accessor for Apple_Workout_PowerValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a2;
  lazy protocol witness table accessor for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert(&lazy protocol witness table cache variable for type Apple_Workout_PowerValue and conformance Apple_Workout_PowerValue, type metadata accessor for Apple_Workout_PowerValue, &protocol conformance descriptor for Apple_Workout_PowerValue);
  static Message.with(_:)();
  v8 = type metadata accessor for Apple_Workout_PowerRange(0);
  v9 = *(v8 + 20);
  outlined destroy of Apple_Workout_PowerValue?(a1 + v9);
  outlined init with take of Apple_Workout_PowerValue(v7, a1 + v9);
  v10 = *(v5 + 56);
  v10(a1 + v9, 0, 1, v4);
  v14 = v16;
  static Message.with(_:)();
  v11 = *(v8 + 24);
  outlined destroy of Apple_Workout_PowerValue?(a1 + v11);
  outlined init with take of Apple_Workout_PowerValue(v7, a1 + v11);
  return (v10)(a1 + v11, 0, 1, v4);
}

uint64_t closure #1 in closure #1 in closure #1 in static Apple_Workout_PowerAlert.targetAlert(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  *a1 = 1;
  *(a1 + 8) = 1;
  v6 = [objc_opt_self() watts];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *(a1 + 16) = v8;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in static Apple_Workout_PowerAlert.rangeAlert(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  *a1 = 1;
  *(a1 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  v6 = [objc_opt_self() watts];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *(a1 + 16) = v8;
  return result;
}

uint64_t closure #1 in static Apple_Workout_PowerAlert.zoneAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  *a1 = 4;
  *(a1 + 8) = 1;
  *(a1 + 16) = 3;
  *(a1 + 24) = 1;
  type metadata accessor for Apple_Workout_PowerAlert(0);
  v11 = a2;
  lazy protocol witness table accessor for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert(&lazy protocol witness table cache variable for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert, type metadata accessor for Apple_Workout_PowerAlert, &protocol conformance descriptor for Apple_Workout_PowerAlert);
  static Message.with(_:)();
  v7 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_1(v6, a1 + *(v8 + 24), &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
}

uint64_t closure #1 in closure #1 in static Apple_Workout_PowerAlert.zoneAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  type metadata accessor for Apple_Workout_ZoneValue(0);
  v10 = a2;
  lazy protocol witness table accessor for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue, &protocol conformance descriptor for Apple_Workout_ZoneValue);
  static Message.with(_:)();
  v7 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_1(v6, a1, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
}

_DWORD *partial apply for closure #1 in closure #1 in closure #1 in static Apple_Workout_PowerAlert.zoneAlert(_:)(_DWORD *result)
{
  v2 = *(v1 + 16);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of Apple_Workout_PowerValue?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_PowerValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_PowerValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RoutePoint.altitude.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

WorkoutKit::RoutePoint __swiftcall RoutePoint.init(coordinate:altitude:)(__C::CLLocationCoordinate2D coordinate, Swift::Double_optional altitude)
{
  *v3 = coordinate.latitude;
  *(v3 + 8) = coordinate.longitude;
  *(v3 + 16) = *&altitude.is_nil;
  *(v3 + 24) = v2 & 1;
  result.coordinate.longitude = coordinate.longitude;
  result.coordinate.latitude = coordinate.latitude;
  result.altitude.value = altitude.value;
  result.altitude.is_nil = altitude.is_nil;
  return result;
}

uint64_t RoutePoint.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for Apple_Workout_RoutePoint(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v20 = a1;
  v21 = a2;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint(&lazy protocol witness table cache variable for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint, type metadata accessor for Apple_Workout_RoutePoint, &protocol conformance descriptor for Apple_Workout_RoutePoint);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  outlined init with copy of Apple_Workout_RoutePoint(v13, v10);
  RoutePoint.init(from:)(v10, &v17);
  outlined destroy of Apple_Workout_RoutePoint(v13, type metadata accessor for Apple_Workout_RoutePoint);
  result = outlined consume of Data._Representation(a1, a2);
  v15 = v18;
  v16 = BYTE8(v18);
  *a3 = v17;
  *(a3 + 16) = v15;
  *(a3 + 24) = v16;
  return result;
}

uint64_t outlined init with copy of Apple_Workout_RoutePoint(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_RoutePoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void RoutePoint.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Apple_Workout_RoutePoint(0);
  outlined init with copy of Apple_Workout_LocationCoordinate2D?(a1 + *(v11 + 20), v6);
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    *v10 = 0.0;
    v10[1] = 0.0;
    UnknownStorage.init()();
    if (v12(v6, 1, v7) != 1)
    {
      outlined destroy of Apple_Workout_LocationCoordinate2D?(v6);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_LocationCoordinate2D(v6, v10);
  }

  v14 = *v10;
  v13 = v10[1];
  outlined destroy of Apple_Workout_RoutePoint(v10, type metadata accessor for Apple_Workout_LocationCoordinate2D);
  v20.latitude = v14;
  v20.longitude = v13;
  if (CLLocationCoordinate2DIsValid(v20))
  {
    v15 = (a1 + *(v11 + 24));
    v16 = *v15;
    v17 = *(v15 + 8);
    outlined destroy of Apple_Workout_RoutePoint(a1, type metadata accessor for Apple_Workout_RoutePoint);
    *a2 = v14;
    *(a2 + 8) = v13;
    *(a2 + 16) = v16;
    *(a2 + 24) = v17;
  }

  else
  {
    lazy protocol witness table accessor for type RouteValidationError and conformance RouteValidationError();
    swift_allocError();
    *v18 = v14;
    *(v18 + 8) = v13;
    *(v18 + 16) = 0;
    swift_willThrow();
    outlined destroy of Apple_Workout_RoutePoint(a1, type metadata accessor for Apple_Workout_RoutePoint);
  }
}

uint64_t RoutePoint.dataRepresentation.getter()
{
  v2 = v1;
  v3 = type metadata accessor for Apple_Workout_RoutePoint(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = *(v0 + 8);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v14.latitude = *v0;
  v14.longitude = v6;
  v10 = CLLocationCoordinate2DIsValid(v14);
  if (v10)
  {
    MEMORY[0x28223BE20](v10);
    *(&v13 - 4) = v7;
    *(&v13 - 3) = v6;
    *(&v13 - 2) = v8;
    *(&v13 - 8) = v9;
    lazy protocol witness table accessor for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint(&lazy protocol witness table cache variable for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint, type metadata accessor for Apple_Workout_RoutePoint, &protocol conformance descriptor for Apple_Workout_RoutePoint);
    static Message.with(_:)();
    v2 = Message.serializedData(partial:)();
    outlined destroy of Apple_Workout_RoutePoint(v5, type metadata accessor for Apple_Workout_RoutePoint);
  }

  else
  {
    lazy protocol witness table accessor for type RouteValidationError and conformance RouteValidationError();
    swift_allocError();
    *v11 = v7;
    *(v11 + 8) = v6;
    *(v11 + 16) = 0;
    swift_willThrow();
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type RouteValidationError and conformance RouteValidationError()
{
  result = lazy protocol witness table cache variable for type RouteValidationError and conformance RouteValidationError;
  if (!lazy protocol witness table cache variable for type RouteValidationError and conformance RouteValidationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RouteValidationError and conformance RouteValidationError);
  }

  return result;
}

uint64_t closure #1 in RoutePoint.protoRepresentation.getter(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v10 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a4;
  v20 = a5;
  lazy protocol witness table accessor for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint(&lazy protocol witness table cache variable for type Apple_Workout_LocationCoordinate2D and conformance Apple_Workout_LocationCoordinate2D, type metadata accessor for Apple_Workout_LocationCoordinate2D, &protocol conformance descriptor for Apple_Workout_LocationCoordinate2D);
  static Message.with(_:)();
  v14 = type metadata accessor for Apple_Workout_RoutePoint(0);
  v15 = *(v14 + 20);
  outlined destroy of Apple_Workout_LocationCoordinate2D?(a1 + v15);
  outlined init with take of Apple_Workout_LocationCoordinate2D(v13, a1 + v15);
  result = (*(v11 + 56))(a1 + v15, 0, 1, v10);
  if ((a3 & 1) == 0)
  {
    v17 = a1 + *(v14 + 24);
    *v17 = a2;
    *(v17 + 8) = 0;
  }

  return result;
}

void RoutePoint.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  CLLocationCoordinate2D.hash(into:)(v1, v2);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x23EEA0D70](v5);
  }
}

Swift::Int RoutePoint.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  CLLocationCoordinate2D.hash(into:)(v1, v2);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x23EEA0D70](v5);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RoutePoint(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  Hasher.init(_seed:)();
  CLLocationCoordinate2D.hash(into:)(v2, v3);
  if (v5 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x23EEA0D70](v6);
  }

  return Hasher._finalize()();
}

BOOL specialized static RoutePoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0;
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }
}

unint64_t lazy protocol witness table accessor for type RoutePoint and conformance RoutePoint()
{
  result = lazy protocol witness table cache variable for type RoutePoint and conformance RoutePoint;
  if (!lazy protocol witness table cache variable for type RoutePoint and conformance RoutePoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoutePoint and conformance RoutePoint);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RoutePoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RoutePoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of Apple_Workout_LocationCoordinate2D?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_LocationCoordinate2D(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_LocationCoordinate2D?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_RoutePoint(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ValidationError.isStrict.getter()
{
  return 1;
}

{
  return 1;
}

unint64_t instantiation function for generic protocol witness table for CompositionValidationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CustomValidationError(uint64_t a1)
{
  result = _s10WorkoutKit21CustomValidationErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type CustomValidationError and conformance CustomValidationError, type metadata accessor for CustomValidationError, &protocol conformance descriptor for CustomValidationError);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PacerValidationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PacerValidationError and conformance PacerValidationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PacerValidationError and conformance PacerValidationError()
{
  result = lazy protocol witness table cache variable for type PacerValidationError and conformance PacerValidationError;
  if (!lazy protocol witness table cache variable for type PacerValidationError and conformance PacerValidationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerValidationError and conformance PacerValidationError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SwimBikeRunValidationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError()
{
  result = lazy protocol witness table cache variable for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError;
  if (!lazy protocol witness table cache variable for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for RouteValidationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type RouteValidationError and conformance RouteValidationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for WorkoutPlanValidationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type WorkoutPlanValidationError and conformance WorkoutPlanValidationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutPlanValidationError and conformance WorkoutPlanValidationError()
{
  result = lazy protocol witness table cache variable for type WorkoutPlanValidationError and conformance WorkoutPlanValidationError;
  if (!lazy protocol witness table cache variable for type WorkoutPlanValidationError and conformance WorkoutPlanValidationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutPlanValidationError and conformance WorkoutPlanValidationError);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for GoalValidationError(uint64_t a1)
{
  result = _s10WorkoutKit21CustomValidationErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s10WorkoutKit21CustomValidationErrorOACs0E0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CustomValidationError(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AlertValidationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for CustomValidationError(uint64_t a1)
{
  type metadata accessor for HKWorkoutActivityType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (WorkoutGoal, HKWorkoutActivityType, HKWorkoutSessionLocationType)(319, &lazy cache variable for type metadata for (WorkoutGoal, HKWorkoutActivityType, HKWorkoutSessionLocationType), type metadata accessor for HKWorkoutSessionLocationType);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PacerValidationError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for PacerValidationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t getEnumTagSinglePayload for SwimBikeRunValidationError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for SwimBikeRunValidationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RouteValidationError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RouteValidationError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTag for RouteValidationError(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for RouteValidationError(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

void type metadata completion function for GoalValidationError(uint64_t a1)
{
  type metadata accessor for (HKWorkoutActivityType, HKWorkoutSessionLocationType)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (WorkoutGoal, HKWorkoutActivityType, HKWorkoutSessionLocationType)(319, &lazy cache variable for type metadata for (WorkoutGoal, HKWorkoutActivityType, HKWorkoutSessionLocationType), type metadata accessor for HKWorkoutSessionLocationType);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (WorkoutGoal, HKWorkoutActivityType, HKWorkoutSessionLocationType)(319, &lazy cache variable for type metadata for (WorkoutGoal, HKWorkoutActivityType, HKWorkoutSwimmingLocationType), type metadata accessor for HKWorkoutSwimmingLocationType);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (HKWorkoutActivityType, HKWorkoutSessionLocationType)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (HKWorkoutActivityType, HKWorkoutSessionLocationType))
  {
    type metadata accessor for HKWorkoutActivityType(255);
    type metadata accessor for HKWorkoutSessionLocationType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (HKWorkoutActivityType, HKWorkoutSessionLocationType));
    }
  }
}

void type metadata accessor for (WorkoutGoal, HKWorkoutActivityType, HKWorkoutSessionLocationType)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for WorkoutGoal(255);
    type metadata accessor for HKWorkoutActivityType(255);
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AlertValidationError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AlertValidationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t getEnumTag for AlertValidationError(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t destructiveInjectEnumTag for AlertValidationError(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t specialized WorkoutAlertProtable.supports(activity:location:)(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type SpeedRangeAlert and conformance SpeedRangeAlert(&lazy protocol witness table cache variable for type HeartRateRangeAlert and conformance HeartRateRangeAlert, type metadata accessor for HeartRateRangeAlert, &protocol conformance descriptor for HeartRateRangeAlert);
  v5 = *(v4 + 48);
  v6 = type metadata accessor for HeartRateRangeAlert(0);
  v5(a1, a2, v6, v4);
  return 1;
}

{
  specialized WorkoutAlertProtable.validate(for:location:context:)(a1, a2, 0);
  return 1;
}

{
  specialized WorkoutAlertProtable.validate(for:location:context:)(a1, a2, 0);
  return 1;
}

{
  specialized WorkoutAlertProtable.validate(for:location:context:)(a1, a2, 0);
  return 1;
}

{
  specialized WorkoutAlertProtable.validate(for:location:context:)(a1, a2, 0);
  return 1;
}

{
  specialized WorkoutAlertProtable.validate(for:location:context:)(a1, 0, a2);
  return 1;
}

uint64_t specialized WorkoutAlertProtable.validate(for:location:context:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a1 == 13)
  {
    goto LABEL_22;
  }

  if (a1 == 37)
  {
    if (a2 != 2)
    {
      goto LABEL_22;
    }

    v6 = a3;
    v7 = 1;
    v8 = 2;
    v9 = 37;
  }

  else
  {
    v6 = a3;
    v8 = 0;
    v7 = 0;
    v9 = a1;
  }

  lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
  v10 = swift_allocError();
  *v11 = v9;
  *(v11 + 8) = v8;
  *(v11 + 16) = v7;
  swift_willThrow();
  v48 = v10;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15ValidationError_pMd, "xE");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    outlined destroy of ValidationError?(v43);
    return swift_willThrow();
  }

  outlined init with take of ValidationError(v43, v45);
  v13 = v46;
  v14 = v47;
  v15 = __swift_project_boxed_opaque_existential_1(v45, v46);
  if ((v6 & 1) == 0)
  {
    v23 = *(v13 - 8);
    v24 = MEMORY[0x28223BE20](v15);
    v26 = v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v23 + 8))(v26, v13);
    }

    else
    {
      swift_allocError();
      (*(v23 + 32))(v37, v26, v13);
    }

    goto LABEL_19;
  }

  v42[1] = v3;
  if ((*(v14 + 16))(v13, v14))
  {
    v16 = v46;
    v17 = __swift_project_boxed_opaque_existential_1(v45, v46);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v18 + 8))(v21, v16);
    }

    else
    {
      swift_allocError();
      (*(v18 + 32))(v41, v21, v16);
    }

LABEL_19:
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static WorkoutKitLog.validations);
  v28 = v10;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v43[0] = v32;
    *v31 = 136315394;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E61527265776F50, 0xEF7472656C416567, v43);
    *(v31 + 12) = 2080;
    v48 = v10;
    v33 = v10;
    v34 = String.init<A>(describing:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v43);

    *(v31 + 14) = v36;
    _os_log_impl(&dword_23B5E7000, v29, v30, "%s not supported due to: %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA1330](v32, -1, -1);
    MEMORY[0x23EEA1330](v31, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
LABEL_22:
  v38 = lazy protocol witness table accessor for type SpeedRangeAlert and conformance SpeedRangeAlert(&lazy protocol witness table cache variable for type PowerRangeAlert and conformance PowerRangeAlert, type metadata accessor for PowerRangeAlert, &protocol conformance descriptor for PowerRangeAlert);
  v39 = *(v38 + 48);
  v40 = type metadata accessor for PowerRangeAlert(0);
  return v39(a1, a2, v40, v38);
}

{
  v7 = type metadata accessor for SpeedRangeAlert(0);
  v8 = v7;
  if (a1 == 13)
  {
    goto LABEL_29;
  }

  if (a1 == 37)
  {
    if (a2 != 2)
    {
      goto LABEL_29;
    }

    v46 = &type metadata for WorkoutKitFeatures;
    v47 = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
    LOBYTE(v45[0]) = 3;
    v12 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v45);
    if (v12)
    {
      goto LABEL_29;
    }

    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    v10 = swift_allocError();
    v11 = xmmword_23B67C930;
    goto LABEL_9;
  }

  if (a1 != 71)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    v10 = swift_allocError();
    *v13 = a1;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    v10 = swift_allocError();
    v11 = xmmword_23B67C940;
LABEL_9:
    *v9 = v11;
    *(v9 + 16) = 1;
    goto LABEL_11;
  }

  if (*(v3 + *(v7 + 20)))
  {
    goto LABEL_29;
  }

  lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
  v10 = swift_allocError();
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 2;
LABEL_11:
  swift_willThrow();
  v48 = v10;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15ValidationError_pMd, "xE");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    outlined destroy of ValidationError?(v43);
    return swift_willThrow();
  }

  outlined init with take of ValidationError(v43, v45);
  v15 = v46;
  v16 = v47;
  v17 = __swift_project_boxed_opaque_existential_1(v45, v46);
  if ((a3 & 1) == 0)
  {
    Description = v15[-1].Description;
    v26 = MEMORY[0x28223BE20](v17);
    v28 = v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    Description[2](v28, v26);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (Description[1])(v28, v15);
    }

    else
    {
      swift_allocError();
      (Description[4])(v39, v28, v15);
    }

    goto LABEL_26;
  }

  v42[1] = v3;
  if ((*(v16 + 16))(v15, v16))
  {
    v18 = v46;
    v19 = __swift_project_boxed_opaque_existential_1(v45, v46);
    v20 = v18[-1].Description;
    v21 = MEMORY[0x28223BE20](v19);
    v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20[2](v23, v21);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (v20[1])(v23, v18);
    }

    else
    {
      swift_allocError();
      (v20[4])(v41, v23, v18);
    }

LABEL_26:
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static WorkoutKitLog.validations);
  v31 = v10;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *&v43[0] = v42[0];
    *v34 = 136315394;
    *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E61526465657053, 0xEF7472656C416567, v43);
    *(v34 + 12) = 2080;
    v48 = v10;
    v35 = v10;
    v36 = String.init<A>(describing:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v43);

    *(v34 + 14) = v38;
    _os_log_impl(&dword_23B5E7000, v32, v33, "%s not supported due to: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA1330](v42[0], -1, -1);
    MEMORY[0x23EEA1330](v34, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
LABEL_29:
  v40 = lazy protocol witness table accessor for type SpeedRangeAlert and conformance SpeedRangeAlert(&lazy protocol witness table cache variable for type SpeedRangeAlert and conformance SpeedRangeAlert, type metadata accessor for SpeedRangeAlert, &protocol conformance descriptor for SpeedRangeAlert);
  return (*(v40 + 48))(a1, a2, v8, v40);
}

{
  if (a1 == 13)
  {
    goto LABEL_22;
  }

  if (a1 == 37)
  {
    if (a2 != 2)
    {
      goto LABEL_22;
    }

    v6 = a3;
    v7 = 1;
    v8 = 2;
    v9 = 37;
  }

  else
  {
    v6 = a3;
    v8 = 0;
    v7 = 0;
    v9 = a1;
  }

  lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
  v10 = swift_allocError();
  *v11 = v9;
  *(v11 + 8) = v8;
  *(v11 + 16) = v7;
  swift_willThrow();
  v48 = v10;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15ValidationError_pMd, "xE");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    outlined destroy of ValidationError?(v43);
    return swift_willThrow();
  }

  outlined init with take of ValidationError(v43, v45);
  v13 = v46;
  v14 = v47;
  v15 = __swift_project_boxed_opaque_existential_1(v45, v46);
  if ((v6 & 1) == 0)
  {
    v23 = *(v13 - 8);
    v24 = MEMORY[0x28223BE20](v15);
    v26 = v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v23 + 8))(v26, v13);
    }

    else
    {
      swift_allocError();
      (*(v23 + 32))(v37, v26, v13);
    }

    goto LABEL_19;
  }

  v42[1] = v3;
  if ((*(v14 + 16))(v13, v14))
  {
    v16 = v46;
    v17 = __swift_project_boxed_opaque_existential_1(v45, v46);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v18 + 8))(v21, v16);
    }

    else
    {
      swift_allocError();
      (*(v18 + 32))(v41, v21, v16);
    }

LABEL_19:
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static WorkoutKitLog.validations);
  v28 = v10;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v43[0] = v32;
    *v31 = 136315394;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000023B67FBC0, v43);
    *(v31 + 12) = 2080;
    v48 = v10;
    v33 = v10;
    v34 = String.init<A>(describing:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v43);

    *(v31 + 14) = v36;
    _os_log_impl(&dword_23B5E7000, v29, v30, "%s not supported due to: %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA1330](v32, -1, -1);
    MEMORY[0x23EEA1330](v31, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
LABEL_22:
  v38 = lazy protocol witness table accessor for type SpeedRangeAlert and conformance SpeedRangeAlert(&lazy protocol witness table cache variable for type CadenceRangeAlert and conformance CadenceRangeAlert, type metadata accessor for CadenceRangeAlert, &protocol conformance descriptor for CadenceRangeAlert);
  v39 = *(v38 + 48);
  v40 = type metadata accessor for CadenceRangeAlert(0);
  return v39(a1, a2, v40, v38);
}

{
  if (a1 == 13)
  {
    goto LABEL_22;
  }

  if (a1 == 37)
  {
    if (a2 != 2)
    {
      goto LABEL_22;
    }

    v6 = a3;
    v7 = 1;
    v8 = 2;
    v9 = 37;
  }

  else
  {
    v6 = a3;
    v8 = 0;
    v7 = 0;
    v9 = a1;
  }

  lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
  v10 = swift_allocError();
  *v11 = v9;
  *(v11 + 8) = v8;
  *(v11 + 16) = v7;
  swift_willThrow();
  v48 = v10;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15ValidationError_pMd, "xE");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    outlined destroy of ValidationError?(v43);
    return swift_willThrow();
  }

  outlined init with take of ValidationError(v43, v45);
  v13 = v46;
  v14 = v47;
  v15 = __swift_project_boxed_opaque_existential_1(v45, v46);
  if ((v6 & 1) == 0)
  {
    v23 = *(v13 - 8);
    v24 = MEMORY[0x28223BE20](v15);
    v26 = v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v23 + 8))(v26, v13);
    }

    else
    {
      swift_allocError();
      (*(v23 + 32))(v37, v26, v13);
    }

    goto LABEL_19;
  }

  v42[1] = v3;
  if ((*(v14 + 16))(v13, v14))
  {
    v16 = v46;
    v17 = __swift_project_boxed_opaque_existential_1(v45, v46);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v18 + 8))(v21, v16);
    }

    else
    {
      swift_allocError();
      (*(v18 + 32))(v41, v21, v16);
    }

LABEL_19:
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static WorkoutKitLog.validations);
  v28 = v10;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v43[0] = v32;
    *v31 = 136315394;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000023B67FBA0, v43);
    *(v31 + 12) = 2080;
    v48 = v10;
    v33 = v10;
    v34 = String.init<A>(describing:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v43);

    *(v31 + 14) = v36;
    _os_log_impl(&dword_23B5E7000, v29, v30, "%s not supported due to: %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA1330](v32, -1, -1);
    MEMORY[0x23EEA1330](v31, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
LABEL_22:
  v38 = lazy protocol witness table accessor for type SpeedRangeAlert and conformance SpeedRangeAlert(&lazy protocol witness table cache variable for type PowerThresholdAlert and conformance PowerThresholdAlert, type metadata accessor for PowerThresholdAlert, "UEzILP");
  v39 = *(v38 + 48);
  v40 = type metadata accessor for PowerThresholdAlert(0);
  return v39(a1, a2, v40, v38);
}

{
  v7 = type metadata accessor for SpeedThresholdAlert(0);
  v8 = v7;
  if (a1 == 13)
  {
    goto LABEL_29;
  }

  if (a1 == 37)
  {
    if (a2 != 2)
    {
      goto LABEL_29;
    }

    v46 = &type metadata for WorkoutKitFeatures;
    v47 = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
    LOBYTE(v45[0]) = 3;
    v12 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v45);
    if (v12)
    {
      goto LABEL_29;
    }

    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    v10 = swift_allocError();
    v11 = xmmword_23B67C930;
    goto LABEL_9;
  }

  if (a1 != 71)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    v10 = swift_allocError();
    *v13 = a1;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    v10 = swift_allocError();
    v11 = xmmword_23B67C940;
LABEL_9:
    *v9 = v11;
    *(v9 + 16) = 1;
    goto LABEL_11;
  }

  if (*(v3 + *(v7 + 20)))
  {
    goto LABEL_29;
  }

  lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
  v10 = swift_allocError();
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 2;
LABEL_11:
  swift_willThrow();
  v48 = v10;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15ValidationError_pMd, "xE");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    outlined destroy of ValidationError?(v43);
    return swift_willThrow();
  }

  outlined init with take of ValidationError(v43, v45);
  v15 = v46;
  v16 = v47;
  v17 = __swift_project_boxed_opaque_existential_1(v45, v46);
  if ((a3 & 1) == 0)
  {
    Description = v15[-1].Description;
    v26 = MEMORY[0x28223BE20](v17);
    v28 = v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    Description[2](v28, v26);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (Description[1])(v28, v15);
    }

    else
    {
      swift_allocError();
      (Description[4])(v39, v28, v15);
    }

    goto LABEL_26;
  }

  v42[1] = v3;
  if ((*(v16 + 16))(v15, v16))
  {
    v18 = v46;
    v19 = __swift_project_boxed_opaque_existential_1(v45, v46);
    v20 = v18[-1].Description;
    v21 = MEMORY[0x28223BE20](v19);
    v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20[2](v23, v21);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (v20[1])(v23, v18);
    }

    else
    {
      swift_allocError();
      (v20[4])(v41, v23, v18);
    }

LABEL_26:
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static WorkoutKitLog.validations);
  v31 = v10;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *&v43[0] = v42[0];
    *v34 = 136315394;
    *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000023B67FB80, v43);
    *(v34 + 12) = 2080;
    v48 = v10;
    v35 = v10;
    v36 = String.init<A>(describing:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v43);

    *(v34 + 14) = v38;
    _os_log_impl(&dword_23B5E7000, v32, v33, "%s not supported due to: %s", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA1330](v42[0], -1, -1);
    MEMORY[0x23EEA1330](v34, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
LABEL_29:
  v40 = lazy protocol witness table accessor for type SpeedRangeAlert and conformance SpeedRangeAlert(&lazy protocol witness table cache variable for type SpeedThresholdAlert and conformance SpeedThresholdAlert, type metadata accessor for SpeedThresholdAlert, &protocol conformance descriptor for SpeedThresholdAlert);
  return (*(v40 + 48))(a1, a2, v8, v40);
}

{
  if (a1 == 13)
  {
    goto LABEL_22;
  }

  if (a1 == 37)
  {
    if (a2 != 2)
    {
      goto LABEL_22;
    }

    v6 = a3;
    v7 = 1;
    v8 = 2;
    v9 = 37;
  }

  else
  {
    v6 = a3;
    v8 = 0;
    v7 = 0;
    v9 = a1;
  }

  lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
  v10 = swift_allocError();
  *v11 = v9;
  *(v11 + 8) = v8;
  *(v11 + 16) = v7;
  swift_willThrow();
  v48 = v10;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15ValidationError_pMd, "xE");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    outlined destroy of ValidationError?(v43);
    return swift_willThrow();
  }

  outlined init with take of ValidationError(v43, v45);
  v13 = v46;
  v14 = v47;
  v15 = __swift_project_boxed_opaque_existential_1(v45, v46);
  if ((v6 & 1) == 0)
  {
    v23 = *(v13 - 8);
    v24 = MEMORY[0x28223BE20](v15);
    v26 = v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v23 + 8))(v26, v13);
    }

    else
    {
      swift_allocError();
      (*(v23 + 32))(v37, v26, v13);
    }

    goto LABEL_19;
  }

  v42[1] = v3;
  if ((*(v14 + 16))(v13, v14))
  {
    v16 = v46;
    v17 = __swift_project_boxed_opaque_existential_1(v45, v46);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v18 + 8))(v21, v16);
    }

    else
    {
      swift_allocError();
      (*(v18 + 32))(v41, v21, v16);
    }

LABEL_19:
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static WorkoutKitLog.validations);
  v28 = v10;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v43[0] = v32;
    *v31 = 136315394;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000023B67FBE0, v43);
    *(v31 + 12) = 2080;
    v48 = v10;
    v33 = v10;
    v34 = String.init<A>(describing:)();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v43);

    *(v31 + 14) = v36;
    _os_log_impl(&dword_23B5E7000, v29, v30, "%s not supported due to: %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA1330](v32, -1, -1);
    MEMORY[0x23EEA1330](v31, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
LABEL_22:
  v38 = lazy protocol witness table accessor for type SpeedRangeAlert and conformance SpeedRangeAlert(&lazy protocol witness table cache variable for type CadenceThresholdAlert and conformance CadenceThresholdAlert, type metadata accessor for CadenceThresholdAlert, &protocol conformance descriptor for CadenceThresholdAlert);
  v39 = *(v38 + 48);
  v40 = type metadata accessor for CadenceThresholdAlert(0);
  return v39(a1, a2, v40, v38);
}

id static WorkoutAlertMetric.countPerMinute.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v1 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v2 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  v3 = [v1 initWithSymbol:v2 converter:v0];

  return v3;
}

void protocol witness for WorkoutAlertProtable.validate(for:location:context:) in conformance HeartRateZoneAlert()
{
  if (*v0 < 1)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    swift_allocError();
    *v1 = xmmword_23B6784C0;
    *(v1 + 16) = 3;
    swift_willThrow();
  }
}

Swift::Int WorkoutAlertMetric.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutAlertMetric()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutAlertMetric(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type WorkoutAlertMetric and conformance WorkoutAlertMetric()
{
  result = lazy protocol witness table cache variable for type WorkoutAlertMetric and conformance WorkoutAlertMetric;
  if (!lazy protocol witness table cache variable for type WorkoutAlertMetric and conformance WorkoutAlertMetric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertMetric and conformance WorkoutAlertMetric);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutAlertMetric(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutAlertMetric(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined destroy of ValidationError?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15ValidationError_pSgMd, "xE");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ValidationError(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t specialized WorkoutAlertProtable.validate(for:location:context:)(uint64_t result, char a2, uint64_t a3)
{
  if (result == 13)
  {
    if (a3 >= 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  v5 = result;
  lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
  v7 = swift_allocError();
  *v8 = v5;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  swift_willThrow();
  v37 = v7;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit15ValidationError_pMd, "xE");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    outlined destroy of ValidationError?(v35);
    return swift_willThrow();
  }

  outlined init with take of ValidationError(v35, v38);
  v10 = v39;
  v11 = v40;
  v12 = __swift_project_boxed_opaque_existential_1(v38, v39);
  if ((a2 & 1) == 0)
  {
    v19 = *(v10 - 8);
    v20 = MEMORY[0x28223BE20](v12);
    v22 = v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22, v20);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v19 + 8))(v22, v10);
    }

    else
    {
      swift_allocError();
      (*(v19 + 32))(v33, v22, v10);
    }

    goto LABEL_22;
  }

  if ((*(v11 + 16))(v10, v11))
  {
    v13 = v39;
    v14 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v15 = *(v13 - 8);
    v16 = MEMORY[0x28223BE20](v14);
    v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v16);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      (*(v15 + 8))(v18, v13);
    }

    else
    {
      swift_allocError();
      (*(v15 + 32))(v34, v18, v13);
    }

LABEL_22:
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static WorkoutKitLog.validations);
  v24 = v7;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v35[0] = v28;
    *v27 = 136315394;
    *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E6F5A7265776F50, 0xEE007472656C4165, v35);
    *(v27 + 12) = 2080;
    v37 = v7;
    v29 = v7;
    v30 = String.init<A>(describing:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v35);

    *(v27 + 14) = v32;
    _os_log_impl(&dword_23B5E7000, v25, v26, "%s not supported due to: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA1330](v28, -1, -1);
    MEMORY[0x23EEA1330](v27, -1, -1);
  }

  else
  {
  }

  result = __swift_destroy_boxed_opaque_existential_1(v38);
  if (a3 < 1)
  {
LABEL_3:
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    swift_allocError();
    *v3 = xmmword_23B6784C0;
    *(v3 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

BOOL specialized WorkoutAlertProtable.supports(activity:location:)(uint64_t a1)
{
  if (a1 <= 0)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    v2 = swift_allocError();
    *v3 = xmmword_23B6784C0;
    *(v3 + 16) = 3;
    swift_willThrow();
    if (one-time initialization token for validations != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WorkoutKitLog.validations);
    v5 = v2;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000023B67FC00, v15);
      *(v8 + 12) = 2080;
      v10 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v15);

      *(v8 + 14) = v13;
      _os_log_impl(&dword_23B5E7000, v6, v7, "%s not supported due to: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEA1330](v9, -1, -1);
      MEMORY[0x23EEA1330](v8, -1, -1);
    }

    else
    {
    }
  }

  return a1 > 0;
}

uint64_t lazy protocol witness table accessor for type SpeedRangeAlert and conformance SpeedRangeAlert(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void WorkoutGoal.validate<A>(for:location:swimmingLocation:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v55 = a1;
  v56 = a4;
  v48 = a3;
  v50 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v49 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - v13;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v54 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v20 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WorkoutGoal(v5, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v38 = *(v22 + 1);
      _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
      v39 = v38;
      Measurement.init(value:unit:)();
      v40 = v53;
      Measurement.value.getter();
      if (v41 <= 0.0)
      {
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*(v52 + 8))(v11, v40);
      }

      else
      {
        (*(v52 + 8))(v11, v40);
      }
    }

    else
    {
      v31 = *(v22 + 1);
      _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
      v32 = v31;
      Measurement.init(value:unit:)();
      v33 = v58;
      WorkoutGoal.validateDistanceSupported<A>(for:location:kind:)(v55, v50);
      if (v33)
      {
        (*(v54 + 8))(v19, v51);
      }

      else
      {
        v44 = v51;
        Measurement.value.getter();
        v45 = v54;
        if (v46 <= 0.0)
        {
          type metadata accessor for GoalValidationError(0);
          lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          (*(v45 + 8))(v19, v44);
        }

        else
        {
          (*(v54 + 8))(v19, v44);
        }
      }
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v34 = *(v22 + 1);
    _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
    v35 = v34;
    Measurement.init(value:unit:)();
    v36 = v58;
    WorkoutGoal.validateEnergySupported<A>(for:location:kind:)(v55, v50, v56);
    if (v36 || (Measurement.value.getter(), v37 > 0.0))
    {
      (*(v49 + 8))(v14, v12);
    }

    else
    {
      type metadata accessor for GoalValidationError(0);
      lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v49 + 8))(v14, v12);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
    v25 = v54;
    v26 = v51;
    (*(v54 + 32))(v16, v22, v51);
    v27 = v52;
    v28 = &v22[v24];
    v29 = v53;
    (*(v52 + 32))(v8, v28, v53);
    v30 = v58;
    WorkoutGoal.validateDistanceWithTimeSupported<A>(for:swimmingLocation:kind:)(v55, v48, v56);
    if (v30)
    {
      (*(v27 + 8))(v8, v29);
      (*(v25 + 8))(v16, v26);
    }

    else
    {
      Measurement.value.getter();
      if (v42 <= 0.0 || (Measurement.value.getter(), v43 <= 0.0))
      {
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      (*(v27 + 8))(v8, v29);
      (*(v54 + 8))(v16, v26);
    }
  }
}

uint64_t WorkoutGoal.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, double *a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  MEMORY[0x28223BE20](v8);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = a2;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal, &protocol conformance descriptor for Apple_Workout_WorkoutGoal);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v3)
  {
    Apple_Workout_WorkoutGoal.workoutKitRepresentation.getter(a3);
    _s10WorkoutKit06Apple_a1_A4GoalVWOhTm_0(v10, type metadata accessor for Apple_Workout_WorkoutGoal);
  }

  return outlined consume of Data._Representation(a1, a2);
}

uint64_t WorkoutGoal.dataRepresentation.getter()
{
  v1 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0;
  lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal, &protocol conformance descriptor for Apple_Workout_WorkoutGoal);
  static Message.with(_:)();
  v4 = Message.serializedData(partial:)();
  _s10WorkoutKit06Apple_a1_A4GoalVWOhTm_0(v3, type metadata accessor for Apple_Workout_WorkoutGoal);
  return v4;
}

uint64_t closure #1 in WorkoutGoal.protoRepresentation.getter(void *a1, uint64_t a2)
{
  v49 = a1;
  v41 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  MEMORY[0x28223BE20](v41);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v40 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v42 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v40 - v5;
  v6 = type metadata accessor for Apple_Workout_EnergyValue(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_TimeValue(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_DistanceValue(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WorkoutGoal(a2, v17);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      v30 = *(v17 + 1);
      v31 = v49;
      *v49 = 3;
      *(v31 + 8) = 1;
      *(&v40 - 2) = MEMORY[0x28223BE20](result).n128_u64[0];
      *(&v40 - 1) = v30;
      lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue, &protocol conformance descriptor for Apple_Workout_DistanceValue);
      static Message.with(_:)();

      v32 = *(type metadata accessor for Apple_Workout_WorkoutGoal(0) + 20);
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v31 + v32, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v14, v31 + v32, type metadata accessor for Apple_Workout_DistanceValue);
      v33 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v33 - 8) + 56))(v31 + v32, 0, 1, v33);
    }

    v39 = *(v17 + 1);
    v35 = v49;
    *v49 = 1;
    *(v35 + 8) = 1;
    *(&v40 - 2) = MEMORY[0x28223BE20](result).n128_u64[0];
    *(&v40 - 1) = v39;
    lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);
    static Message.with(_:)();

    v36 = *(type metadata accessor for Apple_Workout_WorkoutGoal(0) + 20);
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v35 + v36, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v11, v35 + v36, type metadata accessor for Apple_Workout_TimeValue);
    v37 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
    goto LABEL_10;
  }

  if (result == 2)
  {
    v34 = *(v17 + 1);
    v35 = v49;
    *v49 = 2;
    *(v35 + 8) = 1;
    *(&v40 - 2) = MEMORY[0x28223BE20](result).n128_u64[0];
    *(&v40 - 1) = v34;
    lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type Apple_Workout_EnergyValue and conformance Apple_Workout_EnergyValue, type metadata accessor for Apple_Workout_EnergyValue, &protocol conformance descriptor for Apple_Workout_EnergyValue);
    static Message.with(_:)();

    v36 = *(type metadata accessor for Apple_Workout_WorkoutGoal(0) + 20);
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v35 + v36, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v8, v35 + v36, type metadata accessor for Apple_Workout_EnergyValue);
    v37 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    return (*(*(v37 - 8) + 56))(v35 + v36, 0, 1, v37);
  }

  if (result == 3)
  {
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
    v20 = v42;
    v21 = v46;
    (*(v42 + 32))();
    v22 = v45;
    v23 = &v17[v19];
    v24 = v44;
    v25 = (*(v45 + 32))(v44, v23, v48);
    v26 = v49;
    *v49 = 5;
    *(v26 + 8) = 1;
    MEMORY[0x28223BE20](v25);
    *(&v40 - 2) = v21;
    *(&v40 - 1) = v24;
    lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue, &protocol conformance descriptor for Apple_Workout_PoolSwimDistanceWithTimeValue);
    v27 = v43;
    static Message.with(_:)();
    v28 = *(type metadata accessor for Apple_Workout_WorkoutGoal(0) + 20);
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v26 + v28, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v27, v26 + v28, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
    v29 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v29 - 8) + 56))(v26 + v28, 0, 1, v29);
    (*(v22 + 8))(v24, v48);
    return (*(v20 + 8))(v46, v47);
  }

  else
  {
    v38 = v49;
    *v49 = 4;
    *(v38 + 8) = 1;
  }

  return result;
}

uint64_t closure #1 in closure #1 in WorkoutGoal.protoRepresentation.getter(uint64_t a1, void *a2, double a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  v11 = a2;
  Measurement.init(value:unit:)();
  v12 = Measurement.unit.getter();
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 kilometers];
  LOBYTE(v12) = static NSObject.== infix(_:_:)();

  if (v12)
  {

    Measurement.value.getter();
    v17 = v16;
    result = (*(v6 + 8))(v10, v5);
    v19 = 2;
  }

  else
  {
    v20 = v14;
    v21 = [v13 feet];
    v22 = static NSObject.== infix(_:_:)();

    if (v22)
    {

      Measurement.value.getter();
      v17 = v23;
      result = (*(v6 + 8))(v10, v5);
      v19 = 3;
    }

    else
    {
      v24 = v20;
      v25 = [v13 yards];
      v26 = static NSObject.== infix(_:_:)();

      if (v26)
      {

        Measurement.value.getter();
        v17 = v27;
        result = (*(v6 + 8))(v10, v5);
        v19 = 4;
      }

      else
      {
        v28 = [v13 miles];
        v29 = static NSObject.== infix(_:_:)();

        if (v29)
        {
          Measurement.value.getter();
          v17 = v30;
          result = (*(v6 + 8))(v10, v5);
          v19 = 5;
        }

        else
        {
          v31 = [v13 meters];
          v32 = v35;
          Measurement<>.converted(to:)();

          Measurement.value.getter();
          v17 = v33;
          v34 = *(v6 + 8);
          v34(v32, v5);
          result = (v34)(v10, v5);
          v19 = 1;
        }
      }
    }
  }

  *(a1 + 16) = v17;
  *a1 = v19;
  *(a1 + 8) = 1;
  return result;
}

uint64_t closure #2 in closure #1 in WorkoutGoal.protoRepresentation.getter(uint64_t a1, void *a2, double a3)
{
  v27 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  v11 = a2;
  Measurement.init(value:unit:)();
  v12 = Measurement.unit.getter();
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 hours];
  LOBYTE(v12) = static NSObject.== infix(_:_:)();

  if (v12)
  {

    Measurement.value.getter();
    v17 = v16;
    result = (*(v5 + 8))(v10, v4);
    v19 = 3;
  }

  else
  {
    v20 = [v13 minutes];
    v21 = static NSObject.== infix(_:_:)();

    if (v21)
    {
      Measurement.value.getter();
      v17 = v22;
      result = (*(v5 + 8))(v10, v4);
      v19 = 2;
    }

    else
    {
      v23 = [v13 seconds];
      Measurement<>.converted(to:)();

      Measurement.value.getter();
      v17 = v24;
      v25 = *(v5 + 8);
      v25(v7, v4);
      result = (v25)(v10, v4);
      v19 = 1;
    }
  }

  v26 = v27;
  *(v27 + 16) = v17;
  *v26 = v19;
  *(v26 + 8) = 1;
  return result;
}

uint64_t closure #3 in closure #1 in WorkoutGoal.protoRepresentation.getter(uint64_t a1, void *a2, double a3)
{
  v23 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
  v11 = a2;
  Measurement.init(value:unit:)();
  v12 = Measurement.unit.getter();
  v13 = objc_opt_self();
  v14 = [v13 kilojoules];
  LOBYTE(a2) = static NSObject.== infix(_:_:)();

  if (a2)
  {
    Measurement.value.getter();
    v16 = v15;
    result = (*(v5 + 8))(v10, v4);
    v18 = 2;
  }

  else
  {
    v19 = [v13 kilocalories];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v16 = v20;
    v21 = *(v5 + 8);
    v21(v7, v4);
    result = (v21)(v10, v4);
    v18 = 1;
  }

  v22 = v23;
  *(v23 + 16) = v16;
  *v22 = v18;
  *(v22 + 8) = 1;
  return result;
}

uint64_t closure #4 in closure #1 in WorkoutGoal.protoRepresentation.getter(uint64_t a1, char *a2, uint64_t a3)
{
  v225 = a3;
  v220 = a1;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v207 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v205 = &v185 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v212 = &v185 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v208 = &v185 - v8;
  MEMORY[0x28223BE20](v9);
  v210 = &v185 - v10;
  MEMORY[0x28223BE20](v11);
  v204 = &v185 - v12;
  MEMORY[0x28223BE20](v13);
  v219 = &v185 - v14;
  MEMORY[0x28223BE20](v15);
  v217 = &v185 - v16;
  v17 = type metadata accessor for Apple_Workout_TimeValue(0);
  v222 = *(v17 - 8);
  v223 = v17;
  MEMORY[0x28223BE20](v17);
  v211 = &v185 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v206 = (&v185 - v20);
  MEMORY[0x28223BE20](v21);
  v209 = &v185 - v22;
  MEMORY[0x28223BE20](v23);
  v203 = (&v185 - v24);
  MEMORY[0x28223BE20](v25);
  v218 = &v185 - v26;
  MEMORY[0x28223BE20](v27);
  v216 = (&v185 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v189 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v188 = &v185 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  MEMORY[0x28223BE20](v31 - 8);
  v194 = &v185 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v191 = &v185 - v34;
  MEMORY[0x28223BE20](v35);
  v193 = &v185 - v36;
  MEMORY[0x28223BE20](v37);
  v187 = &v185 - v38;
  MEMORY[0x28223BE20](v39);
  v198 = &v185 - v40;
  MEMORY[0x28223BE20](v41);
  v196 = &v185 - v42;
  MEMORY[0x28223BE20](v43);
  v202 = &v185 - v44;
  MEMORY[0x28223BE20](v45);
  v200 = &v185 - v46;
  MEMORY[0x28223BE20](v47);
  v215 = &v185 - v48;
  MEMORY[0x28223BE20](v49);
  v213 = (&v185 - v50);
  v51 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v226 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v192 = &v185 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v186 = (&v185 - v54);
  MEMORY[0x28223BE20](v55);
  v190 = &v185 - v56;
  MEMORY[0x28223BE20](v57);
  v185 = (&v185 - v58);
  MEMORY[0x28223BE20](v59);
  v197 = &v185 - v60;
  MEMORY[0x28223BE20](v61);
  v195 = (&v185 - v62);
  MEMORY[0x28223BE20](v63);
  v201 = &v185 - v64;
  MEMORY[0x28223BE20](v65);
  v199 = (&v185 - v66);
  MEMORY[0x28223BE20](v67);
  v214 = &v185 - v68;
  MEMORY[0x28223BE20](v69);
  v71 = &v185 - v70;
  v72 = v29;
  v73 = a2;
  v74 = Measurement.unit.getter();
  v75 = objc_opt_self();
  v76 = v74;
  v77 = [v75 kilometers];
  _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  v78 = static NSObject.== infix(_:_:)();

  v224 = v51;
  if ((v78 & 1) == 0)
  {
    v215 = v73;
    v85 = v226;
    v82 = v220;
    v86 = v76;
    v87 = [v75 feet];
    v88 = static NSObject.== infix(_:_:)();

    if (v88)
    {

      Measurement.value.getter();
      v90 = v89;
      v91 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 20);
      v92 = v200;
      _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v82 + v91, v200, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      v93 = *(v85 + 48);
      v94 = v224;
      if (v93(v92, 1, v224) == 1)
      {
        v95 = v199;
        *v199 = 0;
        *(v95 + 8) = 1;
        UnknownStorage.init()();
        if (v93(v92, 1, v94) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v92, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        }
      }

      else
      {
        v95 = v199;
        outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v92, v199, type metadata accessor for Apple_Workout_DistanceValue);
      }

      v95[2] = v90;
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v82 + v91, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v95, v82 + v91, type metadata accessor for Apple_Workout_DistanceValue);
      v114 = *(v85 + 56);
      v115 = v224;
      v114(v82 + v91, 0, 1, v224);
      v116 = v202;
      v117 = v115;
      _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v82 + v91, v202, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      if (v93(v116, 1, v115) == 1)
      {
        v118 = v201;
        *(v201 + 16) = 0;
        UnknownStorage.init()();
        v119 = v93(v116, 1, v117);
        v120 = v118;
        v113 = v221;
        if (v119 != 1)
        {
          outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v116, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        }
      }

      else
      {
        v120 = v201;
        outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v116, v201, type metadata accessor for Apple_Workout_DistanceValue);
        v113 = v221;
      }

      *v120 = 3;
      *(v120 + 8) = 1;
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v82 + v91, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v120, v82 + v91, type metadata accessor for Apple_Workout_DistanceValue);
      v114(v82 + v91, 0, 1, v117);
      goto LABEL_52;
    }

    v103 = v86;
    v104 = [v75 yards];
    v105 = static NSObject.== infix(_:_:)();

    if (v105)
    {

      Measurement.value.getter();
      v107 = v106;
      v108 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 20);
      v109 = v196;
      _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v82 + v108, v196, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      v110 = *(v85 + 48);
      v111 = v224;
      if (v110(v109, 1, v224) == 1)
      {
        v112 = v195;
        *v195 = 0;
        *(v112 + 8) = 1;
        UnknownStorage.init()();
        if (v110(v109, 1, v111) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v109, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        }
      }

      else
      {
        v112 = v195;
        outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v109, v195, type metadata accessor for Apple_Workout_DistanceValue);
      }

      v112[2] = v107;
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v82 + v108, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v112, v82 + v108, type metadata accessor for Apple_Workout_DistanceValue);
      v129 = *(v85 + 56);
      v130 = v224;
      v129(v82 + v108, 0, 1, v224);
      v131 = v198;
      v132 = v130;
      _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v82 + v108, v198, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      if (v110(v131, 1, v130) == 1)
      {
        v133 = v197;
        *(v197 + 16) = 0;
        UnknownStorage.init()();
        v134 = v133;
        if (v110(v131, 1, v132) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v131, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        }
      }

      else
      {
        v134 = v197;
        outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v131, v197, type metadata accessor for Apple_Workout_DistanceValue);
      }

      v143 = 4;
    }

    else
    {
      v121 = [v75 miles];
      v122 = static NSObject.== infix(_:_:)();

      if ((v122 & 1) == 0)
      {
        v135 = [v75 meters];
        v136 = v188;
        Measurement<>.converted(to:)();

        Measurement.value.getter();
        v138 = v137;
        (*(v189 + 8))(v136, v72);
        v108 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 20);
        v139 = v191;
        _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v82 + v108, v191, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        v140 = *(v85 + 48);
        v141 = v224;
        if (v140(v139, 1, v224) == 1)
        {
          v142 = v186;
          *v186 = 0;
          *(v142 + 8) = 1;
          UnknownStorage.init()();
          if (v140(v139, 1, v141) != 1)
          {
            outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v139, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
          }
        }

        else
        {
          v142 = v186;
          outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v139, v186, type metadata accessor for Apple_Workout_DistanceValue);
        }

        v142[2] = v138;
        outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v82 + v108, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v142, v82 + v108, type metadata accessor for Apple_Workout_DistanceValue);
        v129 = *(v85 + 56);
        v147 = v224;
        v129(v82 + v108, 0, 1, v224);
        v148 = v194;
        v132 = v147;
        _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v82 + v108, v194, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        if (v140(v148, 1, v147) == 1)
        {
          v149 = v192;
          *(v192 + 16) = 0;
          UnknownStorage.init()();
          v134 = v149;
          if (v140(v148, 1, v132) != 1)
          {
            outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v148, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
          }
        }

        else
        {
          v134 = v192;
          outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v148, v192, type metadata accessor for Apple_Workout_DistanceValue);
        }

        *v134 = 1;
        *(v134 + 8) = 1;
        goto LABEL_51;
      }

      Measurement.value.getter();
      v124 = v123;
      v108 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 20);
      v125 = v187;
      _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v82 + v108, v187, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      v126 = *(v85 + 48);
      v127 = v224;
      if (v126(v125, 1, v224) == 1)
      {
        v128 = v185;
        *v185 = 0;
        *(v128 + 8) = 1;
        UnknownStorage.init()();
        if (v126(v125, 1, v127) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v125, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        }
      }

      else
      {
        v128 = v185;
        outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v125, v185, type metadata accessor for Apple_Workout_DistanceValue);
      }

      v128[2] = v124;
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v82 + v108, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v128, v82 + v108, type metadata accessor for Apple_Workout_DistanceValue);
      v129 = *(v85 + 56);
      v144 = v224;
      v129(v82 + v108, 0, 1, v224);
      v145 = v193;
      v132 = v144;
      _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v82 + v108, v193, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      if (v126(v145, 1, v144) == 1)
      {
        v146 = v190;
        *(v190 + 16) = 0;
        UnknownStorage.init()();
        v134 = v146;
        if (v126(v145, 1, v132) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v145, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
        }

        v143 = 5;
      }

      else
      {
        v134 = v190;
        outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v145, v190, type metadata accessor for Apple_Workout_DistanceValue);
        v143 = 5;
      }
    }

    *v134 = v143;
    *(v134 + 8) = 1;
LABEL_51:
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v82 + v108, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v134, v82 + v108, type metadata accessor for Apple_Workout_DistanceValue);
    v129(v82 + v108, 0, 1, v132);
    v113 = v221;
LABEL_52:
    v102 = v223;
    goto LABEL_53;
  }

  Measurement.value.getter();
  v80 = v79;
  v81 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 20);
  v82 = v220;
  v83 = v213;
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v220 + v81, v213, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v84 = *(v226 + 48);
  if (v84(v83, 1, v51) == 1)
  {
    *v71 = 0;
    v71[8] = 1;
    UnknownStorage.init()();
    if (v84(v83, 1, v51) != 1)
    {
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v83, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v83, v71, type metadata accessor for Apple_Workout_DistanceValue);
  }

  *(v71 + 2) = v80;
  outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v82 + v81, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v71, v82 + v81, type metadata accessor for Apple_Workout_DistanceValue);
  v96 = *(v226 + 56);
  v97 = v224;
  v226 += 56;
  v213 = v96;
  (v96)(v82 + v81, 0, 1, v224);
  v98 = v215;
  v99 = v97;
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v82 + v81, v215, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  if (v84(v98, 1, v97) == 1)
  {
    v100 = v214;
    *(v214 + 16) = 0;
    UnknownStorage.init()();
    v101 = v84(v98, 1, v97);
    v102 = v223;
    if (v101 != 1)
    {
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v98, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    }
  }

  else
  {
    v100 = v214;
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v98, v214, type metadata accessor for Apple_Workout_DistanceValue);
    v102 = v223;
  }

  *v100 = 2;
  *(v100 + 8) = 1;
  outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v82 + v81, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v100, v82 + v81, type metadata accessor for Apple_Workout_DistanceValue);
  (v213)(v82 + v81, 0, 1, v99);
  v113 = v221;
LABEL_53:
  v150 = Measurement.unit.getter();
  v151 = objc_opt_self();
  v152 = v150;
  v153 = [v151 hours];
  _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  v154 = static NSObject.== infix(_:_:)();

  if (v154)
  {

    Measurement.value.getter();
    v156 = v155;
    v157 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 24);
    v158 = v217;
    _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v82 + v157, v217, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    v159 = v222;
    v160 = *(v222 + 48);
    if (v160(v158, 1, v102) == 1)
    {
      v161 = v216;
      *v216 = 0;
      *(v161 + 8) = 1;
      UnknownStorage.init()();
      if (v160(v158, 1, v102) != 1)
      {
        outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v158, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      }
    }

    else
    {
      v161 = v216;
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v158, v216, type metadata accessor for Apple_Workout_TimeValue);
    }

    v161[2] = v156;
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v82 + v157, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v161, v82 + v157, type metadata accessor for Apple_Workout_TimeValue);
    v170 = *(v159 + 56);
    v170(v82 + v157, 0, 1, v102);
    v171 = v219;
    _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v82 + v157, v219, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    if (v160(v171, 1, v102) == 1)
    {
      v172 = v218;
      *(v218 + 16) = 0;
      UnknownStorage.init()();
      if (v160(v171, 1, v102) != 1)
      {
        outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v171, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      }
    }

    else
    {
      v172 = v218;
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v171, v218, type metadata accessor for Apple_Workout_TimeValue);
    }

    v181 = 3;
LABEL_70:
    *v172 = v181;
    *(v172 + 8) = 1;
    goto LABEL_83;
  }

  v162 = [v151 minutes];
  v163 = static NSObject.== infix(_:_:)();

  if (v163)
  {
    Measurement.value.getter();
    v165 = v164;
    v157 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 24);
    v166 = v204;
    _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v82 + v157, v204, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    v167 = v222;
    v168 = *(v222 + 48);
    if (v168(v166, 1, v102) == 1)
    {
      v169 = v203;
      *v203 = 0;
      *(v169 + 8) = 1;
      UnknownStorage.init()();
      if (v168(v166, 1, v102) != 1)
      {
        outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v166, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      }
    }

    else
    {
      v169 = v203;
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v166, v203, type metadata accessor for Apple_Workout_TimeValue);
    }

    v169[2] = v165;
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v82 + v157, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v169, v82 + v157, type metadata accessor for Apple_Workout_TimeValue);
    v170 = *(v167 + 56);
    v170(v82 + v157, 0, 1, v102);
    v182 = v210;
    _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v82 + v157, v210, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    if (v168(v182, 1, v102) == 1)
    {
      v172 = v209;
      *(v209 + 16) = 0;
      UnknownStorage.init()();
      if (v168(v182, 1, v102) != 1)
      {
        outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v182, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      }

      v181 = 2;
    }

    else
    {
      v172 = v209;
      outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v182, v209, type metadata accessor for Apple_Workout_TimeValue);
      v181 = 2;
    }

    goto LABEL_70;
  }

  v173 = [v151 seconds];
  v174 = v205;
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v176 = v175;
  (*(v207 + 8))(v174, v113);
  v157 = *(type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0) + 24);
  v177 = v208;
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v82 + v157, v208, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v178 = v222;
  v179 = *(v222 + 48);
  if (v179(v177, 1, v102) == 1)
  {
    v180 = v206;
    *v206 = 0;
    *(v180 + 8) = 1;
    UnknownStorage.init()();
    if (v179(v177, 1, v102) != 1)
    {
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v177, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    }
  }

  else
  {
    v180 = v206;
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v177, v206, type metadata accessor for Apple_Workout_TimeValue);
  }

  v180[2] = v176;
  outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v82 + v157, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v180, v82 + v157, type metadata accessor for Apple_Workout_TimeValue);
  v170 = *(v178 + 56);
  v170(v82 + v157, 0, 1, v102);
  v183 = v212;
  _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(v82 + v157, v212, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v179(v183, 1, v102) == 1)
  {
    v172 = v211;
    *(v211 + 16) = 0;
    UnknownStorage.init()();
    if (v179(v183, 1, v102) != 1)
    {
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v183, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    }
  }

  else
  {
    v172 = v211;
    outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v183, v211, type metadata accessor for Apple_Workout_TimeValue);
  }

  *v172 = 1;
  *(v172 + 8) = 1;
LABEL_83:
  outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v82 + v157, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(v172, v82 + v157, type metadata accessor for Apple_Workout_TimeValue);
  return (v170)(v82 + v157, 0, 1, v102);
}

uint64_t WorkoutGoal.validateDistanceSupported<A>(for:location:kind:)(uint64_t result, uint64_t a2)
{
  switch(result)
  {
    case 1:
    case 3:
    case 13:
    case 21:
    case 24:
    case 27:
    case 31:
    case 36:
    case 37:
    case 46:
    case 52:
    case 60:
    case 61:
    case 67:
    case 70:
    case 71:
    case 75:
      return result;
    case 25:
    case 35:
    case 39:
    case 41:
      if (a2 == 2)
      {
        v3 = result;
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
        swift_allocError();
        *v4 = v3;
        v4[1] = 2;
        goto LABEL_6;
      }

      break;
    default:
      v5 = result;
      type metadata accessor for GoalValidationError(0);
      lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
      swift_allocError();
      v8 = v7;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v10 = *(v9 + 48);
      v11 = *(v9 + 64);
      outlined init with copy of WorkoutGoal(v2, v8);
      *(v8 + v10) = v5;
      *(v8 + v11) = a2;
LABEL_6:
      swift_storeEnumTagMultiPayload();
      result = swift_willThrow();
      break;
  }

  return result;
}

uint64_t WorkoutGoal.validateEnergySupported<A>(for:location:kind:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CustomWorkout(0);
  if (result == a3)
  {
    type metadata accessor for CustomValidationError(0);
    lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type CustomValidationError and conformance CustomValidationError, type metadata accessor for CustomValidationError, &protocol conformance descriptor for CustomValidationError);
    swift_allocError();
    v9 = v8;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
    v11 = *(v10 + 48);
    v12 = *(v10 + 64);
    outlined init with copy of WorkoutGoal(v3, v9);
    *(v9 + v11) = a1;
    *(v9 + v12) = a2;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t WorkoutGoal.validateDistanceWithTimeSupported<A>(for:swimmingLocation:kind:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CustomWorkout(0);
  if (result != a3 || a1 != 46 || a2 != 1)
  {
    type metadata accessor for GoalValidationError(0);
    lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
    swift_allocError();
    v9 = v8;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d16SwimmingLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d16SwimmingLocationF0VtMR);
    v11 = *(v10 + 48);
    v12 = *(v10 + 64);
    outlined init with copy of WorkoutGoal(v3, v9);
    *(v9 + v11) = a1;
    *(v9 + v12) = a2;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

void WorkoutGoal.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v10 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WorkoutGoal(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v15 = *v12;
    v16 = *(v12 + 1);
    if (EnumCaseMultiPayload)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
        (*(v7 + 32))(v9, v12, v6);
        (*(v3 + 32))(v5, &v12[v14], v2);
        MEMORY[0x23EEA0D50](4);
        _s10Foundation11MeasurementVySo12NSUnitLengthCGACyxGSHAAWlTm_0(&lazy protocol witness table cache variable for type Measurement<NSUnitLength> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
        dispatch thunk of Hashable.hash(into:)();
        _s10Foundation11MeasurementVySo12NSUnitLengthCGACyxGSHAAWlTm_0(&lazy protocol witness table cache variable for type Measurement<NSUnitDuration> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
        dispatch thunk of Hashable.hash(into:)();
        (*(v3 + 8))(v5, v2);
        (*(v7 + 8))(v9, v6);
      }

      else
      {
        MEMORY[0x23EEA0D50](0);
      }

      return;
    }

    v15 = *v12;
    v16 = *(v12 + 1);
    v17 = 3;
  }

  MEMORY[0x23EEA0D50](v17);
  v18 = 0.0;
  if (v15 != 0.0)
  {
    v18 = v15;
  }

  MEMORY[0x23EEA0D70](*&v18);
  NSObject.hash(into:)();
}

Swift::Int WorkoutGoal.hashValue.getter()
{
  Hasher.init(_seed:)();
  WorkoutGoal.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutGoal()
{
  Hasher.init(_seed:)();
  WorkoutGoal.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutGoal(uint64_t a1)
{
  Hasher.init(_seed:)();
  WorkoutGoal.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t specialized static WorkoutGoal.== infix(_:_:)(void (*a1)(char *, double *, uint64_t), uint64_t a2)
{
  v96 = a1;
  v97 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v86 = *(v2 - 8);
  v87 = v2;
  MEMORY[0x28223BE20](v2);
  v84 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v83 = &v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x28223BE20](v6);
  v85 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v89 = &v82 - v9;
  MEMORY[0x28223BE20](v10);
  v93 = &v82 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v82 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v92 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v88 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v94 = &v82 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v82 - v22;
  v24 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v29 = &v82 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v82 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v82 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v82 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v82 - v40;
  outlined init with copy of WorkoutGoal(v96, &v82 - v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v58 = v93;
    if (EnumCaseMultiPayload)
    {
      v70 = v14;
      v71 = *(v41 + 1);
      outlined init with copy of WorkoutGoal(v97, v32);
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v60 = v32;
        goto LABEL_18;
      }

      v72 = *(v32 + 1);
      _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
      v73 = v71;
      v74 = v70;
      Measurement.init(value:unit:)();
      v75 = v72;
      Measurement.init(value:unit:)();
      v56 = static Measurement.== infix<A, B>(_:_:)();

      v67 = v91;
      v68 = *(v90 + 8);
      v68(v58, v91);
      v69 = v74;
LABEL_20:
      v68(v69, v67);
      return v56 & 1;
    }

    v59 = *(v41 + 1);
    outlined init with copy of WorkoutGoal(v97, v35);
    if (!swift_getEnumCaseMultiPayload())
    {
      v76 = *(v35 + 1);
      _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
      v77 = v59;
      Measurement.init(value:unit:)();
      v78 = v76;
      Measurement.init(value:unit:)();
      v56 = static Measurement.== infix<A, B>(_:_:)();

      v68 = *(v92 + 8);
      v67 = v95;
      v68(v20, v95);
      v69 = v23;
      goto LABEL_20;
    }

    v60 = v35;
LABEL_18:
    _s10WorkoutKit06Apple_a1_A4GoalVWOhTm_0(v60, type metadata accessor for WorkoutGoal);
    v56 = 0;
    return v56 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v61 = *(v41 + 1);
    outlined init with copy of WorkoutGoal(v97, v29);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v62 = *(v29 + 1);
      _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
      v63 = v61;
      v64 = v83;
      Measurement.init(value:unit:)();
      v65 = v62;
      v66 = v84;
      Measurement.init(value:unit:)();
      v56 = static Measurement.== infix<A, B>(_:_:)();

      v67 = v87;
      v68 = *(v86 + 8);
      v68(v66, v87);
      v69 = v64;
      goto LABEL_20;
    }

    v60 = v29;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 3)
  {
    outlined init with copy of WorkoutGoal(v97, v38);
    v56 = swift_getEnumCaseMultiPayload() == 4;
    _s10WorkoutKit06Apple_a1_A4GoalVWOhTm_0(v38, type metadata accessor for WorkoutGoal);
    return v56 & 1;
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR);
  v44 = *(v43 + 48);
  v45 = v92;
  v96 = *(v92 + 32);
  v96(v94, v41, v95);
  v46 = v90;
  v47 = *(v90 + 32);
  v48 = &v41[v44];
  v49 = v89;
  v50 = v91;
  v47(v89, v48, v91);
  outlined init with copy of WorkoutGoal(v97, v26);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v46 + 8))(v49, v50);
    (*(v45 + 8))(v94, v95);
    v60 = v26;
    goto LABEL_18;
  }

  v51 = *(v43 + 48);
  v52 = v95;
  v96(v88, v26, v95);
  v53 = v85;
  v47(v85, v26 + v51, v50);
  _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  v54 = v94;
  if (static Measurement.== infix<A, B>(_:_:)())
  {
    _sSo14NSUnitDurationCMaTm_0(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    v55 = v89;
    v56 = static Measurement.== infix<A, B>(_:_:)();
    v57 = v92;
  }

  else
  {
    v56 = 0;
    v57 = v92;
    v55 = v89;
  }

  v79 = *(v46 + 8);
  v79(v53, v50);
  v80 = *(v57 + 8);
  v80(v88, v52);
  v79(v55, v50);
  v80(v54, v52);
  return v56 & 1;
}

uint64_t _s10Foundation11MeasurementVySo12NSUnitLengthCGACyxGSHAAWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of Apple_Workout_PoolSwimDistanceWithTimeValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_A14_DistanceValueVSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type GoalValidationError and conformance GoalValidationError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10WorkoutKit06Apple_a1_A4GoalVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for Apple_Workout_WorkoutGoal(uint64_t a1)
{
  type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Apple_Workout_WorkoutGoal.OneOf_GoalValue?)
  {
    type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Apple_Workout_WorkoutGoal.OneOf_GoalValue?);
    }
  }
}

uint64_t type metadata accessor for Apple_Workout_WorkoutGoal(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_WorkoutGoal.GoalType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Apple_Workout_WorkoutGoal.GoalType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for Apple_Workout_WorkoutGoal.GoalType(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Apple_Workout_WorkoutGoal.GoalType(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_WorkoutGoal.OneOf_GoalValue(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_TimeValue(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_EnergyValue(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Workout_DistanceValue(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_WorkoutGoal.GoalType(uint64_t a1@<X8>)
{
  specialized Apple_Workout_WorkoutGoal.GoalType.init(rawValue:)();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_WorkoutGoal.GoalType(uint64_t a2@<X8>)
{
  specialized Apple_Workout_WorkoutGoal.GoalType.init(rawValue:)();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_WorkoutGoal.GoalType(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutGoal.GoalType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_WorkoutGoal.GoalType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_WorkoutGoal.GoalType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_WorkoutGoal.GoalType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_WorkoutGoal.GoalType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10WorkoutKit06Apple_a1_A4GoalV0D4TypeOGMd, &_sSay10WorkoutKit06Apple_a1_A4GoalV0D4TypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_WorkoutGoal.GoalType] and conformance [A]);
  }

  return result;
}

uint64_t Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 2)
        {
          closure #2 in Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            closure #3 in Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
          case 4:
            closure #4 in Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
          case 5:
            closure #5 in Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Workout_TimeValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Apple_Workout_WorkoutGoal(0) + 20);
  v44 = a1;
  v42 = v29;
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a1 + v29, v12, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v12, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v31 = v13;
    v32 = v50;
  }

  else
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v12, v19, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v19, v16, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v16, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
      v32 = v50;
    }

    else
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      v33 = v16;
      v34 = v45;
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v33, v45, type metadata accessor for Apple_Workout_TimeValue);
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v34, v25, type metadata accessor for Apple_Workout_TimeValue);
      v32 = v50;
      v28(v25, 0, 1, v50);
    }
  }

  v35 = v48;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  }

  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v25, v35, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if ((*(v47 + 48))(v35, 1, v32) == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v35, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  }

  else
  {
    v38 = v46;
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v35, v46, type metadata accessor for Apple_Workout_TimeValue);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    v39 = v44;
    v40 = v42;
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v44 + v42, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v38, v39 + v40, type metadata accessor for Apple_Workout_TimeValue);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t closure #3 in Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Workout_EnergyValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A12_EnergyValueVSgMd, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Apple_Workout_WorkoutGoal(0) + 20);
  v44 = a1;
  v42 = v29;
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a1 + v29, v12, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v12, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v31 = v13;
  }

  else
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v12, v19, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v19, v16, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMd, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMR);
      v32 = v16;
      v33 = v46;
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v32, v46, type metadata accessor for Apple_Workout_EnergyValue);
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v33, v25, type metadata accessor for Apple_Workout_EnergyValue);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v16, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_EnergyValue and conformance Apple_Workout_EnergyValue, type metadata accessor for Apple_Workout_EnergyValue, &protocol conformance descriptor for Apple_Workout_EnergyValue);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMd, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMR);
  }

  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v25, v35, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMd, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMR);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMd, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMR);
    return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v35, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMd, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMR);
  }

  else
  {
    v38 = v45;
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v35, v45, type metadata accessor for Apple_Workout_EnergyValue);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMd, &_s10WorkoutKit06Apple_A12_EnergyValueVSgMR);
    v39 = v44;
    v40 = v42;
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v44 + v42, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v38, v39 + v40, type metadata accessor for Apple_Workout_EnergyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t closure #4 in Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Apple_Workout_WorkoutGoal(0) + 20);
  v44 = a1;
  v42 = v29;
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a1 + v29, v12, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v12, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v31 = v13;
  }

  else
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v12, v19, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v19, v16, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      v32 = v16;
      v33 = v46;
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v32, v46, type metadata accessor for Apple_Workout_DistanceValue);
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v33, v25, type metadata accessor for Apple_Workout_DistanceValue);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v16, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue, &protocol conformance descriptor for Apple_Workout_DistanceValue);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  }

  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v25, v35, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v35, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  }

  else
  {
    v38 = v45;
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v35, v45, type metadata accessor for Apple_Workout_DistanceValue);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    v39 = v44;
    v40 = v42;
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v44 + v42, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v38, v39 + v40, type metadata accessor for Apple_Workout_DistanceValue);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t closure #5 in Apple_Workout_WorkoutGoal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMd, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Apple_Workout_WorkoutGoal(0) + 20);
  v44 = a1;
  v42 = v29;
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a1 + v29, v12, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v12, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v31 = v13;
  }

  else
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v12, v19, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v19, v16, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMd, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMR);
      v32 = v16;
      v33 = v46;
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v32, v46, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v33, v25, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v16, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue, &protocol conformance descriptor for Apple_Workout_PoolSwimDistanceWithTimeValue);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMd, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMR);
  }

  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v25, v35, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMd, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMR);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMd, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMR);
    return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v35, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMd, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMR);
  }

  else
  {
    v38 = v45;
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v35, v45, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMd, &_s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVSgMR);
    v39 = v44;
    v40 = v42;
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v44 + v42, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v38, v39 + v40, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  if (*v3)
  {
    v13 = *(v3 + 8);
    v19 = *v3;
    v20 = v13;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal.GoalType and conformance Apple_Workout_WorkoutGoal.GoalType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v15 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v6 + *(v15 + 20), v12, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v16 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  if ((*(*(v16 - 8) + 48))(v12, 1, v16) == 1)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v18 = v5;
    if (EnumCaseMultiPayload == 2)
    {
      closure #3 in Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(v6, a1, a2, a3);
    }

    else
    {
      closure #4 in Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(v6, a1, a2, a3);
    }
  }

  else
  {
    v18 = v5;
    if (EnumCaseMultiPayload)
    {
      closure #2 in Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(v6, a1, a2, a3);
    }

    else
    {
      closure #1 in Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(v6, a1, a2, a3);
    }
  }

  result = outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v12, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  if (!v18)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_TimeValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a1 + *(v11 + 20), v7, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v12 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v7, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v7, v10, type metadata accessor for Apple_Workout_TimeValue);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v10, type metadata accessor for Apple_Workout_TimeValue);
  }

  result = outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v7, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_EnergyValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a1 + *(v11 + 20), v7, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v12 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v7, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v7, v10, type metadata accessor for Apple_Workout_EnergyValue);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_EnergyValue and conformance Apple_Workout_EnergyValue, type metadata accessor for Apple_Workout_EnergyValue, &protocol conformance descriptor for Apple_Workout_EnergyValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v10, type metadata accessor for Apple_Workout_EnergyValue);
  }

  result = outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v7, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_DistanceValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a1 + *(v11 + 20), v7, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v12 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v7, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v7, v10, type metadata accessor for Apple_Workout_DistanceValue);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue, &protocol conformance descriptor for Apple_Workout_DistanceValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v10, type metadata accessor for Apple_Workout_DistanceValue);
  }

  result = outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v7, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  __break(1u);
  return result;
}

uint64_t closure #4 in Apple_Workout_WorkoutGoal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a1 + *(v11 + 20), v7, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v12 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v7, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(v7, v10, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue, &protocol conformance descriptor for Apple_Workout_PoolSwimDistanceWithTimeValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v10, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
  }

  result = outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v7, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_WorkoutGoal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v3 = *(a1 + 20);
  v4 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_WorkoutGoal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_WorkoutGoal(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_WorkoutGoal(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal, &protocol conformance descriptor for Apple_Workout_WorkoutGoal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_WorkoutGoal(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal, &protocol conformance descriptor for Apple_Workout_WorkoutGoal);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_WorkoutGoal(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutGoal(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal, &protocol conformance descriptor for Apple_Workout_WorkoutGoal);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_WorkoutGoal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_WorkoutGoal@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t specialized static Apple_Workout_WorkoutGoal.OneOf_GoalValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v2 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Workout_DistanceValue(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_EnergyValue(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_TimeValue(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueO_AEtMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueO_AEtMR);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v39 - v26;
  v29 = *(v28 + 56);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v41, &v39 - v26);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v42, &v27[v29]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v27, v18);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v31 = type metadata accessor for Apple_Workout_DistanceValue;
        v32 = v18;
        goto LABEL_15;
      }

      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(&v27[v29], v6, type metadata accessor for Apple_Workout_DistanceValue);
      v33 = static Apple_Workout_DistanceValue.== infix(_:_:)();
      v34 = type metadata accessor for Apple_Workout_DistanceValue;
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v6, type metadata accessor for Apple_Workout_DistanceValue);
      v35 = v18;
    }

    else
    {
      outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v27, v15);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v31 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue;
        v32 = v15;
        goto LABEL_15;
      }

      v37 = v40;
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(&v27[v29], v40, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
      v33 = specialized static Apple_Workout_PoolSwimDistanceWithTimeValue.== infix(_:_:)(v15, v37);
      v34 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue;
      outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v37, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
      v35 = v15;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v27, v21);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v31 = type metadata accessor for Apple_Workout_EnergyValue;
      v32 = v21;
      goto LABEL_15;
    }

    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(&v27[v29], v9, type metadata accessor for Apple_Workout_EnergyValue);
    v33 = static Apple_Workout_EnergyValue.== infix(_:_:)();
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v9, type metadata accessor for Apple_Workout_EnergyValue);
    v35 = v21;
    v36 = type metadata accessor for Apple_Workout_EnergyValue;
LABEL_18:
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v35, v36);
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v27, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    return v33 & 1;
  }

  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v27, v24);
  if (!swift_getEnumCaseMultiPayload())
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(&v27[v29], v12, type metadata accessor for Apple_Workout_TimeValue);
    v33 = static Apple_Workout_TimeValue.== infix(_:_:)(v24, v12);
    v34 = type metadata accessor for Apple_Workout_TimeValue;
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v12, type metadata accessor for Apple_Workout_TimeValue);
    v35 = v24;
LABEL_17:
    v36 = v34;
    goto LABEL_18;
  }

  v31 = type metadata accessor for Apple_Workout_TimeValue;
  v32 = v24;
LABEL_15:
  outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v32, v31);
  _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v27, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueO_AEtMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueO_AEtMR);
  v33 = 0;
  return v33 & 1;
}

uint64_t specialized static Apple_Workout_WorkoutGoal.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSg_AFtMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSg_AFtMR);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v14 = *a1;
  v15 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        if (v14 != 3)
        {
          goto LABEL_18;
        }
      }

      else if (v15 == 4)
      {
        if (v14 != 4)
        {
          goto LABEL_18;
        }
      }

      else if (v14 != 5)
      {
        goto LABEL_18;
      }
    }

    else if (v15)
    {
      if (v15 == 1)
      {
        if (v14 != 1)
        {
          goto LABEL_18;
        }
      }

      else if (v14 != 2)
      {
        goto LABEL_18;
      }
    }

    else if (v14)
    {
      goto LABEL_18;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_18;
  }

  v16 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v17 = a1;
  v24[0] = v16;
  v24[1] = a1;
  v18 = *(v16 + 20);
  v19 = *(v11 + 48);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v17 + v18, v13, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(a2 + v18, &v13[v19], &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v13, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
LABEL_21:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v21 & 1;
    }

    goto LABEL_17;
  }

  outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue?(v13, v10, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v10, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
LABEL_17:
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v13, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSg_AFtMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSg_AFtMR);
    goto LABEL_18;
  }

  _s10WorkoutKit06Apple_A10_TimeValueVWObTm_2(&v13[v19], v7, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  v23 = specialized static Apple_Workout_WorkoutGoal.OneOf_GoalValue.== infix(_:_:)(v10, v7);
  outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v7, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  outlined destroy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(v10, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
  _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(v13, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  if (v23)
  {
    goto LABEL_21;
  }

LABEL_18:
  v21 = 0;
  return v21 & 1;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutGoal.OneOf_GoalValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static PacerWorkout.supportsActivity(_:)(uint64_t a1)
{
  if (qword_284E21CD8 == a1 || unk_284E21CE0 == a1 || qword_284E21CE8 == a1)
  {
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v4 = swift_allocError();
    *v5 = a1;
    v6 = v5 + 1;
  }

  else
  {
    if ((a1 - 13) <= 0x3A && ((1 << (a1 - 13)) & 0x400000001000001) != 0)
    {
      return 1;
    }

    lazy protocol witness table accessor for type PacerValidationError and conformance PacerValidationError();
    v4 = swift_allocError();
    *v18 = a1;
    v18[1] = 0;
    v6 = v18 + 2;
  }

  *v6 = 0;
  swift_willThrow();
  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static WorkoutKitLog.validations);
  v8 = v4;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_23B5E7000, v9, v10, "Not supported due to %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23EEA1330](v12, -1, -1);
    MEMORY[0x23EEA1330](v11, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t PacerWorkout.activity.setter(uint64_t result)
{
  *v1 = result;
  if (qword_284E21CD8 == result || unk_284E21CE0 == result || qword_284E21CE8 == result)
  {
    v10 = result;
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v5 = swift_allocError();
    v9 = 1;
    v7 = v8;
    goto LABEL_12;
  }

  if ((result - 13) > 0x3A || ((1 << (result - 13)) & 0x400000001000001) == 0)
  {
    v4 = result;
    lazy protocol witness table accessor for type PacerValidationError and conformance PacerValidationError();
    v5 = swift_allocError();
    v7 = v6;
    *v6 = v4;
    v8 = v6 + 1;
    v9 = 2;
    v10 = 0;
LABEL_12:
    *v8 = v10;
    LOBYTE(v7[v9]) = 0;
    swift_willThrow();
    v11 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t PacerWorkout.activity.modify(uint64_t result, char a2)
{
  if (a2)
  {
    return result;
  }

  v2 = **(result + 8);
  if (qword_284E21CD8 == v2 || unk_284E21CE0 == v2 || qword_284E21CE8 == v2)
  {
    v12 = result;
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v7 = swift_allocError();
    v8 = 1;
    v9 = v6;
LABEL_16:
    *v6 = v2;
    LOBYTE(v9[v8]) = 0;
    swift_willThrow();
    *v12 = v7;
    v11 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if ((v2 - 13) > 0x3A || ((1 << (v2 - 13)) & 0x400000001000001) == 0)
  {
    v12 = result;
    lazy protocol witness table accessor for type PacerValidationError and conformance PacerValidationError();
    v7 = swift_allocError();
    v9 = v10;
    *v10 = v2;
    v6 = v10 + 1;
    v8 = 2;
    v2 = 0;
    goto LABEL_16;
  }

  return result;
}

uint64_t PacerWorkout.distance.getter()
{
  v1 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = *(type metadata accessor for PacerWorkout(0) + 24);
  outlined init with copy of WorkoutGoal(v0 + v7, v6);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of WorkoutGoal(v6, type metadata accessor for WorkoutGoal);
    v10 = 0;
    v11 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v10 = 0xD000000000000024;
    v11 = 0x800000023B67FD00;
    outlined init with copy of WorkoutGoal(v0 + v7, v3);
    v9 = String.init<A>(describing:)();
    MEMORY[0x23EEA0A50](v9);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    _sSo12NSUnitLengthCMaTm_0(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    return Measurement.init(value:unit:)();
  }

  return result;
}

uint64_t PacerWorkout.distanceGoal.setter(uint64_t a1)
{
  v3 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for PacerWorkout(0) + 24);
  outlined assign with copy of WorkoutGoal(a1, v1 + v6);
  outlined init with copy of WorkoutGoal(v1 + v6, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  outlined destroy of WorkoutGoal(v5, type metadata accessor for WorkoutGoal);
  if (EnumCaseMultiPayload)
  {
    type metadata accessor for GoalValidationError(0);
    _s10WorkoutKit19GoalValidationErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
    v9 = swift_allocError();
    v11 = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
    v13 = *(v12 + 48);
    v14 = *(v12 + 64);
    outlined init with copy of WorkoutGoal(v1 + v6, v11);
    *(v11 + v13) = *v1;
    *(v11 + v14) = v1[1];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v16 = v9;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA05PacerA0V_Tt2g5(*v1, v1[1], 0);
    return outlined destroy of WorkoutGoal(a1, type metadata accessor for WorkoutGoal);
  }

  return result;
}

void (*PacerWorkout.distance.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = type metadata accessor for WorkoutGoal(0);
  v5[1] = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v5[2] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v5[3] = v9;
  v10 = *(v9 - 8);
  v5[4] = v10;
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v5[6] = v12;
  PacerWorkout.distance.getter();
  return PacerWorkout.distance.modify;
}

uint64_t PacerWorkout.time.getter()
{
  v1 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = *(type metadata accessor for PacerWorkout(0) + 28);
  outlined init with copy of WorkoutGoal(v0 + v7, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _sSo12NSUnitLengthCMaTm_0(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    return Measurement.init(value:unit:)();
  }

  else
  {
    outlined destroy of WorkoutGoal(v6, type metadata accessor for WorkoutGoal);
    v10 = 0;
    v11 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v10 = 0xD000000000000020;
    v11 = 0x800000023B67FD30;
    outlined init with copy of WorkoutGoal(v0 + v7, v3);
    v9 = String.init<A>(describing:)();
    MEMORY[0x23EEA0A50](v9);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t key path setter for PacerWorkout.distance : PacerWorkout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(double *))
{
  v12 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v24 - v18;
  (*(v16 + 16))(&v24 - v18, a1, v15, v17);
  Measurement.value.getter();
  v21 = v20;
  v22 = Measurement.unit.getter();
  *v14 = v21;
  *(v14 + 1) = v22;
  swift_storeEnumTagMultiPayload();
  a8(v14);
  return (*(v16 + 8))(v19, v15);
}

uint64_t PacerWorkout.distance.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(double *))
{
  v9 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Measurement.value.getter();
  v14 = v13;
  v15 = Measurement.unit.getter();
  *v11 = v14;
  *(v11 + 1) = v15;
  swift_storeEnumTagMultiPayload();
  a5(v11);
  return (*(*(v12 - 8) + 8))(a1, v12);
}

uint64_t PacerWorkout.timeGoal.setter(uint64_t a1)
{
  v3 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for PacerWorkout(0) + 28);
  outlined assign with copy of WorkoutGoal(a1, v1 + v6);
  outlined init with copy of WorkoutGoal(v1 + v6, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  outlined destroy of WorkoutGoal(v5, type metadata accessor for WorkoutGoal);
  if (EnumCaseMultiPayload == 1)
  {
    _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA05PacerA0V_Tt2g5(*v1, v1[1], 0);
    return outlined destroy of WorkoutGoal(a1, type metadata accessor for WorkoutGoal);
  }

  else
  {
    type metadata accessor for GoalValidationError(0);
    _s10WorkoutKit19GoalValidationErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
    v9 = swift_allocError();
    v11 = v10;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
    v13 = *(v12 + 48);
    v14 = *(v12 + 64);
    outlined init with copy of WorkoutGoal(v1 + v6, v11);
    *(v11 + v13) = *v1;
    *(v11 + v14) = v1[1];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v16 = v9;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void (*PacerWorkout.time.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = type metadata accessor for WorkoutGoal(0);
  v5[1] = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v5[2] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v5[3] = v9;
  v10 = *(v9 - 8);
  v5[4] = v10;
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v5[6] = v12;
  PacerWorkout.time.getter();
  return PacerWorkout.time.modify;
}

void PacerWorkout.distance.modify(uint64_t a1, char a2, uint64_t a3, void (*a4)(double *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  v9 = *(*a1 + 16);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 40), v6, v7);
    Measurement.value.getter();
    v11 = v10;
    v12 = Measurement.unit.getter();
    *v9 = v11;
    *(v9 + 8) = v12;
    swift_storeEnumTagMultiPayload();
    a4(v9);
    v13 = *(v8 + 8);
    v13(v5, v7);
    v13(v6, v7);
  }

  else
  {
    Measurement.value.getter();
    v15 = v14;
    v16 = Measurement.unit.getter();
    *v9 = v15;
    *(v9 + 8) = v16;
    swift_storeEnumTagMultiPayload();
    a4(v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v4);
}

uint64_t PacerWorkout.distanceGoal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PacerWorkout(0) + 24);

  return outlined init with copy of WorkoutGoal(v3, a1);
}

void (*PacerWorkout.distanceGoal.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  v6 = type metadata accessor for WorkoutGoal(0);
  *(v5 + 16) = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  *(v5 + 24) = v8;
  *(v5 + 32) = *(type metadata accessor for PacerWorkout(0) + 24);
  return PacerWorkout.distanceGoal.modify;
}

void PacerWorkout.distanceGoal.modify(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = *(v2 + 3);
    outlined init with copy of WorkoutGoal(*(v2 + 1) + v2[8], v3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    outlined destroy of WorkoutGoal(v3, type metadata accessor for WorkoutGoal);
    if (EnumCaseMultiPayload)
    {
      v5 = *(v2 + 1);
      v6 = v2[8];
      type metadata accessor for GoalValidationError(0);
      _s10WorkoutKit19GoalValidationErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
      v7 = swift_allocError();
      v9 = v8;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v11 = *(v10 + 48);
      v12 = *(v10 + 64);
      outlined init with copy of WorkoutGoal(v5 + v6, v9);
      *(v9 + v11) = *v5;
      *(v9 + v12) = v5[1];
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      *v2 = v7;
      v13 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      String.init<A>(describing:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA05PacerA0V_Tt2g5(**(v2 + 1), *(*(v2 + 1) + 8), 0);
  }

  free(*(v2 + 3));

  free(v2);
}

uint64_t PacerWorkout.timeGoal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PacerWorkout(0) + 28);

  return outlined init with copy of WorkoutGoal(v3, a1);
}

uint64_t key path setter for PacerWorkout.distanceGoal : PacerWorkout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WorkoutGoal(a1, v9);
  return a5(v9);
}

void (*PacerWorkout.timeGoal.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v1;
  v6 = type metadata accessor for WorkoutGoal(0);
  *(v5 + 16) = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  *(v5 + 24) = v8;
  *(v5 + 32) = *(type metadata accessor for PacerWorkout(0) + 28);
  return PacerWorkout.timeGoal.modify;
}

void PacerWorkout.timeGoal.modify(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = *(v2 + 3);
    outlined init with copy of WorkoutGoal(*(v2 + 1) + v2[8], v3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    outlined destroy of WorkoutGoal(v3, type metadata accessor for WorkoutGoal);
    if (EnumCaseMultiPayload != 1)
    {
      v5 = *(v2 + 1);
      v6 = v2[8];
      type metadata accessor for GoalValidationError(0);
      _s10WorkoutKit19GoalValidationErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
      v7 = swift_allocError();
      v9 = v8;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v11 = *(v10 + 48);
      v12 = *(v10 + 64);
      outlined init with copy of WorkoutGoal(v5 + v6, v9);
      *(v9 + v11) = *v5;
      *(v9 + v12) = v5[1];
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      *v2 = v7;
      v13 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      String.init<A>(describing:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA05PacerA0V_Tt2g5(**(v2 + 1), *(*(v2 + 1) + 8), 0);
  }

  free(*(v2 + 3));

  free(v2);
}

uint64_t PacerWorkout.init(activity:location:distance:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (v28 - v14);
  v16 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v16 setActivityType_];
  [v16 setLocationType_];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  Measurement.value.getter();
  v19 = v18;
  v20 = Measurement.unit.getter();
  *v15 = v19;
  v15[1] = v20;
  swift_storeEnumTagMultiPayload();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  Measurement.value.getter();
  v23 = v22;
  v24 = Measurement.unit.getter();
  *v12 = v23;
  v12[1] = v24;
  swift_storeEnumTagMultiPayload();
  specialized static PacerWorkout.validate(configuration:distanceGoal:timeGoal:)(v16);
  *a5 = [v16 activityType];
  v25 = [v16 locationType];

  (*(*(v21 - 8) + 8))(a4, v21);
  (*(*(v17 - 8) + 8))(a3, v17);
  a5[1] = v25;
  v26 = type metadata accessor for PacerWorkout(0);
  outlined init with take of WorkoutGoal(v15, a5 + *(v26 + 24), type metadata accessor for WorkoutGoal);
  return outlined init with take of WorkoutGoal(v12, a5 + *(v26 + 28), type metadata accessor for WorkoutGoal);
}

uint64_t PacerWorkout.init(configuration:distanceGoal:timeGoal:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  specialized static PacerWorkout.validate(configuration:distanceGoal:timeGoal:)(a1);
  if (v4)
  {

    outlined destroy of WorkoutGoal(a3, type metadata accessor for WorkoutGoal);
    return outlined destroy of WorkoutGoal(a2, type metadata accessor for WorkoutGoal);
  }

  else
  {
    *a4 = [a1 activityType];
    v10 = [a1 locationType];

    a4[1] = v10;
    v11 = type metadata accessor for PacerWorkout(0);
    outlined init with take of WorkoutGoal(a2, a4 + *(v11 + 24), type metadata accessor for WorkoutGoal);
    return outlined init with take of WorkoutGoal(a3, a4 + *(v11 + 28), type metadata accessor for WorkoutGoal);
  }
}

uint64_t PacerWorkout.init(from:)@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v57 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v57);
  v61 = (&v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v60 = &v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v55 - v7;
  v8 = type metadata accessor for Apple_Workout_TimeValue(0);
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v65 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x28223BE20](v10);
  v70 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - v13;
  v15 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v66 = *(v19 - 8);
  v67 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - v20;
  v22 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v22 setActivityType_];
  v23 = type metadata accessor for Apple_Workout_PacerWorkoutComposition(0);
  v24 = (a1 + v23[6]);
  if ((v24[1] & 1) == 0)
  {
    [v22 setLocationType_];
  }

  v69 = v22;
  v25 = a1;
  _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_0(a1 + v23[7], v14, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v26 = *(v16 + 48);
  if (v26(v14, 1, v15) == 1)
  {
    *v18 = 0;
    v18[8] = 1;
    *(v18 + 2) = 0;
    UnknownStorage.init()();
    v27 = v26(v14, 1, v15);
    v28 = v70;
    if (v27 != 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_1(v14, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    }
  }

  else
  {
    outlined init with take of WorkoutGoal(v14, v18, type metadata accessor for Apple_Workout_DistanceValue);
    v28 = v70;
  }

  v29 = v21;
  v30 = v68;
  Apple_Workout_DistanceValue.measurement.getter();
  if (v30)
  {

    outlined destroy of WorkoutGoal(v25, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
    return outlined destroy of WorkoutGoal(v18, type metadata accessor for Apple_Workout_DistanceValue);
  }

  outlined destroy of WorkoutGoal(v18, type metadata accessor for Apple_Workout_DistanceValue);
  v32 = v64;
  _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_0(v25 + v23[8], v64, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v33 = v63;
  v34 = *(v62 + 48);
  if (v34(v32, 1, v63) == 1)
  {
    v35 = v65;
    *v65 = 0;
    *(v35 + 8) = 1;
    v35[2] = 0;
    UnknownStorage.init()();
    v36 = v34(v32, 1, v33);
    v37 = v67;
    if (v36 != 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_1(v32, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    }
  }

  else
  {
    v35 = v65;
    outlined init with take of WorkoutGoal(v32, v65, type metadata accessor for Apple_Workout_TimeValue);
    v37 = v67;
  }

  if (*(v35 + 8) != 1)
  {
    goto LABEL_16;
  }

  v38 = *v35;
  if (*v35 > 1)
  {
    if (v38 == 2)
    {
      v40 = &selRef_minutes;
    }

    else
    {
      v40 = &selRef_hours;
    }
  }

  else
  {
    if (!v38)
    {
LABEL_16:
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      *v39 = 0;
      swift_willThrow();

      outlined destroy of WorkoutGoal(v25, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
      outlined destroy of WorkoutGoal(v35, type metadata accessor for Apple_Workout_TimeValue);
      return (*(v66 + 8))(v29, v37);
    }

    v40 = &selRef_seconds;
  }

  v41 = v60;
  v42 = [objc_opt_self() *v40];
  _sSo12NSUnitLengthCMaTm_0(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  Measurement.init(value:unit:)();
  outlined destroy of WorkoutGoal(v35, type metadata accessor for Apple_Workout_TimeValue);
  Measurement.value.getter();
  v44 = v43;
  v45 = Measurement.unit.getter();
  *v41 = v44;
  v41[1] = v45;
  v70 = v29;
  swift_storeEnumTagMultiPayload();
  v46 = v59;
  Measurement.value.getter();
  v48 = v47;
  v49 = Measurement.unit.getter();
  v50 = v61;
  *v61 = v48;
  *(v50 + 8) = v49;
  swift_storeEnumTagMultiPayload();
  v51 = v69;
  specialized static PacerWorkout.validate(configuration:distanceGoal:timeGoal:)(v69);
  v52 = [v51 activityType];
  v53 = v56;
  *v56 = v52;
  v68 = [v51 locationType];

  outlined destroy of WorkoutGoal(v25, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
  (*(v58 + 8))(v28, v46);
  (*(v66 + 8))(v70, v37);
  v53[1] = v68;
  v54 = type metadata accessor for PacerWorkout(0);
  outlined init with take of WorkoutGoal(v41, v53 + *(v54 + 24), type metadata accessor for WorkoutGoal);
  return outlined init with take of WorkoutGoal(v50, v53 + *(v54 + 28), type metadata accessor for WorkoutGoal);
}

void closure #1 in PacerWorkout.protoComposition.getter(char *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Workout_TimeValue(0);
  v49 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v46 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  MEMORY[0x28223BE20](v15);
  v47 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v20 = *a2;
  if (HIDWORD(*a2))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v44 = v12;
  *a1 = v20;
  v21 = a2[1];
  if (v21 == 1)
  {
    goto LABEL_6;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (!HIDWORD(v21))
  {
    v22 = &a1[*(type metadata accessor for Apple_Workout_PacerWorkoutComposition(0) + 24)];
    *v22 = v21;
    v22[4] = 0;
LABEL_6:
    v42 = v6;
    v43 = v4;
    v40 = type metadata accessor for PacerWorkout(0);
    v41 = a2;
    MEMORY[0x28223BE20](v40);
    *(&v39 - 2) = v23;
    v39 = _s10WorkoutKit19GoalValidationErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal, &protocol conformance descriptor for Apple_Workout_WorkoutGoal);
    v24 = v45;
    static Message.with(_:)();
    v45 = v24;
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_0(&v19[*(v15 + 20)], v11, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v25 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
    v26 = *(*(v25 - 8) + 48);
    if (v26(v11, 1, v25) == 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_1(v11, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        outlined destroy of WorkoutGoal(v19, type metadata accessor for Apple_Workout_WorkoutGoal);
        outlined init with take of WorkoutGoal(v11, v14, type metadata accessor for Apple_Workout_DistanceValue);
        v27 = v44;
        goto LABEL_12;
      }

      outlined destroy of WorkoutGoal(v11, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    }

    *v14 = 0;
    v14[8] = 1;
    *(v14 + 2) = 0;
    v27 = v44;
    UnknownStorage.init()();
    outlined destroy of WorkoutGoal(v19, type metadata accessor for Apple_Workout_WorkoutGoal);
LABEL_12:
    v28 = type metadata accessor for Apple_Workout_PacerWorkoutComposition(0);
    v29 = *(v28 + 28);
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_1(&a1[v29], &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    outlined init with take of WorkoutGoal(v14, &a1[v29], type metadata accessor for Apple_Workout_DistanceValue);
    v30 = (*(v46 + 56))(&a1[v29], 0, 1, v27);
    MEMORY[0x28223BE20](v30);
    *(&v39 - 2) = v31;
    v32 = v47;
    static Message.with(_:)();
    v33 = v32 + *(v15 + 20);
    v34 = v48;
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_0(v33, v48, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    if (v26(v34, 1, v25) == 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_1(v34, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
      v36 = v42;
      v35 = v43;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v36 = v42;
      v35 = v43;
      if (!EnumCaseMultiPayload)
      {
        outlined destroy of WorkoutGoal(v32, type metadata accessor for Apple_Workout_WorkoutGoal);
        outlined init with take of WorkoutGoal(v34, v36, type metadata accessor for Apple_Workout_TimeValue);
        goto LABEL_17;
      }

      outlined destroy of WorkoutGoal(v34, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    }

    *v36 = 0;
    *(v36 + 8) = 1;
    *(v36 + 16) = 0;
    UnknownStorage.init()();
    outlined destroy of WorkoutGoal(v32, type metadata accessor for Apple_Workout_WorkoutGoal);
LABEL_17:
    v38 = *(v28 + 32);
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_1(&a1[v38], &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    outlined init with take of WorkoutGoal(v36, &a1[v38], type metadata accessor for Apple_Workout_TimeValue);
    (*(v49 + 56))(&a1[v38], 0, 1, v35);
    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t static PacerWorkout.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v4 = type metadata accessor for PacerWorkout(0);
  if ((specialized static WorkoutGoal.== infix(_:_:)((a1 + *(v4 + 24)), a2 + *(v4 + 24)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);

  return specialized static WorkoutGoal.== infix(_:_:)((a1 + v5), a2 + v5);
}

void PacerWorkout.hash(into:)(uint64_t a1)
{
  MEMORY[0x23EEA0D50](*v1);
  MEMORY[0x23EEA0D50](v1[1]);
  type metadata accessor for PacerWorkout(0);
  WorkoutGoal.hash(into:)(a1);
  WorkoutGoal.hash(into:)(a1);
}

Swift::Int PacerWorkout.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v0);
  MEMORY[0x23EEA0D50](v0[1]);
  type metadata accessor for PacerWorkout(0);
  WorkoutGoal.hash(into:)(v2);
  WorkoutGoal.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PacerWorkout(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (specialized static WorkoutGoal.== infix(_:_:)((a1 + *(a3 + 24)), a2 + *(a3 + 24)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 28);

  return specialized static WorkoutGoal.== infix(_:_:)((a1 + v6), a2 + v6);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PacerWorkout()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v0);
  MEMORY[0x23EEA0D50](v0[1]);
  WorkoutGoal.hash(into:)(v2);
  WorkoutGoal.hash(into:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PacerWorkout(uint64_t a1)
{
  MEMORY[0x23EEA0D50](*v1);
  MEMORY[0x23EEA0D50](v1[1]);
  WorkoutGoal.hash(into:)(a1);
  WorkoutGoal.hash(into:)(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PacerWorkout(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v1);
  MEMORY[0x23EEA0D50](v1[1]);
  WorkoutGoal.hash(into:)(v3);
  WorkoutGoal.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t outlined assign with copy of WorkoutGoal(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutGoal(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _sSo12NSUnitLengthCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

void specialized static PacerWorkout.validate(configuration:distanceGoal:timeGoal:)(void *a1)
{
  v3 = [a1 activityType];
  v4 = v3;
  if (qword_284E21CD8 == v3 || unk_284E21CE0 == v3 || qword_284E21CE8 == v3)
  {
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    swift_allocError();
    *v7 = v4;
    v8 = v7 + 1;
LABEL_10:
    *v8 = 0;
    swift_willThrow();
    return;
  }

  if ((v3 - 13) > 0x3A || ((1 << (v3 - 13)) & 0x400000001000001) == 0)
  {
    lazy protocol witness table accessor for type PacerValidationError and conformance PacerValidationError();
    swift_allocError();
    *v10 = v4;
    v10[1] = 0;
    v8 = v10 + 2;
    goto LABEL_10;
  }

  _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA05PacerA0V_Tt2g5([a1 activityType], objc_msgSend(a1, sel_locationType), objc_msgSend(a1, sel_swimmingLocationType));
  if (!v1)
  {
    _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA05PacerA0V_Tt2g5([a1 activityType], objc_msgSend(a1, sel_locationType), objc_msgSend(a1, sel_swimmingLocationType));
  }
}

uint64_t _s10WorkoutKit19GoalValidationErrorOACs0E0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of WorkoutGoal(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of WorkoutGoal(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WorkoutStep.init(goal:alert:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WorkoutStep(0);
  v7 = a3 + *(v6 + 20);
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = (a3 + *(v6 + 24));
  *v8 = 0;
  v8[1] = 0;
  _s10WorkoutKit0A4GoalOWObTm_0(a1, a3, type metadata accessor for WorkoutGoal);

  return outlined assign with take of WorkoutAlert?(a2, v7);
}

uint64_t static WorkoutStep.== infix(_:_:)(void (*a1)(char *, double *, uint64_t), uint64_t a2)
{
  v4 = type metadata accessor for WorkoutStep(0);
  v5 = *(v4 + 20);
  outlined init with copy of WorkoutAlert?(a1 + v5, &v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  if (v30)
  {
    sub_23B5ECB18(&v29, v31);
    v6 = v32;
    v7 = v33;
    v8 = __swift_project_boxed_opaque_existential_1(v31, v32);
    outlined init with copy of WorkoutAlert?(a2 + *(v4 + 20), &v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    v9 = v30;
    if (v30)
    {
      v10 = __swift_project_boxed_opaque_existential_1(&v29, v30);
      *(&v28 + 1) = v9;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v27);
      (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v10, v9);
      __swift_destroy_boxed_opaque_existential_1(&v29);
    }

    else
    {
      outlined destroy of WorkoutAlert?(&v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      v27 = 0u;
      v28 = 0u;
    }

    v12 = static WorkoutStep.alertEquatable<A>(_:_:)(v8, &v27, v6, v7);
    outlined destroy of WorkoutAlert?(&v27, &_sypSgMd, &_sypSgMR);
    __swift_destroy_boxed_opaque_existential_1(v31);
    if ((v12 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    outlined destroy of WorkoutAlert?(&v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  }

  outlined init with copy of WorkoutAlert?(a2 + *(v4 + 20), &v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  if (v30)
  {
    sub_23B5ECB18(&v29, v31);
    v13 = v32;
    v14 = v33;
    v15 = __swift_project_boxed_opaque_existential_1(v31, v32);
    outlined init with copy of WorkoutAlert?(a1 + v5, &v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    v16 = v30;
    if (v30)
    {
      v17 = __swift_project_boxed_opaque_existential_1(&v29, v30);
      *(&v28 + 1) = v16;
      v18 = __swift_allocate_boxed_opaque_existential_0(&v27);
      (*(*(v16 - 8) + 16))(v18, v17, v16);
      __swift_destroy_boxed_opaque_existential_1(&v29);
    }

    else
    {
      outlined destroy of WorkoutAlert?(&v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      v27 = 0u;
      v28 = 0u;
    }

    v19 = static WorkoutStep.alertEquatable<A>(_:_:)(v15, &v27, v13, v14);
    outlined destroy of WorkoutAlert?(&v27, &_sypSgMd, &_sypSgMR);
    __swift_destroy_boxed_opaque_existential_1(v31);
    if ((v19 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    outlined destroy of WorkoutAlert?(&v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  }

  if ((specialized static WorkoutGoal.== infix(_:_:)(a1, a2) & 1) == 0)
  {
LABEL_19:
    v25 = 0;
    return v25 & 1;
  }

  v20 = *(v4 + 24);
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  v25 = (v22 | v24) == 0;
  if (v22 && v24)
  {
    if (*v21 == *v23 && v22 == v24)
    {
      v25 = 1;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v25 & 1;
}

void WorkoutStep.validate<A>(for:location:swimmingLocation:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WorkoutGoal.validate<A>(for:location:swimmingLocation:kind:)(a1, a2, a3, a4, a5);
  if (!v6)
  {
    v9 = type metadata accessor for WorkoutStep(0);
    outlined init with copy of WorkoutAlert?(v5 + *(v9 + 20), v12, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A5Alert_pMd, &_s10WorkoutKit0A5Alert_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A13AlertProtable_pMd, &_s10WorkoutKit0A13AlertProtable_pMR);
      if (swift_dynamicCast())
      {
        v10 = *(&v15 + 1);
        if (*(&v15 + 1))
        {
          v11 = v16;
          __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
          (*(v11 + 32))(a1, a2, 1, v10, v11);
          __swift_destroy_boxed_opaque_existential_1(&v14);
          return;
        }
      }

      else
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
      }
    }

    else
    {
      outlined destroy of WorkoutAlert?(v12, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      v14 = 0u;
      v15 = 0u;
      v16 = 0;
    }

    outlined destroy of WorkoutAlert?(&v14, &_s10WorkoutKit0A13AlertProtable_pSgMd, &_s10WorkoutKit0A13AlertProtable_pSgMR);
  }
}

uint64_t WorkoutStep.alert.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WorkoutStep(0) + 20);

  return outlined assign with take of WorkoutAlert?(a1, v3);
}

uint64_t WorkoutStep.displayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutStep(0) + 24));

  return v1;
}

uint64_t WorkoutStep.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WorkoutStep(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WorkoutStep.init(goal:alert:displayName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for WorkoutStep(0);
  v11 = a5 + *(v10 + 20);
  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  v12 = (a5 + *(v10 + 24));
  _s10WorkoutKit0A4GoalOWObTm_0(a1, a5, type metadata accessor for WorkoutGoal);
  result = outlined assign with take of WorkoutAlert?(a2, v11);
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t static WorkoutStep.alertEquatable<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34[1] = a4;
  v41 = a2;
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v34[0] = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v37 = v34 - v10;
  v39 = *(v8 - 8);
  v11 = v39;
  MEMORY[0x28223BE20](v12);
  v38 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v34 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v34 - v19;
  v42 = v6;
  (*(v6 + 16))(v34 - v19, a1, a3, v18);
  v21 = *(v6 + 56);
  v21(v20, 0, 1, a3);
  outlined init with copy of WorkoutAlert?(v41, v43, &_sypSgMd, &_sypSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v22 = swift_dynamicCast();
  v21(v16, v22 ^ 1u, 1, a3);
  v36 = TupleTypeMetadata2;
  v23 = *(TupleTypeMetadata2 + 48);
  v24 = v37;
  v41 = v11;
  v25 = *(v11 + 16);
  v25(v37, v20, v8);
  v40 = v16;
  v25(&v24[v23], v16, v8);
  v26 = *(v42 + 48);
  if (v26(v24, 1, a3) != 1)
  {
    v25(v38, v24, v8);
    if (v26(&v24[v23], 1, a3) != 1)
    {
      v29 = v42;
      v30 = v34[0];
      (*(v42 + 32))(v34[0], &v24[v23], a3);
      v31 = v38;
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *(v29 + 8);
      v32(v30, a3);
      v27 = *(v39 + 8);
      v27(v20, v8);
      v32(v31, a3);
      v27(v24, v8);
      goto LABEL_8;
    }

    v27 = *(v39 + 8);
    v27(v20, v8);
    (*(v42 + 8))(v38, a3);
    goto LABEL_6;
  }

  v27 = *(v39 + 8);
  v27(v20, v8);
  if (v26(&v24[v23], 1, a3) != 1)
  {
LABEL_6:
    (*(v35 + 8))(v24, v36);
    v28 = 0;
    goto LABEL_8;
  }

  v27(v24, v8);
  v28 = 1;
LABEL_8:
  v27(v40, v8);
  return v28 & 1;
}

uint64_t WorkoutStep.hash(into:)(uint64_t a1)
{
  WorkoutGoal.hash(into:)(a1);
  v2 = type metadata accessor for WorkoutStep(0);
  outlined init with copy of WorkoutAlert?(v1 + *(v2 + 20), &v4, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  if (v5)
  {
    sub_23B5ECB18(&v4, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    dispatch thunk of Hashable.hash(into:)();
    result = __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    result = outlined destroy of WorkoutAlert?(&v4, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  }

  if (*(v1 + *(v2 + 24) + 8))
  {
    return String.hash(into:)();
  }

  return result;
}
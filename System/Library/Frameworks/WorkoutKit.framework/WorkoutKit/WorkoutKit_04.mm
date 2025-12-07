uint64_t closure #1 in WorkoutStep.protoRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  lazy protocol witness table accessor for type WorkoutStep and conformance WorkoutStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal, &protocol conformance descriptor for Apple_Workout_WorkoutGoal);
  static Message.with(_:)();
  v32 = v2;
  v12 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v13 = v12[5];
  outlined destroy of WorkoutAlert?(a1 + v13, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  _s10WorkoutKit0A4GoalOWObTm_0(v11, a1 + v13, type metadata accessor for Apple_Workout_WorkoutGoal);
  (*(v9 + 56))(a1 + v13, 0, 1, v8);
  v14 = type metadata accessor for WorkoutStep(0);
  outlined init with copy of WorkoutAlert?(a2 + *(v14 + 20), v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A5Alert_pMd, &_s10WorkoutKit0A5Alert_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A13AlertProtable_pMd, &_s10WorkoutKit0A13AlertProtable_pMR);
    if (swift_dynamicCast())
    {
      if (*(&v27 + 1))
      {
        sub_23B5ECB18(&v26, v29);
        v16 = v30;
        v15 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        (*(v15 + 24))(v16, v15);
        v17 = v12[6];
        outlined destroy of WorkoutAlert?(a1 + v17, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
        _s10WorkoutKit0A4GoalOWObTm_0(v7, a1 + v17, type metadata accessor for Apple_Workout_WorkoutAlert);
        (*(v24 + 56))(a1 + v17, 0, 1, v5);
        result = __swift_destroy_boxed_opaque_existential_1(v29);
        goto LABEL_8;
      }
    }

    else
    {
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
    }
  }

  else
  {
    outlined destroy of WorkoutAlert?(v29, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
  }

  result = outlined destroy of WorkoutAlert?(&v26, &_s10WorkoutKit0A13AlertProtable_pSgMd, &_s10WorkoutKit0A13AlertProtable_pSgMR);
LABEL_8:
  v19 = (a2 + *(v14 + 24));
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v22 = (a1 + v12[7]);

    *v22 = v21;
    v22[1] = v20;
  }

  return result;
}

Swift::Int WorkoutStep.hashValue.getter()
{
  Hasher.init(_seed:)();
  WorkoutStep.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutStep()
{
  Hasher.init(_seed:)();
  WorkoutStep.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutStep(uint64_t a1)
{
  Hasher.init(_seed:)();
  WorkoutStep.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined assign with take of WorkoutGoal(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutGoal(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type WorkoutStep and conformance WorkoutStep(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of WorkoutAlert?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10WorkoutKit0A4GoalOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of WorkoutAlert?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

Swift::String __swiftcall String.workoutKitLocalized()()
{
  if (one-time initialization token for WorkoutKitBundle != -1)
  {
    v7 = v0;
    v8 = v1;
    swift_once();
    v0 = v7;
    v1 = v8;
  }

  v10._object = 0xE000000000000000;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v0, v2, WorkoutKitBundle, v3, v10);
  object = v6._object;
  countAndFlagsBits = v6._countAndFlagsBits;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

objc_class *one-time initialization function for WorkoutKitBundle()
{
  type metadata accessor for WorkoutKitBundlePlaceholder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  WorkoutKitBundle.super.isa = result;
  return result;
}

void type metadata completion function for Apple_Workout_WorkoutRoute(uint64_t a1)
{
  type metadata accessor for [Apple_Workout_RoutePoint](319, &lazy cache variable for type metadata for [Apple_Workout_RoutePoint], type metadata accessor for Apple_Workout_RoutePoint, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for Apple_Workout_WorkoutRoute(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_RoutePoint(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Apple_Workout_RoutePoint](319, &lazy cache variable for type metadata for Apple_Workout_LocationCoordinate2D?, type metadata accessor for Apple_Workout_LocationCoordinate2D, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [Apple_Workout_RoutePoint](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for Data?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Apple_Workout_RoutePoint.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      closure #1 in Apple_Workout_RoutePoint.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      type metadata accessor for Apple_Workout_RoutePoint(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_RoutePoint.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_RoutePoint(0);
  type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_LocationCoordinate2D and conformance Apple_Workout_LocationCoordinate2D, type metadata accessor for Apple_Workout_LocationCoordinate2D, &protocol conformance descriptor for Apple_Workout_LocationCoordinate2D);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_RoutePoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_RoutePoint.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_RoutePoint.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_RoutePoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_RoutePoint(0);
  outlined init with copy of Apple_Workout_LocationCoordinate2D?(a1 + *(v12 + 20), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Apple_Workout_LocationCoordinate2D?(v7, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  }

  outlined init with take of Apple_Workout_LocationCoordinate2D(v7, v11);
  lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_LocationCoordinate2D and conformance Apple_Workout_LocationCoordinate2D, type metadata accessor for Apple_Workout_LocationCoordinate2D, &protocol conformance descriptor for Apple_Workout_LocationCoordinate2D);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_LocationCoordinate2D(v11);
}

uint64_t closure #2 in Apple_Workout_RoutePoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_RoutePoint(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_RoutePoint@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_RoutePoint@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_RoutePoint(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_RoutePoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint, type metadata accessor for Apple_Workout_RoutePoint, &protocol conformance descriptor for Apple_Workout_RoutePoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_RoutePoint(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint, type metadata accessor for Apple_Workout_RoutePoint, &protocol conformance descriptor for Apple_Workout_RoutePoint);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_RoutePoint(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint, type metadata accessor for Apple_Workout_RoutePoint, &protocol conformance descriptor for Apple_Workout_RoutePoint);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_WorkoutRoute.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Workout_RoutePoint(0);
        lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint, type metadata accessor for Apple_Workout_RoutePoint, &protocol conformance descriptor for Apple_Workout_RoutePoint);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Apple_Workout_WorkoutRoute(0);
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_WorkoutRoute.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Workout_RoutePoint(0), lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint, type metadata accessor for Apple_Workout_RoutePoint, &protocol conformance descriptor for Apple_Workout_RoutePoint), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_WorkoutRoute.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Apple_Workout_WorkoutRoute(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_WorkoutRoute.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  v6 = a1 + *(result + 24);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    outlined copy of Data._Representation(*v6, *(v6 + 8));
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v8, v7);
  }

  return result;
}

double protocol witness for Message.init() in conformance Apple_Workout_WorkoutRoute@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  result = 0.0;
  *(a2 + *(a1 + 24)) = xmmword_23B67CF80;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_WorkoutRoute@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_WorkoutRoute(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_WorkoutRoute(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute, type metadata accessor for Apple_Workout_WorkoutRoute, &protocol conformance descriptor for Apple_Workout_WorkoutRoute);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_RoutePoint@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_WorkoutRoute(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute, type metadata accessor for Apple_Workout_WorkoutRoute, &protocol conformance descriptor for Apple_Workout_WorkoutRoute);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_RoutePoint(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutRoute(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute, type metadata accessor for Apple_Workout_WorkoutRoute, &protocol conformance descriptor for Apple_Workout_WorkoutRoute);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_RoutePoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of Apple_Workout_LocationCoordinate2D(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x23EEA04C0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x23EEA04C0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x23EEA04C0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized static Apple_Workout_WorkoutRoute.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit06Apple_B11_RoutePointV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Workout_WorkoutRoute(0) + 24);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  if (v5 >> 60 != 15)
  {
    if (v8 >> 60 != 15)
    {
      outlined copy of Data?(v6, v5);
      outlined copy of Data?(v9, v8);
      v11 = specialized static Data.== infix(_:_:)(v6, v5, v9, v8);
      outlined consume of Data?(v9, v8);
      outlined consume of Data?(v6, v5);
      if (v11)
      {
        goto LABEL_9;
      }

      return 0;
    }

LABEL_6:
    outlined copy of Data?(v6, v5);
    outlined copy of Data?(v9, v8);
    outlined consume of Data?(v6, v5);
    outlined consume of Data?(v9, v8);
    return 0;
  }

  if (v8 >> 60 != 15)
  {
    goto LABEL_6;
  }

  outlined copy of Data?(v6, v5);
  outlined copy of Data?(v9, v8);
  outlined consume of Data?(v6, v5);
LABEL_9:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Apple_Workout_RoutePoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v29 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSg_ADtMd, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSg_ADtMR);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = type metadata accessor for Apple_Workout_RoutePoint(0);
  v16 = *(v15 + 20);
  v17 = *(v12 + 56);
  outlined init with copy of Apple_Workout_LocationCoordinate2D?(a1 + v16, v14);
  outlined init with copy of Apple_Workout_LocationCoordinate2D?(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    outlined init with copy of Apple_Workout_LocationCoordinate2D?(v14, v10);
    if (v18(&v14[v17], 1, v4) != 1)
    {
      outlined init with take of Apple_Workout_LocationCoordinate2D(&v14[v17], v7);
      if (*v10 == *v7 && v10[1] == v7[1])
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_LocationCoordinate2D(v7);
        outlined destroy of Apple_Workout_LocationCoordinate2D(v10);
        outlined destroy of Apple_Workout_LocationCoordinate2D?(v14, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
        if ((v26 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_4;
      }

      outlined destroy of Apple_Workout_LocationCoordinate2D(v7);
      outlined destroy of Apple_Workout_LocationCoordinate2D(v10);
      v24 = &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd;
      v25 = "4?";
LABEL_15:
      outlined destroy of Apple_Workout_LocationCoordinate2D?(v14, v24, v25);
      goto LABEL_16;
    }

    outlined destroy of Apple_Workout_LocationCoordinate2D(v10);
LABEL_9:
    v24 = &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSg_ADtMd;
    v25 = &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSg_ADtMR;
    goto LABEL_15;
  }

  if (v18(&v14[v17], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of Apple_Workout_LocationCoordinate2D?(v14, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
LABEL_4:
  v19 = *(v15 + 24);
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 8);
  if (v21)
  {
    if (v23)
    {
LABEL_21:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v23) = 1;
    }

    if ((v23 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_16:
  v27 = 0;
  return v27 & 1;
}

uint64_t outlined destroy of Apple_Workout_LocationCoordinate2D?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Apple_Workout_WorkoutGoal.workoutKitRepresentation.getter@<X0>(double *a1@<X8>)
{
  v125 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v120 = &v106 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v122 = &v106 - v6;
  v123 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  MEMORY[0x28223BE20](v123);
  v124 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v109 = *(v8 - 8);
  v110 = v8;
  MEMORY[0x28223BE20](v8);
  v108 = &v106 - v9;
  v10 = type metadata accessor for Apple_Workout_EnergyValue(0);
  MEMORY[0x28223BE20](v10 - 8);
  v121 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v113 = *(v12 - 8);
  v114 = v12;
  MEMORY[0x28223BE20](v12);
  v106 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v107 = &v106 - v15;
  v16 = type metadata accessor for Apple_Workout_TimeValue(0);
  v111 = *(v16 - 8);
  v112 = v16;
  MEMORY[0x28223BE20](v16);
  v115 = (&v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v116 = &v106 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v117 = *(v20 - 8);
  v118 = v20;
  MEMORY[0x28223BE20](v20);
  v119 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v106 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v106 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v106 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v106 - v35;
  v37 = type metadata accessor for Apple_Workout_DistanceValue(0);
  MEMORY[0x28223BE20](v37);
  v39 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v106 - v42;
  if (*(v2 + 8) != 1)
  {
    goto LABEL_7;
  }

  v44 = *v2;
  if (*v2 > 2)
  {
    if (v44 == 3)
    {
      v49 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_1(v2 + *(v49 + 20), v36, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
      v50 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
      if ((*(*(v50 - 8) + 48))(v36, 1, v50) == 1)
      {
        _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_2(v36, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
        goto LABEL_35;
      }

      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v57 = v36;
        goto LABEL_34;
      }

      _s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVWObTm_0(v36, v43, type metadata accessor for Apple_Workout_DistanceValue);
      v56 = v126;
      Apple_Workout_DistanceValue.measurement.getter();
      if (v56)
      {
        return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v43, type metadata accessor for Apple_Workout_DistanceValue);
      }

      v73 = v118;
      Measurement.value.getter();
      v75 = v74;
      v76 = Measurement.unit.getter();
      (*(v117 + 8))(v24, v73);
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v43, type metadata accessor for Apple_Workout_DistanceValue);
      v77 = v125;
      *v125 = v75;
      *(v77 + 1) = v76;
      type metadata accessor for WorkoutGoal(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v44 == 4)
    {
      type metadata accessor for WorkoutGoal(0);
      return swift_storeEnumTagMultiPayload();
    }

    v53 = v41;
    v54 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_1(v2 + *(v54 + 20), v27, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v55 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
    if ((*(*(v55 - 8) + 48))(v27, 1, v55) == 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_2(v27, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
      goto LABEL_35;
    }

    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v57 = v27;
      goto LABEL_34;
    }

    v60 = v27;
    v58 = v124;
    _s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVWObTm_0(v60, v124, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
    v62 = v122;
    v61 = v123;
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_1(v58 + *(v123 + 20), v122, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    v63 = *(v53 + 48);
    if (v63(v62, 1, v37) == 1)
    {
      *v39 = 0;
      v39[8] = 1;
      *(v39 + 2) = 0;
      UnknownStorage.init()();
      v64 = v63(v62, 1, v37);
      v66 = v119;
      v65 = v120;
      if (v64 != 1)
      {
        _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_2(v62, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      }
    }

    else
    {
      _s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVWObTm_0(v62, v39, type metadata accessor for Apple_Workout_DistanceValue);
      v66 = v119;
      v65 = v120;
    }

    v72 = v126;
    Apple_Workout_DistanceValue.measurement.getter();
    if (v72)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v39, type metadata accessor for Apple_Workout_DistanceValue);
LABEL_56:
      v70 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue;
      return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v58, v70);
    }

    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v39, type metadata accessor for Apple_Workout_DistanceValue);
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_1(v58 + *(v61 + 24), v65, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    v78 = v112;
    v79 = *(v111 + 48);
    if (v79(v65, 1, v112) == 1)
    {
      v80 = v115;
      *v115 = 0;
      *(v80 + 8) = 1;
      v81 = v80;
      v80[2] = 0;
      UnknownStorage.init()();
      if (v79(v65, 1, v78) != 1)
      {
        _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_2(v65, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      }
    }

    else
    {
      v81 = v115;
      _s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVWObTm_0(v65, v115, type metadata accessor for Apple_Workout_TimeValue);
    }

    if (*(v81 + 8) == 1)
    {
      v83 = *v81;
      if (*v81 > 1)
      {
        if (v83 == 2)
        {
          v100 = &selRef_minutes;
        }

        else
        {
          v100 = &selRef_hours;
        }
      }

      else
      {
        if (!v83)
        {
          goto LABEL_55;
        }

        v100 = &selRef_seconds;
      }

      v101 = v115;
      v102 = [objc_opt_self() *v100];
      _sSo14NSUnitDurationCMaTm_1(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
      v103 = v106;
      Measurement.init(value:unit:)();
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v101, type metadata accessor for Apple_Workout_TimeValue);
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v58, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue);
      v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
      v105 = v125;
      (*(v117 + 32))(v125, v66, v118);
      (*(v113 + 32))(v105 + v104, v103, v114);
      type metadata accessor for WorkoutGoal(0);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_55:
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v84 = 0;
    swift_willThrow();
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v81, type metadata accessor for Apple_Workout_TimeValue);
    (*(v117 + 8))(v66, v118);
    goto LABEL_56;
  }

  if (!v44)
  {
LABEL_7:
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v47 = 0;
    return swift_willThrow();
  }

  if (v44 == 1)
  {
    v45 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_1(v2 + *(v45 + 20), v33, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v46 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
    if ((*(*(v46 - 8) + 48))(v33, 1, v46) == 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_2(v33, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
LABEL_35:
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      *v67 = 1;
      return swift_willThrow();
    }

    if (swift_getEnumCaseMultiPayload())
    {
      v57 = v33;
LABEL_34:
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v57, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
      goto LABEL_35;
    }

    v58 = v116;
    _s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVWObTm_0(v33, v116, type metadata accessor for Apple_Workout_TimeValue);
    if (*(v58 + 8) != 1)
    {
      goto LABEL_40;
    }

    v68 = *v58;
    if (*v58 > 1)
    {
      if (v68 == 2)
      {
        v82 = &selRef_minutes;
      }

      else
      {
        v82 = &selRef_hours;
      }
    }

    else
    {
      if (!v68)
      {
LABEL_40:
        lazy protocol witness table accessor for type ImportError and conformance ImportError();
        swift_allocError();
        *v69 = 0;
        swift_willThrow();
        v70 = type metadata accessor for Apple_Workout_TimeValue;
        return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v58, v70);
      }

      v82 = &selRef_seconds;
    }

    v93 = [objc_opt_self() *v82];
    _sSo14NSUnitDurationCMaTm_1(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    v94 = v107;
    Measurement.init(value:unit:)();
    v95 = v114;
    Measurement.value.getter();
    v97 = v96;
    v98 = Measurement.unit.getter();
    (*(v113 + 8))(v94, v95);
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v58, type metadata accessor for Apple_Workout_TimeValue);
    v99 = v125;
    *v125 = v97;
    *(v99 + 1) = v98;
    type metadata accessor for WorkoutGoal(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v51 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_1(v2 + *(v51 + 20), v30, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v52 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
    if ((*(*(v52 - 8) + 48))(v30, 1, v52) == 1)
    {
      _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_2(v30, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
      goto LABEL_35;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v57 = v30;
      goto LABEL_34;
    }

    v58 = v121;
    _s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVWObTm_0(v30, v121, type metadata accessor for Apple_Workout_EnergyValue);
    if (*(v58 + 8) != 1 || !*v58)
    {
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      *v71 = 0;
      swift_willThrow();
      v70 = type metadata accessor for Apple_Workout_EnergyValue;
      return _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v58, v70);
    }

    if (*v58 == 1)
    {
      v59 = &selRef_kilocalories;
    }

    else
    {
      v59 = &selRef_kilojoules;
    }

    v86 = v109;
    v85 = v110;
    v87 = v108;
    v88 = [objc_opt_self() *v59];
    _sSo14NSUnitDurationCMaTm_1(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
    Measurement.init(value:unit:)();
    Measurement.value.getter();
    v90 = v89;
    v91 = Measurement.unit.getter();
    (*(v86 + 8))(v87, v85);
    _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(v58, type metadata accessor for Apple_Workout_EnergyValue);
    v92 = v125;
    *v125 = v90;
    *(v92 + 1) = v91;
    type metadata accessor for WorkoutGoal(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOcTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgWOhTm_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10WorkoutKit06Apple_A30_PoolSwimDistanceWithTimeValueVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PowerThresholdAlert.init(target:metric:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for PowerThresholdAlert(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t PowerRangeAlert.init(target:metric:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  outlined init with take of ClosedRange<Measurement<NSUnitPower>>(a1, a3, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  result = type metadata accessor for PowerRangeAlert(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t type metadata accessor for PowerThresholdAlert(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PowerThresholdAlert.target.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PowerThresholdAlert.target.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PowerThresholdAlert.metric.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PowerThresholdAlert(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t PowerThresholdAlert.metric.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PowerThresholdAlert(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*PowerThresholdAlert.metric.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for PowerThresholdAlert(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return PowerThresholdAlert.metric.modify;
}

uint64_t PowerThresholdAlert.init(target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  result = type metadata accessor for PowerThresholdAlert(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t static PowerThresholdAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSUnitPower();
  if (static Measurement.== infix<A, B>(_:_:)())
  {
    v4 = type metadata accessor for PowerThresholdAlert(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t type metadata accessor for NSUnitPower()
{
  result = lazy cache variable for type metadata for NSUnitPower;
  if (!lazy cache variable for type metadata for NSUnitPower)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUnitPower);
  }

  return result;
}

uint64_t PowerThresholdAlert.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for PowerThresholdAlert(0);
  return MEMORY[0x23EEA0D50](*(v1 + *(v2 + 20)));
}

Swift::Int PowerThresholdAlert.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for PowerThresholdAlert(0);
  MEMORY[0x23EEA0D50](*(v0 + *(v1 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PowerThresholdAlert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NSUnitPower();
  if (static Measurement.== infix<A, B>(_:_:)())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PowerThresholdAlert(uint64_t a1)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEA0D50](*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PowerThresholdAlert(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  return MEMORY[0x23EEA0D50](*(v2 + *(a2 + 20)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PowerThresholdAlert(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEA0D50](*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

void protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance PowerThresholdAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  Measurement.value.getter();
  if (v0 <= 0.0)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    swift_allocError();
    *v1 = xmmword_23B6784C0;
    *(v1 + 16) = 3;
    swift_willThrow();
  }
}

uint64_t static WorkoutAlert<>.power(_:unit:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for NSUnitPower();
  v5 = a1;
  Measurement.init(value:unit:)();
  result = type metadata accessor for PowerThresholdAlert(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t static WorkoutAlert<>.power(_:unit:metric:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  type metadata accessor for NSUnitPower();
  v7 = a1;
  Measurement.init(value:unit:)();
  result = type metadata accessor for PowerThresholdAlert(0);
  *(a3 + *(result + 20)) = v6;
  return result;
}

uint64_t outlined assign with take of ClosedRange<Measurement<NSUnitPower>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PowerRangeAlert.metric.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PowerRangeAlert(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t PowerRangeAlert.metric.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PowerRangeAlert(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*PowerRangeAlert.metric.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for PowerRangeAlert(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return PowerRangeAlert.metric.modify;
}

uint64_t PowerRangeAlert.init(target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with take of ClosedRange<Measurement<NSUnitPower>>(a1, a2, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  result = type metadata accessor for PowerRangeAlert(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

id PowerThresholdAlert.targetQuantity.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - v2;

  v4 = [objc_opt_self() wattUnit];
  v5 = [objc_opt_self() watts];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = [objc_opt_self() quantityWithUnit:v4 doubleValue:v7];

  return v8;
}

id PowerRangeAlert.targetQuantityUpperBound.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);

  v4 = [objc_opt_self() wattUnit];
  v5 = [objc_opt_self() watts];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = [objc_opt_self() quantityWithUnit:v4 doubleValue:v7];

  return v8;
}

uint64_t static PowerRangeAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, MEMORY[0x277CC87F0]);
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR), (dispatch thunk of static Equatable.== infix(_:_:)()))
  {
    v4 = type metadata accessor for PowerRangeAlert(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t PowerRangeAlert.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for PowerRangeAlert(0);
  return MEMORY[0x23EEA0D50](*(v1 + *(v2 + 20)));
}

Swift::Int PowerRangeAlert.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for PowerRangeAlert(0);
  MEMORY[0x23EEA0D50](*(v0 + *(v1 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PowerRangeAlert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, MEMORY[0x277CC87F0]);
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR), (dispatch thunk of static Equatable.== infix(_:_:)()))
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PowerRangeAlert(uint64_t a1)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEA0D50](*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PowerRangeAlert(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  dispatch thunk of Hashable.hash(into:)();
  return MEMORY[0x23EEA0D50](*(v2 + *(a2 + 20)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PowerRangeAlert(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEA0D50](*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for WorkoutAlertProtable.protoRepresentation.getter in conformance PowerThresholdAlert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Workout_WorkoutAlert(0);
  lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert, &protocol conformance descriptor for Apple_Workout_WorkoutAlert);
  return static Message.with(_:)();
}

void protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance PowerRangeAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  Measurement.value.getter();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  Measurement.value.getter();
  specialized WorkoutAlertValidating.validateRangeValue(_:_:)(v1, v2);
}

uint64_t static WorkoutAlert<>.power(_:unit:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  type metadata accessor for NSUnitPower();
  v19 = a1;
  Measurement.init(value:unit:)();
  v20 = v19;
  Measurement.init(value:unit:)();
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, MEMORY[0x277CC87E8]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v22 = v6;
    v23 = *(v13 + 32);
    v23(v11, v18, v12);
    v23(&v11[*(v22 + 48)], v15, v12);
    outlined init with copy of ClosedRange<Measurement<NSUnitPower>>(v11, v8, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
    v24 = *(v22 + 48);
    v23(a2, v8, v12);
    v25 = *(v13 + 8);
    v25(&v8[v24], v12);
    outlined init with take of ClosedRange<Measurement<NSUnitPower>>(v11, v8, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
    v26 = *(v22 + 48);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
    v23(&a2[*(v27 + 36)], &v8[v26], v12);
    v25(v8, v12);
    result = type metadata accessor for PowerRangeAlert(0);
    a2[*(result + 20)] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static WorkoutAlert<>.power(_:unit:metric:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v30[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v30[-v19];
  v31 = *a2;
  type metadata accessor for NSUnitPower();
  v21 = a1;
  Measurement.init(value:unit:)();
  v22 = v21;
  Measurement.init(value:unit:)();
  lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, MEMORY[0x277CC87E8]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v24 = v8;
    v25 = *(v15 + 32);
    v25(v13, v20, v14);
    v25(&v13[*(v24 + 48)], v17, v14);
    outlined init with copy of ClosedRange<Measurement<NSUnitPower>>(v13, v10, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
    v26 = *(v24 + 48);
    v25(a3, v10, v14);
    v27 = *(v15 + 8);
    v27(&v10[v26], v14);
    outlined init with take of ClosedRange<Measurement<NSUnitPower>>(v13, v10, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
    v28 = *(v24 + 48);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
    v25(&a3[*(v29 + 36)], &v10[v28], v14);
    v27(v10, v14);
    result = type metadata accessor for PowerRangeAlert(0);
    a3[*(result + 20)] = v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ClosedRange<Measurement<NSUnitPower>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of ClosedRange<Measurement<NSUnitPower>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

Swift::Int PowerZoneAlert.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PowerZoneAlert()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PowerZoneAlert(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for WorkoutAlertProtable.protoRepresentation.getter in conformance PowerZoneAlert()
{
  type metadata accessor for Apple_Workout_WorkoutAlert(0);
  lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert, &protocol conformance descriptor for Apple_Workout_WorkoutAlert);
  return static Message.with(_:)();
}

void protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance PowerZoneAlert()
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

uint64_t instantiation function for generic protocol witness table for PowerThresholdAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type PowerThresholdAlert and conformance PowerThresholdAlert, type metadata accessor for PowerThresholdAlert, &protocol conformance descriptor for PowerThresholdAlert);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type PowerThresholdAlert and conformance PowerThresholdAlert, type metadata accessor for PowerThresholdAlert, &protocol conformance descriptor for PowerThresholdAlert);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PowerRangeAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type PowerRangeAlert and conformance PowerRangeAlert, type metadata accessor for PowerRangeAlert, &protocol conformance descriptor for PowerRangeAlert);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type PowerRangeAlert and conformance PowerRangeAlert, type metadata accessor for PowerRangeAlert, &protocol conformance descriptor for PowerRangeAlert);
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for PowerZoneAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PowerZoneAlert and conformance PowerZoneAlert();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type PowerZoneAlert and conformance PowerZoneAlert();
  *(a1 + 8) = result;
  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(0);
  *a3 = *(a1 + *(result + 20));
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  result = (a5)(0, a2, a3, a4);
  *(a2 + *(result + 20)) = v6;
  return result;
}

void type metadata accessor for Measurement<NSUnitPower>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Measurement<NSUnitPower>)
  {
    type metadata accessor for NSUnitPower();
    v1 = type metadata accessor for Measurement();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Measurement<NSUnitPower>);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata completion function for PowerThresholdAlert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for ClosedRange<Measurement<NSUnitPower>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ClosedRange<Measurement<NSUnitPower>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
    lazy protocol witness table accessor for type Measurement<NSUnitPower> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, MEMORY[0x277CC87E8]);
    v1 = type metadata accessor for ClosedRange();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ClosedRange<Measurement<NSUnitPower>>);
    }
  }
}

uint64_t getEnumTagSinglePayload for PowerZoneAlert(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PowerZoneAlert(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_IntervalStep.Purpose@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_IntervalStep.Purpose@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_IntervalStep.Purpose(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_IntervalStep.Purpose(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_IntervalStep.Purpose(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Apple_Workout_CustomWorkoutComposition._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v22 = &v20 - v4;
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
  v5 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
  v21 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
  v6 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v1 + v5, 1, 1, v6);
  v8 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks;
  *(v1 + OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks) = MEMORY[0x277D84F90];
  v23 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown;
  v7(v1 + OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown, 1, 1, v6);
  swift_beginAccess();
  LODWORD(v7) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v7;
  swift_beginAccess();
  LODWORD(v7) = *(a1 + 20);
  v9 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v7;
  *(v1 + 24) = v9;
  swift_beginAccess();
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v10;
  *(v1 + 40) = v11;
  v12 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
  swift_beginAccess();
  v13 = v22;
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + v12, v22, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v14 = v21;
  swift_beginAccess();

  outlined assign with take of Apple_Workout_WorkoutStep?(v13, v1 + v14);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks;
  swift_beginAccess();
  v16 = *(a1 + v15);
  swift_beginAccess();
  *(v1 + v8) = v16;

  v17 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + v17, v13, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);

  v18 = v23;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_WorkoutStep?(v13, v1 + v18);
  swift_endAccess();
  return v1;
}

uint64_t Apple_Workout_CustomWorkoutComposition._StorageClass.__deallocating_deinit()
{

  outlined destroy of Apple_Workout_WorkoutStep?(v0 + OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);

  outlined destroy of Apple_Workout_WorkoutStep?(v0 + OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);

  return swift_deallocClassInstance();
}

void type metadata completion function for Apple_Workout_CustomWorkoutComposition._StorageClass(uint64_t a1)
{
  type metadata accessor for Apple_Workout_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_WorkoutStep?, type metadata accessor for Apple_Workout_WorkoutStep, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
LABEL_17:
          closure #4 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(v11, v12, v13, v14, v15);
          goto LABEL_5;
        }

        if (result != 5)
        {
          if (result != 6)
          {
            goto LABEL_5;
          }

          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown;
          goto LABEL_17;
        }

        closure #5 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
      }

      else
      {
        switch(result)
        {
          case 1:
            closure #1 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
            break;
          case 2:
            closure #2 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
            break;
          case 3:
            closure #3 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_IntervalBlock(0);
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalBlock and conformance Apple_Workout_IntervalBlock, type metadata accessor for Apple_Workout_IntervalBlock, &protocol conformance descriptor for Apple_Workout_IntervalBlock);
  dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(a1, a2, a3, a4);
    if (!v4)
    {
      closure #2 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(a1, a2, a3, a4);
      closure #3 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup, 4);
      v10 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks;
      swift_beginAccess();
      if (*(*(a1 + v10) + 16))
      {
        type metadata accessor for Apple_Workout_IntervalBlock(0);
        lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalBlock and conformance Apple_Workout_IntervalBlock, type metadata accessor for Apple_Workout_IntervalBlock, &protocol conformance descriptor for Apple_Workout_IntervalBlock);

        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      return closure #3 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown, 6);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 40))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static Apple_Workout_CustomWorkoutComposition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v56 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v53 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v54 = &v50 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v50 - v20;
  swift_beginAccess();
  v22 = *(a1 + 16);
  swift_beginAccess();
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  v52 = v8;
  swift_beginAccess();
  v23 = *(a1 + 20);
  v24 = *(a1 + 24);
  swift_beginAccess();
  v25 = *(a2 + 24);
  if (v24)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v23 != *(a2 + 20))
    {
      v25 = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  swift_beginAccess();
  v28 = *(a2 + 40);
  if (v27)
  {
    if (!v28 || (v26 != *(a2 + 32) || v27 != v28) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v29 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + v29, v21, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v30 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
  swift_beginAccess();
  v31 = *(v6 + 48);
  outlined init with copy of Apple_Workout_WorkoutStep?(v21, v11, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v51 = v31;
  outlined init with copy of Apple_Workout_WorkoutStep?(a2 + v30, &v11[v31], &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v32 = v56 + 48;
  v33 = *(v56 + 48);
  if (v33(v11, 1, v4) == 1)
  {

    outlined destroy of Apple_Workout_WorkoutStep?(v21, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    if (v33(&v11[v51], 1, v4) == 1)
    {
      v50 = v33;
      v56 = v32;
      outlined destroy of Apple_Workout_WorkoutStep?(v11, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  outlined init with copy of Apple_Workout_WorkoutStep?(v11, v18, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  if (v33(&v11[v51], 1, v4) == 1)
  {

    outlined destroy of Apple_Workout_WorkoutStep?(v21, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    outlined destroy of Apple_Workout_WorkoutStep(v18, type metadata accessor for Apple_Workout_WorkoutStep);
LABEL_20:
    outlined destroy of Apple_Workout_WorkoutStep?(v11, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR);
LABEL_26:

    return 0;
  }

  v50 = v33;
  v56 = v32;
  v34 = v55;
  outlined init with take of Apple_Workout_WorkoutStep(&v11[v51], v55, type metadata accessor for Apple_Workout_WorkoutStep);

  LODWORD(v51) = specialized static Apple_Workout_WorkoutStep.== infix(_:_:)(v18, v34);
  outlined destroy of Apple_Workout_WorkoutStep(v34, type metadata accessor for Apple_Workout_WorkoutStep);
  outlined destroy of Apple_Workout_WorkoutStep?(v21, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  outlined destroy of Apple_Workout_WorkoutStep(v18, type metadata accessor for Apple_Workout_WorkoutStep);
  outlined destroy of Apple_Workout_WorkoutStep?(v11, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  if ((v51 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  v35 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks;
  swift_beginAccess();
  v36 = *(a1 + v35);
  v37 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks;
  swift_beginAccess();
  v38 = *(a2 + v37);

  v39 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit06Apple_B14_IntervalBlockV_Tt1g5(v36, v38);

  if ((v39 & 1) == 0)
  {
    goto LABEL_26;
  }

  v40 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown;
  swift_beginAccess();
  v41 = v54;
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + v40, v54, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v42 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown;
  swift_beginAccess();
  v43 = *(v6 + 48);
  v44 = v52;
  outlined init with copy of Apple_Workout_WorkoutStep?(v41, v52, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  outlined init with copy of Apple_Workout_WorkoutStep?(a2 + v42, v44 + v43, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v45 = v50;
  if (v50(v44, 1, v4) != 1)
  {
    v47 = v53;
    outlined init with copy of Apple_Workout_WorkoutStep?(v44, v53, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    if (v45(v44 + v43, 1, v4) == 1)
    {

      outlined destroy of Apple_Workout_WorkoutStep?(v54, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
      outlined destroy of Apple_Workout_WorkoutStep(v47, type metadata accessor for Apple_Workout_WorkoutStep);
      goto LABEL_30;
    }

    v48 = v55;
    outlined init with take of Apple_Workout_WorkoutStep(v44 + v43, v55, type metadata accessor for Apple_Workout_WorkoutStep);
    v49 = specialized static Apple_Workout_WorkoutStep.== infix(_:_:)(v47, v48);

    outlined destroy of Apple_Workout_WorkoutStep(v48, type metadata accessor for Apple_Workout_WorkoutStep);
    outlined destroy of Apple_Workout_WorkoutStep?(v54, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    outlined destroy of Apple_Workout_WorkoutStep(v47, type metadata accessor for Apple_Workout_WorkoutStep);
    outlined destroy of Apple_Workout_WorkoutStep?(v44, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    return (v49 & 1) != 0;
  }

  outlined destroy of Apple_Workout_WorkoutStep?(v41, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  if (v45(v44 + v43, 1, v4) != 1)
  {
LABEL_30:
    outlined destroy of Apple_Workout_WorkoutStep?(v44, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR);
    return 0;
  }

  outlined destroy of Apple_Workout_WorkoutStep?(v44, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_CustomWorkoutComposition(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_CustomWorkoutComposition and conformance Apple_Workout_CustomWorkoutComposition, type metadata accessor for Apple_Workout_CustomWorkoutComposition, &protocol conformance descriptor for Apple_Workout_CustomWorkoutComposition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_CustomWorkoutComposition(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_CustomWorkoutComposition and conformance Apple_Workout_CustomWorkoutComposition, type metadata accessor for Apple_Workout_CustomWorkoutComposition, &protocol conformance descriptor for Apple_Workout_CustomWorkoutComposition);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_CustomWorkoutComposition(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_CustomWorkoutComposition and conformance Apple_Workout_CustomWorkoutComposition, type metadata accessor for Apple_Workout_CustomWorkoutComposition, &protocol conformance descriptor for Apple_Workout_CustomWorkoutComposition);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        type metadata accessor for Apple_Workout_WorkoutStep(0);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      case 2:
        closure #2 in Apple_Workout_WorkoutStep.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        break;
      case 1:
        closure #1 in Apple_Workout_WorkoutStep.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_WorkoutStep(0);
  type metadata accessor for Apple_Workout_WorkoutGoal(0);
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal, &protocol conformance descriptor for Apple_Workout_WorkoutGoal);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_WorkoutStep(0);
  type metadata accessor for Apple_Workout_WorkoutAlert(0);
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert, &protocol conformance descriptor for Apple_Workout_WorkoutAlert);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_WorkoutStep.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_WorkoutStep.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #3 in Apple_Workout_WorkoutStep.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + *(v12 + 20), v7, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Apple_Workout_WorkoutStep?(v7, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  }

  outlined init with take of Apple_Workout_WorkoutStep(v7, v11, type metadata accessor for Apple_Workout_WorkoutGoal);
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal, &protocol conformance descriptor for Apple_Workout_WorkoutGoal);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_WorkoutStep(v11, type metadata accessor for Apple_Workout_WorkoutGoal);
}

uint64_t closure #2 in Apple_Workout_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + *(v12 + 24), v7, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Apple_Workout_WorkoutStep?(v7, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  }

  outlined init with take of Apple_Workout_WorkoutStep(v7, v11, type metadata accessor for Apple_Workout_WorkoutAlert);
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert, &protocol conformance descriptor for Apple_Workout_WorkoutAlert);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_WorkoutStep(v11, type metadata accessor for Apple_Workout_WorkoutAlert);
}

uint64_t closure #3 in Apple_Workout_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_WorkoutStep(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_WorkoutStep@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutStep and conformance Apple_Workout_WorkoutStep, type metadata accessor for Apple_Workout_WorkoutStep, &protocol conformance descriptor for Apple_Workout_WorkoutStep);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_WorkoutStep(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutStep and conformance Apple_Workout_WorkoutStep, type metadata accessor for Apple_Workout_WorkoutStep, &protocol conformance descriptor for Apple_Workout_WorkoutStep);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutStep(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutStep and conformance Apple_Workout_WorkoutStep, type metadata accessor for Apple_Workout_WorkoutStep, &protocol conformance descriptor for Apple_Workout_WorkoutStep);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_IntervalBlock.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Workout_IntervalStep(0);
        lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep, type metadata accessor for Apple_Workout_IntervalStep, &protocol conformance descriptor for Apple_Workout_IntervalStep);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Apple_Workout_IntervalBlock(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_IntervalBlock.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Workout_IntervalStep(0), lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep, type metadata accessor for Apple_Workout_IntervalStep, &protocol conformance descriptor for Apple_Workout_IntervalStep), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_IntervalBlock.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Apple_Workout_IntervalBlock(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_IntervalBlock.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_IntervalBlock(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_IntervalBlock@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = UnknownStorage.init()();
  v5 = a2 + *(a1 + 24);
  *v5 = 0;
  v5[4] = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_IntervalBlock@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_IntervalBlock(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_IntervalBlock(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalBlock and conformance Apple_Workout_IntervalBlock, type metadata accessor for Apple_Workout_IntervalBlock, &protocol conformance descriptor for Apple_Workout_IntervalBlock);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_IntervalBlock(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalBlock and conformance Apple_Workout_IntervalBlock, type metadata accessor for Apple_Workout_IntervalBlock, &protocol conformance descriptor for Apple_Workout_IntervalBlock);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_IntervalBlock(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalBlock and conformance Apple_Workout_IntervalBlock, type metadata accessor for Apple_Workout_IntervalBlock, &protocol conformance descriptor for Apple_Workout_IntervalBlock);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_IntervalStep._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12[-v4];
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v6 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
  v7 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + v10, v5, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);

  swift_beginAccess();
  outlined assign with take of Apple_Workout_WorkoutStep?(v5, v1 + v6);
  swift_endAccess();
  return v1;
}

uint64_t Apple_Workout_IntervalStep._StorageClass.__deallocating_deinit()
{
  outlined destroy of Apple_Workout_WorkoutStep?(v0 + OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);

  return swift_deallocClassInstance();
}

void type metadata completion function for Apple_Workout_IntervalStep._StorageClass(uint64_t a1)
{
  type metadata accessor for Apple_Workout_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_WorkoutStep?, type metadata accessor for Apple_Workout_WorkoutStep, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for Apple_Workout_IntervalStep.Purpose(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_IntervalStep.Purpose(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for Apple_Workout_IntervalStep.Purpose(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_IntervalStep.Purpose(uint64_t result, int a2)
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

void type metadata completion function for Apple_Workout_IntervalBlock(uint64_t a1)
{
  type metadata accessor for Apple_Workout_WorkoutStep?(319, &lazy cache variable for type metadata for [Apple_Workout_IntervalStep], type metadata accessor for Apple_Workout_IntervalStep, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x277D84CC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Apple_Workout_WorkoutStep?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for Apple_Workout_WorkoutStep(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_WorkoutGoal?, type metadata accessor for Apple_Workout_WorkoutGoal, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_WorkoutAlert?, type metadata accessor for Apple_Workout_WorkoutAlert, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UInt32?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for UInt32?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_CustomWorkoutComposition._StorageClass(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_IntervalStep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose;
  if (!lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose;
  if (!lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose;
  if (!lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose;
  if (!lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_IntervalStep.Purpose] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_IntervalStep.Purpose] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_IntervalStep.Purpose] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10WorkoutKit06Apple_A13_IntervalStepV7PurposeOGMd, &_sSay10WorkoutKit06Apple_A13_IntervalStepV7PurposeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_IntervalStep.Purpose] and conformance [A]);
  }

  return result;
}

uint64_t Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v7 + v14);
    a5(0);
    swift_allocObject();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t closure #1 in Apple_Workout_IntervalStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        closure #1 in closure #1 in Apple_Workout_IntervalStep.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
      }

      else if (result == 2)
      {
        closure #4 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(a2, a1, a3, a4, &OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step);
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_IntervalStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in Apple_Workout_CustomWorkoutComposition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_WorkoutStep(0);
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutStep and conformance Apple_Workout_WorkoutStep, type metadata accessor for Apple_Workout_WorkoutStep, &protocol conformance descriptor for Apple_Workout_WorkoutStep);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_IntervalStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    return closure #3 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step, 2);
  }

  lazy protocol witness table accessor for type Apple_Workout_IntervalStep.Purpose and conformance Apple_Workout_IntervalStep.Purpose();
  result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  if (!v4)
  {
    return closure #3 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step, 2);
  }

  return result;
}

uint64_t closure #3 in closure #1 in Apple_Workout_CustomWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v17[1] = a6;
  v17[2] = a3;
  v17[7] = a4;
  v17[0] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a5;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + v15, v10, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of Apple_Workout_WorkoutStep?(v10, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  }

  outlined init with take of Apple_Workout_WorkoutStep(v10, v14, type metadata accessor for Apple_Workout_WorkoutStep);
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutStep and conformance Apple_Workout_WorkoutStep, type metadata accessor for Apple_Workout_WorkoutStep, &protocol conformance descriptor for Apple_Workout_WorkoutStep);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_WorkoutStep(v14, type metadata accessor for Apple_Workout_WorkoutStep);
}

BOOL closure #1 in static Apple_Workout_IntervalStep.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  swift_beginAccess();
  v17 = *(a1 + 16);
  swift_beginAccess();
  v18 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v18)
    {
      if (v18 == 1)
      {
        if (v17 != 1)
        {
          return 0;
        }
      }

      else if (v17 != 2)
      {
        return 0;
      }
    }

    else if (v17)
    {
      return 0;
    }
  }

  else if (v17 != v18)
  {
    return 0;
  }

  v27 = v7;
  v28 = v13;
  v19 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + v19, v16, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v20 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
  swift_beginAccess();
  v21 = *(v8 + 48);
  outlined init with copy of Apple_Workout_WorkoutStep?(v16, v10, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  outlined init with copy of Apple_Workout_WorkoutStep?(a2 + v20, &v10[v21], &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v22 = *(v5 + 48);
  if (v22(v10, 1, v4) != 1)
  {
    v23 = v28;
    outlined init with copy of Apple_Workout_WorkoutStep?(v10, v28, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    if (v22(&v10[v21], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutStep?(v16, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
      outlined destroy of Apple_Workout_WorkoutStep(v23, type metadata accessor for Apple_Workout_WorkoutStep);
      goto LABEL_16;
    }

    v25 = v27;
    outlined init with take of Apple_Workout_WorkoutStep(&v10[v21], v27, type metadata accessor for Apple_Workout_WorkoutStep);
    v26 = specialized static Apple_Workout_WorkoutStep.== infix(_:_:)(v23, v25);
    outlined destroy of Apple_Workout_WorkoutStep(v25, type metadata accessor for Apple_Workout_WorkoutStep);
    outlined destroy of Apple_Workout_WorkoutStep?(v16, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    outlined destroy of Apple_Workout_WorkoutStep(v23, type metadata accessor for Apple_Workout_WorkoutStep);
    outlined destroy of Apple_Workout_WorkoutStep?(v10, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    return (v26 & 1) != 0;
  }

  outlined destroy of Apple_Workout_WorkoutStep?(v16, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  if (v22(&v10[v21], 1, v4) != 1)
  {
LABEL_16:
    outlined destroy of Apple_Workout_WorkoutStep?(v10, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR);
    return 0;
  }

  outlined destroy of Apple_Workout_WorkoutStep?(v10, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  return 1;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_CustomWorkoutComposition@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a5@<X8>)
{
  UnknownStorage.init()();
  v9 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_CustomWorkoutComposition@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_CustomWorkoutComposition(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_IntervalStep(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep, type metadata accessor for Apple_Workout_IntervalStep, &protocol conformance descriptor for Apple_Workout_IntervalStep);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_IntervalStep(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep, type metadata accessor for Apple_Workout_IntervalStep, &protocol conformance descriptor for Apple_Workout_IntervalStep);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_CustomWorkoutComposition(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_IntervalStep(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep, type metadata accessor for Apple_Workout_IntervalStep, &protocol conformance descriptor for Apple_Workout_IntervalStep);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_CustomWorkoutComposition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_CustomWorkoutComposition@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized static Apple_Workout_IntervalBlock.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit06Apple_B13_IntervalStepV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Workout_IntervalBlock(0) + 24);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 4);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Apple_Workout_WorkoutStep.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = (&v46 - v6);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A5AlertVSg_ADtMR);
  MEMORY[0x28223BE20](v49);
  v53 = &v46 - v7;
  v8 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v46 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  v50 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v19 = *(v50 + 20);
  v20 = *(v16 + 56);
  v54 = a1;
  outlined init with copy of Apple_Workout_WorkoutStep?(a1 + v19, v18, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v21 = v55 + v19;
  v22 = v55;
  outlined init with copy of Apple_Workout_WorkoutStep?(v21, &v18[v20], &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutStep?(v18, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v24 = &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMd;
    v25 = &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMR;
    v26 = v18;
LABEL_14:
    outlined destroy of Apple_Workout_WorkoutStep?(v26, v24, v25);
    goto LABEL_15;
  }

  outlined init with copy of Apple_Workout_WorkoutStep?(v18, v14, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutStep(v14, type metadata accessor for Apple_Workout_WorkoutGoal);
    goto LABEL_6;
  }

  outlined init with take of Apple_Workout_WorkoutStep(&v18[v20], v11, type metadata accessor for Apple_Workout_WorkoutGoal);
  v27 = specialized static Apple_Workout_WorkoutGoal.== infix(_:_:)(v14, v11);
  outlined destroy of Apple_Workout_WorkoutStep(v11, type metadata accessor for Apple_Workout_WorkoutGoal);
  outlined destroy of Apple_Workout_WorkoutStep(v14, type metadata accessor for Apple_Workout_WorkoutGoal);
  outlined destroy of Apple_Workout_WorkoutStep?(v18, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  if ((v27 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v28 = v50;
  v29 = *(v50 + 24);
  v30 = *(v49 + 48);
  v32 = v53;
  v31 = v54;
  outlined init with copy of Apple_Workout_WorkoutStep?(v54 + v29, v53, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  outlined init with copy of Apple_Workout_WorkoutStep?(v22 + v29, v32 + v30, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  v33 = v52;
  v34 = *(v51 + 48);
  if (v34(v32, 1, v52) != 1)
  {
    v35 = v48;
    outlined init with copy of Apple_Workout_WorkoutStep?(v32, v48, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
    if (v34(v32 + v30, 1, v33) != 1)
    {
      v38 = v32 + v30;
      v39 = v47;
      outlined init with take of Apple_Workout_WorkoutStep(v38, v47, type metadata accessor for Apple_Workout_WorkoutAlert);
      v40 = specialized static Apple_Workout_WorkoutAlert.== infix(_:_:)(v35, v39);
      outlined destroy of Apple_Workout_WorkoutStep(v39, type metadata accessor for Apple_Workout_WorkoutAlert);
      outlined destroy of Apple_Workout_WorkoutStep(v35, type metadata accessor for Apple_Workout_WorkoutAlert);
      outlined destroy of Apple_Workout_WorkoutStep?(v32, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
      if ((v40 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    outlined destroy of Apple_Workout_WorkoutStep(v35, type metadata accessor for Apple_Workout_WorkoutAlert);
    goto LABEL_13;
  }

  if (v34(v32 + v30, 1, v33) != 1)
  {
LABEL_13:
    v24 = &_s10WorkoutKit06Apple_a1_A5AlertVSg_ADtMd;
    v25 = &_s10WorkoutKit06Apple_a1_A5AlertVSg_ADtMR;
    v26 = v32;
    goto LABEL_14;
  }

  outlined destroy of Apple_Workout_WorkoutStep?(v32, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
LABEL_18:
  v41 = *(v28 + 28);
  v42 = (v31 + v41);
  v43 = *(v31 + v41 + 8);
  v44 = (v22 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (v45 && (*v42 == *v44 && v43 == v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_25;
    }
  }

  else if (!v45)
  {
LABEL_25:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v36 & 1;
  }

LABEL_15:
  v36 = 0;
  return v36 & 1;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutStep?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_WorkoutStep?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_WorkoutStep(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_WorkoutStep(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Apple_Workout_WorkoutStep?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized static Apple_Workout_CustomWorkoutComposition.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

id Measurement<>.hkQuantity.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;

  v4 = [objc_opt_self() _countPerMinuteUnit];
  v5 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v6 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v7 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  v8 = [v6 initWithSymbol:v7 converter:v5];

  Measurement<>.converted(to:)();
  Measurement.value.getter();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  v11 = [objc_opt_self() quantityWithUnit:v4 doubleValue:v10];

  return v11;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - v2;

  v4 = [objc_opt_self() wattUnit];
  v5 = [objc_opt_self() watts];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = [objc_opt_self() quantityWithUnit:v4 doubleValue:v7];

  return v8;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v30 - v2;
  v4 = Measurement.unit.getter();
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 kilometers];
  _sSo12NSUnitLengthCMaTm_1(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {

    v9 = [objc_opt_self() meterUnitWithMetricPrefix_];
    Measurement.value.getter();
    v11 = [objc_opt_self() quantityWithUnit:v9 doubleValue:v10];
  }

  else
  {
    v12 = v6;
    v13 = [v5 feet];
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {

      v9 = [objc_opt_self() footUnit];
      Measurement.value.getter();
      v11 = [objc_opt_self() quantityWithUnit:v9 doubleValue:v15];
    }

    else
    {
      v16 = v12;
      v17 = [v5 yards];
      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {

        v9 = [objc_opt_self() yardUnit];
        Measurement.value.getter();
        v11 = [objc_opt_self() quantityWithUnit:v9 doubleValue:v19];
      }

      else
      {
        v20 = [v5 miles];
        v21 = static NSObject.== infix(_:_:)();

        v22 = objc_opt_self();
        if ((v21 & 1) == 0)
        {
          v26 = [v22 meterUnit];
          v27 = [v5 meters];
          Measurement<>.converted(to:)();

          Measurement.value.getter();
          v29 = v28;
          (*(v1 + 8))(v3, v0);
          v24 = [objc_opt_self() quantityWithUnit:v26 doubleValue:v29];

          return v24;
        }

        v9 = [v22 mileUnit];
        Measurement.value.getter();
        v11 = [objc_opt_self() quantityWithUnit:v9 doubleValue:v23];
      }
    }
  }

  v24 = v11;

  return v24;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - v2;
  v4 = Measurement.unit.getter();
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 hours];
  _sSo12NSUnitLengthCMaTm_1(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {

    v9 = [objc_opt_self() hourUnit];
    Measurement.value.getter();
    v11 = [objc_opt_self() quantityWithUnit:v9 doubleValue:v10];
  }

  else
  {
    v12 = [v5 minutes];
    v13 = static NSObject.== infix(_:_:)();

    v14 = objc_opt_self();
    if ((v13 & 1) == 0)
    {
      v17 = [v14 secondUnit];
      v18 = [v5 seconds];
      Measurement<>.converted(to:)();

      Measurement.value.getter();
      v20 = v19;
      (*(v1 + 8))(v3, v0);
      v16 = [objc_opt_self() quantityWithUnit:v17 doubleValue:v20];

      return v16;
    }

    v9 = [v14 minuteUnit];
    Measurement.value.getter();
    v11 = [objc_opt_self() quantityWithUnit:v9 doubleValue:v15];
  }

  v16 = v11;

  return v16;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - v2;
  v4 = Measurement.unit.getter();
  v5 = objc_opt_self();
  v6 = [v5 kilojoules];
  _sSo12NSUnitLengthCMaTm_1(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
  v7 = static NSObject.== infix(_:_:)();

  v8 = objc_opt_self();
  if (v7)
  {
    v9 = [v8 jouleUnitWithMetricPrefix_];
    Measurement.value.getter();
    v11 = [objc_opt_self() quantityWithUnit:v9 doubleValue:v10];
  }

  else
  {
    v12 = [v8 kilocalorieUnit];
    v13 = [v5 kilocalories];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v15 = v14;
    (*(v1 + 8))(v3, v0);
    v11 = [objc_opt_self() quantityWithUnit:v12 doubleValue:v15];
  }

  return v11;
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;

  v4 = objc_opt_self();
  v5 = [v4 meterUnit];
  v6 = [v4 secondUnit];
  v7 = [v5 unitDividedByUnit_];

  v8 = [objc_opt_self() metersPerSecond];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  v11 = [objc_opt_self() quantityWithUnit:v7 doubleValue:v10];

  return v11;
}

uint64_t _sSo12NSUnitLengthCMaTm_1(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit12IntervalStepV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalStep(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of Apple_Workout_IntervalBlock(v13, v10, type metadata accessor for IntervalStep);
      outlined init with copy of Apple_Workout_IntervalBlock(v14, v6, type metadata accessor for IntervalStep);
      if (*v10 != *v6)
      {
        break;
      }

      v16 = static WorkoutStep.== infix(_:_:)(&v10[*(v4 + 20)], &v6[*(v4 + 20)]);
      outlined destroy of Apple_Workout_IntervalBlock(v6, type metadata accessor for IntervalStep);
      outlined destroy of Apple_Workout_IntervalBlock(v10, type metadata accessor for IntervalStep);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    outlined destroy of Apple_Workout_IntervalBlock(v6, type metadata accessor for IntervalStep);
    outlined destroy of Apple_Workout_IntervalBlock(v10, type metadata accessor for IntervalStep);
    goto LABEL_11;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit10RoutePointV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2); i += 32)
    {
      v5 = *i;
      if (*v3)
      {
        if (!*i)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) != *(i - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4UUIDV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit13IntervalBlockV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v65 = type metadata accessor for IntervalStep(0);
  v4 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16) || !v10 || a1 == a2)
  {
    return;
  }

  v11 = 0;
  v12 = a1 + 32;
  v13 = a2 + 32;
  v63 = v9;
  v64 = v6;
  while (1)
  {
    if (v11 == v10)
    {
      goto LABEL_44;
    }

    v14 = (v12 + 16 * v11);
    v15 = *v14;
    v16 = (v13 + 16 * v11);
    v17 = *v16;
    v18 = *(*v14 + 16);
    if (v18 != *(*v16 + 16))
    {
      break;
    }

    v19 = v14[1];
    v20 = v16[1];
    if (v18 && v15 != v17)
    {
      v49 = v20;
      v50 = v19;
      v51 = v13;
      v52 = v12;
      v53 = v11;
      v54 = v10;
      v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v60 = v15 + v21;
      v58 = v17 + v21;

      v22 = 0;
      v57 = v17;
      v56 = v4;
      v59 = v15;
      v55 = v18;
      while (1)
      {
        if (v22 >= *(v15 + 16))
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          return;
        }

        v24 = *(v4 + 72) * v22;
        outlined init with copy of Apple_Workout_IntervalBlock(v60 + v24, v9, type metadata accessor for IntervalStep);
        if (v22 >= *(v17 + 16))
        {
          goto LABEL_43;
        }

        outlined init with copy of Apple_Workout_IntervalBlock(v58 + v24, v6, type metadata accessor for IntervalStep);
        if (*v9 != *v6)
        {
LABEL_39:
          outlined destroy of Apple_Workout_IntervalBlock(v6, type metadata accessor for IntervalStep);
          outlined destroy of Apple_Workout_IntervalBlock(v9, type metadata accessor for IntervalStep);
LABEL_40:

          return;
        }

        v25 = *(v65 + 20);
        v26 = &v9[v25];
        v27 = &v6[v25];
        v28 = type metadata accessor for WorkoutStep(0);
        v29 = *(v28 + 20);
        _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v26 + v29, &v68, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
        if (v69)
        {
          outlined init with take of WorkoutAlert(&v68, v70);
          v30 = v71;
          v31 = v72;
          v62 = __swift_project_boxed_opaque_existential_1(v70, v71);
          _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v27 + *(v28 + 20), &v68, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
          v32 = v69;
          if (v69)
          {
            v33 = v31;
            v34 = __swift_project_boxed_opaque_existential_1(&v68, v69);
            *(&v67 + 1) = v32;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v66);
            v36 = v34;
            v31 = v33;
            (*(*(v32 - 8) + 16))(boxed_opaque_existential_0, v36, v32);
            __swift_destroy_boxed_opaque_existential_0Tm_0(&v68);
          }

          else
          {
            _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(&v68, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
            v66 = 0u;
            v67 = 0u;
          }

          v37 = static WorkoutStep.alertEquatable<A>(_:_:)(v62, &v66, v30, v31);
          _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(&v66, &_sypSgMd, &_sypSgMR);
          __swift_destroy_boxed_opaque_existential_0Tm_0(v70);
          v9 = v63;
          v6 = v64;
          if ((v37 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(&v68, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
        }

        _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v27 + *(v28 + 20), &v68, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
        if (v69)
        {
          outlined init with take of WorkoutAlert(&v68, v70);
          v38 = v71;
          v62 = v72;
          v61 = __swift_project_boxed_opaque_existential_1(v70, v71);
          _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v26 + v29, &v68, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
          v39 = v69;
          if (v69)
          {
            v40 = __swift_project_boxed_opaque_existential_1(&v68, v69);
            *(&v67 + 1) = v39;
            v41 = __swift_allocate_boxed_opaque_existential_0(&v66);
            (*(*(v39 - 8) + 16))(v41, v40, v39);
            __swift_destroy_boxed_opaque_existential_0Tm_0(&v68);
          }

          else
          {
            _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(&v68, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
            v66 = 0u;
            v67 = 0u;
          }

          v6 = v64;
          v17 = v57;
          v42 = static WorkoutStep.alertEquatable<A>(_:_:)(v61, &v66, v38, v62);
          _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(&v66, &_sypSgMd, &_sypSgMR);
          __swift_destroy_boxed_opaque_existential_0Tm_0(v70);
          v9 = v63;
          if ((v42 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(&v68, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
          v17 = v57;
        }

        if ((specialized static WorkoutGoal.== infix(_:_:)(v26, v27) & 1) == 0)
        {
          goto LABEL_39;
        }

        v43 = *(v28 + 24);
        v44 = (v26 + v43);
        v45 = *(v26 + v43 + 8);
        v46 = (v27 + v43);
        v47 = v46[1];
        v23 = v47 == 0;
        if (v45)
        {
          if (!v47)
          {
            goto LABEL_39;
          }

          if (*v44 == *v46 && v45 == v47)
          {
            outlined destroy of Apple_Workout_IntervalBlock(v6, type metadata accessor for IntervalStep);
            outlined destroy of Apple_Workout_IntervalBlock(v9, type metadata accessor for IntervalStep);
            v4 = v56;
            goto LABEL_12;
          }

          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v4 = v56;
        outlined destroy of Apple_Workout_IntervalBlock(v6, type metadata accessor for IntervalStep);
        outlined destroy of Apple_Workout_IntervalBlock(v9, type metadata accessor for IntervalStep);
        if ((v23 & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_12:
        ++v22;
        v15 = v59;
        if (v55 == v22)
        {

          v10 = v54;
          v11 = v53;
          v12 = v52;
          v13 = v51;
          v19 = v50;
          v20 = v49;
          break;
        }
      }
    }

    if (v19 == v20 && ++v11 != v10)
    {
      continue;
    }

    return;
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit06Apple_B11_RoutePointV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v41 - v9);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSg_ADtMd, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSg_ADtMR);
  MEMORY[0x28223BE20](v47);
  v12 = &v41 - v11;
  v49 = type metadata accessor for Apple_Workout_RoutePoint(0);
  MEMORY[0x28223BE20](v49);
  v50 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    goto LABEL_27;
  }

  if (!v18 || a1 == a2)
  {
    v37 = 1;
    return v37 & 1;
  }

  v46 = v4;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v44 = &v41 - v16;
  v45 = (v5 + 48);
  v42 = *(v15 + 72);
  v43 = v12;
  v41 = v7;
  while (1)
  {
    outlined init with copy of Apple_Workout_IntervalBlock(v20, v17, type metadata accessor for Apple_Workout_RoutePoint);
    v48 = v20;
    v22 = v50;
    outlined init with copy of Apple_Workout_IntervalBlock(v21, v50, type metadata accessor for Apple_Workout_RoutePoint);
    v23 = *(v49 + 20);
    v24 = *(v47 + 48);
    v25 = v43;
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(&v17[v23], v43, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v22 + v23, v25 + v24, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
    v26 = v46;
    v27 = *v45;
    if ((*v45)(v25, 1, v46) != 1)
    {
      break;
    }

    v28 = v27(v25 + v24, 1, v26);
    v17 = v44;
    if (v28 != 1)
    {
      goto LABEL_24;
    }

    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
LABEL_12:
    v31 = *(v49 + 24);
    v32 = &v17[v31];
    v33 = v17[v31 + 8];
    v34 = (v50 + v31);
    v35 = *(v50 + v31 + 8);
    if (v33)
    {
      if (!v35)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (*v32 != *v34)
      {
        LOBYTE(v35) = 1;
      }

      if (v35)
      {
        goto LABEL_26;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v36 = v50;
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_IntervalBlock(v36, type metadata accessor for Apple_Workout_RoutePoint);
    outlined destroy of Apple_Workout_IntervalBlock(v17, type metadata accessor for Apple_Workout_RoutePoint);
    if (v37)
    {
      v21 += v42;
      v20 = v48 + v42;
      if (--v18)
      {
        continue;
      }
    }

    return v37 & 1;
  }

  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v25, v10, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  if (v27(v25 + v24, 1, v26) != 1)
  {
    v29 = v41;
    _s10WorkoutKit06Apple_a1_A4StepVWObTm_0(v25 + v24, v41, type metadata accessor for Apple_Workout_LocationCoordinate2D);
    v17 = v44;
    if (*v10 != *v29 || v10[1] != v29[1])
    {
      outlined destroy of Apple_Workout_IntervalBlock(v29, type metadata accessor for Apple_Workout_LocationCoordinate2D);
      outlined destroy of Apple_Workout_IntervalBlock(v10, type metadata accessor for Apple_Workout_LocationCoordinate2D);
      v38 = &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd;
      v39 = "4?";
      goto LABEL_25;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v30 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_IntervalBlock(v29, type metadata accessor for Apple_Workout_LocationCoordinate2D);
    outlined destroy of Apple_Workout_IntervalBlock(v10, type metadata accessor for Apple_Workout_LocationCoordinate2D);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
    if ((v30 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  outlined destroy of Apple_Workout_IntervalBlock(v10, type metadata accessor for Apple_Workout_LocationCoordinate2D);
  v17 = v44;
LABEL_24:
  v38 = &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSg_ADtMd;
  v39 = &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSg_ADtMR;
LABEL_25:
  _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v25, v38, v39);
LABEL_26:
  outlined destroy of Apple_Workout_IntervalBlock(v50, type metadata accessor for Apple_Workout_RoutePoint);
  outlined destroy of Apple_Workout_IntervalBlock(v17, type metadata accessor for Apple_Workout_RoutePoint);
LABEL_27:
  v37 = 0;
  return v37 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit06Apple_b1_B13ConfigurationV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutConfiguration(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = (&v28 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_23:
    v26 = 0;
    return v26 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      outlined init with copy of Apple_Workout_IntervalBlock(v13, v10, type metadata accessor for Apple_Workout_WorkoutConfiguration);
      outlined init with copy of Apple_Workout_IntervalBlock(v14, v6, type metadata accessor for Apple_Workout_WorkoutConfiguration);
      if (*v10 != *v6)
      {
        break;
      }

      v16 = *(v4 + 24);
      v17 = (v10 + v16);
      v18 = *(v10 + v16 + 4);
      v19 = (v6 + v16);
      v20 = *(v6 + v16 + 4);
      if (v18)
      {
        if (!v20)
        {
          break;
        }
      }

      else
      {
        if (*v17 != *v19)
        {
          LOBYTE(v20) = 1;
        }

        if (v20)
        {
          break;
        }
      }

      v21 = *(v4 + 28);
      v22 = (v10 + v21);
      v23 = *(v10 + v21 + 4);
      v24 = (v6 + v21);
      v25 = *(v6 + v21 + 4);
      if (v23)
      {
        if (!v25)
        {
          break;
        }
      }

      else
      {
        if (*v22 != *v24)
        {
          LOBYTE(v25) = 1;
        }

        if (v25)
        {
          break;
        }
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_IntervalBlock(v6, type metadata accessor for Apple_Workout_WorkoutConfiguration);
      outlined destroy of Apple_Workout_IntervalBlock(v10, type metadata accessor for Apple_Workout_WorkoutConfiguration);
      if (v26)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v26 & 1;
    }

    outlined destroy of Apple_Workout_IntervalBlock(v6, type metadata accessor for Apple_Workout_WorkoutConfiguration);
    outlined destroy of Apple_Workout_IntervalBlock(v10, type metadata accessor for Apple_Workout_WorkoutConfiguration);
    goto LABEL_23;
  }

  v26 = 1;
  return v26 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit06Apple_B13_IntervalStepV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR);
  MEMORY[0x28223BE20](v52);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v55 = &v44 - v14;
  v15 = type metadata accessor for Apple_Workout_IntervalStep(0);
  MEMORY[0x28223BE20](v15);
  v56 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    return 0;
  }

  if (!v21 || a1 == a2)
  {
    return 1;
  }

  v45 = v7;
  v50 = v4;
  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v48 = (v5 + 48);
  v51 = *(v18 + 72);
  v46 = v12;
  v49 = &v44 - v19;
  v47 = v15;
  while (1)
  {
    outlined init with copy of Apple_Workout_IntervalBlock(v23, v20, type metadata accessor for Apple_Workout_IntervalStep);
    v25 = v56;
    outlined init with copy of Apple_Workout_IntervalBlock(v24, v56, type metadata accessor for Apple_Workout_IntervalStep);
    v26 = *(v15 + 20);
    v27 = *&v20[v26];
    v28 = *(v25 + v26);
    if (v27 == v28)
    {
      goto LABEL_22;
    }

    swift_beginAccess();
    v29 = *(v27 + 16);
    swift_beginAccess();
    v30 = *(v28 + 16);
    if (*(v28 + 24) == 1)
    {
      if (v30)
      {
        if (v30 == 1)
        {
          if (v29 != 1)
          {
            goto LABEL_28;
          }
        }

        else if (v29 != 2)
        {
          goto LABEL_28;
        }
      }

      else if (v29)
      {
        goto LABEL_28;
      }
    }

    else if (v29 != v30)
    {
      goto LABEL_28;
    }

    v53 = v24;
    v54 = v23;
    v31 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
    swift_beginAccess();
    v32 = v55;
    v33 = v9;
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v27 + v31, v55, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    v34 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
    swift_beginAccess();
    v35 = *(v52 + 48);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v32, v9, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v28 + v34, &v9[v35], &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    v36 = *v48;
    v37 = v9;
    v38 = v50;
    if ((*v48)(v37, 1, v50) == 1)
    {

      _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v32, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
      v39 = v36(v33 + v35, 1, v38);
      v9 = v33;
      if (v39 != 1)
      {
        goto LABEL_26;
      }

      _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v33, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
      v20 = v49;
      goto LABEL_21;
    }

    v40 = v46;
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v33, v46, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    if (v36(v37 + v35, 1, v38) == 1)
    {
      break;
    }

    v41 = v45;
    _s10WorkoutKit06Apple_a1_A4StepVWObTm_0(v37 + v35, v45, type metadata accessor for Apple_Workout_WorkoutStep);

    v42 = static Apple_Workout_WorkoutStep.== infix(_:_:)(v40, v41);
    outlined destroy of Apple_Workout_IntervalBlock(v41, type metadata accessor for Apple_Workout_WorkoutStep);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v55, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    outlined destroy of Apple_Workout_IntervalBlock(v40, type metadata accessor for Apple_Workout_WorkoutStep);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v37, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    v9 = v37;
    v20 = v49;
    if ((v42 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_21:

    v15 = v47;
    v24 = v53;
    v23 = v54;
LABEL_22:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_28;
    }

    outlined destroy of Apple_Workout_IntervalBlock(v56, type metadata accessor for Apple_Workout_IntervalStep);
    outlined destroy of Apple_Workout_IntervalBlock(v20, type metadata accessor for Apple_Workout_IntervalStep);
    v24 += v51;
    v23 += v51;
    if (!--v21)
    {
      return 1;
    }
  }

  _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v55, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  outlined destroy of Apple_Workout_IntervalBlock(v40, type metadata accessor for Apple_Workout_WorkoutStep);
  v9 = v37;
LABEL_26:
  _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v9, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR);
  v20 = v49;
LABEL_27:

LABEL_28:
  outlined destroy of Apple_Workout_IntervalBlock(v56, type metadata accessor for Apple_Workout_IntervalStep);
  outlined destroy of Apple_Workout_IntervalBlock(v20, type metadata accessor for Apple_Workout_IntervalStep);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit011SwimBikeRunB0V8ActivityO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v6 = *(v3 - 1);
      v7 = *(v4 - 1);
      v8 = *v4;
      if (*v3)
      {
        if (*v3 == 1)
        {
          if (v8 != 1 || v6 != v7)
          {
            return 0;
          }
        }

        else if (v8 != 2 || v6 != v7)
        {
          return 0;
        }
      }

      else
      {
        if (*v4)
        {
          v5 = 0;
        }

        else
        {
          v5 = v6 == v7;
        }

        if (!v5)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit06Apple_B14_IntervalBlockV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v142 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v149 = &v130 - v8;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A5AlertVSg_ADtMR);
  MEMORY[0x28223BE20](v150);
  v151 = &v130 - v9;
  v145 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
  v10 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v141 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v146 = &v130 - v13;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSg_AFtMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSg_AFtMR);
  MEMORY[0x28223BE20](v143);
  v144 = &v130 - v14;
  v162 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v15 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v157 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v152 = (&v130 - v18);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMR);
  MEMORY[0x28223BE20](v153);
  v158 = &v130 - v19;
  v171 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v20 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v170 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR);
  MEMORY[0x28223BE20](v163);
  v23 = &v130 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v168 = &v130 - v28;
  v167 = type metadata accessor for Apple_Workout_IntervalStep(0);
  v147 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v30 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v172 = &v130 - v32;
  v160 = type metadata accessor for Apple_Workout_IntervalBlock(0);
  MEMORY[0x28223BE20](v160);
  v169 = &v130 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v166 = &v130 - v36;
  v37 = *(a1 + 16);
  if (v37 != *(a2 + 16))
  {
    goto LABEL_100;
  }

  if (!v37 || a1 == a2)
  {
    v123 = 1;
    return v123 & 1;
  }

  v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v39 = a1 + v38;
  v40 = 0;
  v136 = a2 + v38;
  v139 = (v20 + 48);
  v135 = (v15 + 48);
  v130 = (v10 + 48);
  v133 = (v5 + 48);
  v41 = *(v35 + 72);
  v42 = v172;
  v43 = v166;
  v134 = v4;
  v161 = v23;
  v159 = v26;
  v140 = v37;
  v132 = v39;
  v131 = v41;
  while (1)
  {
    v44 = v41 * v40;
    result = outlined init with copy of Apple_Workout_IntervalBlock(v39 + v41 * v40, v43, type metadata accessor for Apple_Workout_IntervalBlock);
    if (v40 == v140)
    {
      __break(1u);
      return result;
    }

    v137 = v40;
    v46 = v136 + v44;
    v47 = v169;
    outlined init with copy of Apple_Workout_IntervalBlock(v46, v169, type metadata accessor for Apple_Workout_IntervalBlock);
    v48 = *v43;
    v49 = *v47;
    v50 = *(*v43 + 16);
    if (v50 != *(*v47 + 16))
    {
      goto LABEL_99;
    }

    if (v50 && v48 != v49)
    {
      break;
    }

LABEL_72:
    v117 = *(v160 + 24);
    v118 = (v166 + v117);
    v119 = *(v166 + v117 + 4);
    v120 = (v169 + v117);
    v121 = *(v169 + v117 + 4);
    if (v119)
    {
      if (!v121)
      {
        goto LABEL_99;
      }
    }

    else
    {
      if (*v118 != *v120)
      {
        LOBYTE(v121) = 1;
      }

      if (v121)
      {
        goto LABEL_99;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v43 = v166;
    v122 = v169;
    v123 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_IntervalBlock(v122, type metadata accessor for Apple_Workout_IntervalBlock);
    outlined destroy of Apple_Workout_IntervalBlock(v43, type metadata accessor for Apple_Workout_IntervalBlock);
    if (v123)
    {
      v40 = v137 + 1;
      v39 = v132;
      v41 = v131;
      if (v137 + 1 != v140)
      {
        continue;
      }
    }

    return v123 & 1;
  }

  v51 = (*(v147 + 80) + 32) & ~*(v147 + 80);
  v52 = v48 + v51;
  v53 = v49 + v51;
  v148 = *(v147 + 72);
  v138 = v30;
  while (1)
  {
    outlined init with copy of Apple_Workout_IntervalBlock(v52, v42, type metadata accessor for Apple_Workout_IntervalStep);
    v54 = v171;
    outlined init with copy of Apple_Workout_IntervalBlock(v53, v30, type metadata accessor for Apple_Workout_IntervalStep);
    v55 = *(v167 + 20);
    v56 = *(v42 + v55);
    v57 = *&v30[v55];
    if (v56 != v57)
    {
      break;
    }

LABEL_57:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v42 = v172;
    v116 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_IntervalBlock(v30, type metadata accessor for Apple_Workout_IntervalStep);
    outlined destroy of Apple_Workout_IntervalBlock(v42, type metadata accessor for Apple_Workout_IntervalStep);
    if ((v116 & 1) == 0)
    {
      goto LABEL_99;
    }

    v53 += v148;
    v52 += v148;
    if (!--v50)
    {
      goto LABEL_72;
    }
  }

  swift_beginAccess();
  v58 = *(v56 + 16);
  swift_beginAccess();
  v59 = *(v57 + 16);
  if (*(v57 + 24) == 1)
  {
    v60 = v168;
    if (v59)
    {
      if (v59 == 1)
      {
        if (v58 != 1)
        {
          goto LABEL_98;
        }
      }

      else if (v58 != 2)
      {
        goto LABEL_98;
      }
    }

    else if (v58)
    {
      goto LABEL_98;
    }
  }

  else
  {
    v60 = v168;
    if (v58 != v59)
    {
      goto LABEL_98;
    }
  }

  v154 = v50;
  v155 = v53;
  v156 = v52;
  v61 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
  swift_beginAccess();
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v56 + v61, v60, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v62 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
  swift_beginAccess();
  v63 = *(v163 + 48);
  v64 = v161;
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v60, v161, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v57 + v62, v64 + v63, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v65 = *v139;
  v66 = (*v139)(v64, 1, v54);
  v164 = v57;
  v165 = v56;
  if (v66 == 1)
  {

    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v60, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    if (v65(v64 + v63, 1, v54) != 1)
    {
      goto LABEL_83;
    }

    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v64, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    v30 = v138;
LABEL_56:

    v52 = v156;
    v53 = v155;
    v50 = v154;
    goto LABEL_57;
  }

  v67 = v159;
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v64, v159, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  if (v65(v64 + v63, 1, v54) == 1)
  {

    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v60, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    outlined destroy of Apple_Workout_IntervalBlock(v67, type metadata accessor for Apple_Workout_WorkoutStep);
LABEL_83:
    v124 = &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMd;
    v125 = &_s10WorkoutKit06Apple_a1_A4StepVSg_ADtMR;
    v126 = v64;
    goto LABEL_96;
  }

  v68 = v170;
  _s10WorkoutKit06Apple_a1_A4StepVWObTm_0(v64 + v63, v170, type metadata accessor for Apple_Workout_WorkoutStep);
  v69 = v54[5];
  v70 = *(v153 + 48);
  v71 = v158;
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v67 + v69, v158, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v72 = v68 + v69;
  v73 = v71;
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v72, v71 + v70, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v74 = *v135;
  v75 = v162;
  if ((*v135)(v71, 1, v162) == 1)
  {
    v76 = v74(v71 + v70, 1, v75);

    v77 = v161;
    if (v76 != 1)
    {
      goto LABEL_85;
    }

    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v71, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
    v78 = v159;
    goto LABEL_42;
  }

  v79 = v152;
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v71, v152, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  if (v74(v71 + v70, 1, v75) == 1)
  {

    outlined destroy of Apple_Workout_IntervalBlock(v79, type metadata accessor for Apple_Workout_WorkoutGoal);
    v73 = v71;
    v77 = v161;
LABEL_85:
    v127 = &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMd;
    v128 = &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMR;
    v129 = v73;
    goto LABEL_93;
  }

  v80 = v71 + v70;
  v81 = v157;
  _s10WorkoutKit06Apple_a1_A4StepVWObTm_0(v80, v157, type metadata accessor for Apple_Workout_WorkoutGoal);
  v82 = *v79;
  v83 = *v81;
  if (*(v81 + 8) == 1)
  {
    v84 = v146;
    v85 = v162;
    v54 = v171;
    v86 = v130;
    if (v83 > 2)
    {
      if (v83 == 3)
      {
        if (v82 != 3)
        {
          goto LABEL_86;
        }
      }

      else if (v83 == 4)
      {
        if (v82 != 4)
        {
          goto LABEL_86;
        }
      }

      else if (v82 != 5)
      {
LABEL_86:

        goto LABEL_91;
      }
    }

    else if (v83)
    {
      if (v83 == 1)
      {
        if (v82 != 1)
        {
          goto LABEL_86;
        }
      }

      else if (v82 != 2)
      {
        goto LABEL_86;
      }
    }

    else if (v82)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v84 = v146;
    v85 = v162;
    v54 = v171;
    v86 = v130;
    if (v82 != v83)
    {
      goto LABEL_86;
    }
  }

  v87 = *(v85 + 20);
  v88 = *(v143 + 48);
  v89 = v144;
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v79 + v87, v144, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v157 + v87, v89 + v88, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v90 = *v86;
  v91 = v145;
  if ((*v86)(v89, 1, v145) == 1)
  {
    v92 = v90(v89 + v88, 1, v91);

    if (v92 != 1)
    {
      goto LABEL_90;
    }

    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v89, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v77 = v161;
LABEL_41:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v95 = v152;
    v96 = v157;
    v97 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_IntervalBlock(v96, type metadata accessor for Apple_Workout_WorkoutGoal);
    outlined destroy of Apple_Workout_IntervalBlock(v95, type metadata accessor for Apple_Workout_WorkoutGoal);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v158, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
    v78 = v159;
    v98 = v168;
    if ((v97 & 1) == 0)
    {
      goto LABEL_95;
    }

LABEL_42:
    v99 = v149;
    v100 = v54[6];
    v101 = *(v150 + 48);
    v102 = v151;
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v78 + v100, v151, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v170 + v100, v102 + v101, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
    v103 = *v133;
    v104 = v134;
    if ((*v133)(v102, 1, v134) == 1)
    {
      v105 = v103(v102 + v101, 1, v104) == 1;
      v77 = v161;
      v106 = v102;
      v78 = v159;
      if (!v105)
      {
        goto LABEL_88;
      }

      _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v102, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
      v98 = v168;
    }

    else
    {
      _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v102, v99, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
      if (v103(v102 + v101, 1, v104) == 1)
      {
        outlined destroy of Apple_Workout_IntervalBlock(v99, type metadata accessor for Apple_Workout_WorkoutAlert);
        v77 = v161;
        v106 = v102;
        v78 = v159;
LABEL_88:
        _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v106, &_s10WorkoutKit06Apple_a1_A5AlertVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A5AlertVSg_ADtMR);
        goto LABEL_94;
      }

      v107 = v142;
      _s10WorkoutKit06Apple_a1_A4StepVWObTm_0(v102 + v101, v142, type metadata accessor for Apple_Workout_WorkoutAlert);
      v108 = static Apple_Workout_WorkoutAlert.== infix(_:_:)();
      outlined destroy of Apple_Workout_IntervalBlock(v107, type metadata accessor for Apple_Workout_WorkoutAlert);
      outlined destroy of Apple_Workout_IntervalBlock(v99, type metadata accessor for Apple_Workout_WorkoutAlert);
      _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v102, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
      v77 = v161;
      v78 = v159;
      v98 = v168;
      if ((v108 & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    v109 = v54[7];
    v110 = (v78 + v109);
    v111 = *(v78 + v109 + 8);
    v112 = (v170 + v109);
    v113 = v112[1];
    if (v111)
    {
      if (!v113 || (*v110 != *v112 || v111 != v113) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    else if (v113)
    {
      goto LABEL_95;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v114 = v170;
    v115 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_IntervalBlock(v114, type metadata accessor for Apple_Workout_WorkoutStep);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v98, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    outlined destroy of Apple_Workout_IntervalBlock(v159, type metadata accessor for Apple_Workout_WorkoutStep);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v77, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    v30 = v138;
    if ((v115 & 1) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_56;
  }

  _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(v89, v84, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  if (v90(v89 + v88, 1, v91) != 1)
  {
    v93 = v141;
    _s10WorkoutKit06Apple_a1_A4StepVWObTm_0(v89 + v88, v141, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);

    v94 = static Apple_Workout_WorkoutGoal.OneOf_GoalValue.== infix(_:_:)();
    outlined destroy of Apple_Workout_IntervalBlock(v93, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    outlined destroy of Apple_Workout_IntervalBlock(v84, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
    _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v89, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
    v77 = v161;
    if ((v94 & 1) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_41;
  }

  outlined destroy of Apple_Workout_IntervalBlock(v84, type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue);
LABEL_90:
  _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v89, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSg_AFtMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSg_AFtMR);
LABEL_91:
  v77 = v161;
LABEL_92:
  outlined destroy of Apple_Workout_IntervalBlock(v157, type metadata accessor for Apple_Workout_WorkoutGoal);
  outlined destroy of Apple_Workout_IntervalBlock(v152, type metadata accessor for Apple_Workout_WorkoutGoal);
  v127 = &_s10WorkoutKit06Apple_a1_A4GoalVSgMd;
  v128 = &_s10WorkoutKit06Apple_a1_A4GoalVSgMR;
  v129 = v158;
LABEL_93:
  _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v129, v127, v128);
  v78 = v159;
LABEL_94:
  v98 = v168;
LABEL_95:
  outlined destroy of Apple_Workout_IntervalBlock(v170, type metadata accessor for Apple_Workout_WorkoutStep);
  _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v98, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  outlined destroy of Apple_Workout_IntervalBlock(v78, type metadata accessor for Apple_Workout_WorkoutStep);
  v126 = v77;
  v124 = &_s10WorkoutKit06Apple_a1_A4StepVSgMd;
  v125 = &_s10WorkoutKit06Apple_a1_A4StepVSgMR;
LABEL_96:
  _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(v126, v124, v125);
  v30 = v138;
LABEL_97:

LABEL_98:
  outlined destroy of Apple_Workout_IntervalBlock(v30, type metadata accessor for Apple_Workout_IntervalStep);
  outlined destroy of Apple_Workout_IntervalBlock(v172, type metadata accessor for Apple_Workout_IntervalStep);
LABEL_99:
  outlined destroy of Apple_Workout_IntervalBlock(v169, type metadata accessor for Apple_Workout_IntervalBlock);
  outlined destroy of Apple_Workout_IntervalBlock(v166, type metadata accessor for Apple_Workout_IntervalBlock);
LABEL_100:
  v123 = 0;
  return v123 & 1;
}

id SwimBikeRunWorkout.Activity.hkConfiguration.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  v4 = qword_23B67DF50[v2];
  v5 = off_278B84220[v2];
  [v3 setActivityType_];
  [v3 *v5];
  return v3;
}

uint64_t SwimBikeRunWorkout.Activity.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x23EEA0D50](*(v0 + 8));
  return MEMORY[0x23EEA0D50](v1);
}

Swift::Int SwimBikeRunWorkout.Activity.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v2);
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SwimBikeRunWorkout.Activity()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v2);
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SwimBikeRunWorkout.Activity()
{
  v1 = *v0;
  MEMORY[0x23EEA0D50](*(v0 + 8));
  return MEMORY[0x23EEA0D50](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SwimBikeRunWorkout.Activity(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v3);
  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

uint64_t key path setter for SwimBikeRunWorkout.activities : SwimBikeRunWorkout(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;

  specialized static SwimBikeRunWorkout.validateActivities(_:)(v4);
}

uint64_t SwimBikeRunWorkout.activities.setter(uint64_t a1)
{

  *v1 = a1;

  specialized static SwimBikeRunWorkout.validateActivities(_:)(v3);
}

void SwimBikeRunWorkout.activities.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {

    specialized static SwimBikeRunWorkout.validateActivities(_:)(v2);
  }
}

uint64_t SwimBikeRunWorkout.displayName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SwimBikeRunWorkout.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

WorkoutKit::SwimBikeRunWorkout __swiftcall SwimBikeRunWorkout.init(activities:displayName:)(Swift::OpaquePointer activities, Swift::String_optional displayName)
{
  object = displayName.value._object;
  countAndFlagsBits = displayName.value._countAndFlagsBits;
  v6 = v2;
  v7 = *(activities._rawValue + 2);
  if (v7)
  {
    v22 = v2;
    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = activities._rawValue + 40;
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
      v12 = qword_23B67DF50[v10];
      v13 = off_278B84220[v10];
      [v11 setActivityType_];
      [v11 *v13];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += 16;
      --v7;
    }

    while (v7);

    v14._rawValue = v23;
    object = displayName.value._object;
    v6 = v22;
    countAndFlagsBits = displayName.value._countAndFlagsBits;
  }

  else
  {

    v14._rawValue = MEMORY[0x277D84F90];
  }

  v15.value._countAndFlagsBits = countAndFlagsBits;
  v15.value._object = object;
  SwimBikeRunWorkout.init(configurations:displayName:)(v14, v15);
  if (v16)
  {
    v20 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    v17 = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    *v6 = v24;
    *(v6 + 8) = v25;
  }

  result.displayName.value._object = v19;
  result.displayName.value._countAndFlagsBits = v18;
  result.activities._rawValue = v17;
  return result;
}

WorkoutKit::SwimBikeRunWorkout __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SwimBikeRunWorkout.init(configurations:displayName:)(Swift::OpaquePointer configurations, Swift::String_optional displayName)
{
  object = displayName.value._object;
  countAndFlagsBits = displayName.value._countAndFlagsBits;
  v7 = v2;
  specialized static SwimBikeRunWorkout.validateConfigurations(_:)(configurations._rawValue);
  v8 = v3;
  if (v3)
  {
  }

  else
  {
    if (configurations._rawValue >> 62)
    {
      goto LABEL_26;
    }

    v12 = *((configurations._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      while (1)
      {
        v25 = v7;
        v26 = countAndFlagsBits;
        v27 = v8;
        v28 = object;
        v29 = MEMORY[0x277D84F90];
        v9 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
        if (v12 < 0)
        {
          break;
        }

        v13 = 0;
        v14 = v29;
        v7 = v12;
        while (1)
        {
          v8 = (v13 + 1);
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if ((configurations._rawValue & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x23EEA0B80](v13, configurations._rawValue);
          }

          else
          {
            if (v13 >= *((configurations._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v15 = *(configurations._rawValue + v13 + 4);
          }

          v16 = v15;
          v17 = [v15 activityType];
          if (v17 == 46)
          {
            object = 0;
            v18 = &selRef_swimmingLocationType;
          }

          else
          {
            if (v17 == 37)
            {
              object = 2;
            }

            else
            {
              if (v17 != 13)
              {

                v22 = [v16 activityType];
                lazy protocol witness table accessor for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError();
                swift_allocError();
                *v23 = v22;
                *(v23 + 8) = 2;
                swift_willThrow();

                goto LABEL_33;
              }

              object = 1;
            }

            v18 = &selRef_locationType;
          }

          countAndFlagsBits = [v16 *v18];

          v20 = *(v29 + 16);
          v19 = *(v29 + 24);
          if (v20 >= v19 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          }

          *(v29 + 16) = v20 + 1;
          v21 = v29 + 16 * v20;
          *(v21 + 32) = countAndFlagsBits;
          *(v21 + 40) = object;
          ++v13;
          if (v8 == v7)
          {

            object = v28;
            v7 = v25;
            countAndFlagsBits = v26;
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        if (configurations._rawValue < 0)
        {
          rawValue = configurations._rawValue;
        }

        else
        {
          rawValue = configurations._rawValue & 0xFFFFFFFFFFFFFF8;
        }

        v12 = MEMORY[0x23EEA0C00](rawValue);
        if (!v12)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_30:

      v14 = MEMORY[0x277D84F90];
LABEL_31:
      *v7 = v14;
      v7[1] = countAndFlagsBits;
      v7[2] = object;
    }
  }

LABEL_33:
  result.displayName.value._object = v11;
  result.displayName.value._countAndFlagsBits = v10;
  result.activities._rawValue = v9;
  return result;
}

__n128 SwimBikeRunWorkout.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Apple_Workout_WorkoutConfiguration(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(*a1 + 16);
  v11._rawValue = MEMORY[0x277D84F90];
  if (v10)
  {
    v23[1] = v2;
    v24 = a1;
    v27 = a2;
    v25 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    do
    {
      outlined init with copy of Apple_Workout_IntervalBlock(v12, v8, type metadata accessor for Apple_Workout_WorkoutConfiguration);
      v14 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
      [v14 setActivityType_];
      v15 = (v8 + *(v5 + 24));
      if ((v15[1] & 1) == 0)
      {
        [v14 setLocationType_];
      }

      v16 = (v8 + *(v5 + 28));
      if ((v16[1] & 1) == 0)
      {
        [v14 setSwimmingLocationType_];
      }

      outlined destroy of Apple_Workout_IntervalBlock(v8, type metadata accessor for Apple_Workout_WorkoutConfiguration);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 += v13;
      --v10;
    }

    while (v10);
    a1 = v24;
    v11._rawValue = v25;
    a2 = v27;
  }

  v17 = (a1 + *(type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition(0) + 24));
  v18 = *v17;
  v19 = v17[1];

  v20.value._countAndFlagsBits = v18;
  v20.value._object = v19;
  SwimBikeRunWorkout.init(configurations:displayName:)(v11, v20);
  outlined destroy of Apple_Workout_IntervalBlock(a1, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
  if (!v22)
  {
    result = v26;
    *a2 = v25;
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t closure #1 in SwimBikeRunWorkout.protoComposition.getter(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v26 = type metadata accessor for Apple_Workout_WorkoutConfiguration(0);
  v8 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v11 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = (a1 + *(type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition(0) + 24));

      *v12 = a3;
      v12[1] = a4;
    }
  }

  v13 = *(a2 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v25 = a1;
    v27 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v15 = (a2 + 40);
    v14 = v27;
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v18 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
      v19 = qword_23B67DF50[v17];
      v20 = off_278B84220[v17];
      [v18 setActivityType_];
      v21 = [v18 *v20];
      MEMORY[0x28223BE20](v21);
      *(&v25 - 2) = v18;
      lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration, type metadata accessor for Apple_Workout_WorkoutConfiguration, &protocol conformance descriptor for Apple_Workout_WorkoutConfiguration);
      static Message.with(_:)();

      v27 = v14;
      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v14 = v27;
      }

      v15 += 16;
      *(v14 + 16) = v23 + 1;
      _s10WorkoutKit06Apple_a1_A4StepVWObTm_0(v10, v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v23, type metadata accessor for Apple_Workout_WorkoutConfiguration);
      --v13;
    }

    while (v13);
    a1 = v25;
  }

  *a1 = v14;
  return result;
}

uint64_t static SwimBikeRunWorkout.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit011SwimBikeRunB0V8ActivityO_Tt1g5(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

void SwimBikeRunWorkout.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  specialized Array<A>.hash(into:)(a1, *v1);
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

Swift::Int SwimBikeRunWorkout.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SwimBikeRunWorkout(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit011SwimBikeRunB0V8ActivityO_Tt1g5(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SwimBikeRunWorkout()
{
  v1 = *v0;
  v2 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
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

void protocol witness for Hashable.hash(into:) in conformance SwimBikeRunWorkout(uint64_t a1)
{
  v2 = v1[2];
  specialized Array<A>.hash(into:)(a1, *v1);
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

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SwimBikeRunWorkout(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3)
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

void specialized static SwimBikeRunWorkout.validateConfigurations(_:)(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v2;
    if (v2 < 2)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = MEMORY[0x23EEA0C00](v6);
  if (v3 < 2)
  {
LABEL_3:
    lazy protocol witness table accessor for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0;
LABEL_4:
    swift_willThrow();
    return;
  }

  v7 = MEMORY[0x23EEA0C00](v6);
  if (v7)
  {
    v2 = v7;
LABEL_11:
    v26 = v3;
    v8 = 0;
    v9 = a1 & 0xC000000000000001;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v9)
      {
        v10 = MEMORY[0x23EEA0B80](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v10 = *(a1 + 8 * v8 + 32);
      }

      v11 = v10;
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v10 activityType];
      if (qword_284E21D38 != v12 && unk_284E21D40 != v12 && qword_284E21D48 != v12)
      {
        v15 = [v11 activityType];
        lazy protocol witness table accessor for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError();
        swift_allocError();
        *v16 = v15;
        *(v16 + 8) = 2;
        swift_willThrow();

        return;
      }

      ++v8;
      if (v3 == v2)
      {
        v3 = v26;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  v9 = a1 & 0xC000000000000001;
LABEL_27:
  v17 = 0;
  v18 = v3 - 1;
  v27 = (v3 - 1) & ~((v3 - 1) >> 63);
  v19 = (a1 + 40);
  while (v18 != v17)
  {
    if (v27 == v17)
    {
      goto LABEL_43;
    }

    if (v9)
    {
      v23 = MEMORY[0x23EEA0B80](v17, a1);
    }

    else
    {
      if (v17 >= *(v5 + 16))
      {
        goto LABEL_44;
      }

      v23 = *(v19 - 1);
    }

    v24 = v23;
    v3 = [v23 activityType];

    if (v9)
    {
      v20 = MEMORY[0x23EEA0B80](v17 + 1, a1);
    }

    else
    {
      if (v17 + 1 >= *(v5 + 16))
      {
        goto LABEL_45;
      }

      v20 = *v19;
    }

    v21 = v20;
    v22 = [v20 activityType];

    ++v19;
    ++v17;
    if (v3 == v22)
    {
      lazy protocol witness table accessor for type SwimBikeRunValidationError and conformance SwimBikeRunValidationError();
      swift_allocError();
      *v25 = v3;
      *(v25 + 8) = 1;
      goto LABEL_4;
    }
  }
}

uint64_t specialized static SwimBikeRunWorkout.validateActivities(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
      v8 = qword_23B67DF50[v6];
      v9 = off_278B84220[v6];
      [v7 setActivityType_];
      [v7 *v9];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 16;
      --v1;
    }

    while (v1);
    v2 = v11;
  }

  specialized static SwimBikeRunWorkout.validateConfigurations(_:)(v2);
}

unint64_t lazy protocol witness table accessor for type SwimBikeRunWorkout.Activity and conformance SwimBikeRunWorkout.Activity()
{
  result = lazy protocol witness table cache variable for type SwimBikeRunWorkout.Activity and conformance SwimBikeRunWorkout.Activity;
  if (!lazy protocol witness table cache variable for type SwimBikeRunWorkout.Activity and conformance SwimBikeRunWorkout.Activity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwimBikeRunWorkout.Activity and conformance SwimBikeRunWorkout.Activity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwimBikeRunWorkout and conformance SwimBikeRunWorkout()
{
  result = lazy protocol witness table cache variable for type SwimBikeRunWorkout and conformance SwimBikeRunWorkout;
  if (!lazy protocol witness table cache variable for type SwimBikeRunWorkout and conformance SwimBikeRunWorkout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwimBikeRunWorkout and conformance SwimBikeRunWorkout);
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

uint64_t getEnumTagSinglePayload for SwimBikeRunWorkout(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SwimBikeRunWorkout(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SwimBikeRunWorkout.Activity(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SwimBikeRunWorkout.Activity(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with copy of Apple_Workout_IntervalBlock(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10WorkoutKit06Apple_a1_A4StepVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A4StepVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A4StepVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined destroy of Apple_Workout_IntervalBlock(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #1 in closure #1 in static Apple_Workout_CadenceAlert.targetAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  type metadata accessor for Apple_Workout_CadenceValue(0);
  v10 = a2;
  lazy protocol witness table accessor for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue, &protocol conformance descriptor for Apple_Workout_CadenceValue);
  static Message.with(_:)();
  v7 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_2(v6, a1, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
}

uint64_t closure #1 in static Apple_Workout_CadenceAlert.targetAlert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13[-v8];
  *a1 = 3;
  *(a1 + 8) = 1;
  *(a1 + 16) = a3;
  *(a1 + 24) = 1;
  type metadata accessor for Apple_Workout_CadenceAlert(0);
  v14 = a2;
  lazy protocol witness table accessor for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert(&lazy protocol witness table cache variable for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert, type metadata accessor for Apple_Workout_CadenceAlert, &protocol conformance descriptor for Apple_Workout_CadenceAlert);
  static Message.with(_:)();
  v10 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_2(v9, a1 + *(v11 + 24), &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
}

uint64_t closure #1 in closure #1 in static Apple_Workout_CadenceAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  type metadata accessor for Apple_Workout_CadenceRange(0);
  v10 = a2;
  lazy protocol witness table accessor for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert(&lazy protocol witness table cache variable for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange, type metadata accessor for Apple_Workout_CadenceRange, &protocol conformance descriptor for Apple_Workout_CadenceRange);
  static Message.with(_:)();
  v7 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_2(v6, a1, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in static Apple_Workout_CadenceAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v5 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2;
  lazy protocol witness table accessor for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue, &protocol conformance descriptor for Apple_Workout_CadenceValue);
  static Message.with(_:)();
  v15 = v2;
  v9 = type metadata accessor for Apple_Workout_CadenceRange(0);
  v10 = *(v9 + 20);
  outlined destroy of Apple_Workout_CadenceValue?(a1 + v10, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  _s10WorkoutKit06Apple_A13_CadenceValueVWObTm_0(v8, a1 + v10, type metadata accessor for Apple_Workout_CadenceValue);
  v11 = *(v6 + 56);
  v11(a1 + v10, 0, 1, v5);
  v16 = v18;
  static Message.with(_:)();
  v12 = *(v9 + 24);
  outlined destroy of Apple_Workout_CadenceValue?(a1 + v12, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  _s10WorkoutKit06Apple_A13_CadenceValueVWObTm_0(v8, a1 + v12, type metadata accessor for Apple_Workout_CadenceValue);
  return (v11)(a1 + v12, 0, 1, v5);
}

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t closure #1 in closure #1 in closure #1 in static Apple_Workout_CadenceAlert.targetAlert(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v4 = type metadata accessor for Apple_Workout_TimeValue(0);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v22 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = objc_allocWithZone(MEMORY[0x277CCADC0]);
  v11 = [v10 initWithCoefficient_];
  v12 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v13 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  v14 = [v12 initWithSymbol:v13 converter:v11];

  Measurement<>.converted(to:)();
  Measurement.value.getter();
  v16 = v15;
  v17 = v15;
  result = (*(v7 + 8))(v9, v6);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v16 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v16 < 4294967300.0)
  {
    *a1 = v16;
    lazy protocol witness table accessor for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);
    v19 = v22;
    static Message.with(_:)();
    v20 = *(type metadata accessor for Apple_Workout_CadenceValue(0) + 24);
    outlined destroy of Apple_Workout_CadenceValue?(&a1[v20], &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    _s10WorkoutKit06Apple_A13_CadenceValueVWObTm_0(v19, &a1[v20], type metadata accessor for Apple_Workout_TimeValue);
    return (*(v23 + 56))(&a1[v20], 0, 1, v4);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in static Apple_Workout_CadenceAlert.rangeAlert(_:)(char *a1, uint64_t a2)
{
  v22 = a2;
  v3 = type metadata accessor for Apple_Workout_TimeValue(0);
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v20 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  v9 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v10 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v11 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  v12 = [v10 initWithSymbol:v11 converter:v9];

  Measurement<>.converted(to:)();
  Measurement.value.getter();
  v14 = v13;
  v15 = v13;
  result = (*(v6 + 8))(v8, v5);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v14 < 4294967300.0)
  {
    *a1 = v14;
    lazy protocol witness table accessor for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);
    v17 = v20;
    static Message.with(_:)();
    v18 = *(type metadata accessor for Apple_Workout_CadenceValue(0) + 24);
    outlined destroy of Apple_Workout_CadenceValue?(&a1[v18], &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    _s10WorkoutKit06Apple_A13_CadenceValueVWObTm_0(v17, &a1[v18], type metadata accessor for Apple_Workout_TimeValue);
    return (*(v21 + 56))(&a1[v18], 0, 1, v3);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of Apple_Workout_CadenceValue?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10WorkoutKit06Apple_A13_CadenceValueVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for Apple_Workout_GoalWorkoutComposition(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_GoalWorkoutComposition;
  if (!type metadata singleton initialization cache for Apple_Workout_GoalWorkoutComposition)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_GoalWorkoutComposition(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_WorkoutGoal?(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Apple_Workout_WorkoutGoal?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Apple_Workout_WorkoutGoal?)
  {
    type metadata accessor for Apple_Workout_WorkoutGoal(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Apple_Workout_WorkoutGoal?);
    }
  }
}

uint64_t Apple_Workout_GoalWorkoutComposition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        closure #4 in Apple_Workout_GoalWorkoutComposition.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else if (result == 2)
    {
LABEL_12:
      type metadata accessor for Apple_Workout_GoalWorkoutComposition(0);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }
}

uint64_t closure #4 in Apple_Workout_GoalWorkoutComposition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_GoalWorkoutComposition(0);
  type metadata accessor for Apple_Workout_WorkoutGoal(0);
  lazy protocol witness table accessor for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal, &protocol conformance descriptor for Apple_Workout_WorkoutGoal);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_GoalWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_GoalWorkoutComposition.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in Apple_Workout_GoalWorkoutComposition.traverse<A>(visitor:)(v3, a1, a2, a3);
      closure #3 in Apple_Workout_GoalWorkoutComposition.traverse<A>(visitor:)(v3, a1, a2, a3);
      type metadata accessor for Apple_Workout_GoalWorkoutComposition(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_GoalWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_GoalWorkoutComposition(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_GoalWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_GoalWorkoutComposition(0);
  if ((*(a1 + *(result + 28) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_GoalWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_GoalWorkoutComposition(0);
  outlined init with copy of Apple_Workout_WorkoutGoal?(a1 + *(v12 + 32), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of (Apple_Workout_WorkoutGoal?, Apple_Workout_WorkoutGoal?)(v7, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  }

  outlined init with take of Apple_Workout_WorkoutGoal(v7, v11);
  lazy protocol witness table accessor for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal, &protocol conformance descriptor for Apple_Workout_WorkoutGoal);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_WorkoutGoal(v11);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_GoalWorkoutComposition@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = a1[7];
  v5 = &a2[a1[6]];
  *v5 = 0;
  v5[4] = 1;
  v6 = &a2[v4];
  *v6 = 0;
  v6[4] = 1;
  v7 = a1[8];
  v8 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_GoalWorkoutComposition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_GoalWorkoutComposition(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_GoalWorkoutComposition(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition, type metadata accessor for Apple_Workout_GoalWorkoutComposition, &protocol conformance descriptor for Apple_Workout_GoalWorkoutComposition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_GoalWorkoutComposition@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_GoalWorkoutComposition._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_GoalWorkoutComposition(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition, type metadata accessor for Apple_Workout_GoalWorkoutComposition, &protocol conformance descriptor for Apple_Workout_GoalWorkoutComposition);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_GoalWorkoutComposition(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_GoalWorkoutComposition(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition, type metadata accessor for Apple_Workout_GoalWorkoutComposition, &protocol conformance descriptor for Apple_Workout_GoalWorkoutComposition);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_GoalWorkoutComposition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_GoalWorkoutComposition.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_20;
  }

  v14 = type metadata accessor for Apple_Workout_GoalWorkoutComposition(0);
  v15 = v14[6];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      goto LABEL_20;
    }
  }

  v20 = v14[7];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      goto LABEL_20;
    }
  }

  v25 = v14[8];
  v26 = *(v11 + 48);
  outlined init with copy of Apple_Workout_WorkoutGoal?(a1 + v25, v13);
  outlined init with copy of Apple_Workout_WorkoutGoal?(a2 + v25, &v13[v26]);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v4) == 1)
  {
    if (v27(&v13[v26], 1, v4) == 1)
    {
      outlined destroy of (Apple_Workout_WorkoutGoal?, Apple_Workout_WorkoutGoal?)(v13, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
LABEL_23:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v28 & 1;
    }

    goto LABEL_19;
  }

  outlined init with copy of Apple_Workout_WorkoutGoal?(v13, v10);
  if (v27(&v13[v26], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutGoal(v10);
LABEL_19:
    outlined destroy of (Apple_Workout_WorkoutGoal?, Apple_Workout_WorkoutGoal?)(v13, &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4GoalVSg_ADtMR);
    goto LABEL_20;
  }

  outlined init with take of Apple_Workout_WorkoutGoal(&v13[v26], v7);
  v30 = static Apple_Workout_WorkoutGoal.== infix(_:_:)();
  outlined destroy of Apple_Workout_WorkoutGoal(v7);
  outlined destroy of Apple_Workout_WorkoutGoal(v10);
  outlined destroy of (Apple_Workout_WorkoutGoal?, Apple_Workout_WorkoutGoal?)(v13, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  if (v30)
  {
    goto LABEL_23;
  }

LABEL_20:
  v28 = 0;
  return v28 & 1;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutGoal?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (Apple_Workout_WorkoutGoal?, Apple_Workout_WorkoutGoal?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_WorkoutGoal(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_WorkoutGoal(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

WorkoutKit::IntervalBlock __swiftcall IntervalBlock.init(steps:iterations:)(Swift::OpaquePointer steps, Swift::Int iterations)
{
  v2->_rawValue = steps._rawValue;
  v2[1]._rawValue = iterations;
  result.iterations = iterations;
  result.steps = steps;
  return result;
}

uint64_t IntervalBlock.iterations.setter(uint64_t result)
{
  *(v1 + 8) = result;
  if (result < 1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t IntervalBlock.steps.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t *key path setter for IntervalBlock.iterations : IntervalBlock(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 8) = *result;
  if (v2 < 1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t IntervalBlock.iterations.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0 && *(*result + 8) <= 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in IntervalBlock.protoRepresentation.getter(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for IntervalStep(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_IntervalStep(0);
  v28 = *(v12 - 8);
  v29 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v25 = a1;
    v26 = a3;
    v30 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = v30;
    v17 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v27 = *(v9 + 72);
    do
    {
      v18 = outlined init with copy of IntervalStep(v17, v11);
      MEMORY[0x28223BE20](v18);
      *(&v24 - 2) = v11;
      lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep();
      v19 = v4;
      static Message.with(_:)();
      outlined destroy of IntervalStep(v11);
      v30 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v16 = v30;
      }

      *(v16 + 16) = v21 + 1;
      outlined init with take of Apple_Workout_IntervalStep(v14, v16 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v21);
      v17 += v27;
      --v15;
      v4 = v19;
    }

    while (v15);
    a1 = v25;
    a3 = v26;
  }

  *a1 = v16;
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a3))
  {
    result = type metadata accessor for Apple_Workout_IntervalBlock(0);
    v23 = a1 + *(result + 24);
    *v23 = a3;
    v23[4] = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t static IntervalBlock.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit12IntervalStepV_Tt1g5(*a1, *a2) & (v2 == v3);
}

uint64_t IntervalBlock.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  specialized Array<A>.hash(into:)(a1, v2);
  return MEMORY[0x23EEA0D50](v3);
}

Swift::Int IntervalBlock.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance IntervalBlock(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit12IntervalStepV_Tt1g5(*a1, *a2) & (v2 == v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IntervalBlock()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance IntervalBlock(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  specialized Array<A>.hash(into:)(a1, v2);
  return MEMORY[0x23EEA0D50](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntervalBlock(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  MEMORY[0x23EEA0D50](v3);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type IntervalBlock and conformance IntervalBlock()
{
  result = lazy protocol witness table cache variable for type IntervalBlock and conformance IntervalBlock;
  if (!lazy protocol witness table cache variable for type IntervalBlock and conformance IntervalBlock)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalBlock and conformance IntervalBlock);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalBlock(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for IntervalBlock(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t outlined init with copy of IntervalStep(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalStep(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep;
  if (!lazy protocol witness table cache variable for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep)
  {
    type metadata accessor for Apple_Workout_IntervalStep(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_IntervalStep and conformance Apple_Workout_IntervalStep);
  }

  return result;
}

uint64_t outlined destroy of IntervalStep(uint64_t a1)
{
  v2 = type metadata accessor for IntervalStep(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_IntervalStep(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_IntervalStep(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_SwimBikeRunWorkoutComposition;
  if (!type metadata singleton initialization cache for Apple_Workout_SwimBikeRunWorkoutComposition)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_SwimBikeRunWorkoutComposition(uint64_t a1)
{
  type metadata accessor for [Apple_Workout_WorkoutConfiguration](319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [Apple_Workout_WorkoutConfiguration](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [Apple_Workout_WorkoutConfiguration])
  {
    type metadata accessor for Apple_Workout_WorkoutConfiguration(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [Apple_Workout_WorkoutConfiguration]);
    }
  }
}

uint64_t Apple_Workout_SwimBikeRunWorkoutComposition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Workout_WorkoutConfiguration(0);
        lazy protocol witness table accessor for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration, type metadata accessor for Apple_Workout_WorkoutConfiguration, &protocol conformance descriptor for Apple_Workout_WorkoutConfiguration);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition(0);
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_SwimBikeRunWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Workout_WorkoutConfiguration(0), lazy protocol witness table accessor for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration, type metadata accessor for Apple_Workout_WorkoutConfiguration, &protocol conformance descriptor for Apple_Workout_WorkoutConfiguration), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_SwimBikeRunWorkoutComposition.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_SwimBikeRunWorkoutComposition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_SwimBikeRunWorkoutComposition@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  result = UnknownStorage.init()();
  v5 = (a2 + *(a1 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_SwimBikeRunWorkoutComposition@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_SwimBikeRunWorkoutComposition(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_SwimBikeRunWorkoutComposition(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition, &protocol conformance descriptor for Apple_Workout_SwimBikeRunWorkoutComposition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_SwimBikeRunWorkoutComposition@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_SwimBikeRunWorkoutComposition._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_SwimBikeRunWorkoutComposition(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition, &protocol conformance descriptor for Apple_Workout_SwimBikeRunWorkoutComposition);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_SwimBikeRunWorkoutComposition(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_SwimBikeRunWorkoutComposition(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition(&lazy protocol witness table cache variable for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition, &protocol conformance descriptor for Apple_Workout_SwimBikeRunWorkoutComposition);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_SwimBikeRunWorkoutComposition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_SwimBikeRunWorkoutComposition.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit06Apple_b1_B13ConfigurationV_Tt1g5(*a1, *a2))
  {
    v4 = *(type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition(0) + 24);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v8)
    {
LABEL_9:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void specialized WorkoutAlertValidating.validateRangeValue(_:_:)(double a1, double a2)
{
  if (a1 <= 0.0 || a2 <= 0.0)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    swift_allocError();
    *v5 = xmmword_23B6784C0;
    v4 = v5 + 1;
  }

  else
  {
    if (a1 < a2)
    {
      return;
    }

    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    swift_allocError();
    v3 = v2;
    v4 = (v2 + 16);
    *v3 = 0;
    v3[1] = 0;
  }

  *v4 = 3;
  swift_willThrow();
}

{
  sub_23B5ED754(a1, a2);
}

{
  sub_23B5ED754(a1, a2);
}

{
  sub_23B5ED754(a1, a2);
}

uint64_t SpeedThresholdAlert.init(target:metric:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for SpeedThresholdAlert(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t SpeedRangeAlert.init(target:metric:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  outlined init with take of ClosedRange<Measurement<NSUnitSpeed>>(a1, a3, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
  result = type metadata accessor for SpeedRangeAlert(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t type metadata accessor for SpeedThresholdAlert(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SpeedThresholdAlert.target.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SpeedThresholdAlert.target.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SpeedThresholdAlert.metric.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SpeedThresholdAlert(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t SpeedThresholdAlert.metric.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SpeedThresholdAlert(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t static SpeedThresholdAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSUnitSpeed();
  if (static Measurement.== infix<A, B>(_:_:)())
  {
    v4 = type metadata accessor for SpeedThresholdAlert(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t type metadata accessor for NSUnitSpeed()
{
  result = lazy cache variable for type metadata for NSUnitSpeed;
  if (!lazy cache variable for type metadata for NSUnitSpeed)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUnitSpeed);
  }

  return result;
}

uint64_t SpeedThresholdAlert.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for SpeedThresholdAlert(0);
  return MEMORY[0x23EEA0D50](*(v1 + *(v2 + 20)));
}

Swift::Int SpeedThresholdAlert.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for SpeedThresholdAlert(0);
  MEMORY[0x23EEA0D50](*(v0 + *(v1 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SpeedThresholdAlert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NSUnitSpeed();
  if (static Measurement.== infix<A, B>(_:_:)())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpeedThresholdAlert(uint64_t a1)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEA0D50](*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SpeedThresholdAlert(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  return MEMORY[0x23EEA0D50](*(v2 + *(a2 + 20)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpeedThresholdAlert(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEA0D50](*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

void protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance SpeedThresholdAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  Measurement.value.getter();
  if (v0 <= 0.0)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    swift_allocError();
    *v1 = xmmword_23B6784C0;
    *(v1 + 16) = 3;
    swift_willThrow();
  }
}

uint64_t static WorkoutAlert<>.speed(_:unit:metric:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  type metadata accessor for NSUnitSpeed();
  v7 = a1;
  Measurement.init(value:unit:)();
  result = type metadata accessor for SpeedThresholdAlert(0);
  *(a3 + *(result + 20)) = v6;
  return result;
}

uint64_t outlined assign with take of ClosedRange<Measurement<NSUnitSpeed>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SpeedRangeAlert.metric.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SpeedRangeAlert(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t SpeedRangeAlert.metric.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SpeedRangeAlert(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t static SpeedRangeAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>, MEMORY[0x277CC87F0]);
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR), (dispatch thunk of static Equatable.== infix(_:_:)()))
  {
    v4 = type metadata accessor for SpeedRangeAlert(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t SpeedRangeAlert.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for SpeedRangeAlert(0);
  return MEMORY[0x23EEA0D50](*(v1 + *(v2 + 20)));
}

Swift::Int SpeedRangeAlert.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for SpeedRangeAlert(0);
  MEMORY[0x23EEA0D50](*(v0 + *(v1 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SpeedRangeAlert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>, MEMORY[0x277CC87F0]);
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR), (dispatch thunk of static Equatable.== infix(_:_:)()))
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpeedRangeAlert(uint64_t a1)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEA0D50](*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SpeedRangeAlert(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
  dispatch thunk of Hashable.hash(into:)();
  return MEMORY[0x23EEA0D50](*(v2 + *(a2 + 20)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpeedRangeAlert(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x23EEA0D50](*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for WorkoutAlertProtable.protoRepresentation.getter in conformance SpeedThresholdAlert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Workout_WorkoutAlert(0);
  lazy protocol witness table accessor for type SpeedThresholdAlert and conformance SpeedThresholdAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert, &protocol conformance descriptor for Apple_Workout_WorkoutAlert);
  return static Message.with(_:)();
}

void protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance SpeedRangeAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  Measurement.value.getter();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
  Measurement.value.getter();
  specialized WorkoutAlertValidating.validateRangeValue(_:_:)(v1, v2);
}

uint64_t static WorkoutAlert<>.speed(_:unit:metric:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, _BYTE *a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v30[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v30[-v19];
  v31 = *a2;
  type metadata accessor for NSUnitSpeed();
  v21 = a1;
  Measurement.init(value:unit:)();
  v22 = v21;
  Measurement.init(value:unit:)();
  lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>, MEMORY[0x277CC87E8]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v24 = v8;
    v25 = *(v15 + 32);
    v25(v13, v20, v14);
    v25(&v13[*(v24 + 48)], v17, v14);
    outlined init with copy of ClosedRange<Measurement<NSUnitSpeed>>(v13, v10, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMR);
    v26 = *(v24 + 48);
    v25(a3, v10, v14);
    v27 = *(v15 + 8);
    v27(&v10[v26], v14);
    outlined init with take of ClosedRange<Measurement<NSUnitSpeed>>(v13, v10, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMR);
    v28 = *(v24 + 48);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
    v25(&a3[*(v29 + 36)], &v10[v28], v14);
    v27(v10, v14);
    result = type metadata accessor for SpeedRangeAlert(0);
    a3[*(result + 20)] = v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ClosedRange<Measurement<NSUnitSpeed>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of ClosedRange<Measurement<NSUnitSpeed>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for SpeedThresholdAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SpeedThresholdAlert and conformance SpeedThresholdAlert(&lazy protocol witness table cache variable for type SpeedThresholdAlert and conformance SpeedThresholdAlert, type metadata accessor for SpeedThresholdAlert, &protocol conformance descriptor for SpeedThresholdAlert);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type SpeedThresholdAlert and conformance SpeedThresholdAlert(&lazy protocol witness table cache variable for type SpeedThresholdAlert and conformance SpeedThresholdAlert, type metadata accessor for SpeedThresholdAlert, &protocol conformance descriptor for SpeedThresholdAlert);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SpeedThresholdAlert and conformance SpeedThresholdAlert(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t instantiation function for generic protocol witness table for SpeedRangeAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SpeedThresholdAlert and conformance SpeedThresholdAlert(&lazy protocol witness table cache variable for type SpeedRangeAlert and conformance SpeedRangeAlert, type metadata accessor for SpeedRangeAlert, &protocol conformance descriptor for SpeedRangeAlert);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type SpeedThresholdAlert and conformance SpeedThresholdAlert(&lazy protocol witness table cache variable for type SpeedRangeAlert and conformance SpeedRangeAlert, type metadata accessor for SpeedRangeAlert, &protocol conformance descriptor for SpeedRangeAlert);
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for Measurement<NSUnitSpeed>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Measurement<NSUnitSpeed>)
  {
    type metadata accessor for NSUnitSpeed();
    v1 = type metadata accessor for Measurement();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Measurement<NSUnitSpeed>);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20));
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata completion function for SpeedThresholdAlert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata accessor for ClosedRange<Measurement<NSUnitSpeed>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ClosedRange<Measurement<NSUnitSpeed>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
    lazy protocol witness table accessor for type Measurement<NSUnitSpeed> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>, MEMORY[0x277CC87E8]);
    v1 = type metadata accessor for ClosedRange();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ClosedRange<Measurement<NSUnitSpeed>>);
    }
  }
}

void type metadata completion function for Apple_Workout_WorkoutPlan(uint64_t a1)
{
  type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content?(319, &lazy cache variable for type metadata for Apple_Workout_WorkoutPlan.OneOf_Content?, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String](319, &lazy cache variable for type metadata for [String], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content?(319, &lazy cache variable for type metadata for Apple_Workout_WorkoutRoute?, type metadata accessor for Apple_Workout_WorkoutRoute);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [String](319, &lazy cache variable for type metadata for String?, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata accessor for Apple_Workout_WorkoutPlan(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata accessor for [String](uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Apple_Workout_WorkoutPlan.Version(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_WorkoutPlan.Version(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for Apple_Workout_WorkoutPlan.Version(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_WorkoutPlan.Version(uint64_t result, int a2)
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

uint64_t type metadata completion function for Apple_Workout_WorkoutPlan.OneOf_Content(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_GoalWorkoutComposition(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_CustomWorkoutComposition(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Workout_PacerWorkoutComposition(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition(319);
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

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_WorkoutPlan.Version@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance Apple_Workout_WorkoutPlan.Version()
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

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_WorkoutPlan.Version@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Apple_Workout_WorkoutPlan.Version(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_WorkoutPlan.Version(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutPlan.Version(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_WorkoutPlan.Version(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_WorkoutPlan.Version(uint64_t *a1, uint64_t *a2)
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

unint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_WorkoutPlan.Version] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_WorkoutPlan.Version] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_WorkoutPlan.Version] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10WorkoutKit06Apple_a1_A4PlanV7VersionOGMd, &_sSay10WorkoutKit06Apple_a1_A4PlanV7VersionOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_WorkoutPlan.Version] and conformance [A]);
  }

  return result;
}

uint64_t Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 99)
    {
      if (result <= 10)
      {
        if (result == 9)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }

        else if (result == 10)
        {
          closure #2 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        }
      }

      else
      {
        switch(result)
        {
          case 11:
            closure #3 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
          case 13:
            closure #4 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
          case 14:
            closure #5 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
        }
      }
    }

    else if (result > 999)
    {
      if (result == 1000)
      {
        closure #9 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }

      else if (result == 1001 || result == 1002)
      {
        type metadata accessor for Apple_Workout_WorkoutPlan(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 'd':
          closure #6 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
          break;
        case 'e':
          type metadata accessor for Apple_Workout_WorkoutPlan(0);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 'f':
          type metadata accessor for Apple_Workout_WorkoutPlan(0);
          dispatch thunk of Decoder.decodeRepeatedStringField(value:)();
          break;
      }
    }
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Workout_GoalWorkoutComposition(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMd, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMR);
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
  v29 = *(type metadata accessor for Apple_Workout_WorkoutPlan(0) + 20);
  v44 = a1;
  v42 = v29;
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + v29, v12, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v12, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    v31 = v13;
    v32 = v50;
  }

  else
  {
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v12, v19, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v19, v16, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v16, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
      v32 = v50;
    }

    else
    {
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMd, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMR);
      v33 = v16;
      v34 = v45;
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v33, v45, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v34, v25, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
      v32 = v50;
      v28(v25, 0, 1, v50);
    }
  }

  v35 = v48;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition, type metadata accessor for Apple_Workout_GoalWorkoutComposition, &protocol conformance descriptor for Apple_Workout_GoalWorkoutComposition);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMd, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMR);
  }

  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, v35, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMd, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMR);
  if ((*(v47 + 48))(v35, 1, v32) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMd, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMR);
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v35, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMd, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMR);
  }

  else
  {
    v38 = v46;
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v35, v46, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMd, &_s10WorkoutKit06Apple_a5_GoalA11CompositionVSgMR);
    v39 = v44;
    v40 = v42;
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v44 + v42, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v38, v39 + v40, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t closure #3 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Workout_CustomWorkoutComposition(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMd, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMR);
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
  v29 = *(type metadata accessor for Apple_Workout_WorkoutPlan(0) + 20);
  v44 = a1;
  v42 = v29;
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + v29, v12, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v12, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    v31 = v13;
  }

  else
  {
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v12, v19, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v19, v16, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMd, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMR);
      v32 = v16;
      v33 = v46;
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v32, v46, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v33, v25, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v16, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_CustomWorkoutComposition and conformance Apple_Workout_CustomWorkoutComposition, type metadata accessor for Apple_Workout_CustomWorkoutComposition, &protocol conformance descriptor for Apple_Workout_CustomWorkoutComposition);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMd, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMR);
  }

  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, v35, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMd, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMR);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMd, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMR);
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v35, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMd, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMR);
  }

  else
  {
    v38 = v45;
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v35, v45, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMd, &_s10WorkoutKit06Apple_a7_CustomA11CompositionVSgMR);
    v39 = v44;
    v40 = v42;
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v44 + v42, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v38, v39 + v40, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t closure #4 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Workout_PacerWorkoutComposition(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMd, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMR);
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
  v29 = *(type metadata accessor for Apple_Workout_WorkoutPlan(0) + 20);
  v44 = a1;
  v42 = v29;
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + v29, v12, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v12, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    v31 = v13;
  }

  else
  {
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v12, v19, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v19, v16, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMd, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMR);
      v32 = v16;
      v33 = v46;
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v32, v46, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v33, v25, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v16, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition, type metadata accessor for Apple_Workout_PacerWorkoutComposition, &protocol conformance descriptor for Apple_Workout_PacerWorkoutComposition);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMd, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMR);
  }

  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, v35, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMd, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMR);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMd, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMR);
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v35, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMd, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMR);
  }

  else
  {
    v38 = v45;
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v35, v45, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMd, &_s10WorkoutKit06Apple_a6_PacerA11CompositionVSgMR);
    v39 = v44;
    v40 = v42;
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v44 + v42, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v38, v39 + v40, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t closure #5 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMd, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMR);
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
  v29 = *(type metadata accessor for Apple_Workout_WorkoutPlan(0) + 20);
  v44 = a1;
  v42 = v29;
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + v29, v12, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v12, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    v31 = v13;
  }

  else
  {
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v12, v19, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v19, v16, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMd, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMR);
      v32 = v16;
      v33 = v46;
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v32, v46, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v33, v25, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v16, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition, &protocol conformance descriptor for Apple_Workout_SwimBikeRunWorkoutComposition);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMd, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMR);
  }

  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, v35, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMd, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMR);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMd, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMR);
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v35, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMd, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMR);
  }

  else
  {
    v38 = v45;
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v35, v45, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMd, &_s10WorkoutKit06Apple_a12_SwimBikeRunA11CompositionVSgMR);
    v39 = v44;
    v40 = v42;
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v44 + v42, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v38, v39 + v40, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t closure #6 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_WorkoutPlan(0);
  type metadata accessor for Apple_Workout_WorkoutRoute(0);
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute, type metadata accessor for Apple_Workout_WorkoutRoute, &protocol conformance descriptor for Apple_Workout_WorkoutRoute);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #9 in Apple_Workout_WorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_WorkoutPlan(0);
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = v3[1];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  v15 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v3 + v15[5], v11, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v16 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  if ((*(*(v16 - 8) + 48))(v11, 1, v16) == 1)
  {
    v17 = v5;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v17 = v5;
      if (EnumCaseMultiPayload == 2)
      {
        closure #3 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else
      {
        closure #4 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(v3, a1, a2, a3);
      }
    }

    else
    {
      v17 = v5;
      if (EnumCaseMultiPayload)
      {
        closure #2 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else
      {
        closure #1 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(v3, a1, a2, a3);
      }
    }

    result = outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v11, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    if (v17)
    {
      return result;
    }
  }

  result = closure #5 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v17)
  {
    closure #6 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (*(*(v3 + v15[6]) + 16))
    {
      dispatch thunk of Visitor.visitRepeatedStringField(value:fieldNumber:)();
    }

    v19 = v3 + v15[7];
    v20 = *v19;
    LOBYTE(v19) = v19[8];
    v21 = v20;
    v22 = v19;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan.Version and conformance Apple_Workout_WorkoutPlan.Version();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (*(v3 + v15[8]))
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if (*(v3 + v15[9]))
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_GoalWorkoutComposition(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + *(v11 + 20), v7, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v12 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v7, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v7, v10, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition, type metadata accessor for Apple_Workout_GoalWorkoutComposition, &protocol conformance descriptor for Apple_Workout_GoalWorkoutComposition);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v10, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
  }

  result = outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v7, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_CustomWorkoutComposition(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + *(v11 + 20), v7, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v12 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v7, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v7, v10, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_CustomWorkoutComposition and conformance Apple_Workout_CustomWorkoutComposition, type metadata accessor for Apple_Workout_CustomWorkoutComposition, &protocol conformance descriptor for Apple_Workout_CustomWorkoutComposition);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v10, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
  }

  result = outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v7, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_PacerWorkoutComposition(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + *(v11 + 20), v7, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v12 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v7, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v7, v10, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition, type metadata accessor for Apple_Workout_PacerWorkoutComposition, &protocol conformance descriptor for Apple_Workout_PacerWorkoutComposition);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v10, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
  }

  result = outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v7, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t closure #4 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + *(v11 + 20), v7, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v12 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v7, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of Apple_Workout_GoalWorkoutComposition(v7, v10, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition, &protocol conformance descriptor for Apple_Workout_SwimBikeRunWorkoutComposition);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v10, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
  }

  result = outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v7, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t closure #5 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(a1 + *(v12 + 44), v7, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v7, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  }

  outlined init with take of Apple_Workout_GoalWorkoutComposition(v7, v11, type metadata accessor for Apple_Workout_WorkoutRoute);
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute, type metadata accessor for Apple_Workout_WorkoutRoute, &protocol conformance descriptor for Apple_Workout_WorkoutRoute);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v11, type metadata accessor for Apple_Workout_WorkoutRoute);
}

uint64_t closure #6 in Apple_Workout_WorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  if (*(a1 + *(result + 48) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_WorkoutPlan@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = a1[5];
  v5 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  *&a2[a1[6]] = MEMORY[0x277D84F90];
  v7 = &a2[v6];
  *v7 = 0;
  v7[8] = 1;
  v8 = a1[9];
  *&a2[a1[8]] = 0;
  *&a2[v8] = 0;
  UnknownStorage.init()();
  v9 = a1[11];
  v10 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  result = (*(*(v10 - 8) + 56))(&a2[v9], 1, 1, v10);
  v12 = &a2[a1[12]];
  *v12 = 0;
  *(v12 + 1) = 0;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_WorkoutPlan@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_WorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_WorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan, &protocol conformance descriptor for Apple_Workout_WorkoutPlan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_WorkoutPlan(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan, &protocol conformance descriptor for Apple_Workout_WorkoutPlan);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_WorkoutPlan(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutPlan(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan, &protocol conformance descriptor for Apple_Workout_WorkoutPlan);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_WorkoutPlan(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_WorkoutPlan@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_GoalWorkoutComposition(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t specialized static Apple_Workout_WorkoutPlan.OneOf_Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v46 = a2;
  v2 = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition(0);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Workout_PacerWorkoutComposition(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Apple_Workout_CustomWorkoutComposition(0);
  MEMORY[0x28223BE20](v7);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_GoalWorkoutComposition(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v43 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = (&v43 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentO_AEtMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentO_AEtMR);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v43 - v25;
  v28 = *(v27 + 56);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content(v45, &v43 - v25);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content(v46, &v26[v28]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content(v26, v17);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v30 = type metadata accessor for Apple_Workout_PacerWorkoutComposition;
        v31 = v17;
        goto LABEL_18;
      }

      outlined init with take of Apple_Workout_GoalWorkoutComposition(&v26[v28], v6, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
      v32 = specialized static Apple_Workout_PacerWorkoutComposition.== infix(_:_:)(v17, v6);
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v6, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
      v33 = v17;
      v34 = type metadata accessor for Apple_Workout_PacerWorkoutComposition;
LABEL_22:
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v33, v34);
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v26, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
      return v32 & 1;
    }

    outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content(v26, v14);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v30 = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition;
      v31 = v14;
      goto LABEL_18;
    }

    v40 = v43;
    outlined init with take of Apple_Workout_GoalWorkoutComposition(&v26[v28], v43, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    v32 = static Apple_Workout_SwimBikeRunWorkoutComposition.== infix(_:_:)();
    v41 = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition;
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v40, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    v33 = v14;
LABEL_21:
    v34 = v41;
    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content(v26, v23);
    if (swift_getEnumCaseMultiPayload())
    {
      v30 = type metadata accessor for Apple_Workout_GoalWorkoutComposition;
      v31 = v23;
LABEL_18:
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v31, v30);
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v26, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentO_AEtMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentO_AEtMR);
LABEL_19:
      v32 = 0;
      return v32 & 1;
    }

    outlined init with take of Apple_Workout_GoalWorkoutComposition(&v26[v28], v11, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
    v32 = specialized static Apple_Workout_GoalWorkoutComposition.== infix(_:_:)(v23, v11);
    v41 = type metadata accessor for Apple_Workout_GoalWorkoutComposition;
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v11, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
    v33 = v23;
    goto LABEL_21;
  }

  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content(v26, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v30 = type metadata accessor for Apple_Workout_CustomWorkoutComposition;
    v31 = v20;
    goto LABEL_18;
  }

  v35 = v44;
  outlined init with take of Apple_Workout_GoalWorkoutComposition(&v26[v28], v44, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
  v36 = *(v7 + 20);
  v37 = *&v20[v36];
  v38 = *(v35 + v36);
  if (v37 != v38 && (, , v39 = closure #1 in static Apple_Workout_CustomWorkoutComposition.== infix(_:_:)(v37, v38), , , !v39) || (type metadata accessor for UnknownStorage(), lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v35, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v20, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v26, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    goto LABEL_19;
  }

  outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v35, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
  outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v20, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
  outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v26, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  v32 = 1;
  return v32 & 1;
}

uint64_t specialized static Apple_Workout_WorkoutPlan.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = (&v57 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5RouteVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A5RouteVSg_ADtMR);
  MEMORY[0x28223BE20](v9);
  v64 = &v57 - v10;
  v11 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSg_AFtMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSg_AFtMR);
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v57 = v6;
  v58 = v9;
  v21 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v22 = *(v21 + 20);
  v23 = a1;
  v24 = *(v18 + 48);
  v59 = v21;
  v60 = v23;
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v23 + v22, v20, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v25 = a2 + v22;
  v26 = a2;
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v25, &v20[v24], &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v27 = *(v12 + 48);
  if (v27(v20, 1, v11) == 1)
  {
    if (v27(&v20[v24], 1, v11) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v20, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
      goto LABEL_10;
    }

LABEL_8:
    v28 = &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSg_AFtMd;
    v29 = &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSg_AFtMR;
    v30 = v20;
LABEL_16:
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v30, v28, v29);
    goto LABEL_17;
  }

  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v20, v17, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  if (v27(&v20[v24], 1, v11) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v17, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
    goto LABEL_8;
  }

  outlined init with take of Apple_Workout_GoalWorkoutComposition(&v20[v24], v14, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  v31 = specialized static Apple_Workout_WorkoutPlan.OneOf_Content.== infix(_:_:)(v17, v14);
  outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v14, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v17, type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content);
  outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v20, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  if ((v31 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v32 = v59;
  v33 = v59[11];
  v34 = *(v58 + 48);
  v35 = v60;
  v36 = v64;
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v60 + v33, v64, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v26 + v33, v36 + v34, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  v37 = v63;
  v38 = *(v62 + 48);
  if (v38(v36, 1, v63) != 1)
  {
    v39 = v61;
    outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content?(v36, v61, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
    if (v38(v36 + v34, 1, v37) != 1)
    {
      v42 = v36 + v34;
      v43 = v57;
      outlined init with take of Apple_Workout_GoalWorkoutComposition(v42, v57, type metadata accessor for Apple_Workout_WorkoutRoute);
      v44 = specialized static Apple_Workout_WorkoutRoute.== infix(_:_:)(v39, v43);
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v43, type metadata accessor for Apple_Workout_WorkoutRoute);
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v39, type metadata accessor for Apple_Workout_WorkoutRoute);
      outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v36, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
      if ((v44 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content(v39, type metadata accessor for Apple_Workout_WorkoutRoute);
    goto LABEL_15;
  }

  if (v38(v36 + v34, 1, v37) != 1)
  {
LABEL_15:
    v28 = &_s10WorkoutKit06Apple_a1_A5RouteVSg_ADtMd;
    v29 = &_s10WorkoutKit06Apple_a1_A5RouteVSg_ADtMR;
    v30 = v36;
    goto LABEL_16;
  }

  outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(v36, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
LABEL_20:
  v45 = v32[12];
  v46 = (v35 + v45);
  v47 = *(v35 + v45 + 8);
  v48 = (v26 + v45);
  v49 = v48[1];
  if (v47)
  {
    if (!v49 || (*v46 != *v48 || v47 != v49) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v49)
  {
    goto LABEL_17;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*(v35 + v32[6]), *(v26 + v32[6])))
  {
    v50 = v32[7];
    v51 = *(v35 + v50);
    v52 = *(v35 + v50 + 8);
    v53 = v26 + v50;
    v54 = *(v26 + v50);
    v55 = v53[8];
    if (v52)
    {
      v56 = v51 != 0;
    }

    else
    {
      v56 = v51;
    }

    if (v55 == 1)
    {
      if (v54)
      {
        if (v56 != 1)
        {
          goto LABEL_17;
        }
      }

      else if (v56)
      {
        goto LABEL_17;
      }
    }

    else if (v56 != v54)
    {
      goto LABEL_17;
    }

    if (*(v35 + v32[8]) == *(v26 + v32[8]) && *(v35 + v32[9]) == *(v26 + v32[9]))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v40 & 1;
    }
  }

LABEL_17:
  v40 = 0;
  return v40 & 1;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutPlan.OneOf_Content(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_WorkoutPlan.OneOf_Content?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static SingleGoalWorkout.supportsActivity(_:)(uint64_t a1)
{
  v2 = qword_284E21CD8 == a1 || unk_284E21CE0 == a1 || qword_284E21CE8 == a1;
  v3 = !v2;
  if (v2)
  {
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v5 = swift_allocError();
    *v6 = a1;
    *(v6 + 8) = 0;
    swift_willThrow();
    if (one-time initialization token for validations != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WorkoutKitLog.validations);
    v8 = v5;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_23B5E7000, v9, v10, "Not supported due to %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x23EEA1330](v12, -1, -1);
      MEMORY[0x23EEA1330](v11, -1, -1);
    }

    else
    {
    }
  }

  return v3;
}

uint64_t static SingleGoalWorkout.supportsGoal(_:activity:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_284E21CD8 == a2 || unk_284E21CE0 == a2 || qword_284E21CE8 == a2)
  {
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v6 = swift_allocError();
    *v7 = a2;
    *(v7 + 8) = 0;
    swift_willThrow();
    if (one-time initialization token for validations != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WorkoutKitLog.validations);
    v9 = v6;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_23B5E7000, v10, v11, "Not supported due to %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23EEA1330](v13, -1, -1);
      MEMORY[0x23EEA1330](v12, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06SinglecA0V_Tt2g5(a2, a3, 0);
    return 1;
  }
}
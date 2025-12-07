uint64_t static EntityAction.eventBus(_:)(uint64_t a1, __n128 a2)
{
  if (a1)
  {

    return REEngineGetEventBus();
  }

  else
  {
    v4 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    result = MEMORY[0x1C68FE250](*(v4 + 16));
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ActionEventParameterUnused.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ActionEventParameterUnused.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionEventParameterUnused.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation26ActionEventParameterUnusedV10CodingKeys33_ED6F0C93167BAC54376FF6D485ABA41BLLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation26ActionEventParameterUnusedV10CodingKeys33_ED6F0C93167BAC54376FF6D485ABA41BLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ActionEventParameterUnused(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation26ActionEventParameterUnusedV10CodingKeys33_ED6F0C93167BAC54376FF6D485ABA41BLLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation26ActionEventParameterUnusedV10CodingKeys33_ED6F0C93167BAC54376FF6D485ABA41BLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ActionEventDefinition.init(startTime:duration:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, uint64_t a7@<X3>)
{
  v11 = *(type metadata accessor for ActionEventDefinition(0, a2, a3, a7) + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a4 + v11, 1, 1, AssociatedTypeWitness);
  *a4 = a5;
  a4[1] = a6;
  v13 = type metadata accessor for Optional();
  v14 = *(*(v13 - 8) + 40);

  return v14(a4 + v11, a1, v13);
}

uint64_t ActionEvent.parameter.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ActionEventDefinition.parameter.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ActionDefinition.init(action:events:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for ActionDefinition(0, a3, a4, a4);
  v11 = *(v10 + 36);
  v16 = *(a3 - 8);
  v12 = *(v16 + 56);
  v12(&a5[v11], 1, 1, a3);
  v13 = type metadata accessor for Optional();
  (*(*(v13 - 8) + 8))(&a5[v11], v13);
  (*(v16 + 16))(&a5[v11], a1, a3);
  v12(&a5[v11], 0, 1, a3);
  *a5 = a2;
  *&a5[*(v10 + 40)] = 0;
  static EntityAction.__register()(a3, a4);
  v14 = *(v16 + 8);

  return v14(a1, a3);
}

uint64_t ActionDefinition.action.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v2 + *(a1 + 36), v6, v8);
  v11 = *(v5 - 8);
  v12 = *(v11 + 48);
  if (v12(v10, 1, v5) == 1)
  {
    ActionDefinition.actionFromCore.getter(a1, a2);
    result = v12(v10, 1, v5);
    if (result != 1)
    {
      return (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    (*(v11 + 32))(a2, v10, v5);
    return (*(v11 + 56))(a2, 0, 1, v5);
  }

  return result;
}

uint64_t ActionDefinition.actionFromCore.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + *(a1 + 40));
  if (v5 && RETimelineDefinitionEventTimelineGetEventTypeName())
  {
    if (one-time initialization token for codableActionTypeMap != -1)
    {
      swift_once();
    }

    v6 = String.init(cString:)();
    v8 = v7;
    swift_beginAccess();
    v9 = static AnimationResource.codableActionTypeMap;
    if (*(static AnimationResource.codableActionTypeMap + 16))
    {
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v8);
      v12 = v11;

      if (v12)
      {
        v13 = (*(v9 + 56) + 56 * v10);
        v14 = *v13;
        v26 = v13[1];
        v27 = v14;
        swift_endAccess();
        v15 = v27;
        v16 = type metadata accessor for Optional();
        v17 = *(v16 - 8);
        MEMORY[0x1EEE9AC00](v16);
        v19 = &v26 - v18;
        static EntityAction<>.load(_:)(v5, v27, MEMORY[0x1E6998CC0], MEMORY[0x1E6998CB8], (&v26 - v18));
        v20 = *(v15 - 8);
        if ((*(v20 + 48))(v19, 1, v15) == 1)
        {
          (*(v17 + 8))(v19, v16);
          memset(v28, 0, 56);
        }

        else
        {
          *(&v28[1] + 8) = v27;
          *(&v28[2] + 8) = v26;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
          (*(v20 + 32))(boxed_opaque_existential_1, v19, v15);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12EntityAction_SeSEpSgMd, &_s17RealityFoundation12EntityAction_SeSEpSgMR);
        v24 = *(a1 + 16);
        v25 = swift_dynamicCast();
        return (*(*(v24 - 8) + 56))(a2, v25 ^ 1u, 1, v24);
      }
    }

    else
    {
    }

    swift_endAccess();
    return static EntityAction.load(_:)(*(a1 + 16), *(a1 + 24), MEMORY[0x1E6998CC8], a2);
  }

  v21 = *(*(*(a1 + 16) - 8) + 56);

  return v21(a2, 1, 1);
}

uint64_t ActionDefinition.eventDefinitions.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*v4)
  {
    v5 = *v4;
  }

  else
  {
    if (*(v4 + *(a1 + 40)))
    {
      ActionDefinition.eventDefinitionsFromCore.getter(a1, a2, a3, a4);
    }

    else
    {
      type metadata accessor for ActionEventDefinition(0, *(a1 + 16), *(a1 + 24), a4);
      v6 = static Array._allocateUninitialized(_:)();
    }

    v5 = v6;
  }

  return v5;
}

void ActionDefinition.eventDefinitionsFromCore.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for ActionEventDefinition(0, v6, v7, a4);
  MEMORY[0x1EEE9AC00](v8);
  v69 = (v66 - v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v77 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v74 = v66 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v83 = v66 - v16;
  v17 = *(v4 + *(a1 + 40));
  if (!v17 || (EventTypeName = RETimelineDefinitionEventTimelineGetEventTypeName()) == 0)
  {
    static Array._allocateUninitialized(_:)();
    return;
  }

  ParameterCount = RETimelineDefinitionEventTimelineGetParameterCount();
  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, ParameterCount & ~(ParameterCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (ParameterCount < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  v20 = v19;
  v82 = v17;
  v70 = ParameterCount;
  if (ParameterCount)
  {
    for (i = 0; i != ParameterCount; ++i)
    {
      if (RETimelineDefinitionEventTimelineGetParameterName())
      {
        v23 = String.init(cString:)();
        v26 = *(v20 + 2);
        v25 = *(v20 + 3);
        if (v26 >= v25 >> 1)
        {
          v84 = v23;
          v27 = v10;
          v28 = v24;
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v20);
          v24 = v28;
          v10 = v27;
          v20 = v29;
          v23 = v84;
        }

        *(v20 + 2) = v26 + 1;
        v22 = &v20[16 * v26];
        *(v22 + 4) = v23;
        *(v22 + 5) = v24;
        ParameterCount = v70;
      }
    }
  }

  EventCount = RETimelineDefinitionEventTimelineGetEventCount();
  v87 = static Array._allocateUninitialized(_:)();
  v68 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(EventCount);
  if (EventCount < 0)
  {
    goto LABEL_31;
  }

  v31 = v83;
  v67 = EventCount;
  if (EventCount)
  {
    v32 = 0;
    v66[1] = AssociatedTypeWitness - 8;
    v33 = (v11 + 8);
    v80 = (v11 + 32);
    v66[0] = v11 + 16;
    v72 = v7;
    v73 = v6;
    v71 = v10;
    while (1)
    {
      RETimelineDefinitionEventTimelineGetEventStartTime();
      v36 = v35;
      v84 = v32;
      RETimelineDefinitionEventTimelineGetEventDuration();
      v38 = v37;
      v39 = *(AssociatedTypeWitness - 8);
      v40 = *(v39 + 56);
      v75 = v39 + 56;
      v76 = v40;
      (v40)(v31, 1, 1);
      v41 = v77;
      if (v70)
      {
        break;
      }

LABEL_15:
      v31 = v83;
      v32 = v84 + 1;
      (*v66[0])(v41, v83, v10);
      ActionEventDefinition.init(startTime:duration:parameter:)(v41, v6, v7, v69, v36, v38, v34);
      Array.append(_:)();
      (*v33)(v31, v10);
      if (v32 == v67)
      {
        return;
      }
    }

    if (one-time initialization token for codableActionTypeMap != -1)
    {
      swift_once();
    }

    v42 = v70;
    while (1)
    {
      while (1)
      {
        v44 = String.init(cString:)();
        v46 = v45;
        swift_beginAccess();
        v47 = static AnimationResource.codableActionTypeMap;
        if (*(static AnimationResource.codableActionTypeMap + 16))
        {
          break;
        }

LABEL_21:
        swift_endAccess();
        static EntityAction.loadParameterFromTimeline(_:eventID:)(0, v6, v7, v41);
        v43 = v83;
        (*v33)(v83, v10);
        (*v80)(v43, v41, v10);
        if (!--v42)
        {
          goto LABEL_15;
        }
      }

      v48 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v46);
      v50 = v49;

      if ((v50 & 1) == 0)
      {
        goto LABEL_21;
      }

      v51 = *(v47 + 56) + 56 * v48;
      v53 = *(v51 + 32);
      v52 = *(v51 + 40);
      swift_endAccess();
      v54 = swift_getAssociatedTypeWitness();
      v55 = type metadata accessor for Optional();
      v79 = v66;
      v56 = *(v55 - 8);
      MEMORY[0x1EEE9AC00](v55);
      v58 = v66 - v57;
      static EntityAction<>.loadParameterFromTimeline<A>(_:parameterType:eventID:)(v53, v84, 0, v53, v66 - v57, v65, v52);
      v59 = *(v54 - 8);
      if ((*(v59 + 48))(v58, 1, v54) == 1)
      {
        v60 = v83;
        v10 = v71;
        (*v33)(v83, v71);
        (*(v56 + 8))(v58, v55);
        v85 = 0u;
        v86 = 0u;
      }

      else
      {
        *(&v86 + 1) = v54;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v85);
        (*(v59 + 32))(boxed_opaque_existential_1, v58, v54);
        v60 = v83;
        v10 = v71;
        (*v33)(v83, v71);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      v62 = v74;
      v63 = AssociatedTypeWitness;
      v64 = swift_dynamicCast();
      v76(v62, v64 ^ 1u, 1, v63);
      (*v80)(v60, v62, v10);
      v7 = v72;
      v6 = v73;
      v41 = v77;
      if (!--v42)
      {
        goto LABEL_15;
      }
    }
  }
}

uint64_t ActionDefinition.init(fromCore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = type metadata accessor for ActionDefinition(0, a2, a4, a5);
  v9 = *(v8 + 36);
  v12 = *(*(a2 - 8) + 56);
  v12(&a3[v9], 1, 1, a2);
  *&a3[*(v8 + 40)] = a1;
  *a3 = 0;
  v10 = type metadata accessor for Optional();
  (*(*(v10 - 8) + 8))(&a3[v9], v10);

  return (v12)(&a3[v9], 1, 1, a2);
}

char *ActionDefinition.createTimelineDefinition(name:)(void (*a1)(char *, char *, uint64_t, __n128), void (**a2)(char *, char *, uint64_t), uint64_t a3)
{
  v137 = a2;
  v136 = a1;
  v146 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v140 = type metadata accessor for Optional();
  v120 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  TypedEventTimeline = &v115 - v9;
  v141 = AssociatedTypeWitness;
  v127 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v124 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v115 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v134 = &v115 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v125 = (&v115 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v126 = &v115 - v19;
  v131 = v4;
  v21 = type metadata accessor for ActionEventDefinition(0, v5, v4, v20);
  v143 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v133 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v142 = &v115 - v24;
  v132 = 0;
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v115 - v27;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v129 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v128 = (&v115 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v135 = (&v115 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v115 - v37;
  ActionDefinition.action.getter(a3, v28);
  if ((*(v29 + 48))(v28, 1, v5) == 1)
  {
    (*(v26 + 8))(v28, v25);
    return 0;
  }

  (*(v29 + 32))(v38, v28, v5);
  ActionDefinition.eventDefinitions.getter(a3, v39, v40, v41);
  v42 = MEMORY[0x1C68F3740]();

  if (v42 < 1)
  {
    (*(v29 + 8))(v38, v5);
    return 0;
  }

  v116 = a3;
  v118 = v29;
  if ((*(v131 + 32))(v5))
  {
    v43 = swift_dynamicCastMetatype();
    v44 = TypedEventTimeline;
    if (!v43 && !swift_dynamicCastMetatype())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
      if (!swift_dynamicCastMetatype())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        if (!swift_dynamicCastMetatype())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
          if (!swift_dynamicCastMetatype())
          {
            type metadata accessor for simd_quatf(0);
            if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
            {
              swift_dynamicCastMetatype();
            }
          }
        }
      }
    }
  }

  else
  {
    v44 = TypedEventTimeline;
  }

  _typeName(_:qualified:)();
  String.utf8CString.getter();
  String.utf8CString.getter();

  TypedEventTimeline = RETimelineDefinitionCreateTypedEventTimeline();

  v45 = *(v118 + 16);
  v117 = v38;
  v136 = v45;
  v137 = (v118 + 16);
  (v45)(v135, v38, v5);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEpMd, &_sSe_SEpMR);
  v122 = v5;
  v121 = v46;
  LODWORD(v135) = swift_dynamicCast();
  if (v135)
  {
    __swift_destroy_boxed_opaque_existential_1(v144);
  }

  v50 = ActionDefinition.eventDefinitions.getter(v116, v47, v48, v49);
  if (MEMORY[0x1C68F3760](v50, v21))
  {
    v51 = 0;
    v52 = (v143 + 16);
    v53 = (v120 + 32);
    v54 = (v127 + 48);
    v55 = (v120 + 8);
    v56 = v140;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v143 + 16))(v142, v50 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v51, v21);
        v58 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v119 != 8)
        {
          goto LABEL_108;
        }

        v144[0] = result;
        (*v52)(v142, v144, v21);
        swift_unknownObjectRelease();
        v58 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      (*v53)(v44, &v142[*(v21 + 40)], v56);
      if ((*v54)(v44, 1, v141) != 1)
      {
        break;
      }

      (*v55)(v44, v56);
      ++v51;
      if (v58 == MEMORY[0x1C68F3760](v50, v21))
      {
        goto LABEL_29;
      }
    }

    v68 = v127;
    v69 = *(v127 + 32);
    v70 = v126;
    v71 = v44;
    v72 = v141;
    v69(v126, v71, v141);
    v62 = v122;
    v63 = TypedEventTimeline;
    if (v135)
    {
      v69(v125, v70, v72);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v144);
        v61 = 0;
LABEL_30:
        v64 = v117;
        (v136)(v128, v117, v62);
        swift_dynamicCast();
        __swift_project_boxed_opaque_existential_1(v144, v145);
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        v65 = v132;
        v66 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        if (v65)
        {

          (*(v118 + 8))(v64, v62);
LABEL_96:
          __swift_destroy_boxed_opaque_existential_1(v144);
          return 0;
        }

        v75 = v66;
        v76 = v67;

        __swift_destroy_boxed_opaque_existential_1(v144);
        v77 = v76 >> 62;
        v132 = 0;
        if ((v76 >> 62) > 1)
        {
          if (v77 != 2)
          {
            memset(v144, 0, 14);
            RETimelineDefinitionEventTimelineSetConstantData();
            goto LABEL_56;
          }

          v78 = *(v75 + 16);
          v79 = *(v75 + 24);
          v80 = __DataStorage._bytes.getter();
          if (v80)
          {
            v81 = __DataStorage._offset.getter();
            if (__OFSUB__(v78, v81))
            {
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
            }

            v80 += v78 - v81;
          }

          if (!__OFSUB__(v79, v78))
          {
LABEL_52:
            MEMORY[0x1C68F2040]();
            if (v80)
            {
              RETimelineDefinitionEventTimelineSetConstantData();
            }

            goto LABEL_56;
          }

          __break(1u);
        }

        else if (!v77)
        {
          v144[0] = v75;
          LOWORD(v144[1]) = v76;
          BYTE2(v144[1]) = BYTE2(v76);
          BYTE3(v144[1]) = BYTE3(v76);
          BYTE4(v144[1]) = BYTE4(v76);
          BYTE5(v144[1]) = BYTE5(v76);
          RETimelineDefinitionEventTimelineSetConstantData();
LABEL_56:
          outlined consume of Data._Representation(v75, v76);
          LODWORD(v129) = 1;
          v73 = v131;
          goto LABEL_57;
        }

        if (v75 >> 32 < v75)
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v82 = __DataStorage._bytes.getter();
        if (!v82)
        {
          MEMORY[0x1C68F2040]();
          goto LABEL_56;
        }

        v83 = v82;
        v84 = __DataStorage._offset.getter();
        if (__OFSUB__(v75, v84))
        {
          goto LABEL_106;
        }

        v80 = v75 - v84 + v83;
        goto LABEL_52;
      }
    }

    else
    {
      (*(v68 + 8))(v70, v72);
    }

    v61 = 0;
  }

  else
  {
LABEL_29:

    v61 = 1;
    v62 = v122;
    v63 = TypedEventTimeline;
    if (v135)
    {
      goto LABEL_30;
    }
  }

  v73 = v131;
  type metadata accessor for EntityActionWrapper(0, v62, v131, v60);
  v74 = v129;
  (v136)(v129, v117, v62);
  EntityActionWrapper.__allocating_init(action:)(v74);
  RETimelineDefinitionEventTimelineSetAndRetainSwiftConstantData();

  LODWORD(v129) = 0;
LABEL_57:
  (*(v73 + 16))(v62, v73);
  RETimelineDefinitionEventTimelineSetReversible();
  v88 = v141;
  v89 = v133;
  if ((v61 & 1) == 0)
  {
    RETimelineDefinitionEventTimelineAddParameter();
  }

  v90 = ActionDefinition.eventDefinitions.getter(v116, v85, v86, v87);
  v91 = MEMORY[0x1C68F3760](v90, v21);
  v92 = v140;
  if (!v91)
  {
LABEL_94:

    (*(v118 + 8))(v117, v122);
    return v63;
  }

  v93 = 0;
  v142 = (v143 + 16);
  v138 = *(v21 + 40);
  v136 = (v143 + 8);
  v137 = (v120 + 16);
  v135 = (v127 + 48);
  v128 = (v127 + 32);
  v126 = (v127 + 16);
  v125 = (v127 + 8);
  v127 = v120 + 8;
  while (1)
  {
    v94 = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (v94)
    {
      (*(v143 + 16))(v89, v90 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v93, v21);
      goto LABEL_65;
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v119 != 8)
    {
      break;
    }

    v144[0] = result;
    (*v142)(v89, v144, v21);
    swift_unknownObjectRelease();
LABEL_65:
    v95 = v139;
    v96 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    RETimelineDefinitionEventTimelineAddEvent();
    (*v137)(v95, &v89[v138], v92);
    (*v136)(v89, v21);
    if ((*v135)(v95, 1, v88) != 1)
    {
      v97 = v134;
      (*v128)(v134, v95, v88);
      if (!v129)
      {
        type metadata accessor for EntityActionParameterWrapper(0, v122, v131, v98);
        v105 = v124;
        (*v126)(v124, v97, v88);
        swift_allocObject();
        EntityActionParameterWrapper.init(parameter:)(v105);
        v106 = TypedEventTimeline;
        RETimelineDefinitionEventTimelineSetAndRetainSwiftParameter();

        v107 = v97;
        v63 = v106;
        (*v125)(v107, v88);
LABEL_89:
        v89 = v133;
        goto LABEL_62;
      }

      (*v126)(v123, v97, v88);
      swift_dynamicCast();
      __swift_project_boxed_opaque_existential_1(v144, v145);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v99 = v132;
      v100 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      if (v99)
      {

        (*v125)(v134, v141);
        (*(v118 + 8))(v117, v122);
        goto LABEL_96;
      }

      v102 = v100;
      v103 = v101;

      __swift_destroy_boxed_opaque_existential_1(v144);
      v104 = v103 >> 62;
      v132 = 0;
      if ((v103 >> 62) > 1)
      {
        if (v104 == 2)
        {
          v108 = *(v102 + 16);
          v120 = *(v102 + 24);
          v109 = __DataStorage._bytes.getter();
          if (v109)
          {
            v110 = __DataStorage._offset.getter();
            if (__OFSUB__(v108, v110))
            {
              goto LABEL_102;
            }

            v109 += v108 - v110;
          }

          if (__OFSUB__(v120, v108))
          {
            goto LABEL_101;
          }

          MEMORY[0x1C68F2040]();
          if (!v109)
          {
            outlined consume of Data._Representation(v102, v103);
            v63 = TypedEventTimeline;
            goto LABEL_88;
          }

          v63 = TypedEventTimeline;
        }

        else
        {
          memset(v144, 0, 14);
          v63 = TypedEventTimeline;
        }
      }

      else if (v104)
      {
        v120 = (v102 >> 32) - v102;
        if (v102 >> 32 < v102)
        {
          goto LABEL_100;
        }

        v111 = __DataStorage._bytes.getter();
        if (!v111)
        {
          MEMORY[0x1C68F2040]();
          v63 = TypedEventTimeline;
          goto LABEL_87;
        }

        v112 = v111;
        v113 = __DataStorage._offset.getter();
        if (__OFSUB__(v102, v113))
        {
          goto LABEL_103;
        }

        v114 = v102 - v113 + v112;
        MEMORY[0x1C68F2040]();
        v63 = TypedEventTimeline;
        if (!v114)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v144[0] = v102;
        LOWORD(v144[1]) = v103;
        BYTE2(v144[1]) = BYTE2(v103);
        BYTE3(v144[1]) = BYTE3(v103);
        BYTE4(v144[1]) = BYTE4(v103);
        BYTE5(v144[1]) = BYTE5(v103);
        v63 = TypedEventTimeline;
      }

      RETimelineDefinitionEventTimelineSetParameterData();
LABEL_87:
      outlined consume of Data._Representation(v102, v103);
LABEL_88:
      v88 = v141;
      (*v125)(v134, v141);
      v92 = v140;
      goto LABEL_89;
    }

    (*v127)(v95, v92);
LABEL_62:
    ++v93;
    if (v96 == MEMORY[0x1C68F3760](v90, v21))
    {
      goto LABEL_94;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
  return result;
}

BOOL ActionDefinition.isModified.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  if (*v1)
  {
    return 1;
  }

  (*(v5 + 16))(v8, &v1[*(a1 + 36)], v4, v6);
  v9 = (*(*(v3 - 8) + 48))(v8, 1, v3) != 1;
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t ActionAnimation.name.getter()
{
  if (v0[20])
  {
    v1 = v0[19];
  }

  else if (*(v0[25] + 16))
  {
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void key path setter for ActionAnimation.name : <A>ActionAnimation<A>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ActionAnimation.name.setter(v1, v2);
}

void ActionAnimation.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
}

uint64_t (*ActionAnimation.name.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = ActionAnimation.name.getter();
  a1[1] = v3;
  return FromToByAnimation.name.modify;
}

uint64_t ActionAnimation.blendLayer.getter()
{
  if (*(v0 + 192) != 1)
  {
    return *(v0 + 188);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t ActionAnimation.blendLayer.setter(uint64_t result)
{
  *(v1 + 188) = result;
  *(v1 + 192) = 0;
  return result;
}

uint64_t *(*ActionAnimation.blendLayer.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 192) == 1)
  {
    v2 = *(*(v1 + 200) + 16);
    if (v2)
    {
      v3 = a1;
      LODWORD(v2) = RETimelineDefinitionGetAnimationLayer();
      a1 = v3;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 188);
  }

  *(a1 + 8) = v2;
  return FromToByAnimation.blendLayer.modify;
}

uint64_t ActionAnimation.bindTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = v2;
  v6 = v3;
  v7 = *(v1 + 184);
  if (v4 == 255)
  {
    v5 = *(*(v1 + 200) + 16);
    if (v5)
    {
      v8 = *(v1 + 168);
      v9 = a1;
      v10 = v3;
      v11 = v4;
      RETimelineDefinitionGetTargetPath();
      v12 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v12, v13, v15);

      LOBYTE(v4) = v11;
      v3 = v10;
      a1 = v9;
      v2 = v8;
      v5 = v15[0];
      v6 = v15[1];
      v7 = v16;
    }

    else
    {
      v7 = 0;
      v6 = 0xE000000000000000;
    }
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;

  return outlined copy of BindTarget?(v2, v3, v4);
}

double key path getter for ActionAnimation.bindTarget : <A>ActionAnimation<A>@<D0>(uint64_t a1@<X8>)
{
  ActionAnimation.bindTarget.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t key path setter for ActionAnimation.bindTarget : <A>ActionAnimation<A>(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  outlined copy of BindTarget(v4[0], v1, v2);
  return ActionAnimation.bindTarget.setter(v4);
}

uint64_t ActionAnimation.bindTarget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 168), *(v1 + 176), *(v1 + 184));
  *(v1 + 168) = v2;
  *(v1 + 176) = v3;
  *(v1 + 184) = v4;
  return result;
}

uint64_t (*ActionAnimation.bindTarget.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 24) = v1;
  ActionAnimation.bindTarget.getter(a1);
  return FromToByAnimation.bindTarget.modify;
}

uint64_t ActionAnimation.fillMode.getter@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 194))
  {
    result = *(*(v1 + 200) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 193);
  }

  *a1 = result;
  return result;
}

unsigned __int8 *(*ActionAnimation.fillMode.modify(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  if (*(v1 + 194))
  {
    v2 = *(*(v1 + 200) + 16);
    if (v2)
    {
      v3 = a1;
      LOBYTE(v2) = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    LOBYTE(v2) = *(v1 + 193);
  }

  *(a1 + 8) = v2;
  return FromToByAnimation.fillMode.modify;
}

uint64_t ActionAnimation.trimStart.getter()
{
  if ((*(v0 + 9) & 1) == 0)
  {
    return *v0;
  }

  result = *(*(v0 + 144) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipStart();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t ActionAnimation.trimStart.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  *(v2 + 9) = 0;
  return result;
}

uint64_t (*ActionAnimation.trimStart.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = ActionAnimation.trimStart.getter();
  *(a1 + 8) = v3 & 1;
  return FromToByAnimation.trimStart.modify;
}

uint64_t ActionAnimation.trimEnd.getter()
{
  if ((*(v0 + 25) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = *(*(v0 + 144) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipEnd();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t ActionAnimation.trimEnd.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  *(v2 + 25) = 0;
  return result;
}

uint64_t (*ActionAnimation.trimEnd.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = ActionAnimation.trimEnd.getter();
  *(a1 + 8) = v3 & 1;
  return FromToByAnimation.trimEnd.modify;
}

uint64_t ActionAnimation.trimDuration.getter()
{
  if ((*(v0 + 41) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = *(*(v0 + 144) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipDuration();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t ActionAnimation.trimDuration.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  *(v2 + 41) = 0;
  return result;
}

uint64_t (*ActionAnimation.trimDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = ActionAnimation.trimDuration.getter();
  *(a1 + 8) = v3 & 1;
  return FromToByAnimation.trimDuration.modify;
}

double ActionAnimation.offset.getter()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  result = 0.0;
  if (*(*(v0 + 144) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipOffset();
    }
  }

  return result;
}

double (*ActionAnimation.offset.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = ActionAnimation.offset.getter();
  return FromToByAnimation.offset.modify;
}

double ActionAnimation.delay.getter()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  result = 0.0;
  if (*(*(v0 + 144) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipDelay();
    }
  }

  return result;
}

double (*ActionAnimation.delay.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = ActionAnimation.delay.getter();
  return FromToByAnimation.delay.modify;
}

float ActionAnimation.speed.getter(__n128 a1)
{
  if ((*(v1 + 80) & 1) == 0)
  {
    return *(v1 + 76);
  }

  result = 1.0;
  if (*(*(v1 + 144) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 1.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipSpeed();
    }
  }

  return result;
}

float (*ActionAnimation.speed.modify(uint64_t a1, __n128 a2))(float *a1)
{
  *a1 = v2;
  *(a1 + 8) = ActionAnimation.speed.getter(a2);
  return FromToByAnimation.speed.modify;
}

uint64_t ActionAnimation.repeatMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = *(v2 + 81);
  if (result == 4)
  {
    if (!*(*(v2 + 144) + 16))
    {
LABEL_6:
      result = 0;
      goto LABEL_8;
    }

    v4 = a1;
    if (RETimelineDefinitionGetTimelineType() != 2)
    {
      result = 0;
      a1 = v4;
      goto LABEL_8;
    }

    result = RETimelineDefinitionGetClipLoopBehavior();
    a1 = v4;
    if (result >= 4)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_6;
    }
  }

LABEL_8:
  *a1 = result;
  return result;
}

_BYTE *(*ActionAnimation.repeatMode.modify(uint64_t a1, double a2))(_BYTE *result)
{
  *a1 = v2;
  ActionAnimation.repeatMode.getter((a1 + 8));
  return FromToByAnimation.repeatMode.modify;
}

double ActionAnimation.duration.getter()
{
  if (!*(*(v0 + 200) + 16))
  {
    return 0.0;
  }

  RETimelineDefinitionGetDuration();
  return result;
}

uint64_t ActionAnimation.init(for:events:name:bindTarget:blendLayer:repeatMode:fillMode:trimStart:trimEnd:trimDuration:offset:delay:speed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, _BYTE *a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, float a12@<S2>, uint64_t a13, unsigned __int8 a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, unsigned __int8 a18, uint64_t a19, uint64_t a20)
{
  v62 = a8;
  v63 = a1;
  v68 = a6;
  v69 = a2;
  v59 = a15;
  v57 = a13;
  v53 = a18;
  v52 = a16;
  v66 = *(a19 - 8);
  v51 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v64 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ActionDefinition(255, a19, a20, v29);
  v67 = type metadata accessor for Optional();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v32 = &v51 - v31;
  v33 = *(a5 + 8);
  v56 = *a5;
  v55 = v33;
  v54 = *(a5 + 16);
  LOBYTE(a5) = *a7;
  v58 = *v62;
  v62 = *(type metadata accessor for ActionAnimation(0, a19, a20, v34) + 40);
  v35 = *(v30 - 8);
  v60 = *(v35 + 56);
  v61 = v35 + 56;
  v60(&v62[a9], 1, 1, v30);

  outlined consume of BindTarget?(0, 0, 0xFFu);
  v73 = 0;
  v72 = 0;
  type metadata accessor for TimelineDefinition();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  v37 = v73;
  v38 = v72;
  v39 = v51 & 1;
  v78 = 0;
  v40 = v52 & 1;
  v41 = v53 & 1;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  *a9 = v57;
  *(a9 + 8) = v39;
  *(a9 + 9) = 0;
  *(a9 + 16) = v59;
  *(a9 + 24) = v40;
  *(a9 + 32) = a17;
  *(a9 + 40) = v41;
  *(a9 + 48) = a10;
  *(a9 + 56) = 0;
  *(a9 + 64) = a11;
  *(a9 + 72) = 0;
  *(a9 + 76) = a12;
  *(a9 + 80) = 0;
  *(a9 + 81) = a5;
  *(a9 + 88) = 0;
  *(a9 + 96) = a3;
  *(a9 + 104) = a4;
  v42 = a4;
  *(a9 + 112) = xmmword_1C1898800;
  *(a9 + 128) = 0;
  *(a9 + 132) = 0;
  *(a9 + 136) = v37;
  *(a9 + 137) = 0;
  *(a9 + 138) = v38;
  *(a9 + 139) = 0;
  *(a9 + 144) = v36;
  v43 = v63;
  LOBYTE(a5) = (*(a20 + 24))(a19, a20);
  outlined consume of BindTarget?(0, 0, 0xFFu);
  v71 = 0;
  v70 = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  v45 = v71;
  v46 = v70;
  *(a9 + 152) = a3;
  *(a9 + 160) = v42;
  v47 = v55;
  *(a9 + 168) = v56;
  *(a9 + 176) = v47;
  *(a9 + 184) = v54;
  *(a9 + 185) = v79;
  *(a9 + 187) = v80;
  *(a9 + 188) = v68;
  *(a9 + 192) = v45;
  *(a9 + 193) = v58;
  *(a9 + 194) = v46;
  *(a9 + 195) = a5 & 1;
  *(a9 + 200) = v44;
  v48 = v66;
  v49 = v64;
  (*(v66 + 16))(v64, v43, a19);
  ActionDefinition.init(action:events:)(v49, v69, a19, a20, v32);
  (*(v48 + 8))(v43, a19);
  v60(v32, 0, 1, v30);
  return (*(v65 + 40))(&v62[a9], v32, v67);
}

uint64_t ActionAnimation.action.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for ActionDefinition(255, v6, *(a1 + 24), a3);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  (*(v9 + 16))(&v15 - v11, v3 + *(a1 + 40), v8, v10);
  v13 = *(v7 - 8);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }

  else
  {
    ActionDefinition.action.getter(v7, a2);
    return (*(v13 + 8))(v12, v7);
  }
}

uint64_t key path setter for ActionAnimation.action : <A>ActionAnimation<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for Optional();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  (*(v11 + 16))(&v15 - v9, a1, v8);
  v13 = type metadata accessor for ActionAnimation(0, v5, v6, v12);
  return ActionAnimation.action.setter(v10, v13);
}

uint64_t ActionAnimation.action.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Optional();
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = v2 + *(a2 + 40);
  v11 = type metadata accessor for ActionDefinition(0, v5, *(a2 + 24), v10);
  if ((*(*(v11 - 8) + 48))(v9, 1, v11))
  {
    v12 = *(v17 + 8);

    return v12(a1, v6);
  }

  else
  {
    (*(v17 + 16))(v8, a1, v6);
    v14 = *(v11 + 36);
    v15 = type metadata accessor for Optional();
    (*(*(v15 - 8) + 40))(v9 + v14, v8, v15);
    return (*(v17 + 8))(a1, v6);
  }
}

void (*ActionAnimation.action.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
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
  *v6 = a2;
  v6[1] = v2;
  v8 = type metadata accessor for Optional();
  v7[2] = v8;
  v9 = *(v8 - 8);
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
  ActionAnimation.action.getter(a2, v11, v12);
  return ActionAnimation.action.modify;
}

void ActionAnimation.action.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    ActionAnimation.action.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    ActionAnimation.action.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t ActionAnimation.eventDefinitions.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for ActionDefinition(255, v6, v7, a4);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  (*(v10 + 16))(&v21 - v12, v4 + *(a1 + 40), v9, v11);
  v14 = *(v8 - 8);
  if ((*(v14 + 48))(v13, 1, v8) == 1)
  {
    (*(v10 + 8))(v13, v9);
    type metadata accessor for ActionEventDefinition(0, v6, v7, v18);
    return static Array._allocateUninitialized(_:)();
  }

  else
  {
    v20 = ActionDefinition.eventDefinitions.getter(v8, v15, v16, v17);
    (*(v14 + 8))(v13, v8);
    return v20;
  }
}

void key path setter for ActionAnimation.eventDefinitions : <A>ActionAnimation<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ActionAnimation(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);

  ActionAnimation.eventDefinitions.setter(v5, v4, v6, v7);
}

void ActionAnimation.eventDefinitions.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 40);
  v7 = type metadata accessor for ActionDefinition(0, *(a2 + 16), *(a2 + 24), a4);
  if ((*(*(v7 - 8) + 48))(v4 + v6, 1, v7))
  {
  }

  else
  {

    *(v4 + v6) = a1;
  }
}

void (*ActionAnimation.eventDefinitions.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  a1[1] = a2;
  a1[2] = v4;
  *a1 = ActionAnimation.eventDefinitions.getter(a2, a2, a3, a4);
  return ActionAnimation.eventDefinitions.modify;
}

void ActionAnimation.eventDefinitions.modify(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (a2)
  {

    ActionAnimation.eventDefinitions.setter(v5, v4, v6, v7);
  }

  else
  {
    ActionAnimation.eventDefinitions.setter(*a1, v4, a3, a4);
  }
}

void *ActionAnimation.createResource()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for ActionDefinition(255, *(a1 + 16), *(a1 + 24), a4);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  if (ActionAnimation.isModified.getter(a1, v16, v17, v18))
  {
    (*(v9 + 16))(v11, v4 + *(a1 + 40), v8);
    if ((*(v12 + 48))(v11, 1, v7) == 1)
    {
      (*(v9 + 8))(v11, v8);
      v19._rawValue = *(v4[25] + 16);
      return ActionAnimation.createResource(timelineDefinition:)(v19);
    }

    else
    {
      (*(v12 + 32))(v15, v11, v7);
      if (v4[20])
      {
        v22 = v4[19];
        v23 = v5[20];
      }

      else if (*(v4[25] + 16))
      {
        RETimelineDefinitionGetName();
        v22 = String.init(cString:)();
        v23 = v24;
      }

      else
      {
        v22 = 0;
        v23 = 0xE000000000000000;
      }

      v25 = ActionDefinition.createTimelineDefinition(name:)(v22, v23, v7);

      if (v25)
      {
        v26._rawValue = v25;
        v27 = ActionAnimation.createResource(timelineDefinition:)(v26);
        RERelease();
        (*(v12 + 8))(v15, v7);
        return v27;
      }

      else
      {
        (*(v12 + 8))(v15, v7);
        return 0;
      }
    }
  }

  else
  {
    v21._rawValue = 0;

    return ActionAnimation.createResource(timelineDefinition:)(v21);
  }
}

uint64_t ActionAnimation.isModified.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for ActionDefinition(255, *(a1 + 16), *(a1 + 24), a4);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = *(v7 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  (*(v9 + 16))(v11, v5 + *(a1 + 40), v8, v14);
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v17 = 0;
  }

  else
  {
    (*(v12 + 32))(v16, v11, v7);
    v17 = ActionDefinition.isModified.getter(v7);
    (*(v12 + 8))(v16, v7);
  }

  v19 = *(v5 + 184) == 0xFF && *(v5 + 160) == 0;
  return (*(v5 + 195) != 2 || (v19 & (*(v5 + 192) & *(v5 + 194)) & 1) == 0) | v17;
}

void *ActionAnimation.createResource(timelineDefinition:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  if (!a1._rawValue)
  {
    v19 = *(v1 + 112);
    v87 = *(v1 + 96);
    *v88 = v19;
    *&v88[16] = *(v1 + 128);
    *&v88[32] = *(v1 + 144);
    v20 = *(v1 + 48);
    v83 = *(v1 + 32);
    v84 = v20;
    v21 = *(v1 + 80);
    v85 = *(v1 + 64);
    v86 = v21;
    v22 = *(v1 + 16);
    v81 = *v1;
    v82 = v22;
    if (!TimelineClipProperties.isClipped.getter(v81))
    {
      if (!*(*(v1 + 200) + 16))
      {
        return 0;
      }

      v37 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v37 + 120, &v81);
      v38 = *(&v82 + 1);
      v39 = v83;
      __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
      (*(v39 + 32))(v38, v39);
      __swift_destroy_boxed_opaque_existential_1(&v81);
      TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
      if (!TimelineAsset)
      {
        return 0;
      }

      v41 = TimelineAsset;
      RETimelineDefinitionGetName();
      v42 = String.init(cString:)();
      v44 = v43;
      type metadata accessor for AnimationResource();
      v35 = swift_allocObject();
      v35[2] = v41;
      v35[3] = v42;
      v35[4] = v44;
      RERetain();
      REAssetSetSwiftObject();
      RERelease();
      return v35;
    }

    v23 = *(v1 + 112);
    v87 = *(v1 + 96);
    *v88 = v23;
    *&v88[16] = *(v1 + 128);
    v24 = *(v1 + 48);
    v83 = *(v1 + 32);
    v84 = v24;
    v25 = *(v1 + 80);
    v85 = *(v1 + 64);
    v86 = v25;
    v26 = *(v1 + 16);
    v81 = *v1;
    v82 = v26;
    *&v88[32] = *(v1 + 144);
    if ((TimelineClipProperties.isModified.getter() & 1) == 0)
    {
      return TimelineDefinition.resource.getter();
    }

    v27 = *(v1 + 112);
    v28 = *(v1 + 80);
    v77 = *(v1 + 96);
    v78 = v27;
    v29 = *(v1 + 112);
    v79 = *(v1 + 128);
    v30 = *(v1 + 48);
    v31 = *(v1 + 16);
    v73 = *(v1 + 32);
    v74 = v30;
    v32 = *(v1 + 48);
    v33 = *(v1 + 80);
    v75 = *(v1 + 64);
    v76 = v33;
    v34 = *(v1 + 16);
    v71 = *v1;
    v72 = v34;
    v69 = v77;
    *v70 = v29;
    *&v70[16] = *(v1 + 128);
    v65 = v73;
    v66 = v32;
    v67 = v75;
    v68 = v28;
    v80 = *(v1 + 144);
    *&v70[32] = *(v1 + 144);
    v63 = v71;
    v64 = v31;
    outlined init with copy of TimelineClipProperties(&v71, &v81);
    v35 = TimelineClipProperties.createClip()();
    v87 = v69;
    *v88 = *v70;
    *&v88[16] = *&v70[16];
    *&v88[32] = *&v70[32];
    v83 = v65;
    v84 = v66;
    v85 = v67;
    v86 = v68;
    v81 = v63;
    v82 = v64;
    v36 = &v81;
    goto LABEL_29;
  }

  v4 = *(v1 + 168);
  v59[0] = *(v1 + 152);
  v59[1] = v4;
  v59[2] = *(v1 + 184);
  v60 = *(v1 + 200);
  v5 = *(v1 + 168);
  v81 = *(v1 + 152);
  v82 = v5;
  v83 = *(v1 + 184);
  *&v84 = *(v1 + 200);
  outlined init with copy of TimelineBaseProperties(v59, &v71);
  TimelineBaseProperties.writeProperties(_:)(a1);
  v61[0] = v81;
  v61[1] = v82;
  v61[2] = v83;
  v62 = v84;
  outlined destroy of TimelineBaseProperties(v61);
  v6 = *(v1 + 112);
  v87 = *(v1 + 96);
  *v88 = v6;
  *&v88[16] = *(v1 + 128);
  *&v88[32] = *(v1 + 144);
  v7 = *(v1 + 48);
  v83 = *(v1 + 32);
  v84 = v7;
  v8 = *(v1 + 80);
  v85 = *(v1 + 64);
  v86 = v8;
  v9 = *(v1 + 16);
  v81 = *v1;
  v82 = v9;
  if (TimelineClipProperties.isClipped.getter(v81))
  {
    v10 = *(v1 + 112);
    v11 = *(v1 + 80);
    v77 = *(v1 + 96);
    v78 = v10;
    v79 = *(v1 + 128);
    v12 = *(v1 + 48);
    v13 = *(v1 + 16);
    v73 = *(v1 + 32);
    v74 = v12;
    v14 = *(v1 + 48);
    v75 = *(v1 + 64);
    v76 = v11;
    v15 = *(v1 + 16);
    v71 = *v1;
    v72 = v15;
    v55 = v73;
    v56 = v14;
    v57 = v75;
    v80 = *(v1 + 144);
    v58 = *(v1 + 80);
    v53 = v71;
    v54 = v13;
    v51 = v77;
    *v52 = *(v1 + 112);
    *&v52[9] = *(v1 + 121);
    v16 = BYTE9(v79);
    v17 = BYTE10(v79);
    if (BYTE10(v79))
    {
      if (!*(v80 + 16))
      {
        outlined init with copy of TimelineClipProperties(&v71, &v81);
        goto LABEL_19;
      }

      outlined init with copy of TimelineClipProperties(&v71, &v81);
      FillMode = RETimelineDefinitionGetFillMode();
    }

    else
    {
      outlined init with copy of TimelineClipProperties(&v71, &v81);
      FillMode = v16;
    }

    if (FillMode)
    {
LABEL_25:
      type metadata accessor for TimelineDefinition();
      v46 = swift_allocObject();
      v46[2]._rawValue = a1._rawValue;
      RERetain();

      v47 = *(v2 + 48);
      v83 = *(v2 + 32);
      v84 = v47;
      v85 = *(v2 + 64);
      v48 = *(v2 + 80);
      v49 = *(v2 + 16);
      v81 = *v2;
      v82 = v49;
      *&v86 = v48;
      *(&v86 + 1) = v46;
      *&v88[9] = *(v2 + 121);
      v50 = *(v2 + 112);
      v87 = *(v2 + 96);
      *v88 = v50;
      v88[25] = v16;
      v88[26] = v17;
      *&v88[32] = *(v2 + 144);
      *&v88[27] = *(v2 + 139);
      outlined init with copy of TimelineClipProperties(&v81, &v63);
      if (v46[2]._rawValue)
      {

        closure #1 in TimelineClipProperties.createClip()(&v81, &v63);

        outlined destroy of TimelineClipProperties(&v81);
        v35 = v63.n128_u64[0];
      }

      else
      {
        outlined destroy of TimelineClipProperties(&v81);
        v35 = 0;
      }

      v65 = v55;
      v66 = v56;
      v67 = v57;
      v63 = v53;
      v64 = v54;
      *&v68 = v58;
      *(&v68 + 1) = v46;
      *&v70[9] = *&v52[9];
      v69 = v51;
      *v70 = *v52;
      v70[25] = v16;
      v70[26] = v17;
      *&v70[32] = *(v2 + 144);
      *&v70[27] = *(v2 + 139);
      v36 = &v63;
LABEL_29:
      outlined destroy of TimelineClipProperties(v36);
      return v35;
    }

LABEL_19:
    if (*(v2 + 194) == 1)
    {
      if (*(v60 + 16))
      {
        v16 = RETimelineDefinitionGetFillMode();
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = *(v2 + 193);
    }

    v17 = 0;
    goto LABEL_25;
  }

  type metadata accessor for TimelineDefinition();
  *(swift_allocObject() + 16) = a1;
  RERetain();
  v35 = TimelineDefinition.resource.getter();
  swift_setDeallocating();
  RERelease();
  swift_deallocClassInstance();
  return v35;
}

void *ActionAnimation.generate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ActionAnimation.createResource()(a1, a2, a3, a4);
  if (!result)
  {
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v5 = 0xD00000000000001CLL;
    *(v5 + 8) = 0x80000001C18DE2F0;
    *(v5 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.name.modify in conformance ActionAnimation<A>(uint64_t **a1))()
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
  v2[4] = ActionAnimation.name.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.blendLayer.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.blendLayer.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.fillMode.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.fillMode.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.bindTarget.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.bindTarget.modify(v2);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimStart.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.trimStart.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimEnd.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.trimEnd.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.trimDuration.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.trimDuration.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.offset.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.offset.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.delay.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.delay.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.speed.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.speed.modify(v2, v3);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for AnimationDefinition.repeatMode.modify in conformance ActionAnimation<A>(uint64_t *a1))()
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
  *(v2 + 32) = ActionAnimation.repeatMode.modify(v2, v3);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t AnyActionAnimation.bindTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = v2;
  v6 = v3;
  v7 = *(v1 + 184);
  if (v4 == 255)
  {
    v5 = *(*(v1 + 200) + 16);
    if (v5)
    {
      v8 = *(v1 + 168);
      v9 = a1;
      v10 = v3;
      v11 = v4;
      RETimelineDefinitionGetTargetPath();
      v12 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v12, v13, v15);

      LOBYTE(v4) = v11;
      v3 = v10;
      a1 = v9;
      v2 = v8;
      v5 = v15[0];
      v6 = v15[1];
      v7 = v16;
    }

    else
    {
      v7 = 0;
      v6 = 0xE000000000000000;
    }
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;

  return outlined copy of BindTarget?(v2, v3, v4);
}

uint64_t AnyActionAnimation.repeatMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = *(v2 + 81);
  if (result == 4)
  {
    if (!*(*(v2 + 144) + 16))
    {
LABEL_6:
      result = 0;
      goto LABEL_8;
    }

    v4 = a1;
    if (RETimelineDefinitionGetTimelineType() != 2)
    {
      result = 0;
      a1 = v4;
      goto LABEL_8;
    }

    result = RETimelineDefinitionGetClipLoopBehavior();
    a1 = v4;
    if (result >= 4)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_6;
    }
  }

LABEL_8:
  *a1 = result;
  return result;
}

uint64_t AnyActionAnimation.init(_:)@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for TimelineDefinition();
  v3 = swift_allocObject();
  swift_retain_n();
  v4 = REAssetHandleAssetType();
  if (v4 == 11)
  {
    RootTimeline = REAnimationSceneAssetGetRootTimeline();

    if (RootTimeline)
    {
LABEL_5:
      v7 = RETimelineDefinitionCreateFromTimeline();

      *(v3 + 16) = v7;
      if (v7)
      {
        if (RETimelineDefinitionGetTimelineType() == 2)
        {
          v8 = 1;

          if (*(v3 + 16) && (ClipSourceRef = RETimelineDefinitionCreateClipSourceRef()) != 0)
          {
            v10 = ClipSourceRef;
            v14 = swift_allocObject();
            *(v14 + 16) = v10;
            RERetain();
            RERelease();
            v17 = 0;
            v18 = 0;
            v11 = 0;
          }

          else
          {
            v17 = 0;
            v18 = 0;
            v11 = 0;
            v14 = swift_allocObject();
            *(v14 + 16) = 0;
          }

          v16 = 2;
          v15 = v3;
          v13 = 1;
          goto LABEL_17;
        }

        v7 = *(v3 + 16);
      }

      if (v7)
      {
        RETimelineDefinitionGetName();
        v17 = String.init(cString:)();
        v18 = v12;
      }

      else
      {
        v17 = 0;
        v18 = 0xE000000000000000;
      }

      outlined consume of BindTarget?(0, 0, 0xFFu);
      v16 = 0;
      v14 = v3;
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v13 = 0;
      v8 = 0;
      v11 = v3;
LABEL_17:

      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 9) = 1;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 25) = 1;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 41) = 1;
      *(a2 + 48) = 0;
      *(a2 + 56) = 1;
      *(a2 + 64) = 0;
      *(a2 + 72) = 1;
      *(a2 + 76) = 0;
      *(a2 + 80) = 1;
      *(a2 + 81) = 4;
      *(a2 + 88) = v11;
      *(a2 + 96) = v17;
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
      *(a2 + 104) = v18;
      *(a2 + 128) = -1;
      *(a2 + 132) = 0;
      *(a2 + 136) = v13;
      *(a2 + 137) = 0;
      *(a2 + 138) = v8;
      *(a2 + 139) = v16;
      *(a2 + 144) = v15;
      *(a2 + 168) = 0u;
      *(a2 + 152) = 0u;
      *(a2 + 184) = -1;
      *(a2 + 188) = 0x201000100000000;
      *(a2 + 200) = v14;
      return result;
    }
  }

  else
  {
    if (v4 == 5)
    {

      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *AnyActionAnimation.createResource()()
{
  if (!*(v0 + 160) && *(v0 + 184) == 255 && (*(v0 + 192) & 1) != 0 && (*(v0 + 194) & 1) != 0 && *(v0 + 195) == 2)
  {
    v1._rawValue = 0;
  }

  else
  {
    v1._rawValue = *(*(v0 + 200) + 16);
  }

  return AnyActionAnimation.createResource(timelineDefinition:)(v1);
}

void *AnyActionAnimation.createResource(timelineDefinition:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + 112);
  v61 = *(v1 + 96);
  *v62 = v2;
  *&v62[16] = *(v1 + 128);
  *&v62[32] = *(v1 + 144);
  v3 = *(v1 + 48);
  v57 = *(v1 + 32);
  v58 = v3;
  v4 = *(v1 + 80);
  v59 = *(v1 + 64);
  v60 = v4;
  v5 = *(v1 + 16);
  v55 = *v1;
  v56 = v5;
  v6 = *(v1 + 168);
  v63[0] = *(v1 + 152);
  v63[1] = v6;
  v64 = *(v1 + 184);
  v65 = *(v1 + 200);
  if (!a1._rawValue)
  {
    v12 = *(v1 + 112);
    v53 = *(v1 + 96);
    *v54 = v12;
    *&v54[16] = *(v1 + 128);
    *&v54[32] = *(v1 + 144);
    v13 = *(v1 + 48);
    v49 = *(v1 + 32);
    v50 = v13;
    v14 = *(v1 + 80);
    v51 = *(v1 + 64);
    v52 = v14;
    v15 = *(v1 + 16);
    v47 = *v1;
    v48 = v15;
    if (!TimelineClipProperties.isClipped.getter(v47))
    {
      if (!*(v65 + 16))
      {
        return 0;
      }

      v18 = specialized static __ServiceLocator.shared.getter();
      swift_beginAccess();
      outlined init with copy of __REAssetService(v18 + 120, &v47);
      v19 = *(&v48 + 1);
      v20 = v49;
      __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
      (*(v20 + 32))(v19, v20);
      __swift_destroy_boxed_opaque_existential_1(&v47);
      TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
      if (!TimelineAsset)
      {
        return 0;
      }

      v22 = TimelineAsset;
      RETimelineDefinitionGetName();
      v23 = String.init(cString:)();
      v25 = v24;
      type metadata accessor for AnimationResource();
      v16 = swift_allocObject();
      v16[2] = v22;
      v16[3] = v23;
      v16[4] = v25;
      RERetain();
      REAssetSetSwiftObject();
      RERelease();
      return v16;
    }

    v53 = v61;
    *v54 = *v62;
    *&v54[16] = *&v62[16];
    *&v54[32] = *&v62[32];
    v49 = v57;
    v50 = v58;
    v51 = v59;
    v52 = v60;
    v47 = v55;
    v48 = v56;
    if ((TimelineClipProperties.isModified.getter() & 1) == 0)
    {
      return TimelineDefinition.resource.getter();
    }

    v45 = v61;
    *v46 = *v62;
    *&v46[16] = *&v62[16];
    *&v46[32] = *&v62[32];
    v41 = v57;
    v42 = v58;
    v43 = v59;
    v44 = v60;
    v39 = v55;
    v40 = v56;
    outlined init with copy of TimelineClipProperties(&v55, &v47);
    v16 = TimelineClipProperties.createClip()();
    v53 = v45;
    *v54 = *v46;
    *&v54[16] = *&v46[16];
    *&v54[32] = *&v46[32];
    v49 = v41;
    v50 = v42;
    v51 = v43;
    v52 = v44;
    v47 = v39;
    v48 = v40;
    v17 = &v47;
    goto LABEL_29;
  }

  v8 = *(v1 + 168);
  v47 = *(v1 + 152);
  v48 = v8;
  v49 = *(v1 + 184);
  *&v50 = *(v1 + 200);
  outlined init with copy of TimelineBaseProperties(v63, &v39);
  TimelineBaseProperties.writeProperties(_:)(a1);
  v37[0] = v47;
  v37[1] = v48;
  v37[2] = v49;
  v38 = v50;
  outlined destroy of TimelineBaseProperties(v37);
  v53 = v61;
  *v54 = *v62;
  *&v54[16] = *&v62[16];
  *&v54[32] = *&v62[32];
  v49 = v57;
  v50 = v58;
  v51 = v59;
  v52 = v60;
  v47 = v55;
  v48 = v56;
  if (TimelineClipProperties.isClipped.getter(v55))
  {
    v33 = v57;
    v34 = v58;
    v35 = v59;
    v36 = v60;
    v31 = v55;
    v32 = v56;
    *&v30[9] = *&v62[9];
    v29 = v61;
    *v30 = *v62;
    v9 = v62[25];
    v10 = v62[26];
    *&v28[5] = *&v62[32];
    *v28 = *&v62[27];
    if (v62[26])
    {
      if (!*(*&v62[32] + 16))
      {
        outlined init with copy of TimelineClipProperties(&v55, &v47);
        goto LABEL_19;
      }

      outlined init with copy of TimelineClipProperties(&v55, &v47);
      FillMode = RETimelineDefinitionGetFillMode();
    }

    else
    {
      outlined init with copy of TimelineClipProperties(&v55, &v47);
      FillMode = v9;
    }

    if (FillMode)
    {
LABEL_25:
      type metadata accessor for TimelineDefinition();
      v27 = swift_allocObject();
      v27[2]._rawValue = a1._rawValue;
      RERetain();

      v49 = v33;
      v50 = v34;
      v51 = v35;
      v47 = v31;
      v48 = v32;
      *&v52 = v36;
      *(&v52 + 1) = v27;
      *&v54[9] = *&v30[9];
      v53 = v29;
      *v54 = *v30;
      v54[25] = v9;
      v54[26] = v10;
      *&v54[32] = *&v28[5];
      *&v54[27] = *v28;
      outlined init with copy of TimelineClipProperties(&v47, &v39);
      if (v27[2]._rawValue)
      {

        closure #1 in TimelineClipProperties.createClip()(&v47, &v39);

        outlined destroy of TimelineClipProperties(&v47);
        v16 = v39.n128_u64[0];
      }

      else
      {
        outlined destroy of TimelineClipProperties(&v47);
        v16 = 0;
      }

      v41 = v33;
      v42 = v34;
      v43 = v35;
      v39 = v31;
      v40 = v32;
      *&v44 = v36;
      *(&v44 + 1) = v27;
      *&v46[9] = *&v30[9];
      v45 = v29;
      *v46 = *v30;
      v46[25] = v9;
      v46[26] = v10;
      *&v46[32] = *&v28[5];
      *&v46[27] = *v28;
      v17 = &v39;
LABEL_29:
      outlined destroy of TimelineClipProperties(v17);
      return v16;
    }

LABEL_19:
    if (BYTE10(v64) == 1)
    {
      if (*(v65 + 16))
      {
        v9 = RETimelineDefinitionGetFillMode();
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = BYTE9(v64);
    }

    v10 = 0;
    goto LABEL_25;
  }

  type metadata accessor for TimelineDefinition();
  *(swift_allocObject() + 16) = a1;
  RERetain();
  v16 = TimelineDefinition.resource.getter();
  swift_setDeallocating();
  RERelease();
  swift_deallocClassInstance();
  return v16;
}

uint64_t protocol witness for AnimationDefinition.name.getter in conformance AnyActionAnimation()
{
  if (v0[20])
  {
    v1 = v0[19];
  }

  else if (*(v0[25] + 16))
  {
    RETimelineDefinitionGetName();
    v1 = String.init(cString:)();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void protocol witness for AnimationDefinition.name.setter in conformance AnyActionAnimation(uint64_t a1, uint64_t a2)
{

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
}

void (*protocol witness for AnimationDefinition.name.modify in conformance AnyActionAnimation(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = v1[20];
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    v4 = v1[19];
    v5 = v3;
  }

  else
  {
    v4 = *(v1[25] + 16);
    if (v4)
    {
      RETimelineDefinitionGetName();
      v4 = String.init(cString:)();
    }

    else
    {
      v5 = 0xE000000000000000;
    }
  }

  *a1 = v4;
  a1[1] = v5;

  return protocol witness for AnimationDefinition.name.modify in conformance AnyActionAnimation;
}

void protocol witness for AnimationDefinition.name.modify in conformance AnyActionAnimation(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    *(v4 + 152) = v3;
    *(v4 + 160) = v2;
  }

  else
  {

    *(v4 + 152) = v3;
    *(v4 + 160) = v2;
  }
}

uint64_t protocol witness for AnimationDefinition.blendLayer.getter in conformance AnyActionAnimation()
{
  if (*(v0 + 192) != 1)
  {
    return *(v0 + 188);
  }

  result = *(*(v0 + 200) + 16);
  if (result)
  {
    return RETimelineDefinitionGetAnimationLayer();
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.blendLayer.setter in conformance AnyActionAnimation(uint64_t result)
{
  *(v1 + 188) = result;
  *(v1 + 192) = 0;
  return result;
}

uint64_t *(*protocol witness for AnimationDefinition.blendLayer.modify in conformance AnyActionAnimation(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 192) == 1)
  {
    v2 = *(*(v1 + 200) + 16);
    if (v2)
    {
      v3 = a1;
      LODWORD(v2) = RETimelineDefinitionGetAnimationLayer();
      a1 = v3;
    }
  }

  else
  {
    LODWORD(v2) = *(v1 + 188);
  }

  *(a1 + 8) = v2;
  return protocol witness for AnimationDefinition.blendLayer.modify in conformance AnyActionAnimation;
}

uint64_t protocol witness for AnimationDefinition.fillMode.getter in conformance AnyActionAnimation@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 194))
  {
    result = *(*(v1 + 200) + 16);
    if (result)
    {
      v3 = a1;
      result = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    result = *(v1 + 193);
  }

  *a1 = result;
  return result;
}

unsigned __int8 *(*protocol witness for AnimationDefinition.fillMode.modify in conformance AnyActionAnimation(uint64_t a1))(unsigned __int8 *result)
{
  *a1 = v1;
  if (*(v1 + 194))
  {
    v2 = *(*(v1 + 200) + 16);
    if (v2)
    {
      v3 = a1;
      LOBYTE(v2) = RETimelineDefinitionGetFillMode();
      a1 = v3;
    }
  }

  else
  {
    LOBYTE(v2) = *(v1 + 193);
  }

  *(a1 + 8) = v2;
  return FromToByAnimation.fillMode.modify;
}

uint64_t protocol witness for AnimationDefinition.bindTarget.setter in conformance AnyActionAnimation(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of BindTarget?(*(v1 + 168), *(v1 + 176), *(v1 + 184));
  *(v1 + 168) = v2;
  *(v1 + 176) = v3;
  *(v1 + 184) = v4;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.bindTarget.modify in conformance AnyActionAnimation(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  v3 = *(v1 + 168);
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = v3;
  v7 = v4;
  v8 = *(v1 + 184);
  if (v5 == 255)
  {
    v6 = *(*(v1 + 200) + 16);
    if (v6)
    {
      v9 = *(v1 + 168);
      v10 = *(v1 + 176);
      v11 = *(v1 + 184);
      RETimelineDefinitionGetTargetPath();
      v12 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v12, v13, v15);

      LOBYTE(v5) = v11;
      v4 = v10;
      v3 = v9;
      v6 = v15[0];
      v7 = v15[1];
      v8 = v16;
    }

    else
    {
      v8 = 0;
      v7 = 0xE000000000000000;
    }
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  outlined copy of BindTarget?(v3, v4, v5);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance AnyActionAnimation;
}

uint64_t protocol witness for AnimationDefinition.bindTarget.modify in conformance AnyActionAnimation(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(v2 + 168);
  v7 = *(v2 + 176);
  v8 = *(v2 + 184);
  if (a2)
  {
    outlined copy of BindTarget(*a1, v3, v5);
    outlined consume of BindTarget?(v6, v7, v8);
    *(v2 + 168) = v4;
    *(v2 + 176) = v3;
    *(v2 + 184) = v5;

    return outlined consume of BindTarget(v4, v3, v5);
  }

  else
  {
    result = outlined consume of BindTarget?(*(v2 + 168), *(v2 + 176), *(v2 + 184));
    *(v2 + 168) = v4;
    *(v2 + 176) = v3;
    *(v2 + 184) = v5;
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimStart.getter in conformance AnyActionAnimation()
{
  if ((*(v0 + 9) & 1) == 0)
  {
    return *v0;
  }

  result = *(*(v0 + 144) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipStart();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimStart.setter in conformance AnyActionAnimation(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  *(v2 + 9) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimStart.modify in conformance AnyActionAnimation(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 9))
  {
    if (*(v1[18] + 16) && (ClipStart = RETimelineDefinitionGetClipStart()) != 0)
    {
      v4 = 0;
      v5 = *ClipStart;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *v1;
    v4 = *(v1 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return FromToByAnimation.trimStart.modify;
}

uint64_t protocol witness for AnimationDefinition.trimEnd.getter in conformance AnyActionAnimation()
{
  if ((*(v0 + 25) & 1) == 0)
  {
    return *(v0 + 16);
  }

  result = *(*(v0 + 144) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipEnd();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimEnd.setter in conformance AnyActionAnimation(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  *(v2 + 25) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimEnd.modify in conformance AnyActionAnimation(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 25))
  {
    if (*(*(v1 + 144) + 16) && (ClipEnd = RETimelineDefinitionGetClipEnd()) != 0)
    {
      v4 = 0;
      v5 = *ClipEnd;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return FromToByAnimation.trimEnd.modify;
}

uint64_t protocol witness for AnimationDefinition.trimDuration.getter in conformance AnyActionAnimation()
{
  if ((*(v0 + 41) & 1) == 0)
  {
    return *(v0 + 32);
  }

  result = *(*(v0 + 144) + 16);
  if (result)
  {
    result = RETimelineDefinitionGetClipDuration();
    if (result)
    {
      return *result;
    }
  }

  return result;
}

uint64_t protocol witness for AnimationDefinition.trimDuration.setter in conformance AnyActionAnimation(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  *(v2 + 41) = 0;
  return result;
}

uint64_t (*protocol witness for AnimationDefinition.trimDuration.modify in conformance AnyActionAnimation(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  if (*(v1 + 41))
  {
    if (*(*(v1 + 144) + 16) && (ClipDuration = RETimelineDefinitionGetClipDuration()) != 0)
    {
      v4 = 0;
      v5 = *ClipDuration;
    }

    else
    {
      v5 = 0;
      v4 = 1;
    }
  }

  else
  {
    v5 = *(v1 + 32);
    v4 = *(v1 + 40);
  }

  *a1 = v5;
  *(a1 + 8) = v4 & 1;
  return FromToByAnimation.trimDuration.modify;
}

double protocol witness for AnimationDefinition.offset.getter in conformance AnyActionAnimation()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  result = 0.0;
  if (*(*(v0 + 144) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipOffset();
    }
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.offset.modify in conformance AnyActionAnimation(double *a1, double a2))()
{
  *(a1 + 1) = v2;
  if (*(v2 + 56))
  {
    v4 = 0;
    if (*(*(v2 + 144) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipOffset();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(v2 + 48);
  }

  *a1 = v4;
  return protocol witness for AnimationDefinition.offset.modify in conformance AnyActionAnimation;
}

void *protocol witness for AnimationDefinition.offset.modify in conformance AnyActionAnimation(void *result)
{
  v1 = result[1];
  *(v1 + 48) = *result;
  *(v1 + 56) = 0;
  return result;
}

double protocol witness for AnimationDefinition.delay.getter in conformance AnyActionAnimation()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  result = 0.0;
  if (*(*(v0 + 144) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 0.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipDelay();
    }
  }

  return result;
}

uint64_t (*protocol witness for AnimationDefinition.delay.modify in conformance AnyActionAnimation(double *a1, double a2))()
{
  *(a1 + 1) = v2;
  if (*(v2 + 72))
  {
    v4 = 0;
    if (*(*(v2 + 144) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipDelay();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(v2 + 64);
  }

  *a1 = v4;
  return protocol witness for AnimationDefinition.delay.modify in conformance AnyActionAnimation;
}

void *protocol witness for AnimationDefinition.delay.modify in conformance AnyActionAnimation(void *result)
{
  v1 = result[1];
  *(v1 + 64) = *result;
  *(v1 + 72) = 0;
  return result;
}

float protocol witness for AnimationDefinition.speed.getter in conformance AnyActionAnimation(__n128 a1)
{
  if ((*(v1 + 80) & 1) == 0)
  {
    return *(v1 + 76);
  }

  result = 1.0;
  if (*(*(v1 + 144) + 16))
  {
    TimelineType = RETimelineDefinitionGetTimelineType();
    result = 1.0;
    if (TimelineType == 2)
    {

      RETimelineDefinitionGetClipSpeed();
    }
  }

  return result;
}

uint64_t *(*protocol witness for AnimationDefinition.speed.modify in conformance AnyActionAnimation(uint64_t a1, double a2))(uint64_t *result)
{
  *a1 = v2;
  if (*(v2 + 80))
  {
    v4 = 1.0;
    if (*(*(v2 + 144) + 16) && RETimelineDefinitionGetTimelineType() == 2)
    {
      RETimelineDefinitionGetClipSpeed();
      v4 = v5;
    }
  }

  else
  {
    v4 = *(v2 + 76);
  }

  *(a1 + 8) = v4;
  return protocol witness for AnimationDefinition.speed.modify in conformance AnyActionAnimation;
}

uint64_t *protocol witness for AnimationDefinition.speed.modify in conformance AnyActionAnimation(uint64_t *result)
{
  v1 = *result;
  *(v1 + 76) = *(result + 2);
  *(v1 + 80) = 0;
  return result;
}

_BYTE *(*protocol witness for AnimationDefinition.repeatMode.modify in conformance AnyActionAnimation(uint64_t a1, double a2))(_BYTE *result)
{
  *a1 = v2;
  v3 = *(v2 + 81);
  if (v3 == 4)
  {
    if (*(*(v2 + 144) + 16))
    {
      v4 = a1;
      if (RETimelineDefinitionGetTimelineType() != 2)
      {
        LOBYTE(v3) = 0;
        a1 = v4;
        goto LABEL_9;
      }

      ClipLoopBehavior = RETimelineDefinitionGetClipLoopBehavior();
      LOBYTE(v3) = ClipLoopBehavior;
      v6 = ClipLoopBehavior >= 4;
      a1 = v4;
      if (!v6)
      {
        goto LABEL_9;
      }

      a1 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LOBYTE(v3) = 0;
  }

LABEL_9:
  *(a1 + 8) = v3;
  return FromToByAnimation.repeatMode.modify;
}

double protocol witness for AnimationDefinition.duration.getter in conformance AnyActionAnimation()
{
  if (!*(*(v0 + 200) + 16))
  {
    return 0.0;
  }

  RETimelineDefinitionGetDuration();
  return result;
}

void *protocol witness for AnimationDefinitionInternal.generate() in conformance AnyActionAnimation()
{
  result = AnyActionAnimation.createResource()();
  if (!result)
  {
    lazy protocol witness table accessor for type AnimationError and conformance AnimationError();
    swift_allocError();
    *v1 = 0xD00000000000001CLL;
    *(v1 + 8) = 0x80000001C18DE2F0;
    *(v1 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for static ActionHandlerProtocol.register(_:) in conformance FromToByActionHandler<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, void), const char *a6, const char *a7)
{
  v13 = a5(255, *(a3 + 16), *(a3 + 24));
  WitnessTable = swift_getWitnessTable(a6, v13);
  v15 = swift_getWitnessTable(a7, v13);
  v16 = MEMORY[0x1E69E7400];
  v17 = MEMORY[0x1E69E73E8];

  return static ActionHandlerProtocol<>.register(_:)(a1, a2, a3, a4, WitnessTable, v15, v16, v17);
}

uint64_t protocol witness for static ActionHandlerProtocol.register(_:) in conformance EmphasizeActionHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t), uint64_t (*a7)(void, uint64_t, uint64_t))
{
  v10 = a5(a1, a2, a3, a4);
  a6(v10);

  return a7(0, a1, a2);
}

unint64_t lazy protocol witness table accessor for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys;
  if (!lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionEventParameterUnused.CodingKeys, &unk_1F4101198, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys;
  if (!lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionEventParameterUnused.CodingKeys, &unk_1F4101198, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys;
  if (!lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionEventParameterUnused.CodingKeys, &unk_1F4101198, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEventParameterUnused.CodingKeys and conformance ActionEventParameterUnused.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionEventType and conformance ActionEventType()
{
  result = lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType;
  if (!lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionEventType, &type metadata for ActionEventType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType;
  if (!lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionEventType, &type metadata for ActionEventType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType;
  if (!lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionEventType, &type metadata for ActionEventType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType;
  if (!lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionEventType, &type metadata for ActionEventType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEventType and conformance ActionEventType);
  }

  return result;
}

uint64_t type metadata completion function for EntityActionWrapper(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for EntityActionParameterWrapper(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for ActionEvent(uint64_t a1)
{
  v1 = type metadata accessor for AnimationPlaybackController();
  if (v2 <= 0x3F)
  {
    v1 = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      v1 = type metadata accessor for Optional();
      if (v4 <= 0x3F)
      {
        type metadata accessor for Entity?(319);
        v1 = v5;
        if (v6 <= 0x3F)
        {
          v1 = type metadata accessor for __Engine();
          if (v7 <= 0x3F)
          {
            type metadata accessor for Double?(319, &lazy cache variable for type metadata for OpaquePointer?, MEMORY[0x1E69E6B70]);
            v1 = v8;
            if (v9 <= 0x3F)
            {
              type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0]);
              v1 = v10;
              if (v11 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for ActionEvent(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  v18 = 23;
  if (!v10)
  {
    v18 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 < a2)
  {
    v19 = ((((((((((((v18 + v17 + ((v15 + v16 + ((v14 + 8) & ~v14)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 8;
    v20 = v19 & 0xFFFFFFF8;
    if ((v19 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = a2 - v13 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = *(a1 + v19);
        if (v24)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v19);
      if (v24)
      {
LABEL_27:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          LODWORD(v20) = *a1;
        }

        return v13 + (v20 | v25) + 1;
      }
    }
  }

  if ((v12 & 0x80000000) == 0)
  {
    v27 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  v28 = (a1 + v14 + 8) & ~v14;
  if (v7 != v13)
  {
    if (v10 >= 2)
    {
      v30 = (*(v9 + 48))((v28 + v15 + v16) & ~v16);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = *(v6 + 48);

  return v29(v28, v7, v5);
}

void storeEnumTagSinglePayload for ActionEvent(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v31 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v9 <= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v9;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (!v13)
  {
    ++v18;
  }

  v21 = ((((((((((((v18 + ((v16 + v17 + ((v15 + 8) & ~v15)) & ~v17) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v20 < a3)
  {
    if (((((((((((((v18 + ((v16 + v17 + ((v15 + 8) & ~v15)) & ~v17) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v22 = a3 - v20 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a2 > v20)
  {
    if (v21)
    {
      v24 = 1;
    }

    else
    {
      v24 = a2 - v20;
    }

    if (v21)
    {
      v25 = ~v20 + a2;
      bzero(a1, v21);
      *a1 = v25;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v21) = v24;
      }

      else
      {
        *(a1 + v21) = v24;
      }
    }

    else if (v10)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v21) = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v10)
  {
    goto LABEL_41;
  }

  *(a1 + v21) = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if ((v19 & 0x80000000) != 0)
  {
    v27 = (a1 + v15 + 8) & ~v15;
    if (v9 == v20)
    {
      v28 = *(v31 + 56);

      v28(v27, a2, v9, v7);
    }

    else if (v13 >= 2)
    {
      v29 = *(v12 + 56);
      v30 = (v27 + v16 + v17) & ~v17;

      v29(v30, (a2 + 1));
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v26 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v26 = (a2 - 1);
    }

    *a1 = v26;
  }
}

void type metadata accessor for Entity?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Entity?)
  {
    type metadata accessor for Entity();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Entity?);
    }
  }
}

uint64_t type metadata completion function for ActionEventDefinition(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionEventDefinition(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = *(v6 + 80);
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v11 = v10 + ((v9 + 16) & ~v9);
    v12 = 8 * v11;
    if (v11 > 3)
    {
      goto LABEL_8;
    }

    v14 = ((a2 - v8 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v11);
      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v14 <= 0xFF)
      {
        if (v14 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v13 = *(a1 + v11);
        if (!*(a1 + v11))
        {
          goto LABEL_28;
        }

LABEL_15:
        v15 = (v13 - 1) << v12;
        if (v11 > 3)
        {
          v15 = 0;
        }

        if (v11)
        {
          if (v11 <= 3)
          {
            v16 = v11;
          }

          else
          {
            v16 = 4;
          }

          if (v16 > 2)
          {
            if (v16 == 3)
            {
              v17 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v17 = *a1;
            }
          }

          else if (v16 == 1)
          {
            v17 = *a1;
          }

          else
          {
            v17 = *a1;
          }
        }

        else
        {
          v17 = 0;
        }

        return v8 + (v17 | v15) + 1;
      }

      v13 = *(a1 + v11);
      if (*(a1 + v11))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v7 < 2)
  {
    return 0;
  }

  v19 = (*(v6 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9);
  if (v19 >= 2)
  {
    return v19 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for ActionEventDefinition(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (!v9)
  {
    ++v12;
  }

  v13 = v12 + ((v11 + 16) & ~v11);
  if (a3 <= v10)
  {
    goto LABEL_17;
  }

  if (v13 <= 3)
  {
    v14 = ((a3 - v10 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v14))
    {
      v7 = 4;
      if (v10 >= a2)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

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
      v7 = v15;
    }

    else
    {
      v7 = 0;
    }

LABEL_17:
    if (v10 >= a2)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v7 = 1;
  if (v10 >= a2)
  {
LABEL_27:
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v13] = 0;
    }

    else if (v7)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    if (!a2)
    {
      return;
    }

LABEL_34:
    if (v9 >= 2)
    {
      v19 = *(v8 + 56);

      v19((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11, a2 + 1);
    }

    return;
  }

LABEL_18:
  v16 = ~v10 + a2;
  if (v13 >= 4)
  {
    bzero(a1, v13);
    *a1 = v16;
    v17 = 1;
    if (v7 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v17 = (v16 >> (8 * v13)) + 1;
  if (!v13)
  {
LABEL_41:
    if (v7 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v18 = v16 & ~(-1 << (8 * v13));
  bzero(a1, v13);
  if (v13 == 3)
  {
    *a1 = v18;
    a1[2] = BYTE2(v18);
    goto LABEL_41;
  }

  if (v13 == 2)
  {
    *a1 = v18;
    if (v7 > 1)
    {
LABEL_45:
      if (v7 == 2)
      {
        *&a1[v13] = v17;
      }

      else
      {
        *&a1[v13] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v7 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v7)
  {
    a1[v13] = v17;
  }
}

uint64_t type metadata completion function for ActionAnimation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ActionDefinition(255, *(a1 + 16), *(a1 + 24), a4);
  result = type metadata accessor for Optional();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionAnimation(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8 - 1;
  if ((v8 - 1) <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v8 - 1;
  }

  v11 = *(v4 + 80);
  if (v6)
  {
    v12 = 7;
  }

  else
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v11 | 7;
  v14 = v11 + 8;
  if (v10 >= a2)
  {
    goto LABEL_36;
  }

  v15 = ((v11 + 208) & ~v13) + ((v12 + *(*(*(a3 + 16) - 8) + 64) + (v14 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = a2 - v10;
  v17 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = v16 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v15);
      if (!v21)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v21 = *(a1 + v15);
      if (!v21)
      {
        goto LABEL_36;
      }
    }
  }

  else if (!v20 || (v21 = *(a1 + v15)) == 0)
  {
LABEL_36:
    if (v9 < 0)
    {
      v25 = ((((a1 + 159) & 0xFFFFFFFFFFFFFFF8) + v13 + 56) & ~v13);
      if (v7 > 0x7FFFFFFE)
      {
        v27 = (*(v5 + 48))((v25 + v14) & ~v11);
        LODWORD(v26) = v27 - 1;
      }

      else
      {
        v26 = *v25;
        if (v26 >= 0xFFFFFFFF)
        {
          LODWORD(v26) = -1;
        }

        v27 = v26 + 1;
      }

      if (v27 < 2)
      {
        LODWORD(v26) = 0;
      }

      if (v26 >= 2)
      {
        return (v26 - 1);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v24 = *(a1 + 144);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  v23 = v21 - 1;
  if (v17)
  {
    v23 = 0;
    LODWORD(v17) = *a1;
  }

  return v10 + (v17 | v23) + 1;
}

void storeEnumTagSinglePayload for ActionAnimation(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
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

  v10 = v9 - 1;
  if ((v9 - 1) <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9 - 1;
  }

  v12 = *(v5 + 80);
  v13 = v12 | 7;
  v14 = (v12 + 8) & ~v12;
  v15 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v15;
  }

  v16 = v14 + v15;
  v17 = ((v12 + 208) & ~(v12 | 7)) + ((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17)
  {
    v18 = 2;
  }

  else
  {
    v18 = a3 - v11 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v11 < a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (a2 > v11)
  {
    if (v17)
    {
      v22 = 1;
    }

    else
    {
      v22 = a2 - v11;
    }

    if (v17)
    {
      v23 = ~v11 + a2;
      v24 = a1;
      bzero(a1, v17);
      a1 = v24;
      *v24 = v23;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        *(a1 + v17) = v22;
      }

      else
      {
        *(a1 + v17) = v22;
      }
    }

    else if (v21)
    {
      *(a1 + v17) = v22;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *(a1 + v17) = 0;
LABEL_42:
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!v21)
  {
    goto LABEL_42;
  }

  *(a1 + v17) = 0;
  if (!a2)
  {
    return;
  }

LABEL_43:
  if ((v10 & 0x80000000) != 0)
  {
    v25 = ((((a1 + 159) & 0xFFFFFFFFFFFFFFF8) + v13 + 56) & ~v13);
    if (v10 >= a2)
    {
      if (v8 > 0x7FFFFFFE)
      {
        v27 = ((v25 + v12 + 8) & ~v12);
        v28 = a2 - v8;
        if (a2 >= v8)
        {
          if (v15 <= 3)
          {
            v31 = ~(-1 << (8 * v15));
          }

          else
          {
            v31 = -1;
          }

          if (v15)
          {
            v32 = v31 & v28;
            if (v15 <= 3)
            {
              v33 = v15;
            }

            else
            {
              v33 = 4;
            }

            bzero(v27, v15);
            if (v33 > 2)
            {
              if (v33 == 3)
              {
                *v27 = v32;
                v27[2] = BYTE2(v32);
              }

              else
              {
                *v27 = v32;
              }
            }

            else if (v33 == 1)
            {
              *v27 = v32;
            }

            else
            {
              *v27 = v32;
            }
          }
        }

        else
        {
          v29 = *(v6 + 56);
          v30 = a2 + 2;

          v29(v27, v30);
        }
      }

      else if (a2 > 0x7FFFFFFD)
      {
        *v25 = 0;
        *v25 = a2 - 2147483646;
      }

      else
      {
        *v25 = a2 + 1;
      }
    }

    else if (((v16 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v26 = a2 - v9;
      bzero(((((a1 + 159) & 0xFFFFFFFFFFFFFFF8) + v13 + 56) & ~v13), ((v16 + 7) & 0xFFFFFFF8) + 8);
      *v25 = v26;
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 34) = 0u;
    *(a1 + 30) = 0u;
    *(a1 + 26) = 0u;
    *(a1 + 22) = 0u;
    *(a1 + 18) = 0u;
    *(a1 + 14) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 2) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 18) = a2 - 1;
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ActionEventData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for ActionEventData(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

void type metadata completion function for ActionDefinition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ActionEventDefinition(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Array();
  type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v5 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for OpaquePointer?, MEMORY[0x1E69E6B70]);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ActionDefinition(unint64_t *a1, unsigned int a2, uint64_t a3)
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

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
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
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if (v6 > 0x7FFFFFFE)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if ((v19 + 1) >= 2)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for ActionDefinition(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
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

  v12 = ((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
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
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 > 0x7FFFFFFE)
  {
    v19 = ((a1 + v10 + 8) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 8) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
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
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2;
  }
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for AnyActionAnimation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyActionAnimation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

__n128 specialized ActionEventData.init(eventID:coreData:typeName:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (one-time initialization token for codableActionTypeMap != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = static AnimationResource.codableActionTypeMap;
  if (*(static AnimationResource.codableActionTypeMap + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5), (v14 & 1) != 0))
  {
    v15 = *(v12 + 56) + 56 * v13;
    v20 = *(v15 + 16);
    v21 = *v15;
    v16 = *(v15 + 32);
    v17 = *(v15 + 40);
    v18 = *(v15 + 48);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  swift_endAccess();
  *a6 = a1;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  result = v21;
  *(a6 + 40) = v20;
  *(a6 + 24) = v21;
  *(a6 + 56) = v16;
  *(a6 + 64) = v17;
  *(a6 + 72) = v18;
  return result;
}

uint64_t _s10RealityKit27AnimationPlaybackControllerC0A10Foundation15ActionEventDataVSbS2dAA8__EngineCSVAA6EntityCSgAD0G15HandlerProtocol_pSgIeggyyyygygr_AcFSbS2dAHSVAkMIegnnnnnnnnr_TRTA_0(uint64_t *a1, _OWORD *a2, unsigned __int8 *a3, double *a4, double *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 16);
  v10 = *a1;
  v11 = a2[3];
  v14[2] = a2[2];
  v14[3] = v11;
  v14[4] = a2[4];
  v12 = a2[1];
  v14[0] = *a2;
  v14[1] = v12;
  return v9(v10, v14, *a3, *a6, *a7, *a8, *a4, *a5);
}

uint64_t outlined init with copy of ActionHandlerProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ActionHandlerProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21ActionHandlerProtocol_pSgMd, &_s17RealityFoundation21ActionHandlerProtocol_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized static __RKVisibilityHidePopAnimation.createVisibilityHidePopAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, uint64_t a2, _BYTE *a3, char a4, float a5, float a6, float32x4_t a7)
{
  v59 = a1[1];
  if (*a3)
  {
    if (*a3 == 1)
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 73, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #1 of static __RKVisibilityHidePopAnimation.createVisibilityHidePopAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 117, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #2 of static __RKVisibilityHidePopAnimation.createVisibilityHidePopAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 151, 0, MEMORY[0x1E69E7CC0]);
    v9 = &outlined read-only object #0 of static __RKVisibilityHidePopAnimation.createVisibilityHidePopAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v9, &v61);
  rawValue = v61._rawValue;
  if (!*(v61._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v11 = rawValue[1].u64[0];
  if (v11)
  {
    v12 = &rawValue[3 * v11];
    v57 = *v12;
    v58 = *(v12 - 1);
    v56 = v12[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 + 1, 1, rawValue);
LABEL_9:
  a4 &= 1u;
  v11 = rawValue[1].u64[0];
  v14 = rawValue[1].u64[1];
  v15 = v11 + 1;
  if (v11 >= v14 >> 1)
  {
    v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v11 + 1, 1, rawValue);
    v15 = v11 + 1;
    rawValue = v55;
  }

  rawValue[1].i64[0] = v15;
  f32 = rawValue[3 * v11 + 2].f32;
  *f32 = v58;
  f32[1] = v57;
  f32[2] = v56;
  v61._rawValue = rawValue;
  v17 = 0.0;
  v18 = 4;
  v19 = v15;
  do
  {
    v20 = rawValue[v18];
    v21 = fabsf(v20.f32[0]);
    if ((LODWORD(v21) & 0x7FFFFF) != 0)
    {
      v22 = v17;
    }

    else
    {
      v22 = v21;
    }

    if ((~LODWORD(v21) & 0x7F800000) != 0)
    {
      v22 = v21;
    }

    if (v21 >= v17)
    {
      v17 = v22;
    }

    v23 = fabsf(v20.f32[1]);
    if (v23 >= v17)
    {
      if ((LODWORD(v23) & 0x7FFFFF) == 0)
      {
        v17 = v23;
      }

      if ((~LODWORD(v23) & 0x7F800000) != 0)
      {
        v17 = v23;
      }
    }

    v24 = fabsf(v20.f32[2]);
    if (v24 >= v17)
    {
      if ((~LODWORD(v24) & 0x7F800000) != 0)
      {
        v17 = v24;
      }

      else if ((LODWORD(v24) & 0x7FFFFF) == 0)
      {
        v17 = v24;
      }
    }

    v18 += 3;
    --v19;
  }

  while (v19);
  v25 = 0;
  v26 = a6 / v17;
  v27 = v17 <= 0.0;
  v28 = 1.0;
  if (!v27)
  {
    v28 = v26;
  }

  v29 = vmulq_f32(v59, v59);
  *v29.i8 = vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
  v29.i32[0] = vadd_f32(*v29.i8, vdup_lane_s32(*v29.i8, 1)).u32[0];
  v30 = vrecpe_f32(v29.u32[0]);
  v31 = vmul_f32(v30, vrecps_f32(v29.u32[0], v30));
  v32 = vmulq_n_f32(vmulq_f32(v59, xmmword_1C1899C90), vmul_f32(v31, vrecps_f32(v29.u32[0], v31)).f32[0]);
  v33 = vnegq_f32(a7);
  v34 = vtrn2q_s32(a7, vtrn1q_s32(a7, v33));
  v35 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a7, v33, 8uLL), *v32.f32, 1), vextq_s8(v34, v34, 8uLL), v32.f32[0]);
  v36 = vrev64q_s32(a7);
  v36.i32[0] = v33.i32[1];
  v36.i32[3] = v33.i32[2];
  v37 = vaddq_f32(v35, vmlaq_laneq_f32(vmulq_laneq_f32(a7, v32, 3), v36, v32, 2));
  v38 = vmulq_f32(v37, xmmword_1C1899C90);
  v39 = vnegq_f32(v38);
  v40 = vtrn2q_s32(v38, vtrn1q_s32(v38, v39));
  v41 = vextq_s8(v40, v40, 8uLL);
  v42 = vextq_s8(v38, v39, 8uLL);
  v43 = vrev64q_s32(v38);
  v43.i32[0] = v39.i32[1];
  v43.i32[3] = v39.i32[2];
  v44 = vdupq_lane_s32(*v37.f32, 0);
  v45 = vdupq_laneq_s32(v37, 2);
  v46 = 4;
  do
  {
    if (v25 > v11)
    {
      __break(1u);
      goto LABEL_40;
    }

    v47 = vsubq_f32(rawValue[v46], rawValue[4]);
    v48 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v42, vmuls_lane_f32(v28, *v47.f32, 1)), v41, v28 * v47.f32[0]), v43, vmuls_lane_f32(v28, v47, 2));
    v49 = vnegq_f32(v48);
    v50 = vtrn2q_s32(v48, vtrn1q_s32(v48, v49));
    v51 = vrev64q_s32(v48);
    v51.i32[0] = v49.i32[1];
    v51.i32[3] = v49.i32[2];
    v52 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v48, v37, 3), v51, v45), vmlaq_f32(vmulq_lane_f32(vextq_s8(v48, v49, 8uLL), *v37.f32, 1), vextq_s8(v50, v50, 8uLL), v44));
    v52.i32[3] = v13;
    ++v25;
    rawValue[v46] = v52;
    v46 += 3;
  }

  while (v11 + 1 != v25);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v54 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AudioMixGroup.init(_name:id:gain:speed:isMuted:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v12 = result;
  if (a4)
  {
    result = REAudioMixGroupsComponentCreateMixGroupID();
    a3 = result;
  }

  *a6 = a3;
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  *(a6 + 24) = 0;
  *(a6 + 32) = 1;
  *(a6 + 40) = v12;
  *(a6 + 48) = a2;
  *(a6 + 56) = a7;
  *(a6 + 64) = a8;
  *(a6 + 72) = a5 & 1;
  return result;
}

uint64_t AudioMixGroup.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AudioMixGroup.gain.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*result + 33) = 1;
  }

  return result;
}

double AudioMixGroup.init(name:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = REAudioMixGroupsComponentCreateMixGroupID();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;
  result = 0.0;
  *(a3 + 56) = xmmword_1C18B1340;
  *(a3 + 72) = 0;
  return result;
}

Swift::Void __swiftcall AudioMixGroup.fade(to:duration:)(Swift::Double to, Swift::Double duration)
{
  *(v2 + 8) = to;
  *(v2 + 16) = 0;
  *(v2 + 24) = duration;
  *(v2 + 32) = 0;
}

uint64_t static AudioMixGroup.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = *(a1 + 72);
  v6 = *(a2 + 56);
  v5 = *(a2 + 64);
  v7 = *(a2 + 72);
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    if (v3 != v6 || v2 != v5)
    {
      return 0;
    }

    return v4 ^ v7 ^ 1u;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v9 & 1) != 0 && v3 == v6 && v2 == v5)
  {
    return v4 ^ v7 ^ 1u;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AudioMixGroup(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = *(a1 + 72);
  v6 = *(a2 + 56);
  v5 = *(a2 + 64);
  v7 = *(a2 + 72);
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    if (v3 != v6 || v2 != v5)
    {
      return 0;
    }

    return v4 ^ v7 ^ 1u;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v9 & 1) != 0 && v3 == v6 && v2 == v5)
  {
    return v4 ^ v7 ^ 1u;
  }

  return result;
}

void AudioMixGroup.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  String.hash(into:)();
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1C68F4C50](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1C68F4C50](*&v6);
  Hasher._combine(_:)(v4);
}

Swift::Int AudioMixGroup.hashValue.getter()
{
  Hasher.init(_seed:)();
  AudioMixGroup.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioMixGroup()
{
  Hasher.init(_seed:)();
  AudioMixGroup.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioMixGroup()
{
  Hasher.init(_seed:)();
  AudioMixGroup.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t AudioMixGroup.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19[-v6];
  v8 = v0[1];
  v9 = v0[3];
  v25 = v0[2];
  *v26 = v9;
  *&v26[9] = *(v0 + 57);
  v10 = v0[1];
  v24[0] = *v0;
  v24[1] = v10;
  v11 = v0[3];
  v22 = v25;
  v23[0] = v11;
  *(v23 + 9) = *(v0 + 57);
  v20 = v24[0];
  v21 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C189FFC0;
  v13 = *&v26[16];
  *(v12 + 96) = *&v26[8];
  *(v12 + 32) = 1701667182;
  *(v12 + 40) = 0xE400000000000000;
  v14 = *v26;
  v15 = MEMORY[0x1E69E6158];
  *(v12 + 48) = *(&v25 + 1);
  *(v12 + 56) = v14;
  *(v12 + 72) = v15;
  *(v12 + 80) = 1852399975;
  *(v12 + 88) = 0xE400000000000000;
  v16 = MEMORY[0x1E69E63B0];
  *(v12 + 120) = MEMORY[0x1E69E63B0];
  *(v12 + 128) = 0x6465657073;
  *(v12 + 136) = 0xE500000000000000;
  *(v12 + 144) = v13;
  *(v12 + 168) = v16;
  *(v12 + 176) = 0x646574754D7369;
  *(v12 + 184) = 0xE700000000000000;
  LOBYTE(v16) = v26[24];
  *(v12 + 216) = MEMORY[0x1E69E6370];
  *(v12 + 192) = v16;
  v17 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  outlined init with copy of AudioMixGroup(v24, v19);
  outlined init with copy of AudioMixGroup(v24, v19);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

unint64_t lazy protocol witness table accessor for type AudioMixGroup and conformance AudioMixGroup()
{
  result = lazy protocol witness table cache variable for type AudioMixGroup and conformance AudioMixGroup;
  if (!lazy protocol witness table cache variable for type AudioMixGroup and conformance AudioMixGroup)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioMixGroup, &type metadata for AudioMixGroup, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioMixGroup and conformance AudioMixGroup);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioMixGroup(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioMixGroup(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double DockingRegionComponent.width.setter(float32_t a1)
{
  v1[2].f32[0] = a1;
  REAABBInit();
  *v1 = v2;
  v1[1] = v3;
  *&result = vsubq_f32(v3, v2).u64[0];
  v1[2].i32[0] = LODWORD(result);
  return result;
}

double DockingRegionComponent.setBounds()()
{
  REAABBInit();
  *v0 = v1;
  v0[1] = v2;
  *&result = vsubq_f32(v2, v1).u64[0];
  v0[2].i32[0] = LODWORD(result);
  return result;
}

void (*DockingRegionComponent.width.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32);
  return DockingRegionComponent.width.modify;
}

void DockingRegionComponent.width.modify(float *a1)
{
  v1 = *a1;
  *(*a1 + 32) = a1[2];
  REAABBInit();
  *v1 = v2;
  v1[1] = v3;
  v1[2].i32[0] = vsubq_f32(v3, v2).u32[0];
}

void DockingRegionComponent.init()(uint64_t a1@<X8>)
{
  REAABBEmpty();
  *a1 = v2;
  *(a1 + 16) = v3;
  *(a1 + 32) = 0;
}

void protocol witness for static Component.__fromCore(_:) in conformance DockingRegionComponent(float32x4_t *a2@<X8>)
{
  REAABBEmpty();
  REDockingRegionComponentGetBounds();
  *a2 = v3;
  a2[1] = v4;
  a2[2].i32[0] = vsubq_f32(v4, v3).u32[0];
}

void static DockingRegionComponent.__fromCore(_:)(float32x4_t *a2@<X8>)
{
  REAABBEmpty();
  REDockingRegionComponentGetBounds();
  *a2 = v3;
  a2[1] = v4;
  a2[2].i32[0] = vsubq_f32(v4, v3).u32[0];
}

uint64_t protocol witness for Component.__toCore(_:) in conformance DockingRegionComponent(void *a1)
{
  REDockingRegionComponentSetBounds();

  return RENetworkMarkComponentDirty();
}

uint64_t DockingRegionComponent.__toCore(_:)(void *a1)
{
  REDockingRegionComponentSetBounds();

  return RENetworkMarkComponentDirty();
}

uint64_t DockingRegionComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = *(v0 + 16);
  v9 = *(v0 + 32);
  v13[0] = *v0;
  v13[1] = v8;
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1887600;
  *(v10 + 32) = 0x6874646977;
  *(v10 + 40) = 0xE500000000000000;
  *(v10 + 72) = MEMORY[0x1E69E6448];
  *(v10 + 48) = v9;
  v11 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CustomReflectable.customMirror.getter in conformance DockingRegionComponent(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  v9 = *(v1 + 16);
  v10 = *(v1 + 32);
  v14[0] = *v1;
  v14[1] = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1887600;
  *(v11 + 32) = 0x6874646977;
  *(v11 + 40) = 0xE500000000000000;
  *(v11 + 72) = MEMORY[0x1E69E6448];
  *(v11 + 48) = v10;
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

__n128 __swift_memcpy36_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DockingRegionComponent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DockingRegionComponent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 36) = v3;
  return result;
}

uint64_t __RKEntityGlobalTapTrigger.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

BOOL __RKEntityGlobalTapTrigger.matches(with:)(uint64_t a1)
{
  type metadata accessor for __RKEntityGlobalTapTrigger();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for __RKEntityTriggerGroup();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  if (v4 >> 62)
  {
LABEL_20:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v1 = v5 != v6;
    if (v5 == v6)
    {
      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C68F41F0](v6, v4);
      if (__OFADD__(v6, 1))
      {
LABEL_15:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_20;
      }

      v7 = *(v4 + 8 * v6 + 32);

      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }
    }

    v8 = __RKEntityGlobalTapTrigger.matches(with:)(v7);

    ++v6;
  }

  while ((v8 & 1) == 0);

  return v1;
}

BOOL __RKEntityTapPointTrigger.matches(with:)(uint64_t a1)
{
  type metadata accessor for __RKEntityTapPointTrigger();
  v2 = swift_dynamicCastClass();
  if (v2 && vabdd_f64(*(v2 + 24), v1[3]) <= v1[5] && vabdd_f64(*(v2 + 32), v1[4]) <= v1[6])
  {
    return 1;
  }

  type metadata accessor for __RKEntityTriggerGroup();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  swift_beginAccess();
  v5 = *(v4 + 24);
  if (v5 >> 62)
  {
LABEL_22:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  do
  {
    v8 = v6 != v7;
    if (v6 == v7)
    {
      break;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C68F41F0](v7, v5);
      if (__OFADD__(v7, 1))
      {
LABEL_16:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v9 = *(v5 + 8 * v7 + 32);

      if (__OFADD__(v7, 1))
      {
        goto LABEL_16;
      }
    }

    v10 = __RKEntityTapPointTrigger.matches(with:)(v9);

    ++v7;
  }

  while ((v10 & 1) == 0);

  return v8;
}

__n128 __RKEntityTapPointTrigger.copy(with:)@<Q0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for __RKEntityTapPointTrigger();
  v4 = swift_allocObject();
  result = *(v1 + 24);
  *(v4 + 40) = *(v1 + 40);
  *(v4 + 24) = result;
  *(v4 + 16) = 0;
  *(v4 + 18) = 0;
  a1[3] = v3;
  *a1 = v4;
  return result;
}

uint64_t __RKEntityTapTrigger.targetEntity.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t __RKEntityTapTrigger.__allocating_init(targetEntity:reversible:)(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_beginAccess();
  *(v5 + 24) = a1;
  *(v5 + 16) = 0;
  *(v5 + 18) = 0;
  if (v4 != 2)
  {
    swift_beginAccess();
    *(v5 + 16) = a2 & 1;
  }

  return v5;
}

uint64_t __RKEntityTapTrigger.init(targetEntity:reversible:)(uint64_t a1, unsigned __int8 a2)
{
  v5 = a2;
  *(v2 + 24) = 0;
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
  if (v5 != 2)
  {
    swift_beginAccess();
    *(v2 + 16) = a2 & 1;
  }

  return v2;
}

uint64_t __RKEntityTapTrigger.matches(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v48 - v15;
  v55 = v1;
  v58 = 91;
  v59 = 0xE100000000000000;
  v56 = 0;
  v57 = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](v56, v57);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v16 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v16);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v17 = v58;
  v18 = v59;
  type metadata accessor for __RKEntityTapTrigger();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    v58 = v17;
    v59 = v18;
    v22 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v22, &v58);
    goto LABEL_16;
  }

  v20 = v19;
  v58 = v17;
  v59 = v18;

  v21 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v21, &v58);
  v58 = v17;
  v59 = v18;
  static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)();
  v58 = v17;
  v59 = v18;
  static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)();
  v58 = v17;
  v59 = v18;
  static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)();
  v50 = v17;
  v58 = v17;
  v59 = v18;
  static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)();
  swift_beginAccess();
  if (*(v2 + 24))
  {

    Entity.__interactionIdentifier.getter(v54);
  }

  else
  {
    (*(v5 + 56))(v54, 1, 1, v4);
  }

  v49 = v18;
  swift_beginAccess();
  v23 = *(v20 + 24);
  v51 = a1;
  v24 = v9;
  if (v23)
  {

    v25 = v53;
    Entity.__interactionIdentifier.getter(v53);

    v26 = v4;
  }

  else
  {
    v25 = v53;
    v26 = v4;
    (*(v5 + 56))(v53, 1, 1, v4);
  }

  v27 = *(v7 + 48);
  v28 = v54;
  outlined init with copy of UUID?(v54, v24);
  outlined init with copy of UUID?(v25, v24 + v27);
  v29 = *(v5 + 48);
  if (v29(v24, 1, v26) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v25, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of BodyTrackingComponent?(v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v29(v24 + v27, 1, v26) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v17 = v50;
      goto LABEL_31;
    }
  }

  else
  {
    v30 = v5;
    v31 = v52;
    outlined init with copy of UUID?(v24, v52);
    if (v29(v24 + v27, 1, v26) != 1)
    {
      v41 = *(v30 + 32);
      v42 = v24 + v27;
      v43 = v30;
      v44 = v48;
      v41(v48, v42, v26);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v46 = *(v43 + 8);
      v46(v44, v26);
      outlined destroy of BodyTrackingComponent?(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of BodyTrackingComponent?(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v46(v31, v26);
      outlined destroy of BodyTrackingComponent?(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v17 = v50;
      if (v45)
      {
LABEL_31:
        v58 = v17;
        v59 = v49;
        v47 = static os_log_type_t.info.getter();
        specialized InteractionsLogger.log(_:_:)(v47, &v58);

        return 1;
      }

      goto LABEL_15;
    }

    outlined destroy of BodyTrackingComponent?(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of BodyTrackingComponent?(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v30 + 8))(v31, v26);
  }

  outlined destroy of BodyTrackingComponent?(v24, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v17 = v50;
LABEL_15:
  v18 = v49;
  v58 = v17;
  v59 = v49;
  v32 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v32, &v58);

LABEL_16:
  v58 = v17;
  v59 = v18;
  v33 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v33, &v58);

  type metadata accessor for __RKEntityTriggerGroup();
  result = swift_dynamicCastClass();
  if (result)
  {
    v35 = result;
    swift_beginAccess();
    v36 = *(v35 + 24);
    if (v36 >> 62)
    {
LABEL_35:
      v37 = __CocoaSet.count.getter();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v37 != i; ++i)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1C68F41F0](i, v36);
        if (__OFADD__(i, 1))
        {
LABEL_28:
          __break(1u);
          break;
        }
      }

      else
      {
        if (i >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_35;
        }

        v39 = *(v36 + 8 * i + 32);

        if (__OFADD__(i, 1))
        {
          goto LABEL_28;
        }
      }

      v40 = __RKEntityTapTrigger.matches(with:)(v39);

      if (v40)
      {

        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t implicit closure #2 in __RKEntityTapTrigger.matches(with:)(uint64_t a1)
{
  _StringGuts.grow(_:)(22);

  swift_beginAccess();
  if (*(a1 + 24))
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1C68F3410](v2, v3);

  return 0xD000000000000014;
}

unint64_t implicit closure #4 in __RKEntityTapTrigger.matches(with:)(uint64_t a1)
{
  v2 = 7104878;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  v17[1] = 0;
  v17[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v18 = 0xD00000000000001DLL;
  v19 = 0x80000001C18E6970;
  swift_beginAccess();
  if (*(a1 + 24))
  {

    Entity.__interactionIdentifier.getter(v12);

    outlined init with copy of UUID?(v12, v9);
    if ((*(v4 + 48))(v9, 1, v3) == 1)
    {
      v13 = 0xE300000000000000;
    }

    else
    {
      v14 = (*(v4 + 32))(v6, v9, v3);
      v2 = MEMORY[0x1C68F24B0](v14);
      v13 = v15;
      (*(v4 + 8))(v6, v3);
    }

    outlined destroy of BodyTrackingComponent?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  MEMORY[0x1C68F3410](v2, v13);

  return v18;
}

unint64_t implicit closure #6 in __RKEntityTapTrigger.matches(with:)(uint64_t a1)
{
  _StringGuts.grow(_:)(24);

  swift_beginAccess();
  if (*(a1 + 24))
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1C68F3410](v2, v3);

  return 0xD000000000000016;
}

unint64_t implicit closure #8 in __RKEntityTapTrigger.matches(with:)(uint64_t a1)
{
  v2 = 7104878;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  v17[1] = 0;
  v17[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v18 = 0xD00000000000001FLL;
  v19 = 0x80000001C18E6930;
  swift_beginAccess();
  if (*(a1 + 24))
  {

    Entity.__interactionIdentifier.getter(v12);

    outlined init with copy of UUID?(v12, v9);
    if ((*(v4 + 48))(v9, 1, v3) == 1)
    {
      v13 = 0xE300000000000000;
    }

    else
    {
      v14 = (*(v4 + 32))(v6, v9, v3);
      v2 = MEMORY[0x1C68F24B0](v14);
      v13 = v15;
      (*(v4 + 8))(v6, v3);
    }

    outlined destroy of BodyTrackingComponent?(v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  MEMORY[0x1C68F3410](v2, v13);

  return v18;
}

double __RKEntityTapTrigger.copy(with:)@<D0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = type metadata accessor for __RKEntityTapTrigger();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_beginAccess();
  *(v6 + 24) = v3;
  *(v6 + 16) = 0;
  *(v6 + 18) = 0;
  swift_beginAccess();
  *(v6 + 16) = v4;
  a1[3] = v5;
  *a1 = v6;

  return result;
}

uint64_t __RKEntityTapTrigger.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (!v5 || *(v5 + 16) != *(a1 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(v2 + 16);
  type metadata accessor for __RKEntityTapTrigger();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_beginAccess();
  *(v8 + 24) = a2;
  *(v8 + 16) = 0;
  *(v8 + 18) = 0;
  swift_beginAccess();
  *(v8 + 16) = v7;

  return v8;
}

uint64_t __RKEntityTapTrigger.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized HasTransform.position.setter(__n128 a1)
{
  v2 = v1;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v10);
  if ((v11 & 1) == 0)
  {
    v3 = v10[0];
    v4 = v10[1];
    v5 = v10[2];
    v6 = v10[3];
    goto LABEL_5;
  }

  if (one-time initialization token for identity != -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v4 = *(&static Transform.identity + 1);
    v3 = static Transform.identity;
    v6 = *(&xmmword_1EBEB2BB0 + 1);
    v5 = xmmword_1EBEB2BB0;
LABEL_5:
    v12[0] = v3;
    v12[1] = v4;
    v12[2] = v5;
    v12[3] = v6;
    v13 = a1;
    v14 = 0;

    _s10RealityKit6EntityC12ComponentSetV0A10FoundationEyxSgxmcAF028_ImplicitlyAnimatableBuiltinD0RzluisAA9TransformV_Tt0g5(v12);
    v7 = *(v2 + 16);

    if (v7 == *(v2 + 16))
    {
      break;
    }

    __break(1u);
LABEL_7:
    swift_once();
  }

  return result;
}

uint64_t __RKEntityOrbitEntityAction.__allocating_init(targetEntity:pivotEntity:duration:rotations:orbitalAxis:orientToPath:spinDirection:respectPhysics:physicsAngularCoefficient:physicsLinearCoefficient:loop:)(uint64_t a1, uint64_t a2, char a3, char *a4, char a5, char a6, float a7, float a8, __n128 a9, float a10, float a11)
{
  v21 = swift_allocObject();
  v22 = *a4;
  *(v21 + 160) = 0u;
  *(v21 + 176) = 0u;
  *(v21 + 192) = 0u;
  *(v21 + 208) = 0u;
  *(v21 + 224) = 0u;
  *(v21 + 240) = 0u;
  *(v21 + 256) = 0u;
  *(v21 + 272) = 0u;
  *(v21 + 288) = 1;
  *(v21 + 296) = 0;
  *(v21 + 304) = 0;
  *(v21 + 320) = 0u;
  *(v21 + 336) = 0u;
  *(v21 + 352) = 1;
  *(v21 + 112) = a2;
  *(v21 + 120) = a7;
  *(v21 + 124) = a8;
  *(v21 + 128) = a9;
  *(v21 + 144) = a3;
  *(v21 + 145) = v22;
  *(v21 + 148) = a10;
  *(v21 + 152) = a11;
  *(v21 + 146) = a5;
  *(v21 + 354) = a6;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityOrbitEntityAction.init(targetEntity:pivotEntity:duration:rotations:orbitalAxis:orientToPath:spinDirection:respectPhysics:physicsAngularCoefficient:physicsLinearCoefficient:loop:)(uint64_t a1, uint64_t a2, char a3, char *a4, char a5, char a6, float a7, float a8, __n128 a9, float a10, float a11)
{
  v12 = *a4;
  *(v11 + 160) = 0u;
  *(v11 + 176) = 0u;
  *(v11 + 192) = 0u;
  *(v11 + 208) = 0u;
  *(v11 + 224) = 0u;
  *(v11 + 240) = 0u;
  *(v11 + 256) = 0u;
  *(v11 + 272) = 0u;
  *(v11 + 288) = 1;
  *(v11 + 296) = 0;
  *(v11 + 304) = 0;
  *(v11 + 320) = 0u;
  *(v11 + 336) = 0u;
  *(v11 + 352) = 1;
  *(v11 + 112) = a2;
  *(v11 + 120) = a7;
  *(v11 + 124) = a8;
  *(v11 + 128) = a9;
  *(v11 + 144) = a3;
  *(v11 + 145) = v12;
  *(v11 + 148) = a10;
  *(v11 + 152) = a11;
  *(v11 + 146) = a5;
  *(v11 + 354) = a6;
  return __RKEntityAction.init(targetEntity:)(a1);
}

uint64_t __RKEntityOrbitEntityAction.perform(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v114 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMd, &_s7Combine10PublishersO10CompactMapVy_10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGAF15AnimationEventsO08PlaybackL0VGMR);
  v129 = *(v8 - 1);
  v130 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v114 - v9;
  v131 = *(a1 + 8);
  swift_beginAccess();
  v11 = *(v2 + 16);
  v138 = 91;
  v139 = 0xE100000000000000;
  if (v11)
  {
    v150 = 0;
    v151 = 0xE000000000000000;
    v147[0] = v11;

    _print_unlocked<A, B>(_:_:)();
    v12 = v150;
    v13 = v151;
  }

  else
  {
    v13 = 0xE300000000000000;
    v12 = 7104878;
  }

  MEMORY[0x1C68F3410](v12, v13);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v14 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v14);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v15 = v139;
  v16 = *(v2 + 16);
  if (!v16)
  {
    static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)();

    return 0;
  }

  v17 = *(v2 + 112);
  if (!v17)
  {

    v19 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v19, &v138);

LABEL_33:

    return 0;
  }

  v128 = v138;
  swift_beginAccess();
  if (*(v2 + 104) == 1 && *(v2 + 96) == 1)
  {
    swift_beginAccess();
    if (*(v2 + 105) == 1)
    {

LABEL_17:
      v138 = v128;
      v139 = v15;
      static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)();

LABEL_32:

      goto LABEL_33;
    }
  }

  if (!RESceneGetECSManagerNullable())
  {
    goto LABEL_17;
  }

  v125 = v7;
  v126 = v4;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(v147);
  if (v149)
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v18 = xmmword_1EBEB2BC0;
  }

  else
  {
    v18 = v148;
  }

  v127 = v18;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(&v150);
  if (v153)
  {
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v20 = xmmword_1EBEB2BC0;
  }

  else
  {
    v20 = v152;
  }

  v21 = vmovn_s32(vceqq_f32(v127, v20));
  if ((v21.i8[0] & 1) != 0 && (v21.i16[1] & v21.i16[2] & 1) != 0 || *(v2 + 120) <= 0.0)
  {

    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    *(v2 + 96) = 4;
    *(v2 + 104) = 1;
    v138 = v29;
    LOBYTE(v139) = v30;
    __RKEntityAction.state.didset(&v138);
    goto LABEL_32;
  }

  v138 = v128;
  v139 = v15;
  static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)();
  v22 = *(v2 + 96);
  v23 = *(v2 + 104);
  *(v2 + 96) = 1;
  *(v2 + 104) = 1;
  v138 = v22;
  LOBYTE(v139) = v23;
  __RKEntityAction.state.didset(&v138);
  v24 = *(v16 + 16);
  RETransformComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    goto LABEL_47;
  }

  *&v127 = v5;
  RETransformComponentGetLocalPose();
  *(v2 + 320) = v25;
  *(v2 + 336) = v26;
  *(v2 + 352) = 0;
  RERigidBodyComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    MotionType = RERigidBodyComponentGetMotionType();
    if (MotionType != 1)
    {
      RERigidBodyComponentSetMotionType();
      RENetworkMarkComponentDirty();
    }
  }

  else
  {
    MotionType = 0;
  }

  if (!REEntityGetSceneNullable() || !RESceneGetECSManagerNullable() || (ServiceLocator = REECSManagerGetServiceLocator(), (v124 = MEMORY[0x1C68FE1F0](ServiceLocator)) == 0) || (v120 = ComponentByClass, LODWORD(v121) = MotionType, REAnimationComponentGetComponentType(), v119 = REEntityGetOrAddComponentByClass(), (v33 = Entity.rcSceneEntity.getter()) == 0))
  {
LABEL_47:

    goto LABEL_33;
  }

  v34 = v33;
  v118 = v24;
  v123 = type metadata accessor for Entity();
  v35 = swift_allocObject();
  *(v2 + 304) = Entity.init()(v35);

  specialized HasHierarchy.setParent(_:preservingWorldTransform:)(v36, 1);

  if (*(v2 + 304))
  {

    *v37.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v17, v34);
    *v41.i64 = simd_float4x4.transform(position:)(0, v37, v38, v39, v40);
    v122 = v41;

    specialized HasTransform.position.setter(v122);

    *(v2 + 296) = specialized HasHierarchy.parent.getter();

    RETransformComponentGetWorldUnanimatedMatrix4x4F();
    v122 = v42;
    v116 = v44;
    v117 = v43;
    v115 = v45;
    RETransformComponentGetWorldMatrix4x4F();
    v114[2] = v47;
    v114[3] = v46;
    v114[0] = v49;
    v114[1] = v48;

    specialized HasHierarchy.setParent(_:preservingWorldTransform:)(v50, 0);

    RETransformComponentSetWorldMatrix4x4F();
    RETransformComponentSetWorldAnimatedMatrix4x4F();
    RENetworkMarkComponentDirty();
    v122 = *(v2 + 128);
    *v51.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v34, 0);
    v54 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, v122.f32[0]), v52, *v122.f32, 1), v53, v122, 2);
    v55 = vmulq_f32(v54, v54);
    v53.f32[0] = v55.f32[2] + vaddv_f32(*v55.f32);
    *v55.f32 = vrsqrte_f32(v53.u32[0]);
    *v55.f32 = vmul_f32(*v55.f32, vrsqrts_f32(v53.u32[0], vmul_f32(*v55.f32, *v55.f32)));
    v122 = vmulq_n_f32(v54, vmul_f32(*v55.f32, vrsqrts_f32(v53.u32[0], vmul_f32(*v55.f32, *v55.f32))).f32[0]);
    *v56.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v17, 0);
    *v60.i64 = simd_float4x4.transform(position:)(0, v56, v57, v58, v59);
    v117 = v60;
    *v61.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v16, 0);
    *v65.i64 = simd_float4x4.transform(position:)(0, v61, v62, v63, v64);
    v66 = vsubq_f32(v117, v65);
    v67 = vmulq_f32(v66, v66);
    *&v68 = v67.f32[2] + vaddv_f32(*v67.f32);
    *v67.f32 = vrsqrte_f32(v68);
    *v67.f32 = vmul_f32(*v67.f32, vrsqrts_f32(v68, vmul_f32(*v67.f32, *v67.f32)));
    v69 = vmulq_n_f32(v66, vmul_f32(*v67.f32, vrsqrts_f32(v68, vmul_f32(*v67.f32, *v67.f32))).f32[0]);
    v70 = vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL);
    v71 = vmlaq_f32(vmulq_f32(v70, vnegq_f32(v122)), v69, vextq_s8(vuzp1q_s32(v122, v122), v122, 0xCuLL));
    v72 = vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL);
    v73 = vmulq_f32(v71, v71);
    *&v74 = v73.f32[1] + (v73.f32[2] + v73.f32[0]);
    *v73.f32 = vrsqrte_f32(v74);
    *v73.f32 = vmul_f32(*v73.f32, vrsqrts_f32(v74, vmul_f32(*v73.f32, *v73.f32)));
    v75 = vmulq_n_f32(v72, vmul_f32(*v73.f32, vrsqrts_f32(v74, vmul_f32(*v73.f32, *v73.f32))).f32[0]);
    v76 = vmlaq_f32(vmulq_f32(v70, vnegq_f32(v75)), v69, vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL));
    v77 = vextq_s8(vuzp1q_s32(v76, v76), v76, 0xCuLL);
    v78 = vmulq_f32(v76, v76);
    v73.f32[0] = v78.f32[1] + (v78.f32[2] + v78.f32[0]);
    *v78.f32 = vrsqrte_f32(v73.u32[0]);
    *v78.f32 = vmul_f32(*v78.f32, vrsqrts_f32(v73.u32[0], vmul_f32(*v78.f32, *v78.f32)));
    v122 = vmulq_n_f32(v77, vmul_f32(*v78.f32, vrsqrts_f32(v73.u32[0], vmul_f32(*v78.f32, *v78.f32))).f32[0]);
    RETransformComponentGetLocalUnanimatedSRT();
    v116 = v79;
    v117 = v80;
    v115 = v81;
    if (*(v2 + 145))
    {
      v82 = 0x80000001C18DDB90;
    }

    else
    {
      v82 = 0xE900000000000065;
    }

    if ((*(v2 + 145) & 1) != 0 || v82 != 0xE900000000000065)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v122.i64[0] = REAssetManagerTimelineAssetCreateOrbitAnimation();
    REAnimationClipDefaultParametersEx();
    v145 = v140;
    v146 = v141;
    if (*(v2 + 354))
    {
      v83 = v142;
      v84 = 1;
    }

    else
    {
      v84 = v143;
      v83 = *(v2 + 120);
    }

    v117.i64[0] = v34;
    v139 = "Transform.transform";
    v140 = v145;
    v141 = v146;
    v142 = v83;
    v143 = v84;
    v144 = 1;
    if (REAssetManagerTimelineAssetCreateSRTAnimationClipEx())
    {
      v138 = 4;
      LODWORD(v139) = 4096;
      *&v140 = "ORBIT";
      BYTE8(v140) = 0;
      *(v2 + 280) = REAnimationComponentPlay();
      *(v2 + 288) = 0;
      RERelease();
    }

    v85 = v120 == 0;
    v86 = swift_allocObject();
    swift_weakInit();
    v87 = swift_allocObject();
    v88 = v118;
    *(v87 + 16) = v86;
    *(v87 + 24) = v88;
    *(v87 + 32) = v121;
    *(v87 + 36) = v85;
    v89 = *(v2 + 32);
    v90 = *(v2 + 40);
    *(v2 + 32) = partial apply for specialized closure #1 in __RKEntityOrbitEntityAction.perform(with:);
    *(v2 + 40) = v87;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v89, v90);

    v137 = 0;
    v135 = 0u;
    v136 = 0u;
    v91 = swift_allocObject();
    swift_weakInit();
    _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6UpdateV_Tt0g5(&v135, partial apply for closure #2 in __RKEntityOrbitEntityAction.perform(with:), v91, &v138);

    outlined destroy of BodyTrackingComponent?(&v135, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v138, v2 + 160);
    swift_endAccess();
    *(&v136 + 1) = v123;
    v137 = &protocol witness table for Entity;
    *&v135 = v16;
    v121 = swift_allocObject();
    swift_weakInit();

    Scene.eventService.getter(&v138);
    v92 = *(&v140 + 1);
    v93 = v141;
    __swift_project_boxed_opaque_existential_1(&v138, *(&v140 + 1));
    type metadata accessor for REAnimationHasCompletedEvent(0);
    EventService.publisher<A>(for:on:)(v94, &v135, v92, v94, v93);
    v95 = v132;
    v96 = v133;
    v97 = v134;
    __swift_destroy_boxed_opaque_existential_1(&v138);
    *(swift_allocObject() + 16) = 0;
    v138 = v95;
    v139 = v96;
    *&v140 = v97;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR);
    v124 = protocol conformance descriptor for Scene.CorePublisher<A>;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasCompletedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So28REAnimationHasCompletedEventVGMR, protocol conformance descriptor for Scene.CorePublisher<A>);
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So28REAnimationHasCompletedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v98 = swift_allocObject();
    (*(v129 + 32))(&v98[*(*v98 + *MEMORY[0x1E695BEE8] + 16)], v10, v130);
    v138 = v98;
    v99 = swift_allocObject();
    v100 = v121;
    *(v99 + 16) = partial apply for closure #3 in __RKEntityOrbitEntityAction.perform(with:);
    *(v99 + 24) = v100;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR);
    v130 = protocol conformance descriptor for Scene.Publisher<A>;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackCompleted> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO17PlaybackCompletedVGMR, protocol conformance descriptor for Scene.Publisher<A>);
    v101 = Publisher<>.sink(receiveValue:)();

    v129 = type metadata accessor for AnyCancellable();
    *(&v140 + 1) = v129;
    *&v141 = MEMORY[0x1E695BF08];

    v138 = v101;
    outlined destroy of BodyTrackingComponent?(&v135, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v138, v2 + 200);
    swift_endAccess();
    *(&v136 + 1) = v123;
    v137 = &protocol witness table for Entity;
    *&v135 = v16;
    v102 = swift_allocObject();
    swift_weakInit();

    Scene.eventService.getter(&v138);
    v103 = *(&v140 + 1);
    v104 = v141;
    __swift_project_boxed_opaque_existential_1(&v138, *(&v140 + 1));
    type metadata accessor for REAnimationHasTerminatedEvent(0);
    EventService.publisher<A>(for:on:)(v105, &v135, v103, v105, v104);
    v106 = v132;
    v107 = v133;
    v108 = v134;
    __swift_destroy_boxed_opaque_existential_1(&v138);
    *(swift_allocObject() + 16) = 0;
    v138 = v106;
    v139 = v107;
    *&v140 = v108;

    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.CorePublisher<REAnimationHasTerminatedEvent> and conformance Scene.CorePublisher<A>, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMd, &_s10RealityKit5SceneC13CorePublisherVy_So29REAnimationHasTerminatedEventVGMR, v124);
    v109 = v125;
    Publisher.compactMap<A>(_:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMd, &_s7Combine12PublisherBoxCyAA10PublishersO10CompactMapVy_10RealityKit5SceneC04CoreB0Vy_So29REAnimationHasTerminatedEventVGAH15AnimationEventsO08PlaybackM0VGGMR);
    v110 = swift_allocObject();
    (*(v127 + 32))(&v110[*(*v110 + *MEMORY[0x1E695BEE8] + 16)], v109, v126);
    v138 = v110;
    v111 = swift_allocObject();
    *(v111 + 16) = partial apply for closure #4 in __RKEntityOrbitEntityAction.perform(with:);
    *(v111 + 24) = v102;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<AnimationEvents.PlaybackTerminated> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMd, &_s10RealityKit5SceneC9PublisherVy_AA15AnimationEventsO18PlaybackTerminatedVGMR, v130);
    v112 = Publisher<>.sink(receiveValue:)();

    *(&v140 + 1) = v129;
    *&v141 = MEMORY[0x1E695BF08];

    v138 = v112;
    outlined destroy of BodyTrackingComponent?(&v135, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v138, v2 + 240);
    swift_endAccess();
    v138 = v128;
    v139 = v15;
    v113 = static os_log_type_t.debug.getter();
    specialized InteractionsLogger.log(_:_:)(v113, &v138);

    RERelease();

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in __RKEntityOrbitEntityAction.perform(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v5 = result;
  swift_beginAccess();
  outlined init with copy of Cancellable?(v5 + 160, &v10);
  if (*(&v11 + 1))
  {
    outlined init with copy of __REAssetService(&v10, v8);
    outlined destroy of BodyTrackingComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    __swift_project_boxed_opaque_existential_1(v8, v9);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }

  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v10, v5 + 160);
  swift_endAccess();
  swift_beginAccess();
  outlined init with copy of Cancellable?(v5 + 200, &v10);
  if (*(&v11 + 1))
  {
    outlined init with copy of __REAssetService(&v10, v8);
    outlined destroy of BodyTrackingComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    __swift_project_boxed_opaque_existential_1(v8, v9);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }

  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v10, v5 + 200);
  swift_endAccess();
  swift_beginAccess();
  outlined init with copy of Cancellable?(v5 + 240, &v10);
  if (*(&v11 + 1))
  {
    outlined init with copy of __REAssetService(&v10, v8);
    outlined destroy of BodyTrackingComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    __swift_project_boxed_opaque_existential_1(v8, v9);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }

  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v10, v5 + 240);
  swift_endAccess();
  swift_beginAccess();
  if (*(v5 + 16))
  {

    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      if (REAnimationComponentHasRunningAnimations())
      {
        if ((REAnimationComponentAllAnimationsCompleted() & 1) != 0 || (swift_beginAccess(), *(v5 + 104) == 1) && *(v5 + 96) == 3)
        {
          REAnimationComponentStopAllAnimations();
          RENetworkMarkComponentDirty();
        }
      }
    }

    *(v5 + 280) = 0;
    *(v5 + 288) = 1;
  }

  else
  {
  }

  RERigidBodyComponentGetComponentType();
  if (REEntityGetComponentByClass() && (a3 & 0x100000000) == 0 && a3 != 1)
  {
    RERigidBodyComponentSetMotionType();
    RENetworkMarkComponentDirty();
  }

  if (!*(v5 + 16))
  {
  }

  RETransformComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
  }

  RETransformComponentGetWorldUnanimatedMatrix4x4F();
  RETransformComponentGetWorldMatrix4x4F();
  v6 = *(v5 + 16);

  if (v6)
  {

    specialized HasHierarchy.setParent(_:preservingWorldTransform:)(v7, 0);
  }

  RETransformComponentSetWorldMatrix4x4F();
  RETransformComponentSetWorldAnimatedMatrix4x4F();
  RENetworkMarkComponentDirty();
  if (*(v5 + 304))
  {

    specialized HasHierarchy.removeFromParent(preservingWorldTransform:)(0);

    *(v5 + 304) = 0;
  }
}

uint64_t closure #2 in __RKEntityOrbitEntityAction.perform(with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 304))
    {
      v3 = *(result + 112);
      if (v3)
      {

        v4 = Entity.rcSceneEntity.getter();
        if (v4)
        {
          *v5.i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(v3, v4);
          v9.n128_f64[0] = simd_float4x4.transform(position:)(0, v5, v6, v7, v8);
          specialized HasTransform.position.setter(v9);
        }
      }
    }
  }

  return result;
}

uint64_t closure #3 in __RKEntityOrbitEntityAction.perform(with:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if ((*(result + 288) & 1) != 0 || *(v2 + 16) != *(result + 280))
    {
    }

    else
    {
      swift_beginAccess();
      v5 = *(v4 + 96);
      v6 = *(v4 + 104);
      *(v4 + 96) = 2;
      *(v4 + 104) = 1;
      v7 = v5;
      v8 = v6;

      __RKEntityAction.state.didset(&v7);
    }
  }

  return result;
}

uint64_t __RKEntityOrbitEntityAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  v11 = *(v1 + 128);
  v4 = *(v1 + 144);
  v5 = *(v1 + 145);
  v6 = *(v1 + 146);
  v7 = type metadata accessor for __RKEntityOrbitEntityAction();
  v8 = swift_allocObject();
  *(v8 + 160) = 0u;
  *(v8 + 176) = 0u;
  *(v8 + 192) = 0u;
  *(v8 + 208) = 0u;
  *(v8 + 224) = 0u;
  *(v8 + 240) = 0u;
  *(v8 + 256) = 0u;
  *(v8 + 272) = 0u;
  *(v8 + 288) = 1;
  *(v8 + 296) = 0;
  *(v8 + 304) = 0;
  *(v8 + 320) = 0u;
  *(v8 + 336) = 0u;
  *(v8 + 352) = 1;
  *(v8 + 112) = v3;
  *(v8 + 120) = *(v1 + 120);
  *(v8 + 128) = v11;
  *(v8 + 144) = v4;
  *(v8 + 145) = v5;
  *(v8 + 148) = *(v1 + 148);
  *(v8 + 146) = v6;
  *(v8 + 354) = 0;

  result = __RKEntityAction.init(targetEntity:)(v9);
  a1[3] = v7;
  *a1 = result;
  return result;
}

uint64_t __RKEntityOrbitEntityAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    v5 = *(v1 + 112);
    v11 = *(v1 + 128);
    v6 = *(v1 + 144);
    v7 = *(v1 + 145);
    v8 = *(v1 + 146);
    type metadata accessor for __RKEntityOrbitEntityAction();
    v9 = swift_allocObject();
    *(v9 + 160) = 0u;
    *(v9 + 176) = 0u;
    *(v9 + 192) = 0u;
    *(v9 + 208) = 0u;
    *(v9 + 224) = 0u;
    *(v9 + 240) = 0u;
    *(v9 + 256) = 0u;
    *(v9 + 272) = 0u;
    *(v9 + 288) = 1;
    *(v9 + 296) = 0;
    *(v9 + 304) = 0;
    *(v9 + 320) = 0u;
    *(v9 + 336) = 0u;
    *(v9 + 352) = 1;
    *(v9 + 112) = v5;
    *(v9 + 120) = *(v1 + 120);
    *(v9 + 128) = v11;
    *(v9 + 144) = v6;
    *(v9 + 145) = v7;
    *(v9 + 148) = *(v1 + 148);
    *(v9 + 146) = v8;
    *(v9 + 354) = 0;

    return __RKEntityAction.init(targetEntity:)(v10);
  }

  else
  {
    __RKEntityOrbitEntityAction.copy(with:)(v13);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __RKEntityOrbitEntityAction.__ivar_destroyer()
{

  outlined destroy of BodyTrackingComponent?(v0 + 160, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 200, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 240, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
}

uint64_t __RKEntityOrbitEntityAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  outlined destroy of BodyTrackingComponent?(v0 + 160, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 200, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  outlined destroy of BodyTrackingComponent?(v0 + 240, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);

  return v0;
}

uint64_t __RKEntityOrbitEntityAction.__deallocating_deinit()
{
  __RKEntityOrbitEntityAction.deinit();

  return swift_deallocClassInstance();
}

__n128 SpatialAudioComponent.directivity.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 SpatialAudioComponent.directivity.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  return result;
}

uint64_t SpatialAudioComponent.init(gain:directLevel:reverbLevel:directivity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v5 = *(result + 16);
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = *result;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0x3FF0000000000000;
  *(a2 + 56) = a5;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = a4;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = a3;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  return result;
}

uint64_t SpatialAudioComponent.CodingKeys.stringValue.getter(char a1)
{
  result = 1852399975;
  switch(a1)
  {
    case 1:
      v3 = 0x746365726964;
      goto LABEL_7;
    case 2:
      v3 = 0x627265766572;
LABEL_7:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x654C000000000000;
      break;
    case 3:
      result = 0x7669746365726964;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
    case 8:
      result = 0xD000000000000012;
      break;
    case 6:
    case 9:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x477465677261745FLL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x6E6964614673695FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SpatialAudioComponent.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SpatialAudioComponent.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpatialAudioComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SpatialAudioComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Entity.spatialAudio.setter(_OWORD *a1)
{
  v2 = a1[5];
  v6[4] = a1[4];
  v6[5] = v2;
  v7[0] = a1[6];
  *(v7 + 9) = *(a1 + 105);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation012SpatialAudioD0V_TtB5Tf4ndn_n(v6, v1);
}

void (*Entity.spatialAudio.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x188uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 384) = v1;
  if (REEntityGetComponent())
  {
    static SpatialAudioComponent.__fromCore(_:)(v4 + 256);
    destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError();
  }

  else
  {
    _s17RealityFoundation21SpatialAudioComponentVSgWOi0_(v4 + 256);
  }

  return Entity.spatialAudio.modify;
}

void Entity.spatialAudio.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 384);
  v4 = *a1 + 256;
  if (a2)
  {
    v5 = *a1;
  }

  else
  {
    v5 = (*a1 + 128);
  }

  v6 = v2[21];
  v5[4] = v2[20];
  v5[5] = v6;
  v5[6] = v2[22];
  *(v5 + 105) = *(v4 + 105);
  v7 = v2[17];
  *v5 = v2[16];
  v5[1] = v7;
  v8 = v2[19];
  v5[2] = v2[18];
  v5[3] = v8;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation012SpatialAudioD0V_TtB5Tf4ndn_n(v5, v3);

  free(v2);
}

double static SpatialAudioComponent.__fromCore(_:)@<D0>(uint64_t a2@<X8>)
{
  RESpatialAudioComponentGetDecibelGain();
  v4 = v3;
  RESpatialAudioComponentGetDirectSendLevel();
  v6 = v5;
  RESpatialAudioComponentGetReverbSendLevel();
  v8 = v7;
  SourceDirectivityMode = RESpatialAudioComponentGetSourceDirectivityMode();
  RESpatialAudioComponentGetRolloffFactor();
  v11 = v10;
  if (SourceDirectivityMode)
  {
    if (SourceDirectivityMode == 3)
    {
      RESpatialAudioComponentGetDirectivitySphericalCapDiameter();
      v17 = v16;
      RESpatialAudioComponentGetDirectivitySphericalCapOpeningAngle();
      v15 = v17;
      v12 = v18;
      v13 = 1;
    }

    else if (SourceDirectivityMode == 1)
    {
      RESpatialAudioComponentGetDirectivityFocus();
      v12 = 0.0;
      v13 = 0;
      v15 = v14;
    }

    else
    {
      v15 = 0.0;
      v12 = 0.0;
      v13 = 0;
    }
  }

  else
  {
    v15 = 0.0;
    v13 = 2;
    v12 = 0.0;
  }

  result = v11;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v15;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v11;
  *(a2 + 56) = v8;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = v6;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = v4;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  return result;
}

uint64_t SpatialAudioComponent.init(gain:directLevel:reverbLevel:directivity:distanceAttenuation:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v6 = *(result + 16);
  v7 = *a2;
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = *result;
  *(a3 + 40) = v6;
  *(a3 + 48) = v7;
  *(a3 + 56) = a6;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = a5;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = a4;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  return result;
}

uint64_t SpatialAudioComponent.__toCore(_:)(void *a1)
{
  v2 = v1[40];
  v3 = v1[72];
  v4 = v1[96];
  v5 = v1[120];
  RESpatialAudioComponentSetDecibelGain();
  RESpatialAudioComponentSetDirectSendLevel();
  RESpatialAudioComponentSetReverbSendLevel();
  if (v2)
  {
    RESpatialAudioComponentSetSourceDirectivityMode();
    if (v2 == 1)
    {
      RESpatialAudioComponentSetDirectivitySphericalCap();
    }
  }

  else
  {
    RESpatialAudioComponentSetSourceDirectivityMode();
    RESpatialAudioComponentSetDirectivityFocus();
  }

  RESpatialAudioComponentSetRolloffFactor();
  if (v3)
  {
    RESpatialAudioComponentFadeComponentReverbLevel();
    if (!v4)
    {
LABEL_7:
      if (!v5)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (!v4)
  {
    goto LABEL_7;
  }

  RESpatialAudioComponentFadeComponentDirectLevel();
  if (v5)
  {
LABEL_8:
    RESpatialAudioComponentFadeComponentDecibelGain();
  }

LABEL_9:

  return RENetworkMarkComponentDirty();
}

uint64_t SpatialAudioComponent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation21SpatialAudioComponentV10CodingKeys33_6877805D86A1D7F09C4366522C4FF8EALLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation21SpatialAudioComponentV10CodingKeys33_6877805D86A1D7F09C4366522C4FF8EALLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = *(v1 + 8);
  v23 = *(v1 + 16);
  v24 = v7;
  v8 = *(v1 + 24);
  v21 = *(v1 + 32);
  v22 = v8;
  v30 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  lazy protocol witness table accessor for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v27) = 0;
  v26 = v6;
  v14 = v25;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v14)
  {
    return (*(v4 + 8))(v26, v13);
  }

  v17 = v21;
  v16 = v22;
  LOBYTE(v27) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v27) = 2;
  v25 = v13;
  KeyedEncodingContainer.encode(_:forKey:)();
  v27 = v16;
  v28 = v17;
  v29 = v30;
  v31 = 3;
  lazy protocol witness table accessor for type Audio.Directivity and conformance Audio.Directivity();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v27 = v9;
  v31 = 4;
  lazy protocol witness table accessor for type Audio.DistanceAttenuation and conformance Audio.DistanceAttenuation();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v27) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v27) = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v27) = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v27) = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v27) = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v27) = 10;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v27) = 11;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v27) = 12;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v27) = 13;
  v18 = v25;
  v19 = v26;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v19, v18);
}

void SpatialAudioComponent.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v10 = *(v1 + 80);
  v9 = *(v1 + 88);
  v11 = *(v1 + 96);
  v22 = *(v1 + 104);
  v23 = *(v1 + 112);
  v12 = *(v1 + 120);
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1C68F4C50](*&v2);
  if (v3 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v3;
  }

  MEMORY[0x1C68F4C50](*&v13);
  if (v4 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v4;
  }

  MEMORY[0x1C68F4C50](*&v14);
  Audio.Directivity.hash(into:)();
  MEMORY[0x1C68F4C10](0);
  if (v5 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v5;
  }

  MEMORY[0x1C68F4C50](*&v15);
  if (v6 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v6;
  }

  MEMORY[0x1C68F4C50](*&v16);
  if (v7 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v7;
  }

  MEMORY[0x1C68F4C50](*&v17);
  Hasher._combine(_:)(v8);
  if (v10 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v10;
  }

  MEMORY[0x1C68F4C50](*&v18);
  if (v9 == 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v9;
  }

  MEMORY[0x1C68F4C50](*&v19);
  Hasher._combine(_:)(v11);
  v20 = v22;
  if (v22 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x1C68F4C50](*&v20);
  v21 = v23;
  if (v23 == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x1C68F4C50](*&v21);
  Hasher._combine(_:)(v12);
}

Swift::Int SpatialAudioComponent.hashValue.getter()
{
  Hasher.init(_seed:)();
  SpatialAudioComponent.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t SpatialAudioComponent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation21SpatialAudioComponentV10CodingKeys33_6877805D86A1D7F09C4366522C4FF8EALLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation21SpatialAudioComponentV10CodingKeys33_6877805D86A1D7F09C4366522C4FF8EALLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v36) = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    LOBYTE(v36) = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    LOBYTE(v36) = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    v40 = 3;
    lazy protocol witness table accessor for type Audio.Directivity and conformance Audio.Directivity();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v37;
    v35 = v36;
    v17 = v38;
    v40 = 4;
    lazy protocol witness table accessor for type Audio.DistanceAttenuation and conformance Audio.DistanceAttenuation();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34 = v16;
    v39 = v17;
    v18 = v36;
    LOBYTE(v36) = 5;
    KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v19;
    LOBYTE(v36) = 6;
    KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v21;
    LOBYTE(v36) = 7;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v36) = 8;
    KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v23;
    LOBYTE(v36) = 9;
    KeyedDecodingContainer.decode(_:forKey:)();
    v26 = v25;
    LOBYTE(v36) = 10;
    LOBYTE(v17) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v36) = 11;
    KeyedDecodingContainer.decode(_:forKey:)();
    v32 = v27;
    LOBYTE(v36) = 12;
    KeyedDecodingContainer.decode(_:forKey:)();
    v31 = v28;
    LOBYTE(v36) = 13;
    LOBYTE(v16) = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v29 = v33 & 1;
    *a2 = v10;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
    *(a2 + 24) = v35;
    *(a2 + 32) = v34;
    *(a2 + 40) = v39;
    *(a2 + 48) = v18;
    *(a2 + 56) = v20;
    *(a2 + 64) = v22;
    *(a2 + 72) = v29;
    *(a2 + 80) = v24;
    *(a2 + 88) = v26;
    *(a2 + 96) = v17 & 1;
    v30 = v31;
    *(a2 + 104) = v32;
    *(a2 + 112) = v30;
    *(a2 + 120) = v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialAudioComponent()
{
  Hasher.init(_seed:)();
  SpatialAudioComponent.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialAudioComponent()
{
  Hasher.init(_seed:)();
  SpatialAudioComponent.hash(into:)(v1);
  return Hasher._finalize()();
}

double SpatialAudioComponent.distanceAttenuation.setter(double *a1)
{
  result = *a1;
  *(v1 + 48) = *a1;
  return result;
}

double SpatialAudioComponent.distanceAttenuation.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 48);
  *a1 = result;
  return result;
}

double (*SpatialAudioComponent.distanceAttenuation.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 48);
  return SpatialAudioComponent.distanceAttenuation.modify;
}

double SpatialAudioComponent.distanceAttenuation.modify(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 48) = *a1;
  return result;
}

uint64_t SpatialAudioComponent.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v20 - v6;
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v11 = v0[3];
  v12 = v0[4];
  v13 = *(v0 + 40);
  *v22 = *(v0 + 41);
  *&v22[3] = *(v0 + 11);
  v14 = v0[6];
  v15 = *(v0 + 11);
  v25 = *(v0 + 9);
  v26 = v15;
  v27 = *(v0 + 13);
  v28 = *(v0 + 120);
  v24 = *(v0 + 7);
  v20[1] = v8;
  v20[2] = v9;
  v20[3] = v10;
  v20[4] = v11;
  v20[5] = v12;
  v21 = v13;
  v23 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C1897F90;
  *(v16 + 32) = 1852399975;
  *(v16 + 40) = 0xE400000000000000;
  v17 = MEMORY[0x1E69E63B0];
  *(v16 + 48) = v8;
  *(v16 + 72) = v17;
  *(v16 + 80) = 0x654C746365726964;
  *(v16 + 88) = 0xEB000000006C6576;
  *(v16 + 96) = v9;
  *(v16 + 120) = v17;
  *(v16 + 128) = 0x654C627265766572;
  *(v16 + 136) = 0xEB000000006C6576;
  *(v16 + 144) = v10;
  *(v16 + 168) = v17;
  *(v16 + 176) = 0x7669746365726964;
  *(v16 + 184) = 0xEB00000000797469;
  *(v16 + 192) = v11;
  *(v16 + 200) = v12;
  *(v16 + 208) = v13;
  *(v16 + 216) = &type metadata for Audio.Directivity;
  *(v16 + 224) = 0xD000000000000013;
  *(v16 + 232) = 0x80000001C18E6B00;
  *(v16 + 264) = &type metadata for Audio.DistanceAttenuation;
  *(v16 + 240) = v14;
  v18 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

Swift::Void __swiftcall SpatialAudioComponent._proto_fadeComponentReverbLevel(to:duration:)(Swift::Double to, Swift::Double duration)
{
  *(v2 + 16) = to;
  *(v2 + 56) = to;
  *(v2 + 64) = duration;
  *(v2 + 72) = 1;
}

Swift::Void __swiftcall SpatialAudioComponent._proto_fadeComponentDirectLevel(to:duration:)(Swift::Double to, Swift::Double duration)
{
  *(v2 + 8) = to;
  *(v2 + 80) = to;
  *(v2 + 88) = duration;
  *(v2 + 96) = 1;
}

Swift::Void __swiftcall SpatialAudioComponent._proto_fadeComponentGain(to:duration:)(Swift::Double to, Swift::Double duration)
{
  *v2 = to;
  *(v2 + 104) = to;
  *(v2 + 112) = duration;
  *(v2 + 120) = 1;
}

uint64_t specialized static SpatialAudioComponent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *(a1 + 56);
    v5 = *(a1 + 72);
    v6 = *(a1 + 80);
    v7 = *(a1 + 104);
    v8 = *(a2 + 24);
    v9 = *(a2 + 40);
    v10 = *(a2 + 56);
    v11 = *(a2 + 72);
    v12 = *(a2 + 80);
    v13 = *(a2 + 104);
    if (*(a1 + 40))
    {
      if (*(a1 + 40) == 1)
      {
        if (v9 == 1)
        {
          result = 0;
          if (v5 != v11)
          {
            return result;
          }

          v14 = vextq_s8(v4, v6, 8uLL);
          v15 = vdupq_lane_s64(*&v4.f64[0], 0);
          v15.f64[0] = *(a1 + 48);
          v16 = vdupq_lane_s64(*&v10.f64[0], 0);
          v16.f64[0] = *(a2 + 48);
          if (vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 24), v8), vceqq_f64(v15, v16)), vuzp1q_s32(vceqq_f64(v14, vextq_s8(v10, v12, 8uLL)), vceqq_f64(vextq_s8(v6, v7, 8uLL), vextq_s8(v12, v13, 8uLL)))), xmmword_1C18B15F0)) != 255 || (vmovn_s64(vceqq_f64(v7, v13)).i32[1] & 1) == 0)
          {
            return result;
          }

LABEL_24:
          if (((*(a1 + 96) ^ *(a2 + 96)) & 1) == 0)
          {
            return *(a1 + 120) ^ *(a2 + 120) ^ 1u;
          }

          return result;
        }

        return 0;
      }

      if (v9 != 2)
      {
        return 0;
      }

      result = 0;
      v19 = vdupq_lane_s64(*&v4.f64[0], 0);
      v19.f64[0] = *(a1 + 48);
      v20 = vextq_s8(v10, v12, 8uLL);
      v21 = vdupq_lane_s64(*&v10.f64[0], 0);
      v21.f64[0] = *(a2 + 48);
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v19, v21), vceqq_f64(vextq_s8(v4, v6, 8uLL), v20)))) & 1) != 0 && (vmovn_s64(vceqq_f64(v6, v12)).i32[1])
      {
        v22 = vmovn_s64(vceqq_f64(v7, v13));
        if ((v22.i8[0] & 1) != 0 && (v22.i8[4] & 1) != 0 && !vorrq_s8(vdupq_laneq_s64(v8, 1), v8).u64[0] && ((v5 ^ v11) & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      result = 0;
      if (v5 == v11)
      {
        v17.f64[0] = *(a1 + 24);
        v17.f64[1] = *(a1 + 48);
        v8.f64[1] = *(a2 + 48);
        if (vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v17, v8), vceqq_f64(v4, v10)), vuzp1q_s32(vceqq_f64(v6, v12), vceqq_f64(v7, v13))), xmmword_1C18B15F0)) == 255 && v9 == 0)
        {
          goto LABEL_24;
        }
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialAudioComponent.CodingKeys, &unk_1F4101970, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialAudioComponent.CodingKeys, &unk_1F4101970, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialAudioComponent.CodingKeys, &unk_1F4101970, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialAudioComponent.CodingKeys, &unk_1F4101970, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialAudioComponent.CodingKeys and conformance SpatialAudioComponent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Audio.Directivity and conformance Audio.Directivity()
{
  result = lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity;
  if (!lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity, &type metadata for Audio.Directivity, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity;
  if (!lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity, &type metadata for Audio.Directivity, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity;
  if (!lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Audio.Directivity, &type metadata for Audio.Directivity, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Audio.Directivity and conformance Audio.Directivity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialAudioComponent and conformance SpatialAudioComponent()
{
  result = lazy protocol witness table cache variable for type SpatialAudioComponent and conformance SpatialAudioComponent;
  if (!lazy protocol witness table cache variable for type SpatialAudioComponent and conformance SpatialAudioComponent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialAudioComponent, &type metadata for SpatialAudioComponent, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialAudioComponent and conformance SpatialAudioComponent);
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SpatialAudioComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 121))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialAudioComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized SpatialAudioComponent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852399975 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654C746365726964 && a2 == 0xEB000000006C6576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654C627265766572 && a2 == 0xEB000000006C6576 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7669746365726964 && a2 == 0xEB00000000797469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C18E6B20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C18E6B40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C18E6B60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C18E6B80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C18E6BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C18E6BC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001C18E6BE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x477465677261745FLL && a2 == 0xEB000000006E6961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C18E6C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E6964614673695FLL && a2 == 0xED00006E69614767)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10RealityKit9__REAssetC_Say0D10Foundation02__F10DescriptorCGs13OpaquePointerVtG_AH_AlI07RESceneH0CtsAE_pTg5(void (*a1)(__int128 *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v22 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v22;
    for (i = (a3 + 40); ; i = (i + 24))
    {
      v18 = *(i - 1);
      v19 = *i;

      a1(&v20, &v18, &v17);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v20;
      v11 = v21;
      v22 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        v16 = v20;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v10 = v16;
        v6 = v22;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 24 * v13;
      *(v14 + 32) = v10;
      *(v14 + 48) = v11;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy10RealityKit9__REAssetC0D10Foundation17RESceneDescriptorCG_AHs5NeverOTg504_s10d57Kit20__SceneResourceCacheC5EntryC06activeC6AssetsSayAA9__f28CGvgA2H3key_0A10Foundation17hI15C5valuet_tXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v19 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v24 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaDictionary.startIndex.getter();
    v21 = result;
    v22 = v4;
    v23 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v24 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(v1 + 36);
  v21 = result;
  v22 = v5;
  v23 = 0;
LABEL_7:
  v6 = 0;
  v18 = v2;
  while (v6 < v2)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v13 = v21;
    v14 = v22;
    v15 = v23;
    specialized Dictionary.subscript.getter(v20, v21, v22, v23, v1);
    v16 = v1;

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v19)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      if (__CocoaDictionary.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD5IndexVy10RealityKit9__REAssetC0B10Foundation17RESceneDescriptorC_GMd, &_sSD5IndexVy10RealityKit9__REAssetC0B10Foundation17RESceneDescriptorC_GMR);
      v17 = Dictionary.Index._asCocoa.modify();
      __CocoaDictionary.formIndex(after:isUnique:)();
      result = v17(v20, 0);
    }

    else
    {
      v7 = specialized _NativeDictionary.index(after:)(v13, v14, v15, v1);
      v9 = v8;
      v11 = v10;
      result = outlined consume of [String : AudioResource].Index._Variant(v13, v14, v15);
      v21 = v7;
      v22 = v9;
      v23 = v11 & 1;
      v1 = v16;
      v2 = v18;
    }

    ++v6;
    if (v12 == v2)
    {
      outlined consume of [String : AudioResource].Index._Variant(v21, v22, v23);
      return v24;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17RealityFoundation17RESceneDescriptorCG_AF23SceneResourceLoadResultVs5NeverOTg5(void (*a1)(void *__return_ptr, uint64_t *, __n128), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v22)
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v6;
    }

    v7 = a3;
    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v6 = v30;
    v9 = v7;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C68F41F0](v8, v9);
      }

      else
      {
        if (v8 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(v9 + 8 * v8 + 32);
      }

      v26 = v11;
      (a1)(v27, &v26);
      if (v4)
      {
        goto LABEL_20;
      }

      v12 = v27[0];
      v13 = v27[1];
      v14 = v28;
      v15 = v29;
      v30 = v6;
      v17 = *(v6 + 16);
      v16 = *(v6 + 24);
      if (v17 >= v16 >> 1)
      {
        v24 = v28;
        v19 = v27[0];
        v23 = v29;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v15 = v23;
        v12 = v19;
        v14 = v24;
        v6 = v30;
      }

      *(v6 + 16) = v17 + 1;
      v18 = v6 + 40 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v13;
      *(v18 + 48) = v14;
      *(v18 + 64) = v15;
      ++v8;
      v4 = 0;
      v9 = v7;
      if (v10 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v21 = a3;
    v22 = __CocoaSet.count.getter();
    a3 = v21;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAF20PiecewiseBezierCurveAHLLVGG_AF08ExtrudedF10DescriptorVsAE_pTg5(void (*a1)(void *__return_ptr, __int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v17;
    for (i = (a3 + 32); ; ++i)
    {
      v15 = *i;

      a1(__src, &v15, &v14);
      if (v4)
      {
        break;
      }

      v4 = 0;

      memcpy(__dst, __src, sizeof(__dst));
      v17 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v11 + 1;
      memcpy((v6 + 520 * v11 + 32), __dst, 0x208uLL);
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays13OpaquePointerVG_AGs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v15;
  for (i = (a3 + 32); ; ++i)
  {
    v13 = *i;
    a1(&v14, &v13);
    if (v3)
    {
      break;
    }

    v9 = v14;
    v15 = v5;
    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    if (v11 >= v10 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      v5 = v15;
    }

    *(v5 + 16) = v11 + 1;
    *(v5 + 8 * v11 + 32) = v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void LoadTracer.beginLoad(loadType:logMsgTarget:)(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  Trace = type metadata accessor for LoadTrace(0);
  MEMORY[0x1EEE9AC00](Trace);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  RESignpostEmitREAssetEntityLoadStartedImpulse();
  v13 = *(v5 + 16);

  static DispatchTime.now()();
  *a4 = v13;
  *(a4 + 4) = a1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  v14 = *(v5 + 16);
  v15 = __CFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v16;
    if (a1 == 1)
    {
      v17 = 0xEB0000000073756FLL;
      v18 = 0x6E6F7268636E7973;
    }

    else if (a1 == 2)
    {
      v17 = 0xEC00000073756F6ELL;
      v18 = 0x6F7268636E797361;
    }

    else
    {
      v18 = *(v5 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_unknownLoadTypeMsg);
      v17 = *(v5 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_unknownLoadTypeMsg + 8);
    }

    outlined init with copy of __SceneImportOperation.__ImportedScene(a4, v12, type metadata accessor for LoadTrace);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315650;
      *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logPrefix), *(v5 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logPrefix + 8), &v28);
      *(v21 + 12) = 2080;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v28);

      *(v21 + 14) = v23;
      *(v21 + 22) = 2080;
      v24 = *(v12 + 3);
      v25 = *(v12 + 4);

      outlined destroy of __SceneImportOperation.__ImportedScene(v12, type metadata accessor for LoadTrace);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v28);

      *(v21 + 24) = v26;
      _os_log_impl(&dword_1C1358000, v19, v20, "%sStarted loading %s %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v22, -1, -1);
      MEMORY[0x1C6902A30](v21, -1, -1);
    }

    else
    {

      outlined destroy of __SceneImportOperation.__ImportedScene(v12, type metadata accessor for LoadTrace);
    }
  }
}

unint64_t LoadTracer.endLoad(of:with:)(uint64_t a1, unsigned int *a2)
{
  v3 = v2;
  Trace = type metadata accessor for LoadTrace(0);
  MEMORY[0x1EEE9AC00](Trace);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  static DispatchTime.now()();
  v13 = DispatchTime.uptimeNanoseconds.getter();
  (*(v10 + 8))(v12, v9);
  result = DispatchTime.uptimeNanoseconds.getter();
  v15 = v13 - result;
  if (v13 < result)
  {
    __break(1u);
  }

  else
  {
    v16 = *(a2 + 4);
    if (v16 == 1)
    {
      v17 = 0xEB0000000073756FLL;
      v18 = 0x6E6F7268636E7973;
    }

    else if (v16 == 2)
    {
      v17 = 0xEC00000073756F6ELL;
      v18 = 0x6F7268636E797361;
    }

    else
    {
      v18 = *(v3 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_unknownLoadTypeMsg);
      v17 = *(v3 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_unknownLoadTypeMsg + 8);
    }

    outlined init with copy of __SceneImportOperation.__ImportedScene(a2, v8, type metadata accessor for LoadTrace);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v15 / 1000000000.0;
      v22 = swift_slowAlloc();
      v30 = a1;
      v23 = v22;
      v24 = swift_slowAlloc();
      v31[0] = v24;
      *v23 = 136315906;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v3 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logPrefix), *(v3 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logPrefix + 8), v31);
      *(v23 + 12) = 2080;
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, v31);

      *(v23 + 14) = v25;
      *(v23 + 22) = 2080;
      v26 = *(v8 + 3);
      v27 = *(v8 + 4);

      outlined destroy of __SceneImportOperation.__ImportedScene(v8, type metadata accessor for LoadTrace);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v31);

      *(v23 + 24) = v28;
      *(v23 + 32) = 2048;
      *(v23 + 34) = v21;
      _os_log_impl(&dword_1C1358000, v19, v20, "%sFinished loading %s %s in %fs", v23, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v24, -1, -1);
      MEMORY[0x1C6902A30](v23, -1, -1);
    }

    else
    {

      outlined destroy of __SceneImportOperation.__ImportedScene(v8, type metadata accessor for LoadTrace);
    }

    RECreateLoadTraceTypeBitFieldSignpostArg();
    REEntityGetLocalId();
    RESignpostEmitREAssetEntityLoadEndedImpulse();
    v29 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v29 + 120, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit16__REAssetService_pMd, &_s10RealityKit16__REAssetService_pMR);
    type metadata accessor for __REAssetManager();
    result = swift_dynamicCast();
    if (result)
    {
      if (_REAssetManagerIsFullLoadTracingEnabled())
      {
        REEntityAddLoadTraceComponent();
      }
    }
  }

  return result;
}

void closure #1 in LoadTracer.subscribe<A>(to:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Trace = type metadata accessor for LoadTrace(0);
  MEMORY[0x1EEE9AC00](Trace);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchTime.now()();
  v12 = DispatchTime.uptimeNanoseconds.getter();
  (*(v9 + 8))(v11, v8);
  v13 = DispatchTime.uptimeNanoseconds.getter();
  v14 = v12 >= v13;
  v15 = v12 - v13;
  if (v14)
  {
    v16 = *(a2 + 4);
    if (v16 == 1)
    {
      v17 = 0xEB0000000073756FLL;
      v18 = 0x6E6F7268636E7973;
    }

    else if (v16 == 2)
    {
      v17 = 0xEC00000073756F6ELL;
      v18 = 0x6F7268636E797361;
    }

    else
    {
      v18 = *(a3 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_unknownLoadTypeMsg);
      v17 = *(a3 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_unknownLoadTypeMsg + 8);
    }

    outlined init with copy of __SceneImportOperation.__ImportedScene(a2, v7, type metadata accessor for LoadTrace);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v15 / 1000000000.0;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136315906;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a3 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logPrefix), *(a3 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logPrefix + 8), &v29);
      *(v22 + 12) = 2080;
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v29);

      *(v22 + 14) = v24;
      *(v22 + 22) = 2080;
      v25 = *(v7 + 3);
      v26 = *(v7 + 4);

      outlined destroy of __SceneImportOperation.__ImportedScene(v7, type metadata accessor for LoadTrace);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v29);

      *(v22 + 24) = v27;
      *(v22 + 32) = 2048;
      *(v22 + 34) = v21;
      _os_log_impl(&dword_1C1358000, v19, v20, "%sFinished loading %s %s in %fs", v22, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v23, -1, -1);
      MEMORY[0x1C6902A30](v22, -1, -1);
    }

    else
    {

      outlined destroy of __SceneImportOperation.__ImportedScene(v7, type metadata accessor for LoadTrace);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t LoadTracer.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t LoadManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *LoadManager.init()(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8098], v5);
  static DispatchQoS.unspecified.getter();
  v9 = MEMORY[0x1E69E7CC0];
  v16[1] = MEMORY[0x1E69E7CC0];
  _sSo10CFErrorRefaABs5Error10FoundationWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for LoadTracer(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 1;
  *(v10 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt32V_17RealityFoundation9LoadTraceVTt0g5Tf4g_n(v9);
  Logger.init(subsystem:category:)();
  v11 = (v10 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_logPrefix);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v10 + OBJC_IVAR____TtC17RealityFoundation10LoadTracer_unknownLoadTypeMsg);
  *v12 = 0xD000000000000018;
  v12[1] = 0x80000001C18E6E50;
  *(v2 + 24) = v10;
  type metadata accessor for __SceneResourceCache();
  v13 = swift_allocObject();
  *(v13 + 16) = specialized __SceneResourceCache.CachedEntries.init()();
  *(v13 + 24) = v14;
  *(v2 + 32) = v13;
  return v2;
}

Swift::Void __swiftcall Entity.__setLoadContext(_:)(RealityKit::__SceneResourceLoadResultLoadContext_optional a1)
{
  if (*(a1.value.fileName._countAndFlagsBits + 8))
  {

    v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  else
  {
    v2 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey, v2, 0x301);
  swift_endAccess();
  swift_unknownObjectRelease();
}

RealityKit::__SceneResourceLoadResultLoadContext_optional __swiftcall Entity.__fetchLoadContext()()
{
  v2 = v0;
  swift_beginAccess();
  v3 = objc_getAssociatedObject(v1, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey);
  swift_endAccess();
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    v4 = swift_dynamicCast();
    if (v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = outlined destroy of BodyTrackingComponent?(v9, &_sypSgMd, &_sypSgMR);
  }

  *v2 = 0;
  v2[1] = 0;
LABEL_9:
  result.value.fileName._object = v5;
  result.value.fileName._countAndFlagsBits = v4;
  result.is_nil = v6;
  return result;
}

uint64_t Entity.__fetchSceneResourceCacheEntry()()
{
  if (objc_getAssociatedObject(v0, "RealityKit.SceneResourceCacheEntry"))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for __SceneResourceCache.Entry();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v5, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

Swift::Void __swiftcall Entity.setLoadContext(fileName:)(Swift::String fileName)
{
  swift_bridgeObjectRetain_n();
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  swift_beginAccess();
  objc_setAssociatedObject(v1, &static __SceneResourceLoadResultLoadContext.loadContextForEntityKey, v2, 0x301);
  swift_endAccess();

  swift_unknownObjectRelease();
}

uint64_t __SceneResourceCache.Entry.activeSceneAssets.getter()
{
  v1 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
  v26 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  result = outlined init with copy of __SceneResourceCache.Entry.EntryHolder(v0 + 16, v31);
  if (v33)
  {
    v11 = *&v31[0];
    v12 = MEMORY[0x1E69E7CC0];
    v29 = *(*&v31[0] + 16);
    if (v29)
    {
      v13 = 0;
      v28 = v1;
      v14 = v26;
      v27 = v6;
      while (v13 < *(v11 + 16))
      {
        v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        v16 = *(v14 + 72);
        outlined init with copy of __SceneImportOperation.__ImportedScene(v11 + v15 + v16 * v13, v9, type metadata accessor for __SceneResourceCache.ImportedScene);
        if (v9[*(v1 + 28)] == 1)
        {
          outlined init with take of __SceneResourceCache.ImportedScene(v9, v6);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v30[0] = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
            v14 = v26;
            v12 = *&v30[0];
          }

          v19 = *(v12 + 16);
          v18 = *(v12 + 24);
          if (v19 >= v18 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
            v14 = v26;
            v12 = *&v30[0];
          }

          *(v12 + 16) = v19 + 1;
          v20 = v12 + v15 + v19 * v16;
          v6 = v27;
          result = outlined init with take of __SceneResourceCache.ImportedScene(v27, v20);
          v1 = v28;
        }

        else
        {
          result = outlined destroy of __SceneImportOperation.__ImportedScene(v9, type metadata accessor for __SceneResourceCache.ImportedScene);
        }

        if (v29 == ++v13)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
      v14 = v26;
LABEL_15:

      v22 = *(v12 + 16);
      if (v22)
      {
        *&v30[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v23 = v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
        v24 = *(v14 + 72);
        do
        {
          outlined init with copy of __SceneImportOperation.__ImportedScene(v23, v3, type metadata accessor for __SceneResourceCache.ImportedScene);

          outlined destroy of __SceneImportOperation.__ImportedScene(v3, type metadata accessor for __SceneResourceCache.ImportedScene);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v23 += v24;
          --v22;
        }

        while (v22);

        return *&v30[0];
      }

      else
      {

        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  else
  {
    v30[0] = v31[0];
    v30[1] = v31[1];
    v30[2] = v31[2];
    v30[3] = v32;
    v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy10RealityKit9__REAssetC0D10Foundation17RESceneDescriptorCG_AHs5NeverOTg504_s10d57Kit20__SceneResourceCacheC5EntryC06activeC6AssetsSayAA9__f28CGvgA2H3key_0A10Foundation17hI15C5valuet_tXEfU_Tf1cn_n(*(&v32 + 1));
    outlined destroy of __REAssetBundle(v30);
    return v21;
  }

  return result;
}

void __SceneResourceCache.Entry.registerWithSceneLookupTable()()
{
  v1 = type metadata accessor for __SceneResourceCache.ImportedScene(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for UUID();
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v38 - v12;
  if (one-time initialization token for shared != -1)
  {
LABEL_26:
    swift_once();
  }

  v13 = static __RKSceneAssetLookupTable.shared;
  v14 = outlined init with copy of __SceneResourceCache.Entry.EntryHolder(v0 + 16, v48);
  if (v49)
  {
    v15 = *(*&v48[0] + 16);
    if (v15)
    {
      v45 = *(v1 + 24);
      v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v43 = *&v48[0];
      v17 = *&v48[0] + v16;
      v44 = *(v2 + 72);
      v46 = v13;
      v18 = (v39 + 2);
      v19 = v39 + 1;
      do
      {
        outlined init with copy of __SceneImportOperation.__ImportedScene(v17, v4, type metadata accessor for __SceneResourceCache.ImportedScene);
        v20 = *(v4 + v45);
        (*v18)(v10, v4, v8);

        outlined destroy of __SceneImportOperation.__ImportedScene(v4, type metadata accessor for __SceneResourceCache.ImportedScene);
        v21 = v46[2];
        isa = UUID._bridgeToObjectiveC()().super.isa;
        [v21 setObject:v20 forKey:isa];

        (*v19)(v10, v8);
        v17 += v44;
        --v15;
      }

      while (v15);
    }

    return;
  }

  v46 = v13;
  v47[0] = v48[0];
  v47[1] = v48[1];
  v47[2] = v48[2];
  v47[3] = v48[3];
  MEMORY[0x1EEE9AC00](v14);
  *(&v38 - 2) = v47;
  v24 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in __REAssetBundle.getSceneDescriptors(), (&v38 - 4), v23);
  v4 = v24;
  if (!(v24 >> 62))
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_28:

    outlined destroy of __REAssetBundle(v47);
    return;
  }

  v25 = __CocoaSet.count.getter();
  if (!v25)
  {
    goto LABEL_28;
  }

LABEL_9:
  v2 = 0;
  v10 = (v4 & 0xC000000000000001);
  v45 = v4 & 0xFFFFFFFFFFFFFF8;
  v44 = (v39 + 6);
  v40 = (v39 + 4);
  ++v39;
  v42 = v4;
  v41 = v4 & 0xC000000000000001;
  while (1)
  {
    if (v10)
    {
      v26 = MEMORY[0x1C68F41F0](v2, v4);
      v27 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v2 >= *(v45 + 16))
      {
        goto LABEL_25;
      }

      v26 = *(v4 + 8 * v2 + 32);

      v27 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    __REAssetBundle.sceneAsset(for:)(v26);
    if (!v28)
    {
      break;
    }

    v1 = v28;
    RESceneDescriptorGetSceneIdentifier();
    v29 = String.init(cString:)();
    v0 = v30;
    v31 = (v30 >> 56) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      UUID.init(uuidString:)();

      if ((*v44)(v7, 1, v8) == 1)
      {

        outlined destroy of BodyTrackingComponent?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v32 = v25;
        v33 = v43;
        (*v40)(v43, v7, v8);
        v34 = v7;
        v35 = v8;
        v36 = v46[2];
        v0 = UUID._bridgeToObjectiveC()().super.isa;
        [v36 setObject:v1 forKey:v0];

        v8 = v35;
        v7 = v34;

        v37 = v33;
        v4 = v42;
        v25 = v32;
        v10 = v41;
        (*v39)(v37, v8);
      }
    }

    else
    {
    }

    ++v2;
    if (v27 == v25)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
}
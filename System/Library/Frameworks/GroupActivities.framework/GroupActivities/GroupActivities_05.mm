uint64_t closure #1 in ImageRepresentation.body.getter(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in ImageRepresentation.body.getter;

  return v6(a1);
}

uint64_t closure #1 in ImageRepresentation.body.getter(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in ImageRepresentation.body.getter, 0, 0);
  }
}

id closure #1 in ImageRepresentation.body.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
  v2 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  v3 = [v2 workingFormat];
  result = [v2 workingColorSpace];
  if (result)
  {
    v5 = result;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo27CIImageRepresentationOptiona_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    type metadata accessor for CIImageRepresentationOption(0);
    lazy protocol witness table accessor for type CIImageRepresentationOption and conformance CIImageRepresentationOption();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v7 = [v2 HEIFRepresentationOfImage:v1 format:v3 colorSpace:v5 options:isa];

    v8 = *(v0 + 24);
    if (v7)
    {
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = *(v0 + 8);

      return v12(v9, v11);
    }

    else
    {
      lazy protocol witness table accessor for type ImageRepresentationEncodingErrors and conformance ImageRepresentationEncodingErrors();
      swift_allocError();
      swift_willThrow();

      v13 = *(v0 + 8);

      return v13();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in ImageRepresentation.body.getter(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.body.getter;

  return closure #1 in ImageRepresentation.body.getter(a1, v4);
}

uint64_t closure #2 in ImageRepresentation.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo10CGImageRefa__GMd, &_sScS12ContinuationV15BufferingPolicyOySo10CGImageRefa__GMR);
  v8[7] = v10;
  v8[8] = *(v10 - 8);
  v8[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo10CGImageRefaGMd, &_sScSySo10CGImageRefaGMR);
  v8[10] = swift_task_alloc();
  v12 = type metadata accessor for ImageRepresentation.Image(0, a8, v15, v11);
  v8[11] = v12;
  v8[12] = *(v12 - 8);
  v8[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in ImageRepresentation.body.getter, 0, 0);
}

uint64_t closure #2 in ImageRepresentation.body.getter()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  type metadata accessor for CGImageRef(0);
  (*(v5 + 104))(v3, *MEMORY[0x1E69E8650], v4);
  AsyncStream.init(_:bufferingPolicy:_:)();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo10CGImageRefaGMd, &_sScSySo10CGImageRefaGMR);
  (*(*(v10 - 8) + 32))(v1, v2, v10);
  v15 = (v6 + *v6);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = closure #2 in ImageRepresentation.body.getter;
  v12 = v0[13];
  v13 = v0[2];

  return v15(v13, v12);
}

{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  *(v5 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #2 in ImageRepresentation.body.getter, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t partial apply for closure #2 in ImageRepresentation.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[4];
  v10 = v3[5];
  v12 = v3[6];
  v11 = v3[7];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #2 in ImageRepresentation.body.getter(a1, a2, a3, v9, v10, v12, v11, v8);
}

void closure #1 in closure #2 in ImageRepresentation.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo10CGImageRefa__GMd, &_sScS12ContinuationV11YieldResultOySo10CGImageRefa__GMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v17 - v2;
  v4 = objc_allocWithZone(MEMORY[0x1E695F658]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData_];

  if (v6)
  {
    v17[0] = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
    [v6 extent];
    v7 = [v17[0] createCGImage:v6 fromRect:?];
    if (v7)
    {
      v17[1] = v7;
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo10CGImageRefa_GMd, &_sScS12ContinuationVySo10CGImageRefa_GMR);
      AsyncStream.Continuation.yield(_:)();

      (*(v1 + 8))(v3, v0);
      return;
    }

    if (one-time initialization token for ledger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.ledger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1AEE80000, v13, v14, "Failed to create CGImage from CIImage", v15, 2u);
      MEMORY[0x1B2715BA0](v15, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for ledger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.ledger);
    v17[0] = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17[0], v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1AEE80000, v17[0], v10, "Failed to create CIImage from Data", v11, 2u);
      MEMORY[0x1B2715BA0](v11, -1, -1);
    }
  }

  v16 = v17[0];
}

uint64_t ImageRepresentation.init(exporting:importing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

unint64_t lazy protocol witness table accessor for type ImageRepresentationEncodingErrors and conformance ImageRepresentationEncodingErrors()
{
  result = lazy protocol witness table cache variable for type ImageRepresentationEncodingErrors and conformance ImageRepresentationEncodingErrors;
  if (!lazy protocol witness table cache variable for type ImageRepresentationEncodingErrors and conformance ImageRepresentationEncodingErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageRepresentationEncodingErrors and conformance ImageRepresentationEncodingErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageRepresentationEncodingErrors and conformance ImageRepresentationEncodingErrors;
  if (!lazy protocol witness table cache variable for type ImageRepresentationEncodingErrors and conformance ImageRepresentationEncodingErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageRepresentationEncodingErrors and conformance ImageRepresentationEncodingErrors);
  }

  return result;
}

uint64_t type metadata instantiation function for ImageRepresentation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ImageRepresentation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ImageRepresentation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for ImageRepresentation.Image(uint64_t a1)
{
  type metadata accessor for AsyncStream<CGImageRef>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for AsyncStream<CGImageRef>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncStream<CGImageRef>)
  {
    type metadata accessor for CGImageRef(255);
    v1 = type metadata accessor for AsyncStream();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncStream<CGImageRef>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CIImageRepresentationOption and conformance CIImageRepresentationOption()
{
  result = lazy protocol witness table cache variable for type CIImageRepresentationOption and conformance CIImageRepresentationOption;
  if (!lazy protocol witness table cache variable for type CIImageRepresentationOption and conformance CIImageRepresentationOption)
  {
    type metadata accessor for CIImageRepresentationOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CIImageRepresentationOption and conformance CIImageRepresentationOption);
  }

  return result;
}

uint64_t SystemCoordinatorConfiguration.spatialTemplatePreferenceOutput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped);
  if (v3)
  {
    swift_getKeyPath();
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x90))(&v11);

    v5 = v12;
    v6 = v14;
    v7 = v15;
    v8 = v13;
    *a1 = v11;
    *(a1 + 8) = v5;
    *(a1 + 16) = v8;
    *(a1 + 32) = v6;
    *(a1 + 40) = v7;
  }

  else
  {
    if (one-time initialization token for none != -1)
    {
      result = swift_once();
    }

    v9 = word_1EB619638;
    v10 = qword_1AF00FC08[SHIBYTE(word_1EB619638)];
    *a1 = static SpatialTemplatePreference.none;
    *(a1 + 8) = v9;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = v10;
    *(a1 + 40) = 2;
  }

  return result;
}

uint64_t SystemCoordinatorConfiguration.localParticipantRoleAssignmentRequest.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped);
  if (v3)
  {
    swift_getKeyPath();
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x90))(&v6);

    v5 = v6;
  }

  else
  {
    v5 = 0uLL;
  }

  *a1 = v5;
  return result;
}

uint64_t SystemCoordinatorConfiguration.defaultSpatialTemplatePreferences.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped);
  if (v3)
  {
    swift_getKeyPath();
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x90))(&v6);

    return v6;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];

    return a2(v5);
  }
}

id SystemCoordinatorConfiguration.__allocating_init(supportsGroupImmersiveSpace:isObservingGroupImmersionStyle:)(char a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR___CPSystemCoordinatorConfiguration_supportsGroupImmersiveSpace] = a1;
  v5[OBJC_IVAR___CPSystemCoordinatorConfiguration_isObservingGroupImmersionStyle] = a2;
  v5[OBJC_IVAR___CPSystemCoordinatorConfiguration_faceAppTowardsEachParticipant] = 0;
  *&v5[OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped] = 0;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id SystemCoordinatorConfiguration.init(supportsGroupImmersiveSpace:isObservingGroupImmersionStyle:)(uint64_t a1, char a2)
{
  v2[OBJC_IVAR___CPSystemCoordinatorConfiguration_supportsGroupImmersiveSpace] = a1;
  v2[OBJC_IVAR___CPSystemCoordinatorConfiguration_isObservingGroupImmersionStyle] = a2;
  v2[OBJC_IVAR___CPSystemCoordinatorConfiguration_faceAppTowardsEachParticipant] = 0;
  *&v2[OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped] = 0;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SystemCoordinatorConfiguration();
  return objc_msgSendSuper2(&v4, sel_init);
}

void *SystemCoordinatorConfiguration.__allocating_init(spatialTemplatePreference:supportsGroupImmersiveSpace:isObservingGroupImmersionStyle:localParticipantRoleAssignmentRequest:faceAppTowardsEachParticipant:defaultSpatialTemplatePreferences:defaultSpatialTemplateRoles:)(uint64_t *a1, char a2, char a3, uint64_t *a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v48 = v8;
  v15 = objc_allocWithZone(v8);
  v43 = *a1;
  v60 = *(a1 + 8);
  v16 = *(a1 + 9);
  v44 = a4[1];
  v45 = *a4;
  v15[OBJC_IVAR___CPSystemCoordinatorConfiguration_supportsGroupImmersiveSpace] = a2;
  v15[OBJC_IVAR___CPSystemCoordinatorConfiguration_isObservingGroupImmersionStyle] = a3;
  v15[OBJC_IVAR___CPSystemCoordinatorConfiguration_faceAppTowardsEachParticipant] = a5;
  v42 = qword_1AF00FC08[v16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15GroupActivities31SpatialTemplatePreferenceOutputVGMd, &_ss18_DictionaryStorageCySS15GroupActivities31SpatialTemplatePreferenceOutputVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v18 = result;
  v19 = 0;
  v20 = 1 << *(a6 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a6 + 64);
  v23 = (v20 + 63) >> 6;
  v24 = result + 8;
  if (v22)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_10:
      v28 = v25 | (v19 << 6);
      v29 = (*(a6 + 48) + 16 * v28);
      v30 = *v29;
      result = v29[1];
      v31 = *(a6 + 56) + 16 * v28;
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = qword_1AF00FC08[*(v31 + 9)];
      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v35 = (v18[6] + 16 * v28);
      *v35 = v30;
      v35[1] = result;
      v36 = v18[7] + 48 * v28;
      *v36 = v32;
      *(v36 + 8) = v33;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0;
      *(v36 + 16) = v34;
      *(v36 + 40) = 2;
      v37 = v18[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        break;
      }

      v18[2] = v39;

      if (!v22)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v19 >= v23)
      {
        break;
      }

      v27 = *(a6 + 64 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v22 = (v27 - 1) & v27;
        goto LABEL_10;
      }
    }

    v59 = v60;
    *&v50 = v43;
    BYTE8(v50) = v60;
    v52 = 0;
    v53 = 0;
    v51 = v42;
    v54 = 2;
    v55 = v45;
    v56 = v44;
    v57 = v18;
    v58 = a7;
    v40 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMd, &_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMR));
    v41 = specialized XPCWrapper.init(_:)(&v50);
    if (v47)
    {
      return swift_deallocPartialClassInstance();
    }

    else
    {
      *&v15[OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped] = v41;
      v49.receiver = v15;
      v49.super_class = v48;
      return objc_msgSendSuper2(&v49, sel_init);
    }
  }

  return result;
}

void *SystemCoordinatorConfiguration.init(spatialTemplatePreference:supportsGroupImmersiveSpace:isObservingGroupImmersionStyle:localParticipantRoleAssignmentRequest:faceAppTowardsEachParticipant:defaultSpatialTemplatePreferences:defaultSpatialTemplateRoles:)(uint64_t *a1, char a2, char a3, uint64_t *a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v37 = *a1;
  v53 = *(a1 + 8);
  v10 = *(a1 + 9);
  v38 = a4[1];
  v39 = *a4;
  v7[OBJC_IVAR___CPSystemCoordinatorConfiguration_supportsGroupImmersiveSpace] = a2;
  v7[OBJC_IVAR___CPSystemCoordinatorConfiguration_isObservingGroupImmersionStyle] = a3;
  v7[OBJC_IVAR___CPSystemCoordinatorConfiguration_faceAppTowardsEachParticipant] = a5;
  v36 = qword_1AF00FC08[v10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15GroupActivities31SpatialTemplatePreferenceOutputVGMd, &_ss18_DictionaryStorageCySS15GroupActivities31SpatialTemplatePreferenceOutputVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v12 = result;
  v13 = 0;
  v14 = 1 << *(a6 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a6 + 64);
  v17 = (v14 + 63) >> 6;
  v18 = result + 8;
  if (v16)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_10:
      v22 = v19 | (v13 << 6);
      v23 = (*(a6 + 48) + 16 * v22);
      v24 = *v23;
      result = v23[1];
      v25 = *(a6 + 56) + 16 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = qword_1AF00FC08[*(v25 + 9)];
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v29 = (v12[6] + 16 * v22);
      *v29 = v24;
      v29[1] = result;
      v30 = v12[7] + 48 * v22;
      *v30 = v26;
      *(v30 + 8) = v27;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0;
      *(v30 + 16) = v28;
      *(v30 + 40) = 2;
      v31 = v12[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v12[2] = v33;

      if (!v16)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v13 >= v17)
      {
        break;
      }

      v21 = *(a6 + 64 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_10;
      }
    }

    v52 = v53;
    *&v43 = v37;
    BYTE8(v43) = v53;
    v45 = 0;
    v46 = 0;
    v44 = v36;
    v47 = 2;
    v48 = v39;
    v49 = v38;
    v50 = v12;
    v51 = a7;
    v34 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMd, &_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMR));
    v35 = specialized XPCWrapper.init(_:)(&v43);
    if (v41)
    {
      type metadata accessor for SystemCoordinatorConfiguration();
      return swift_deallocPartialClassInstance();
    }

    else
    {
      *&v8[OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped] = v35;
      v42.receiver = v8;
      v42.super_class = type metadata accessor for SystemCoordinatorConfiguration();
      return objc_msgSendSuper2(&v42, sel_init);
    }
  }

  return result;
}

__n128 SystemCoordinatorConfiguration.Wrapped.init(spatialTemplatePreferenceOutput:localParticipantRoleAssignmentRequest:defaultSpatialTemplatePreferences:defaultSpatialTemplateRoles:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *a5 = *a1;
  *(a5 + 8) = v5;
  *(a5 + 16) = *(a1 + 16);
  *(a5 + 32) = v6;
  *(a5 + 40) = v7;
  result = *a2;
  *(a5 + 48) = *a2;
  *(a5 + 64) = a3;
  *(a5 + 72) = a4;
  return result;
}

uint64_t SystemCoordinatorConfiguration.description.getter()
{
  v10 = 0;
  v11 = 0xE000000000000000;
  _StringGuts.grow(_:)(145);
  v12 = 0;
  v13 = 0xE000000000000000;
  v1 = MEMORY[0x1B27141F0](0xD000000000000021, 0x80000001AF01B880);
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))(&v10, v1);
  v3 = String.init<A>(reflecting:)();
  MEMORY[0x1B27141F0](v3);

  MEMORY[0x1B27141F0](0xD00000000000001ELL, 0x80000001AF01B8B0);
  LOBYTE(v10) = *(v0 + OBJC_IVAR___CPSystemCoordinatorConfiguration_supportsGroupImmersiveSpace);
  v4 = String.init<A>(reflecting:)();
  MEMORY[0x1B27141F0](v4);

  MEMORY[0x1B27141F0](0xD000000000000021, 0x80000001AF01B8D0);
  LOBYTE(v10) = *(v0 + OBJC_IVAR___CPSystemCoordinatorConfiguration_isObservingGroupImmersionStyle);
  v5 = String.init<A>(reflecting:)();
  MEMORY[0x1B27141F0](v5);

  v6 = MEMORY[0x1B27141F0](0xD000000000000028, 0x80000001AF01B900);
  (*((*v2 & *v0) + 0x78))(&v10, v6);
  v7 = v10;
  v8 = v11;
  _print_unlocked<A, B>(_:_:)();
  outlined consume of SystemCoordinatorParticipantRoleRequest(v7, v8);
  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return v12;
}

Swift::Void __swiftcall SystemCoordinatorConfiguration.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfiguration_supportsGroupImmersiveSpace);
  v4 = MEMORY[0x1B2714130](0xD00000000000001BLL, 0x80000001AF01B930);
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfiguration_isObservingGroupImmersionStyle);
  v6 = MEMORY[0x1B2714130](0xD00000000000001ELL, 0x80000001AF01B950);
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfiguration_faceAppTowardsEachParticipant);
  v8 = MEMORY[0x1B2714130](0xD00000000000001DLL, 0x80000001AF01B970);
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped);
  v10 = MEMORY[0x1B2714130](0x64657070617277, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
}

id SystemCoordinatorConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized SystemCoordinatorConfiguration.init(coder:)(a1);

  return v4;
}

id SystemCoordinatorConfiguration.init(coder:)(void *a1)
{
  v2 = specialized SystemCoordinatorConfiguration.init(coder:)(a1);

  return v2;
}

uint64_t SystemCoordinatorConfiguration.Wrapped.spatialTemplatePreferenceOutput.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(v1 + 40);
  *(a1 + 40) = v6;
  return outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v3, v4, v5, v6);
}

uint64_t SystemCoordinatorConfiguration.Wrapped.localParticipantRoleAssignmentRequest.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  *a1 = v2;
  a1[1] = v3;
  return outlined copy of SystemCoordinatorParticipantRoleRequest(v2, v3);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys()
{
  v1 = 0xD000000000000021;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001BLL;
  }

  v2 = 0xD000000000000025;
  if (!*v0)
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SystemCoordinatorConfiguration.Wrapped.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SystemCoordinatorConfiguration.Wrapped.encode(to:)(void *a1)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities30SystemCoordinatorConfigurationC7WrappedV10CodingKeys33_E687053184EB28B6472960559EE3ADA1LLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities30SystemCoordinatorConfigurationC7WrappedV10CodingKeys33_E687053184EB28B6472960559EE3ADA1LLOGMR);
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v4 = &v18 - v3;
  v5 = *v1;
  v32 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 56);
  v21 = *(v1 + 48);
  v22 = v5;
  v10 = *(v1 + 72);
  v19 = *(v1 + 64);
  v20 = v9;
  v18 = v10;
  v11 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v6, v7, v8, v11);
  lazy protocol witness table accessor for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v23;
  v26 = v22;
  LOBYTE(v27) = v32;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v11;
  v33 = 0;
  lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput();
  v13 = v24;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v13)
  {
    outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v28, v29, v30, v31);
    return (*(v25 + 8))(v4, v12);
  }

  else
  {
    v16 = v18;
    v15 = v19;
    v17 = v25;
    outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v28, v29, v30, v31);
    v26 = v21;
    v27 = v20;
    v33 = 1;
    outlined copy of SystemCoordinatorParticipantRoleRequest(v21, v20);
    lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of SystemCoordinatorParticipantRoleRequest(v26, v27);
    v26 = v15;
    v33 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15GroupActivities31SpatialTemplatePreferenceOutputVGMd, &_sSDySS15GroupActivities31SpatialTemplatePreferenceOutputVGMR);
    lazy protocol witness table accessor for type [String : SpatialTemplatePreferenceOutput] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : SpatialTemplatePreferenceOutput] and conformance <> [A : B], lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = v16;
    v33 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v17 + 8))(v4, v12);
  }
}

uint64_t SystemCoordinatorConfiguration.Wrapped.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities30SystemCoordinatorConfigurationC7WrappedV10CodingKeys33_E687053184EB28B6472960559EE3ADA1LLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities30SystemCoordinatorConfigurationC7WrappedV10CodingKeys33_E687053184EB28B6472960559EE3ADA1LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v28) = 0;
  lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v33;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v43 = v34;
  LOBYTE(v28) = 1;
  lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v9;
  v24 = v33;
  v23 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15GroupActivities31SpatialTemplatePreferenceOutputVGMd, &_sSDySS15GroupActivities31SpatialTemplatePreferenceOutputVGMR);
  LOBYTE(v28) = 2;
  lazy protocol witness table accessor for type [String : SpatialTemplatePreferenceOutput] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : SpatialTemplatePreferenceOutput] and conformance <> [A : B], lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  v44 = 3;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v20 = v42;
  *&v28 = v22;
  v21 = v43;
  BYTE8(v28) = v43;
  v11 = v25;
  v29 = v25;
  v12 = v26;
  *&v30 = v26;
  v13 = v10;
  v19 = v10;
  LOBYTE(v10) = v27;
  BYTE8(v30) = v27;
  v14 = v24;
  v15 = v23;
  *&v31 = v24;
  *(&v31 + 1) = v23;
  *&v32 = v13;
  *(&v32 + 1) = v42;
  v16 = v31;
  a2[2] = v30;
  a2[3] = v16;
  a2[4] = v32;
  v17 = v29;
  *a2 = v28;
  a2[1] = v17;
  outlined init with copy of SystemCoordinatorConfiguration.Wrapped(&v28, &v33);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v33 = v22;
  LOBYTE(v34) = v21;
  v35 = v11;
  v36 = v12;
  v37 = v10;
  v38 = v14;
  v39 = v15;
  v40 = v19;
  v41 = v20;
  return outlined destroy of SystemCoordinatorConfiguration.Wrapped(&v33);
}

id SystemCoordinatorConfiguration._SpatialTemplatePreference.__allocating_init(_:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  v5 = *(a1 + 8);
  *&v3[OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_storage] = *(a1 + 9);
  v6 = &v3[OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent];
  *v6 = v4;
  v6[8] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SystemCoordinatorConfiguration._SpatialTemplatePreference.init(_:)(uint64_t *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_storage] = *(a1 + 9);
  v3 = *(a1 + 8);
  v4 = &v1[OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent];
  *v4 = v2;
  v4[8] = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SystemCoordinatorConfiguration._SpatialTemplatePreference();
  return objc_msgSendSuper2(&v6, sel_init);
}

void SystemCoordinatorConfiguration._SpatialTemplatePreference.spatialTemplatePreference.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_storage);
  if (v2 >= 5)
  {
    LOBYTE(v2) = 0;
  }

  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent + 8);
  *a1 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent);
  *(a1 + 8) = v3;
  *(a1 + 9) = v2;
}

id @objc SystemCoordinatorConfiguration.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x1B2714130](v5, v7);

  return v8;
}

uint64_t SystemCoordinatorConfiguration._SpatialTemplatePreference.description.getter()
{
  _StringGuts.grow(_:)(30);

  v1 = String.init<A>(reflecting:)();
  MEMORY[0x1B27141F0](v1);

  MEMORY[0x1B27141F0](0xD000000000000010, 0x80000001AF01B9C0);
  if (*(v0 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent + 8))
  {
    v2 = 0xE300000000000000;
    v3 = 7104878;
  }

  else
  {
    v3 = String.init<A>(reflecting:)();
    v2 = v4;
  }

  MEMORY[0x1B27141F0](v3, v2);

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0x656761726F747328;
}

Swift::Void __swiftcall SystemCoordinatorConfiguration._SpatialTemplatePreference.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_storage);
  v4 = MEMORY[0x1B2714130](0x656761726F7473, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent + 8))
  {
    v6 = 0;
  }

  else
  {
    v5 = (v1 + OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent);
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  v7 = MEMORY[0x1B2714130](0x45746E65746E6F63, 0xED0000746E657478);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
  swift_unknownObjectRelease();
}

id SystemCoordinatorConfiguration._SpatialTemplatePreference.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized SystemCoordinatorConfiguration._SpatialTemplatePreference.init(coder:)(a1);

  return v4;
}

id SystemCoordinatorConfiguration._SpatialTemplatePreference.init(coder:)(void *a1)
{
  v2 = specialized SystemCoordinatorConfiguration._SpatialTemplatePreference.init(coder:)(a1);

  return v2;
}

id SystemCoordinatorConfiguration._SpatialTemplatePreference.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SystemCoordinatorConfiguration.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id specialized XPCWrapper.init(_:)(__int128 *a1)
{
  v3 = a1[3];
  v26 = a1[2];
  v27 = v3;
  v28 = a1[4];
  v4 = a1[1];
  v24 = *a1;
  v25 = v4;
  v5 = MEMORY[0x1E69E7D40];
  v6 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x68));
  v29[2] = v26;
  v29[3] = v3;
  v29[4] = v28;
  v29[0] = v24;
  v29[1] = v4;
  v7 = a1[4];
  v6[3] = a1[3];
  v6[4] = v7;
  v8 = a1[2];
  v6[1] = a1[1];
  v6[2] = v8;
  *v6 = *a1;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  outlined init with copy of SystemCoordinatorConfiguration.Wrapped(v29, &v19);
  JSONEncoder.init()();
  lazy protocol witness table accessor for type SystemCoordinatorConfiguration.Wrapped and conformance SystemCoordinatorConfiguration.Wrapped();
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {

    v18[2] = v26;
    v18[3] = v27;
    v18[4] = v28;
    v18[0] = v24;
    v18[1] = v25;
    outlined destroy of SystemCoordinatorConfiguration.Wrapped(v18);
    v11 = v6[3];
    v21 = v6[2];
    v22 = v11;
    v23 = v6[4];
    v12 = v6[1];
    v19 = *v6;
    v20 = v12;
    outlined destroy of SystemCoordinatorConfiguration.Wrapped(&v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMd, &_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMR);
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v9;
    v15 = v10;
    v21 = v26;
    v22 = v27;
    v23 = v28;
    v19 = v24;
    v20 = v25;
    outlined destroy of SystemCoordinatorConfiguration.Wrapped(&v19);

    v16 = (v1 + *((*v5 & *v1) + 0x70));
    *v16 = v14;
    v16[1] = v15;
    v17.receiver = v1;
    v17.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMd, &_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMR);
    return objc_msgSendSuper2(&v17, sel_init);
  }
}

{
  v3 = a1[7];
  v54 = a1[6];
  v55 = v3;
  v4 = a1[9];
  v56 = a1[8];
  v57 = v4;
  v5 = a1[3];
  v50 = a1[2];
  v51 = v5;
  v6 = a1[5];
  v52 = a1[4];
  v53 = v6;
  v7 = a1[1];
  v48 = *a1;
  v49 = v7;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  v10 = a1[7];
  v11 = a1[5];
  v63 = a1[6];
  v64 = v10;
  v12 = a1[7];
  v13 = a1[9];
  v65 = a1[8];
  v14 = v65;
  v66 = v13;
  v15 = a1[3];
  v17 = a1[1];
  v59 = a1[2];
  v16 = v59;
  v60 = v15;
  v18 = a1[3];
  v19 = a1[5];
  v61 = a1[4];
  v20 = v61;
  v62 = v19;
  v21 = a1[1];
  v58[0] = *a1;
  v22 = v58[0];
  v58[1] = v21;
  v23 = (v1 + v9);
  v23[6] = v63;
  v23[7] = v12;
  v24 = a1[9];
  v23[8] = v14;
  v23[9] = v24;
  v23[2] = v16;
  v23[3] = v18;
  v23[4] = v20;
  v23[5] = v11;
  *v23 = v22;
  v23[1] = v17;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  outlined init with copy of SystemCoordinatorState.ParticipantState.Seat(v58, &v38);
  JSONEncoder.init()();
  lazy protocol witness table accessor for type SystemCoordinatorState.ParticipantState.Seat and conformance SystemCoordinatorState.ParticipantState.Seat();
  v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {

    v37[6] = v54;
    v37[7] = v55;
    v37[8] = v56;
    v37[9] = v57;
    v37[2] = v50;
    v37[3] = v51;
    v37[4] = v52;
    v37[5] = v53;
    v37[0] = v48;
    v37[1] = v49;
    outlined destroy of SystemCoordinatorState.ParticipantState.Seat(v37);
    v27 = v23[7];
    v44 = v23[6];
    v45 = v27;
    v28 = v23[9];
    v46 = v23[8];
    v47 = v28;
    v29 = v23[3];
    v40 = v23[2];
    v41 = v29;
    v30 = v23[5];
    v42 = v23[4];
    v43 = v30;
    v31 = v23[1];
    v38 = *v23;
    v39 = v31;
    outlined destroy of SystemCoordinatorState.ParticipantState.Seat(&v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMd, &_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMR);
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = v25;
    v34 = v26;
    v44 = v54;
    v45 = v55;
    v46 = v56;
    v47 = v57;
    v40 = v50;
    v41 = v51;
    v42 = v52;
    v43 = v53;
    v38 = v48;
    v39 = v49;
    outlined destroy of SystemCoordinatorState.ParticipantState.Seat(&v38);

    v35 = (v1 + *((*v8 & *v1) + 0x70));
    *v35 = v33;
    v35[1] = v34;
    v36.receiver = v1;
    v36.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMd, &_s15GroupActivities10XPCWrapperCyAA22SystemCoordinatorStateC011ParticipantF0C4SeatVGMR);
    return objc_msgSendSuper2(&v36, sel_init);
  }
}

uint64_t outlined consume of SystemCoordinatorParticipantRoleRequest(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

id specialized SystemCoordinatorConfiguration.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1B2714130](0xD00000000000001BLL, 0x80000001AF01B930);
  v5 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___CPSystemCoordinatorConfiguration_supportsGroupImmersiveSpace] = v5;
  v6 = MEMORY[0x1B2714130](0xD00000000000001ELL, 0x80000001AF01B950);
  v7 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___CPSystemCoordinatorConfiguration_isObservingGroupImmersionStyle] = v7;
  v8 = MEMORY[0x1B2714130](0xD00000000000001DLL, 0x80000001AF01B970);
  v9 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___CPSystemCoordinatorConfiguration_faceAppTowardsEachParticipant] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMd, &_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMR);
  *&v2[OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped] = NSCoder.decodeObject<A>(of:forKey:)();
  v11.receiver = v2;
  v11.super_class = type metadata accessor for SystemCoordinatorConfiguration();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return v5;
}

uint64_t outlined copy of SystemCoordinatorParticipantRoleRequest(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped.CodingKeys and conformance SystemCoordinatorConfiguration.Wrapped.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput and conformance SpatialTemplatePreferenceOutput);
  }

  return result;
}

uint64_t outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorParticipantRoleRequest and conformance SystemCoordinatorParticipantRoleRequest);
  }

  return result;
}

uint64_t specialized SystemCoordinatorConfiguration.Wrapped.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001FLL && 0x80000001AF01BAE0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001AF01BB00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001AF01BB30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001AF01BB60 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id specialized SystemCoordinatorConfiguration._SpatialTemplatePreference.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1B2714130](0x656761726F7473, 0xE700000000000000);
  v5 = [a1 decodeIntegerForKey_];

  *&v2[OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_storage] = v5;
  type metadata accessor for NSNumber();
  v6 = NSCoder.decodeObject<A>(of:forKey:)();
  v7 = v6;
  if (v6)
  {
    [v6 doubleValue];
    v9 = v8;

    v10 = OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent;
    *&v2[OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent] = v9;
  }

  else
  {
    v10 = OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent;
    *&v2[OBJC_IVAR___CPSystemCoordinatorConfigurationTemplatePreference_contentExtent] = 0;
  }

  v2[v10 + 8] = v7 == 0;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for SystemCoordinatorConfiguration._SpatialTemplatePreference();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities31SpatialTemplatePreferenceOutputV0cD0O(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities39SystemCoordinatorParticipantRoleRequestO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t getEnumTagSinglePayload for SystemCoordinatorConfiguration.Wrapped(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemCoordinatorConfiguration.Wrapped(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorState.ParticipantState.Seat and conformance SystemCoordinatorState.ParticipantState.Seat()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat and conformance SystemCoordinatorState.ParticipantState.Seat;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat and conformance SystemCoordinatorState.ParticipantState.Seat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat and conformance SystemCoordinatorState.ParticipantState.Seat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat and conformance SystemCoordinatorState.ParticipantState.Seat;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat and conformance SystemCoordinatorState.ParticipantState.Seat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorState.ParticipantState.Seat and conformance SystemCoordinatorState.ParticipantState.Seat);
  }

  return result;
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

unint64_t lazy protocol witness table accessor for type SystemCoordinatorConfiguration.Wrapped and conformance SystemCoordinatorConfiguration.Wrapped()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped and conformance SystemCoordinatorConfiguration.Wrapped;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped and conformance SystemCoordinatorConfiguration.Wrapped)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorConfiguration.Wrapped and conformance SystemCoordinatorConfiguration.Wrapped);
  }

  return result;
}

uint64_t AssertionManager.updateCallback.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void AssertionManager.assertionCount.setter(uint64_t a1)
{
  Lock.lock()();
  v3 = *(v1 + 40);
  if (v3 == a1)
  {
    Lock.unlock()();
  }

  else
  {
    *(v1 + 40) = a1;
    Lock.unlock()();
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = a1 <= 0;
    }

    if (!v4 || (v3 >= 1 ? (v5 = a1 == 0) : (v5 = 0), v5))
    {
      (*(v1 + 16))(a1);
    }
  }

  Lock.assertNotOwned()();
}

void *AssertionManager.__allocating_init(callback:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  type metadata accessor for Lock();
  swift_allocObject();
  v4[4] = Lock.init()();
  v4[5] = 0;
  v4[2] = a1;
  v4[3] = a2;
  return v4;
}

void *AssertionManager.init(callback:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Lock();
  swift_allocObject();
  v2[4] = Lock.init()();
  v2[5] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t AssertionManager.subscribe()()
{
  type metadata accessor for AssertionManager.Assertion();
  swift_allocObject();

  v1 = specialized AssertionManager.Assertion.init(manager:)(v0);

  return v1;
}

uint64_t AssertionManager.Assertion.__allocating_init(manager:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized AssertionManager.Assertion.init(manager:)(a1);

  return v2;
}

uint64_t AssertionManager.Assertion.init(manager:)(__n128 a1, uint64_t a2)
{
  v2 = specialized AssertionManager.Assertion.init(manager:)(a2);

  return v2;
}

uint64_t AssertionManager.Assertion.deinit()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    swift_weakDestroy();
    return v0;
  }

  v2 = Strong;
  result = Lock.withLock<A>(_:)();
  v4 = v6 - 1;
  if (!__OFSUB__(v6, 1))
  {
    Lock.lock()();
    v5 = *(v2 + 40);
    if (v5 == v4)
    {
      Lock.unlock()();
    }

    else
    {
      *(v2 + 40) = v4;
      Lock.unlock()();
      if (!v5 && v4 >= 1 || v5 >= 1 && v6 == 1)
      {
        (*(v2 + 16))(v4);
      }
    }

    Lock.assertNotOwned()();

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t AssertionManager.Assertion.__deallocating_deinit()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    swift_weakDestroy();
    return swift_deallocClassInstance();
  }

  v1 = Strong;
  result = Lock.withLock<A>(_:)();
  v3 = v5 - 1;
  if (!__OFSUB__(v5, 1))
  {
    Lock.lock()();
    v4 = *(v1 + 40);
    if (v4 == v3)
    {
      Lock.unlock()();
    }

    else
    {
      *(v1 + 40) = v3;
      Lock.unlock()();
      if (!v4 && v3 >= 1 || v4 >= 1 && v5 == 1)
      {
        (*(v1 + 16))(v3);
      }
    }

    Lock.assertNotOwned()();

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t AssertionManager.deinit()
{

  return v0;
}

uint64_t AssertionManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized AssertionManager.Assertion.init(manager:)(uint64_t a1)
{
  swift_weakInit();
  swift_weakAssign();
  result = Lock.withLock<A>(_:)();
  v4 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    Lock.lock()();
    v5 = *(a1 + 40);
    if (v5 == v4)
    {
      Lock.unlock()();
    }

    else
    {
      *(a1 + 40) = v4;
      Lock.unlock()();
      if (!v5 && v4 > 0 || v5 >= 1 && v6 == -1)
      {
        (*(a1 + 16))(v4);
      }
    }

    Lock.assertNotOwned()();
    return v1;
  }

  return result;
}

uint64_t SecTaskRef.value<A>(_:forEntitlement:)@<X0>(void (*a1)(void, void, void)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  error[1] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11EntitlementOSgMd, &_s14CopresenceCore11EntitlementOSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v60 - v11;
  v12 = type metadata accessor for Entitlement();
  v70 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v65 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v66 = &v60 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v60 - v17;
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v60 - v20;
  error[0] = 0;
  v68 = a1;
  v22 = Entitlement.rawValue.getter();
  v23 = MEMORY[0x1B2714130](v22);

  v24 = SecTaskCopyValueForEntitlement(v4, v23, error);

  v73 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
  v25 = swift_dynamicCast();
  v26 = *(*(a2 - 8) + 56);
  if (v25)
  {
    v27 = *(a2 - 8);
    v26(v21, 0, 1, a2);
    (*(v27 + 32))(a3, v21, a2);
    v28 = a3;
    v29 = 0;
  }

  else
  {
    v64 = a3;
    v26(v21, 1, 1, a2);
    (*(v19 + 8))(v21, v18);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Log.default);
    v31 = v70;
    v32 = v71;
    v33 = v68;
    v68 = *(v70 + 16);
    v68(v71, v33, v12);
    v34 = v4;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v61 = v36;
      v62 = v35;
      v63 = v26;
      v37 = v31;
      v38 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v74 = v60;
      *v38 = 136315650;
      v73 = v34;
      type metadata accessor for SecTaskRef(0);
      v39 = v34;
      v40 = String.init<A>(reflecting:)();
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v74);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      v44 = v68;
      v43 = v69;
      v68(v69, v32, v12);
      (*(v37 + 56))(v43, 0, 1, v12);
      v45 = v43;
      v46 = v67;
      outlined init with copy of Entitlement?(v45, v67);
      if ((*(v37 + 48))(v46, 1, v12) == 1)
      {
        v47 = 0xE300000000000000;
        v48 = 7104878;
      }

      else
      {
        v50 = v66;
        (*(v37 + 32))(v66, v46, v12);
        v44(v65, v50, v12);
        v48 = String.init<A>(reflecting:)();
        v47 = v51;
        (*(v37 + 8))(v50, v12);
      }

      outlined destroy of Entitlement?(v69);
      (*(v37 + 8))(v71, v12);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, &v74);

      *(v38 + 14) = v52;
      *(v38 + 22) = 2080;
      swift_beginAccess();
      if (error[0])
      {
        v72 = error[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9UnmanagedVySo10CFErrorRefaGMd, &_ss9UnmanagedVySo10CFErrorRefaGMR);
        v53 = String.init<A>(reflecting:)();
        v55 = v54;
        v26 = v63;
        v49 = v64;
        v56 = v62;
      }

      else
      {
        v55 = 0xE300000000000000;
        v26 = v63;
        v49 = v64;
        v56 = v62;
        v53 = 7104878;
      }

      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v74);

      *(v38 + 24) = v57;
      _os_log_impl(&dword_1AEE80000, v56, v61, "Task %s couldn't find entitlement %s error %s", v38, 0x20u);
      v58 = v60;
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v58, -1, -1);
      MEMORY[0x1B2715BA0](v38, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v32, v12);
      v49 = v64;
    }

    v28 = v49;
    v29 = 1;
  }

  return (v26)(v28, v29, 1, a2);
}

uint64_t outlined init with copy of Entitlement?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11EntitlementOSgMd, &_s14CopresenceCore11EntitlementOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Entitlement?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11EntitlementOSgMd, &_s14CopresenceCore11EntitlementOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Encodable.messageIdentifier.getter(uint64_t a1)
{
  v2 = swift_conformsToProtocol2();
  if (v2 && a1)
  {
    return (*(v2 + 8))(a1, v2);
  }

  return _typeName(_:qualified:)();
}

uint64_t _PublisherElements.Iterator.Inner.pending.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t _PublisherElements.Iterator.Inner.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v5 = type metadata accessor for _PublisherElements.Iterator.Inner.State(0, *(v3 + 80), *(v3 + 88), v4);
  return (*(*(v5 - 8) + 16))(a1, v1 + 4, v5);
}

uint64_t _PublisherElements.Iterator.Inner.state.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v5 = type metadata accessor for _PublisherElements.Iterator.Inner.State(0, *(v3 + 80), *(v3 + 88), v4);
  (*(*(v5 - 8) + 40))(v1 + 4, a1, v5);
  return swift_endAccess();
}

uint64_t _PublisherElements.Iterator.Inner.pendingDemand.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t _PublisherElements.Iterator.Inner.__allocating_init()()
{
  v0 = swift_allocObject();
  _PublisherElements.Iterator.Inner.init()();
  return v0;
}

uint64_t *_PublisherElements.Iterator.Inner.deinit()
{
  v1 = *v0;
  MEMORY[0x1B2715BA0](v0[2], -1, -1);

  v3 = type metadata accessor for _PublisherElements.Iterator.Inner.State(0, *(v1 + 80), *(v1 + 88), v2);
  (*(*(v3 - 8) + 8))(v0 + 4, v3);
  return v0;
}

uint64_t _PublisherElements.Iterator.Inner.__deallocating_deinit()
{
  _PublisherElements.Iterator.Inner.deinit();

  return swift_deallocClassInstance();
}

uint64_t _PublisherElements.Iterator.Inner.receive(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = *(v2 + 16);
  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v13 = type metadata accessor for _PublisherElements.Iterator.Inner.State(0, v6, v5, v12);
  v14 = *(v13 - 1);
  (*(v14 + 16))(v30, v2 + 32, v13);
  if (v31 >= 2)
  {
LABEL_11:
    swift_beginAccess();
    v29 = *(v2 + 24);
    type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {
      os_unfair_lock_unlock(v11);
    }

    else
    {
      swift_beginAccess();
      swift_getWitnessTable();
      RangeReplaceableCollection.removeFirst()();
      swift_endAccess();
      v20 = v28;
      os_unfair_lock_unlock(v11);
      v21 = v14;
      v22 = *(AssociatedTypeWitness - 8);
      (*(v22 + 16))(v10, a1, AssociatedTypeWitness);
      (*(v22 + 56))(v10, 0, 1, AssociatedTypeWitness);
      v14 = v21;
      (*(v27 + 32))(*(*(v20 + 64) + 40), v10, v8);
      swift_continuation_resume();
    }
  }

  else
  {
    v25 = v14;
    v26 = v13;
    swift_beginAccess();
    a1 = *(v2 + 24);
    swift_beginAccess();
    v15 = type metadata accessor for UnsafeContinuation();
    type metadata accessor for Array();

    Array.removeAll(keepingCapacity:)(0);
    swift_endAccess();
    os_unfair_lock_unlock(v11);
    if (MEMORY[0x1B2714340](a1, v15))
    {
      v11 = (AssociatedTypeWitness - 8);
      v13 = (v27 + 32);
      v14 = 4;
      do
      {
        v16 = v14 - 4;
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v18 = *(a1 + 8 * v14);
          v19 = __OFADD__(v16, 1);
          v2 = v14 - 3;
          if (v19)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v18 = _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
          v19 = __OFADD__(v16, 1);
          v2 = v14 - 3;
          if (v19)
          {
LABEL_10:
            __break(1u);
            goto LABEL_11;
          }
        }

        (*(*(AssociatedTypeWitness - 8) + 56))(v10, 1, 1, AssociatedTypeWitness);
        (*v13)(*(*(v18 + 64) + 40), v10, v8);
        swift_continuation_resume();
        ++v14;
      }

      while (v2 != MEMORY[0x1B2714340](a1, v15));
    }

    v14 = v25;
    v13 = v26;
  }

  v23 = static Subscribers.Demand.none.getter();
  (*(v14 + 8))(v30, v13);
  return v23;
}

Swift::Void __swiftcall _PublisherElements.Iterator.Inner.cancel()()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v58 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - v6;
  v57 = *(v1 + 16);
  os_unfair_lock_lock(v57);
  swift_beginAccess();
  v8 = *(v1 + 24);
  swift_beginAccess();
  v61 = v5;
  v9 = type metadata accessor for UnsafeContinuation();
  type metadata accessor for Array();

  Array.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  swift_beginAccess();
  v11 = type metadata accessor for _PublisherElements.Iterator.Inner.State(0, v3, v2, v10);
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 16);
  v12(&v72, v1 + 32, v11);
  if (v73 >= 2)
  {
    outlined init with take of Transferable(&v72, v70);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Log.default);
    outlined init with copy of Transferable(v70, v68);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v58;
    if (v30)
    {
      LODWORD(v56) = v29;
      v32 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v67 = v55;
      v33 = v32;
      *v32 = 136315138;
      outlined init with copy of Transferable(v68, v66);
      outlined init with copy of Subscription?(v66, &v64);
      if (v65)
      {
        outlined init with take of Transferable(&v64, v63);
        outlined init with copy of Transferable(v63, &v62);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pMd, &_s7Combine12Subscription_pMR);
        v34 = String.init<A>(reflecting:)();
        v36 = v35;
        __swift_destroy_boxed_opaque_existential_0(v63);
      }

      else
      {
        v36 = 0xE300000000000000;
        v34 = 7104878;
      }

      outlined destroy of Subscription?(v66);
      __swift_destroy_boxed_opaque_existential_0(v68);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v67);

      v45 = v33;
      *(v33 + 1) = v44;
      _os_log_impl(&dword_1AEE80000, v28, v56, "Handling cancellation by terminating upstream subscription: %s", v33, 0xCu);
      v46 = v55;
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x1B2715BA0](v46, -1, -1);
      MEMORY[0x1B2715BA0](v45, -1, -1);

      v31 = v58;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v68);
    }

    memset(v68, 0, sizeof(v68));
    v69 = xmmword_1AF00FCC0;
    swift_beginAccess();
    (*(v59 + 40))(v1 + 32, v68, v60);
    swift_endAccess();
    os_unfair_lock_unlock(v57);
    __swift_project_boxed_opaque_existential_1(v70, v71);
    dispatch thunk of Cancellable.cancel()();
    if (MEMORY[0x1B2714340](v8, v9))
    {
      v47 = (v31 + 32);
      v48 = 4;
      do
      {
        v49 = v48 - 4;
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          v51 = *(v8 + 8 * v48);
          v42 = __OFADD__(v49, 1);
          v52 = v48 - 3;
          if (v42)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v51 = _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
          v42 = __OFADD__(v49, 1);
          v52 = v48 - 3;
          if (v42)
          {
LABEL_33:
            __break(1u);
            break;
          }
        }

        (*(*(AssociatedTypeWitness - 8) + 56))(v7, 1, 1, AssociatedTypeWitness);
        (*v47)(*(*(v51 + 64) + 40), v7, v61);
        swift_continuation_resume();
        ++v48;
      }

      while (v52 != MEMORY[0x1B2714340](v8, v9));
    }

    __swift_destroy_boxed_opaque_existential_0(v70);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.default);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v55 = v14;
      v17 = v16;
      v56 = swift_slowAlloc();
      v68[0] = v56;
      *v17 = 136315138;
      v54 = v15;
      v18 = v60;
      v12(v70, v1 + 32, v60);
      v19 = >> prefix<A>(_:)(v70, v18);
      v21 = v20;
      v22 = type metadata accessor for Optional();
      (*(*(v22 - 8) + 8))(v70, v22);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v68);

      v24 = v17;
      *(v17 + 4) = v23;
      v25 = v55;
      _os_log_impl(&dword_1AEE80000, v55, v54, "Terminating sequence from state: %s", v24, 0xCu);
      v26 = v56;
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x1B2715BA0](v26, -1, -1);
      MEMORY[0x1B2715BA0](v24, -1, -1);
    }

    else
    {

      v18 = v60;
    }

    memset(v70, 0, sizeof(v70));
    v71 = xmmword_1AF00FCC0;
    swift_beginAccess();
    (*(v59 + 40))(v1 + 32, v70, v18);
    swift_endAccess();
    os_unfair_lock_unlock(v57);
    if (MEMORY[0x1B2714340](v8, v9))
    {
      v37 = (v58 + 32);
      v38 = 4;
      do
      {
        v39 = v38 - 4;
        v40 = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (v40)
        {
          v41 = *(v8 + 8 * v38);
          v42 = __OFADD__(v39, 1);
          v43 = v38 - 3;
          if (v42)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v41 = _ArrayBuffer._getElementSlowPath(_:)();
          swift_unknownObjectRelease();
          v42 = __OFADD__(v39, 1);
          v43 = v38 - 3;
          if (v42)
          {
LABEL_20:
            __break(1u);
            break;
          }
        }

        (*(*(AssociatedTypeWitness - 8) + 56))(v7, 1, 1, AssociatedTypeWitness);
        (*v37)(*(*(v41 + 64) + 40), v7, v61);
        swift_continuation_resume();
        ++v38;
      }

      while (v43 != MEMORY[0x1B2714340](v8, v9));
    }

    (*(v59 + 8))(&v72, v60);
  }
}

uint64_t _PublisherElements.Iterator.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized _PublisherElements.Iterator.init(_:)(a1, a2, a3, a4);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

void _PublisherElements.Iterator.next()()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance _PublisherElements<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return _PublisherElements.Iterator.next()(a1, a2);
}

uint64_t _s15GroupActivities18_PublisherElementsV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = _s15GroupActivities18_PublisherElementsV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6);
}

uint64_t _s15GroupActivities18_PublisherElementsV8IteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance _PublisherElements<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = _PublisherElements.makeAsyncIterator()(a1, a3, a4, a5);
  result = (*(*(a1 - 8) + 8))(v5, a1);
  *a2 = v8;
  return result;
}

uint64_t specialized _PublisherElements.Iterator.Inner.receive(completion:)()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21[-v6];
  v8 = v0[2];
  os_unfair_lock_lock(v8);
  memset(v22, 0, sizeof(v22));
  v23 = xmmword_1AF00FCC0;
  swift_beginAccess();
  v10 = type metadata accessor for _PublisherElements.Iterator.Inner.State(0, v2, v1, v9);
  (*(*(v10 - 8) + 40))(v0 + 4, v22, v10);
  swift_endAccess();
  swift_beginAccess();
  v11 = v0[3];
  swift_beginAccess();
  v12 = type metadata accessor for UnsafeContinuation();
  type metadata accessor for Array();

  Array.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  os_unfair_lock_unlock(v8);
  if (MEMORY[0x1B2714340](v11, v12))
  {
    v13 = (v5 + 32);
    v14 = 4;
    do
    {
      v15 = v14 - 4;
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v17 = *(v11 + 8 * v14);
        v18 = __OFADD__(v15, 1);
        v19 = v14 - 3;
        if (v18)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v17 = _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        v18 = __OFADD__(v15, 1);
        v19 = v14 - 3;
        if (v18)
        {
LABEL_9:
          __break(1u);
        }
      }

      (*(*(AssociatedTypeWitness - 8) + 56))(v7, 1, 1, AssociatedTypeWitness);
      (*v13)(*(*(v17 + 64) + 40), v7, v4);
      swift_continuation_resume();
      ++v14;
    }

    while (v19 != MEMORY[0x1B2714340](v11, v12));
  }
}

uint64_t outlined init with copy of Subscription?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Subscription?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for _PublisherElements(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *storeEnumTagSinglePayload for _PublisherElements(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t getEnumTagSinglePayload for _PublisherElements.Iterator.Inner.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _PublisherElements.Iterator.Inner.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double destructiveInjectEnumTag for _PublisherElements.Iterator.Inner.State(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t dispatch thunk of AnyTransportSession.uploadAttachment(id:attachment:developerMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 40) + **(a6 + 40));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AnyTransportSession.downloadAttachment(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AnyTransportSession.fetchMetadata(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.body.getter;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AnyTransportSession.removeAttachment(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v9(a1, a2, a3);
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t PresenceSession.__allocating_init(provider:serviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v10 = specialized PresenceSession.init(provider:serviceProvider:)(a1, a2, a3, v8, ObjectType, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t PresenceSessionInfo.Participant.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PresenceSessionInfo.Participant.handle.getter()
{
  v1 = *(v0 + *(type metadata accessor for PresenceSessionInfo.Participant(0) + 20));

  return v1;
}

uint64_t PresenceSessionInfo.Participant.description.getter()
{
  _StringGuts.grow(_:)(52);
  MEMORY[0x1B27141F0](0xD000000000000010, 0x80000001AF01BC20);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v1);

  MEMORY[0x1B27141F0](0x656C646E6168202CLL, 0xEA0000000000203ALL);
  v2 = type metadata accessor for PresenceSessionInfo.Participant(0);
  MEMORY[0x1B27141F0](*(v0 + *(v2 + 20)), *(v0 + *(v2 + 20) + 8));
  MEMORY[0x1B27141F0](0xD000000000000013, 0x80000001AF01BC40);
  if (*(v0 + *(v2 + 24)))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 24)))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1B27141F0](v3, v4);

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

uint64_t static PresenceSessionInfo.Participant.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && ((v4 = type metadata accessor for PresenceSessionInfo.Participant(0), v5 = *(v4 + 20), v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v10 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void PresenceSessionInfo.Participant.hash(into:)(uint64_t a1)
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for PresenceSessionInfo.Participant(0);
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(v2 + 24)));
}

Swift::Int PresenceSessionInfo.Participant.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for PresenceSessionInfo.Participant(0);
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + *(v1 + 24)));
  return Hasher._finalize()();
}

uint64_t PresenceSessionInfo.Participant.init(id:handle:isCurrentDevice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for PresenceSessionInfo.Participant(0);
  v12 = (a5 + *(result + 20));
  *v12 = a2;
  v12[1] = a3;
  *(a5 + *(result + 24)) = a4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PresenceSessionInfo.Participant(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 24)));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PresenceSessionInfo.Participant(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PresenceSessionInfo.Participant(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance PresenceSessionInfo.Participant@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PresenceSessionInfo.Participant(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && ((v6 = *(a3 + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v11 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t static PresenceSessionInfo.default.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static PresenceSessionInfo.default;
}

Swift::Int PresenceSession.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int PresenceSession.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1);
  return Hasher._finalize()();
}

uint64_t PresenceSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path setter for PresenceSession.state : PresenceSession(_BYTE *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  LOBYTE(a1) = *a1;
  (*(v5 + 16))(&v9[-v6], *a2 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__state, v4);
  v9[15] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v5 + 8))(v7, v4);
}

uint64_t PresenceSession.state.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6[-v3];
  (*(v2 + 16))(&v6[-v3], v0 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__state, v1);
  CurrentSubject.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v6[15];
}

uint64_t key path setter for PresenceSession.activeParticipants : PresenceSession(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_activeParticipants;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return (*(*v3 + 392))(v5);
}

uint64_t PresenceSession.members.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMd, &_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - v3;
  (*(v2 + 16))(v6 - v3, v0 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__members, v1);
  CurrentSubject.wrappedValue.getter();
  (*(v2 + 8))(v4, v1);
  return v6[1];
}

uint64_t PresenceSession.members.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMd, &_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  (*(v4 + 16))(v8 - v5, v1 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__members, v3);
  v8[1] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v4 + 8))(v6, v3);
}

uint64_t (*PresenceSession.members.modify(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMd, &_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMR);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = CurrentSubject.wrappedValue.modify();
  return PresenceSession.members.modify;
}

uint64_t PresenceSession.sessionInfo.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  (*(v3 + 16))(&v7 - v4, v1 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__sessionInfo, v2);
  CurrentSubject.wrappedValue.getter();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PresenceSession.sessionInfo.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *a1;
  (*(v4 + 16))(v9 - v5, v1 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__sessionInfo, v3);
  v9[1] = v7;
  CurrentSubject.wrappedValue.setter();
  return (*(v4 + 8))(v6, v3);
}

uint64_t (*PresenceSession.sessionInfo.modify(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMR);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = CurrentSubject.wrappedValue.modify();
  return PresenceSession.sessionInfo.modify;
}

uint64_t PresenceSession.$state.getter(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v6 + 16))(&v11 - v7, v3 + *a3, v5);
  v9 = CurrentSubject.projectedValue.getter();
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t PresenceSession.observers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_observers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t PresenceSession.provider.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_provider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PresenceSession.provider.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_provider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SystemCoordinatorHost.delegate.modify;
}

void *PresenceSession.connection.getter()
{
  v1 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_connection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PresenceSession.connection.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_connection;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = v5;
    dispatch thunk of XPCClient.destroyConnection()();

    v5 = *(v2 + v4);
  }

  *(v2 + v4) = a1;
}

void (*PresenceSession.connection.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_connection;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return PresenceSession.connection.modify;
}

void PresenceSession.connection.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  if (a2)
  {
    v8 = v3;
    if (v7)
    {
      v9 = v7;
      dispatch thunk of XPCClient.destroyConnection()();

      v10 = *(v6 + v5);
      v6 = v2[4];
      v5 = v2[5];
    }

    else
    {
      v10 = 0;
    }

    *(v6 + v5) = v3;

    v12 = *v4;
  }

  else
  {
    if (v7)
    {
      v11 = v7;
      dispatch thunk of XPCClient.destroyConnection()();

      v12 = *(v6 + v5);
      v6 = v2[4];
      v5 = v2[5];
    }

    else
    {
      v12 = 0;
    }

    *(v6 + v5) = v3;
  }

  free(v2);
}

uint64_t PresenceSession.__allocating_init(provider:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static BackgroundGroupSessionManager.shared;
  v7 = *(v2 + 352);

  return v7(a1, a2, v5, &protocol witness table for BackgroundGroupSessionManager);
}

uint64_t PresenceSession.init(provider:serviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = specialized PresenceSession.init(provider:serviceProvider:)(a1, a2, a3, v4, ObjectType, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t closure #1 in PresenceSession.init(provider:serviceProvider:)(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20[-1] - v4;
  v6 = *a1;
  if (one-time initialization token for presenceSession != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.presenceSession);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v6;
    v20[0] = v11;
    *v10 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities17AddressableMemberVGMd, &_sShy15GroupActivities17AddressableMemberVGMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1AEE80000, v8, v9, "Received updated membership list: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    v18[5] = v6;

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #1 in PresenceSession.init(provider:serviceProvider:), v18);
  }

  return result;
}

uint64_t closure #1 in closure #1 in PresenceSession.init(provider:serviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*a4 + 376) + **(*a4 + 376));
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v9(a5);
}

uint64_t PresenceSession.join()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceSession.join(), 0, 0);
}

{
  v12 = v0;
  if (one-time initialization token for presenceSession != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.presenceSession);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = PresenceSession.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEE80000, v2, v3, "%s received request to join", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 24) = v9;
  *v9 = v0;
  v9[1] = PresenceSession.join();

  return MEMORY[0x1EEDF8788]();
}

{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = PresenceSession.join();
  }

  else
  {

    v2 = PresenceSession.join();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in PresenceSession.join()()
{
  v1 = *(**(v0 + 16) + 384);

  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = closure #1 in PresenceSession.join();

  return v4(&async function pointer to partial apply for closure #1 in closure #1 in PresenceSession.join());
}

{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](PresenceSession.join(), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t closure #1 in closure #1 in PresenceSession.join()(uint64_t a1)
{
  v1[3] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PresenceSession.join(), 0, 0);
}

{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = closure #1 in closure #1 in PresenceSession.join();
  }

  else
  {
    v4 = closure #1 in closure #1 in PresenceSession.join();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t closure #1 in closure #1 in PresenceSession.join()()
{
  v30 = v0;
  if (one-time initialization token for presenceSession != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 56) = __swift_project_value_buffer(v1, static Log.presenceSession);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v29[0] = v5;
    *v4 = 136315138;
    v6 = PresenceSession.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v29);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEE80000, v2, v3, "%s Starting to process request to join", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  if ((*(**(v0 + 24) + 160))())
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29[0] = v12;
      *v11 = 136315138;
      v13 = PresenceSession.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v29);

      *(v11 + 4) = v15;
      v16 = "%s Failed to join due to invalid state";
LABEL_11:
      _os_log_impl(&dword_1AEE80000, v9, v10, v16, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1B2715BA0](v12, -1, -1);
      MEMORY[0x1B2715BA0](v11, -1, -1);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v17 = (*(**(v0 + 24) + 328))();
  if (v17)
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29[0] = v12;
      *v11 = 136315138;
      v18 = PresenceSession.description.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v29);

      *(v11 + 4) = v20;
      v16 = "%s has existing connection. Failing.";
      goto LABEL_11;
    }

LABEL_12:

    lazy protocol witness table accessor for type PresenceSession.Errors and conformance PresenceSession.Errors();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }

  v24 = *(*(v0 + 24) + OBJC_IVAR____TtC15GroupActivities15PresenceSession_serviceProvider + 8);
  ObjectType = swift_getObjectType();
  v28 = (*(v24 + 56) + **(v24 + 56));
  v26 = swift_task_alloc();
  *(v0 + 64) = v26;
  *v26 = v0;
  v26[1] = closure #1 in closure #1 in PresenceSession.join();
  v27 = *(v0 + 24);

  return v28(v27, ObjectType, v24);
}

{
  v1 = v0[9];
  v2 = v0[3];
  type metadata accessor for PresenceSessionClientConnection();
  v3 = v1;
  PresenceSessionConnectionInfo.endpoint.getter();

  v4 = XPCClient.__allocating_init(listenerEndpoint:)();
  v0[11] = v4;
  swift_allocObject();
  swift_weakInit();

  PresenceSessionClientConnection.handleUpdatedPresentDevices.setter();

  swift_allocObject();
  swift_weakInit();

  PresenceSessionClientConnection.handleServerDisconnectClosure.setter();

  v5 = swift_task_alloc();
  v0[12] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in PresenceSession.join();
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0x29286E696F6ALL, 0xE600000000000000, partial apply for closure #3 in closure #1 in closure #1 in PresenceSession.join(), v5, v7);
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in PresenceSession.join();
  }

  else
  {
    v2 = closure #1 in closure #1 in PresenceSession.join();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(*v4 + 336);
  v7 = v1;
  v6(v1);
  (*(v3 + 16))(v2, v4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__state, v5);
  *(v0 + 144) = 1;
  CurrentSubject.wrappedValue.setter();
  v8 = (*(v3 + 8))(v2, v5);
  v9 = (*(*v4 + 216))(v8);
  *(v0 + 120) = v9;
  v12 = (*(*v4 + 376) + **(*v4 + 376));
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = closure #1 in closure #1 in PresenceSession.join();

  return v12(v9);
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in PresenceSession.join();
  }

  else
  {
    v2 = closure #1 in closure #1 in PresenceSession.join();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

{
  v18 = v0;
  v1 = v0[10];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17[0] = v7;
    *v6 = 136315394;
    v8 = PresenceSession.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v0[2] = v5;
    v11 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v17);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s failed to create remote presence session, error: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  swift_willThrow();

  v15 = v0[1];

  return v15();
}

{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

void *closure #1 in closure #1 in closure #1 in PresenceSession.join()(unint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    if (one-time initialization token for presenceSession != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.presenceSession);
    v47 = a1;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48[0] = v46;
      *v15 = 136315138;
      v16 = type metadata accessor for PresenceSessionParticipant();
      v17 = MEMORY[0x1B27142D0](a1, v16);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v48);

      *(v15 + 4) = v19;
      a1 = v47;
      _os_log_impl(&dword_1AEE80000, v13, v14, "Received updated participants: %s", v15, 0xCu);
      v20 = v46;
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x1B2715BA0](v20, -1, -1);
      MEMORY[0x1B2715BA0](v15, -1, -1);
    }

    if (a1 >> 62)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v48[0] = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0);
      if (v21 < 0)
      {
        __break(1u);
        return result;
      }

      v46 = v11;
      v22 = v48[0];
      v23 = a1;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = 0;
        do
        {
          MEMORY[0x1B2714B30](v24, v23);
          v25 = PresenceSessionParticipant.id.getter();
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v26 = PresenceSessionParticipant.handle.getter();
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          LOBYTE(v26) = PresenceSessionParticipant.isCurrentDevice.getter();
          swift_unknownObjectRelease();
          v30 = &v9[*(v3 + 20)];
          *v30 = v27;
          v30[1] = v29;
          v9[*(v3 + 24)] = v26 & 1;
          v48[0] = v22;
          v32 = *(v22 + 16);
          v31 = *(v22 + 24);
          if (v32 >= v31 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
            v22 = v48[0];
          }

          ++v24;
          *(v22 + 16) = v32 + 1;
          outlined init with take of PresenceSessionInfo.Participant(v9, v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32);
          v23 = v47;
        }

        while (v21 != v24);
      }

      else
      {
        v33 = (a1 + 32);
        do
        {
          v34 = *v33;
          v35 = PresenceSessionParticipant.id.getter();
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v36 = PresenceSessionParticipant.handle.getter();
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = v38;

          LOBYTE(v36) = PresenceSessionParticipant.isCurrentDevice.getter();
          v40 = &v7[*(v3 + 20)];
          *v40 = v37;
          v40[1] = v39;
          v7[*(v3 + 24)] = v36 & 1;
          v48[0] = v22;
          v42 = *(v22 + 16);
          v41 = *(v22 + 24);
          if (v42 >= v41 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
            v22 = v48[0];
          }

          *(v22 + 16) = v42 + 1;
          outlined init with take of PresenceSessionInfo.Participant(v7, v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v42);
          ++v33;
          --v21;
        }

        while (v21);
      }

      v11 = v46;
    }

    v43 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities19PresenceSessionInfoV11ParticipantV_SayAHGTt0g5Tf4g_n(v22);

    v44 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_activeParticipants;
    swift_beginAccess();
    *(v11 + v44) = v43;

    (*(*v11 + 392))(v45);
  }

  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in PresenceSession.join()(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-v3];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (one-time initialization token for presenceSession != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.presenceSession);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1AEE80000, v8, v9, "Server disconnected. Invalidating session.", v10, 2u);
      MEMORY[0x1B2715BA0](v10, -1, -1);
    }

    (*(v2 + 16))(v4, v6 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__state, v1);
    v11[7] = 2;
    CurrentSubject.wrappedValue.setter();

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t closure #3 in closure #1 in closure #1 in PresenceSession.join()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  v11 = XPCClient.queue.getter();
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in closure #3 in closure #1 in closure #1 in PresenceSession.join();
  *(v14 + 24) = v13;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_100;
  v15 = _Block_copy(aBlock);
  v16 = a2;

  dispatch_sync(v11, v15);

  _Block_release(v15);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #3 in closure #1 in closure #1 in PresenceSession.join()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  v13 = a2;
  (*(v6 + 16))(&v12[-v7], a2, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  (*(v6 + 32))(v10 + v9, v8, v5);

  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

uint64_t PresenceSession.leave()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceSession.leave(), 0, 0);
}

{
  v12 = v0;
  if (one-time initialization token for presenceSession != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.presenceSession);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = PresenceSession.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEE80000, v2, v3, "%s received request to leave", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 24) = v9;
  *v9 = v0;
  v9[1] = PresenceSession.leave();

  return MEMORY[0x1EEDF8788]();
}

{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = PresenceSession.leave();
  }

  else
  {

    v2 = PresenceSession.leave();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t closure #1 in PresenceSession.leave()()
{
  v1 = *(**(v0 + 16) + 384);

  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = closure #1 in PresenceSession.leave();

  return v4(&async function pointer to partial apply for closure #1 in closure #1 in PresenceSession.leave());
}

{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](PresenceSession.leave(), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t closure #1 in closure #1 in PresenceSession.leave()(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in PresenceSession.leave(), 0, 0);
}

uint64_t closure #1 in closure #1 in PresenceSession.leave()()
{
  v22 = v0;
  if ((*(**(v0 + 16) + 160))() == 1)
  {
    v1 = (*(**(v0 + 16) + 328))();
    *(v0 + 48) = v1;
    if (v1)
    {
      v2 = v1;
      v3 = *(v0 + 16);
      v4 = swift_task_alloc();
      *(v0 + 56) = v4;
      *(v4 + 16) = v2;
      *(v4 + 24) = v3;
      v5 = swift_task_alloc();
      *(v0 + 64) = v5;
      *v5 = v0;
      v5[1] = closure #1 in closure #1 in PresenceSession.leave();
      v6 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DE38](v5, 0, 0, 0x2928657661656CLL, 0xE700000000000000, partial apply for closure #1 in closure #1 in closure #1 in PresenceSession.leave(), v4, v6);
    }

    if (one-time initialization token for presenceSession != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Log.presenceSession);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      v14 = PresenceSession.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v21);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1AEE80000, v10, v11, "%s couldn't leave because we don't have an XPC connection. Daemon would've torn down when the connection went away so returning success.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1B2715BA0](v13, -1, -1);
      MEMORY[0x1B2715BA0](v12, -1, -1);
    }

    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    v19 = *(v0 + 24);
    (*(v18 + 16))(v17, *(v0 + 16) + OBJC_IVAR____TtC15GroupActivities15PresenceSession__state, v19);
    *(v0 + 80) = 2;
    CurrentSubject.wrappedValue.setter();
    (*(v18 + 8))(v17, v19);
    (*(**(v0 + 16) + 336))(0);

    v8 = *(v0 + 8);
  }

  else
  {
    lazy protocol witness table accessor for type PresenceSession.Errors and conformance PresenceSession.Errors();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v8 = *(v0 + 8);
  }

  return v8();
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in PresenceSession.leave();
  }

  else
  {

    v2 = closure #1 in closure #1 in PresenceSession.leave();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);

  (*(v3 + 16))(v1, v4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__state, v2);
  *(v0 + 82) = 2;
  CurrentSubject.wrappedValue.setter();
  (*(v3 + 8))(v1, v2);
  (*(**(v0 + 16) + 336))(0);

  v5 = *(v0 + 8);

  return v5();
}

{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__state, v3);
  *(v0 + 81) = 2;
  CurrentSubject.wrappedValue.setter();
  (*(v2 + 8))(v1, v3);
  (*(*v4 + 336))(0);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t closure #1 in closure #1 in closure #1 in PresenceSession.leave()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  v13 = a1;
  (*(v6 + 16))(&v12[-v7], a1, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  (*(v6 + 32))(v10 + v9, v8, v5);

  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #3 in closure #1 in closure #1 in PresenceSession.join()(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v19 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *a1;
  (*(v11 + 16))(&v18 - v12, a2, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v13, v10);
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = a5;
  v17 = _Block_copy(aBlock);

  [v14 *v19];
  _Block_release(v17);
}

uint64_t PresenceSession.updateMembers(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](PresenceSession.updateMembers(_:), 0, 0);
}

uint64_t PresenceSession.updateMembers(_:)()
{
  v55 = v0;
  v1 = v0[3];
  v2 = *(*v1 + 224);

  v4 = v2(v3);
  v5 = (*(*v1 + 328))(v4);
  v0[4] = v5;
  if (v5)
  {
    v52 = v5;
    v53 = v0;
    v0 = v0[2];
    v6 = MEMORY[0x1E69E7CC0];
    v7 = v0[7];
    v54[0] = MEMORY[0x1E69E7CC0];
    v8 = -1;
    v9 = -1 << *(v0 + 32);
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & v7;
    v11 = (63 - v9) >> 6;

    v12 = 0;
    if (!v10)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v14 = (v0[6] + ((v12 << 10) | (16 * v13)));
        v15 = *v14;
        v16 = v14[1];
        v17 = objc_opt_self();

        v18 = MEMORY[0x1B2714130](v15, v16);
        v19 = [v17 normalizedHandleWithDestinationID_];

        if (v19)
        {
          break;
        }

        if (!v10)
        {
          goto LABEL_7;
        }
      }

      MEMORY[0x1B27142A0](v20);
      if (*((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v54[0];
    }

    while (v10);
    while (1)
    {
LABEL_7:
      v21 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v21 >= v11)
      {
        break;
      }

      v10 = v0[v21 + 7];
      ++v12;
      if (v10)
      {
        v12 = v21;
        goto LABEL_5;
      }
    }

    v0 = v53;

    v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5Tf4g_n(v6);
    v53[5] = v22;

    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = __CocoaSet.count.getter();
    }

    else
    {
      v23 = v22[2];
    }

    if (v23 == *(v53[2] + 16))
    {
      v33 = v53[3];
      v34 = swift_task_alloc();
      v53[6] = v34;
      v34[2] = v52;
      v34[3] = v22;
      v34[4] = v33;
      v35 = swift_task_alloc();
      v53[7] = v35;
      *v35 = v53;
      v35[1] = PresenceSession.updateMembers(_:);
      v36 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DE38](v35, 0, 0, 0xD000000000000011, 0x80000001AF01BC60, partial apply for closure #2 in PresenceSession.updateMembers(_:), v34, v36);
    }

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Log.default);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54[0] = v41;
      *v40 = 136315394;
      lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember();
      v42 = Set.description.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v54);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      type metadata accessor for TUHandle();
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle, MEMORY[0x1E69E81B8]);
      v45 = Set.description.getter();
      v47 = v46;

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v54);

      *(v40 + 14) = v48;
      _os_log_impl(&dword_1AEE80000, v38, v39, "Failed to convert members types: %s vs convertedMembers: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v41, -1, -1);
      MEMORY[0x1B2715BA0](v40, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type PresenceSession.Errors and conformance PresenceSession.Errors();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
  }

  else
  {
    if (one-time initialization token for presenceSession != -1)
    {
LABEL_36:
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Log.presenceSession);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v54[0] = v28;
      *v27 = 136315138;
      v29 = PresenceSession.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v54);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1AEE80000, v25, v26, "%s Dropping update due to no connection existing", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1B2715BA0](v28, -1, -1);
      MEMORY[0x1B2715BA0](v27, -1, -1);
    }

    lazy protocol witness table accessor for type PresenceSession.Errors and conformance PresenceSession.Errors();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
  }

  v50 = v0[1];

  return v50();
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = PresenceSession.updateMembers(_:);
  }

  else
  {

    v2 = PresenceSession.updateMembers(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #2 in PresenceSession.updateMembers(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  v13 = XPCClient.queue.getter();
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v9 + 32))(v15 + v14, v12, v8);
  *(v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in closure #2 in PresenceSession.updateMembers(_:);
  *(v16 + 24) = v15;
  aBlock[4] = _sIg_Ieg_TRTA_0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_3;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  dispatch_sync(v13, v17);

  _Block_release(v17);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #2 in PresenceSession.updateMembers(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-v9];
  v15 = a2;
  v16 = a3;
  (*(v8 + 16))(&v14[-v9], a3, v7);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  (*(v8 + 32))(v12 + v11, v10, v7);

  XPCClient.withSynchronousHost<A>(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #2 in PresenceSession.updateMembers(_:)(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - v7;
  v9 = *a1;
  type metadata accessor for TUHandle();
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type TUHandle and conformance NSObject, type metadata accessor for TUHandle, MEMORY[0x1E69E81B8]);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(v6 + 16))(v8, a3, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v8, v5);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #2 in PresenceSession.updateMembers(_:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_65;
  v13 = _Block_copy(aBlock);

  [v9 updateMembers:isa completion:v13];
  _Block_release(v13);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #3 in closure #1 in closure #1 in PresenceSession.join()(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #2 in closure #1 in closure #3 in closure #1 in closure #1 in PresenceSession.join()(void *a1)
{
  if (one-time initialization token for presenceSession != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.presenceSession);

  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    v8 = PresenceSession.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_1AEE80000, v4, v5, "%s had its error handler triggered for the XPC message. Error: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v17 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t PresenceSession.invalidation(block:)(int *a1)
{
  v2[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v7 = (a1 + *a1);
  v5 = swift_task_alloc();
  v2[7] = v5;
  *v5 = v2;
  v5[1] = PresenceSession.invalidation(block:);

  return v7();
}

uint64_t PresenceSession.invalidation(block:)()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](PresenceSession.invalidation(block:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v23 = v0;
  if (one-time initialization token for presenceSession != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.presenceSession);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = v8;
    *v7 = 136315394;
    v9 = PresenceSession.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v0 + 16) = v6;
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v22);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Invalidating %s due to invalidation block throwing error. %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  v19 = *(v0 + 24);
  v18 = *(v0 + 32);
  (*(v17 + 16))(v16, v19 + OBJC_IVAR____TtC15GroupActivities15PresenceSession__state, v18);
  *(v0 + 72) = 2;
  CurrentSubject.wrappedValue.setter();
  (*(v17 + 8))(v16, v18);
  (*(*v19 + 336))(0);
  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t PresenceSession.deinit()
{
  v1 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__members;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMd, &_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMR);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__sessionInfo;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMR);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_workQueue;
  v10 = type metadata accessor for AsyncSerialQueue();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  outlined destroy of weak SystemCoordinatorHostDelegate?(v0 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_provider);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PresenceSession.__deallocating_deinit()
{
  PresenceSession.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Identifiable.id.getter in conformance PresenceSession@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15GroupActivities15PresenceSession_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t PresenceSession.description.getter()
{
  _StringGuts.grow(_:)(36);
  MEMORY[0x1B27141F0](0xD000000000000016, 0x80000001AF01BC80);
  _print_unlocked<A, B>(_:_:)();
  v1 = MEMORY[0x1B27141F0](0x3A6574617473202CLL, 0xE900000000000020);
  (*(*v0 + 160))(v1);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

uint64_t specialized PresenceSession.init(provider:serviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a3;
  v48 = a6;
  v45 = a2;
  v43 = a1;
  v46 = type metadata accessor for UUID();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v38 = &v37 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities19PresenceSessionInfoVGMR);
  v12 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMd, &_s14CopresenceCore14CurrentSubjectVyShy15GroupActivities17AddressableMemberVGGMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities15PresenceSessionC5StateOGMR);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v37 - v21;
  v23 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__state;
  LOBYTE(v50) = 0;
  CurrentSubject.init(wrappedValue:)();
  (*(v20 + 32))(a4 + v23, v22, v19);
  v24 = MEMORY[0x1E69E7CD0];
  *(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_activeParticipants) = MEMORY[0x1E69E7CD0];
  v25 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__members;
  v50 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities17AddressableMemberVGMd, &_sShy15GroupActivities17AddressableMemberVGMR);
  CurrentSubject.init(wrappedValue:)();
  (*(v16 + 32))(a4 + v25, v18, v15);
  v26 = OBJC_IVAR____TtC15GroupActivities15PresenceSession__sessionInfo;
  v50 = v24;
  CurrentSubject.init(wrappedValue:)();
  (*(v12 + 32))(a4 + v26, v14, v37);
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v38, 1, 1, v27);
  (*(v40 + 104))(v39, *MEMORY[0x1E69E8650], v41);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  *(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_observers) = v24;
  v28 = a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_provider;
  *(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_provider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_connection) = 0;
  ObjectType = swift_getObjectType();
  v30 = v45;
  v31 = *(v45 + 8);
  v32 = v42;
  GroupSessionProvider.uuid.getter(ObjectType, v31, v42);
  (*(v44 + 32))(a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_id, v32, v46);
  swift_beginAccess();
  *(v28 + 8) = v30;
  swift_unknownObjectWeakAssign();
  v33 = (a4 + OBJC_IVAR____TtC15GroupActivities15PresenceSession_serviceProvider);
  v34 = v48;
  *v33 = v47;
  v33[1] = v34;
  v35 = *(v31 + 72);
  swift_unknownObjectRetain();
  v49 = v35(ObjectType, v31);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Set<AddressableMember>, Never> and conformance CurrentValueSubject<A, B>();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return a4;
}

uint64_t partial apply for closure #1 in PresenceSession.join()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in PresenceSession.join()(a1, v1);
}

uint64_t partial apply for closure #1 in PresenceSession.leave()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in PresenceSession.leave()(a1, v1);
}

unint64_t lazy protocol witness table accessor for type PresenceSession.Errors and conformance PresenceSession.Errors()
{
  result = lazy protocol witness table cache variable for type PresenceSession.Errors and conformance PresenceSession.Errors;
  if (!lazy protocol witness table cache variable for type PresenceSession.Errors and conformance PresenceSession.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceSession.Errors and conformance PresenceSession.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenceSession.Errors and conformance PresenceSession.Errors;
  if (!lazy protocol witness table cache variable for type PresenceSession.Errors and conformance PresenceSession.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceSession.Errors and conformance PresenceSession.Errors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember()
{
  result = lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember;
  if (!lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember;
  if (!lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember;
  if (!lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember;
  if (!lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember);
  }

  return result;
}

unint64_t type metadata accessor for TUHandle()
{
  result = lazy cache variable for type metadata for TUHandle;
  if (!lazy cache variable for type metadata for TUHandle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUHandle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresenceSession.State and conformance PresenceSession.State()
{
  result = lazy protocol witness table cache variable for type PresenceSession.State and conformance PresenceSession.State;
  if (!lazy protocol witness table cache variable for type PresenceSession.State and conformance PresenceSession.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenceSession.State and conformance PresenceSession.State);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PresenceSessionInfo(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PresenceSessionInfo(uint64_t result, int a2, int a3)
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

uint64_t type metadata completion function for PresenceSessionInfo.Participant(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for PresenceSession(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CurrentSubject<PresenceSession.State>(319, &lazy cache variable for type metadata for CurrentSubject<PresenceSession.State>, &type metadata for PresenceSession.State);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CurrentSubject<Set<AddressableMember>>(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CurrentSubject<PresenceSession.State>(319, &lazy cache variable for type metadata for CurrentSubject<PresenceSessionInfo>, &type metadata for PresenceSessionInfo);
        if (v4 <= 0x3F)
        {
          type metadata accessor for AsyncSerialQueue();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of PresenceSession.join()()
{
  v4 = (*(*v0 + 360) + **(*v0 + 360));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v4();
}

uint64_t dispatch thunk of PresenceSession.leave()()
{
  v4 = (*(*v0 + 368) + **(*v0 + 368));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v4();
}

uint64_t dispatch thunk of PresenceSession.updateMembers(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 376) + **(*v1 + 376));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v6(a1);
}

uint64_t dispatch thunk of PresenceSession.invalidation(block:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 384) + **(*v2 + 384));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v8(a1, a2);
}

void type metadata accessor for CurrentSubject<Set<AddressableMember>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CurrentSubject<Set<AddressableMember>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy15GroupActivities17AddressableMemberVGMd, &_sShy15GroupActivities17AddressableMemberVGMR);
    v1 = type metadata accessor for CurrentSubject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CurrentSubject<Set<AddressableMember>>);
    }
  }
}

void type metadata accessor for CurrentSubject<PresenceSession.State>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for CurrentSubject();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t partial apply for closure #1 in closure #1 in PresenceSession.init(provider:serviceProvider:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in PresenceSession.init(provider:serviceProvider:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #2 in PresenceSession.updateMembers(_:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #2 in PresenceSession.updateMembers(_:)(v3, v4, v0 + v2, v5);
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in PresenceSession.leave()()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in PresenceSession.leave()(v0);
}

uint64_t partial apply for closure #1 in closure #1 in PresenceSession.join()()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in PresenceSession.join()(v0);
}

uint64_t partial apply for closure #1 in closure #3 in closure #1 in closure #1 in PresenceSession.join()()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #3 in closure #1 in closure #1 in PresenceSession.join()(v3, v0 + v2, v4);
}

uint64_t objectdestroy_58Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_61Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t outlined init with take of PresenceSessionInfo.Participant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresenceSessionInfo.Participant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CurrentValueSubject<Set<AddressableMember>, Never> and conformance CurrentValueSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type CurrentValueSubject<Set<AddressableMember>, Never> and conformance CurrentValueSubject<A, B>;
  if (!lazy protocol witness table cache variable for type CurrentValueSubject<Set<AddressableMember>, Never> and conformance CurrentValueSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CurrentValueSubject<Set<AddressableMember>, Never> and conformance CurrentValueSubject<A, B>);
  }

  return result;
}

Swift::Int CKShareGroupSessionProvider.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CKShareGroupSessionProvider<A>.Errors(uint64_t a1)
{
  Hasher.init(_seed:)();
  CKShareGroupSessionProvider.Errors.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

double CKShareGroupSessionProvider.presenceInfo.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t CKShareGroupSessionProvider.presenceInfo.setter(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path setter for CKShareGroupSessionProvider.queue : <A>CKShareGroupSessionProvider<A>(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncSerialQueue();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 280))(v6);
}

uint64_t CKShareGroupSessionProvider.queue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = type metadata accessor for AsyncSerialQueue();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t CKShareGroupSessionProvider.queue.setter(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  v4 = type metadata accessor for AsyncSerialQueue();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id CKShareGroupSessionProvider.container.getter()
{
  v1 = *(*v0 + 152);
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CKShareGroupSessionProvider.container.setter(uint64_t a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for CKShareGroupSessionProvider.share : <A>CKShareGroupSessionProvider<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

uint64_t CKShareGroupSessionProvider.share.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t CKShareGroupSessionProvider.share.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*CKShareGroupSessionProvider.share.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  MEMORY[0x1EEE9AC00](KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return CKShareGroupSessionProvider.share.modify;
}

void CKShareGroupSessionProvider.share.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for CKShareGroupSessionProvider.$share : <A>CKShareGroupSessionProvider<A>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7CKShareC_GMd, &_s7Combine9PublishedV9PublisherVySo7CKShareC_GMR);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*(**a2 + 352))(v6);
}

uint64_t CKShareGroupSessionProvider.$share.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7CKShareCGMd, &_s7Combine9PublishedVySo7CKShareCGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t CKShareGroupSessionProvider.$share.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7CKShareC_GMd, &_s7Combine9PublishedV9PublisherVySo7CKShareC_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7CKShareCGMd, &_s7Combine9PublishedVySo7CKShareCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*CKShareGroupSessionProvider.$share.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7CKShareC_GMd, &_s7Combine9PublishedV9PublisherVySo7CKShareC_GMR);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  CKShareGroupSessionProvider.$share.getter();
  return CKShareGroupSessionProvider.$share.modify;
}

void CKShareGroupSessionProvider.$share.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    CKShareGroupSessionProvider.$share.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    CKShareGroupSessionProvider.$share.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CKShareGroupSessionProvider.cancellables.setter(uint64_t a1)
{
  v3 = *(*v1 + 168);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t CKShareGroupSessionProvider.__allocating_init(id:activity:share:container:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = swift_allocObject();
  CKShareGroupSessionProvider.init(id:activity:share:container:)(a1, a2, a3, a4, a5);
  return v10;
}

char *CKShareGroupSessionProvider.init(id:activity:share:container:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v85 = a5;
  v86 = a3;
  v83 = a1;
  v84 = a2;
  v8 = *v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v77 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v77 - v14;
  v87[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMR);
  swift_allocObject();
  *(v5 + 4) = CurrentValueSubject.init(_:)();
  v16 = *(*v5 + 136);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v87[0] = static PresenceSessionInfo.default;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMR);
  swift_allocObject();

  *&v5[v16] = CurrentValueSubject.init(_:)();
  static TaskPriority.userInitiated.getter();
  v17 = type metadata accessor for TaskPriority();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v79 = v18 + 56;
  v80 = v19;
  v19(v15, 0, 1, v17);
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8650], v9);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  *&v5[*(*v5 + 168)] = MEMORY[0x1E69E7CD0];
  v20 = v84;
  *(v5 + 2) = v83;
  *(v5 + 3) = v20;
  v21 = v8[10];
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v84 = *(*v5 + 120);
  v24 = v86;
  v23(&v5[v84], v86, v21);
  v25 = [a4 containerID];
  v82 = v8;
  v83 = v25;
  if (!v25)
  {
    if (one-time initialization token for ckShareGroupSessionProvider != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Log.ckShareGroupSessionProvider);
    v61 = a4;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_18;
    }

    v52 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v81 = v22;
    v54 = v62;
    v87[0] = v62;
    *v52 = 136315138;
    v88 = v61;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
    v63 = v61;
    v64 = String.init<A>(reflecting:)();
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v87);

    *(v52 + 4) = v66;
    v59 = "Share %s doesn't have a containerID";
    goto LABEL_17;
  }

  v78 = v15;

  v87[0] = CKShare.members.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  swift_allocObject();
  *(v5 + 5) = CurrentValueSubject.init(_:)();
  v26 = [a4 currentUserParticipant];
  v27 = a4;
  if (v26)
  {
    v28 = v26;
    v29 = CKShareParticipant.handle.getter();

    if (v29)
    {
      v81 = v22;
      v84 = v21;
      v30 = [v29 normalizedValue];
      if (!v30)
      {
        v30 = [v29 value];
      }

      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v29;
      v34 = v33;

      v35 = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember();
      v36 = &v6[*(*v6 + 128)];
      *v36 = v32;
      v36[1] = v34;
      v36[3] = &type metadata for AddressableMember;
      v36[4] = v35;
      v37 = v85;
      *&v6[*(*v6 + 152)] = v85;
      swift_beginAccess();
      v85 = v37;
      v82 = v27;
      v88 = v82;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
      Published.init(initialValue:)();
      swift_endAccess();
      v38 = v78;
      v39 = v80;
      v80(v78, 1, 1, v17);
      v40 = swift_allocObject();
      v40[2] = 0;
      v40[3] = 0;
      v40[4] = v6;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v38, &async function pointer to partial apply for closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:), v40);
      swift_beginAccess();
      type metadata accessor for AnyCancellable();
      swift_allocObject();

      v41 = AnyCancellable.init(_:)();
      specialized Set._Variant.insert(_:)(&v88, v41);

      swift_endAccess();

      v39(v38, 1, 1, v17);
      v42 = swift_allocObject();
      v42[2] = 0;
      v42[3] = 0;
      v43 = v82;
      v42[4] = v6;
      v42[5] = v43;
      v44 = v85;
      v42[6] = v85;
      v45 = v44;
      v46 = v43;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v38, &async function pointer to partial apply for closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:), v42);
      swift_beginAccess();
      swift_allocObject();

      v47 = AnyCancellable.init(_:)();
      specialized Set._Variant.insert(_:)(&v88, v47);

      swift_endAccess();

      (*(v81 + 8))(v86, v84);
      return v6;
    }
  }

  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, static Log.ckShareGroupSessionProvider);
  a4 = v27;
  v49 = v27;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v81 = v22;
    v54 = v53;
    v87[0] = v53;
    *v52 = 136315138;
    v88 = v49;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
    v55 = v49;
    v56 = String.init<A>(reflecting:)();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v87);

    *(v52 + 4) = v58;
    v59 = "Share %s doesn't have a currentUserParticipant";
LABEL_17:
    _os_log_impl(&dword_1AEE80000, v50, v51, v59, v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    v67 = v54;
    v22 = v81;
    MEMORY[0x1B2715BA0](v67, -1, -1);
    v68 = v52;
    v24 = v86;
    MEMORY[0x1B2715BA0](v68, -1, -1);
  }

LABEL_18:

  v69 = v82[11];
  type metadata accessor for CKShareGroupSessionProvider.Errors(0, v21, v69, v70);
  swift_getWitnessTable();
  swift_allocError();
  *v71 = 0;
  swift_willThrow();

  v72 = *(v22 + 8);
  v72(v24, v21);

  if (v83)
  {
  }

  v72(&v6[v84], v21);

  v73 = *(*v6 + 144);
  v74 = type metadata accessor for AsyncSerialQueue();
  (*(*(v74 - 8) + 8))(&v6[v73], v74);

  type metadata accessor for CKShareGroupSessionProvider(0, v21, v69, v75);
  swift_deallocPartialClassInstance();
  return v6;
}

char *CKShare.members.getter()
{
  v1 = [v0 participants];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x1E695BAD8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = MEMORY[0x1E69E7CC0];
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_41:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    v41 = v2 & 0xC000000000000001;
    v7 = &selRef_activityIdentifier;
    v40 = v2;
    do
    {
      v39 = v5;
      v8 = v6;
      v9 = v41;
      while (1)
      {
        if (v9)
        {
          v11 = MEMORY[0x1B2714B30](v8, v2);
        }

        else
        {
          if (v8 >= *(v3 + 16))
          {
            goto LABEL_40;
          }

          v11 = *(v2 + 8 * v8 + 32);
        }

        v12 = v11;
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ([v11 v7[51]] != 2)
        {
          if (one-time initialization token for default != -1)
          {
            swift_once();
          }

          v13 = type metadata accessor for Logger();
          __swift_project_value_buffer(v13, static Log.default);
          v14 = v12;
          v15 = Logger.logObject.getter();
          v16 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            v43 = v18;
            *v17 = 136315138;
            v42 = v14;
            v19 = String.init<A>(reflecting:)();
            v21 = v4;
            v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v43);
            v2 = v40;

            *(v17 + 4) = v22;
            v4 = v21;
            _os_log_impl(&dword_1AEE80000, v15, v16, "Skipping participant due to status: %s", v17, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v18);
            v23 = v18;
            v9 = v41;
            MEMORY[0x1B2715BA0](v23, -1, -1);
            MEMORY[0x1B2715BA0](v17, -1, -1);
          }

          else
          {
          }

          v7 = &selRef_activityIdentifier;
          goto LABEL_7;
        }

        v10 = CKShareParticipant.handle.getter();

        if (v10)
        {
          break;
        }

LABEL_7:
        ++v8;
        if (v6 == v4)
        {
          v5 = v39;
          goto LABEL_25;
        }
      }

      MEMORY[0x1B27142A0]();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v44;
    }

    while (v6 != v4);
  }

LABEL_25:

  if (!(v5 >> 62))
  {
    v24 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_27;
    }

LABEL_43:

    v27 = MEMORY[0x1E69E7CC0];
LABEL_44:
    v38 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities17AddressableMemberV_SayAFGTt0g5Tf4g_n(v27);

    return v38;
  }

  v24 = __CocoaSet.count.getter();
  if (!v24)
  {
    goto LABEL_43;
  }

LABEL_27:
  v44 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    v27 = v44;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1B2714B30](v26, v5);
      }

      else
      {
        v28 = *(v5 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = [v28 normalizedValue];
      if (v30)
      {
        v31 = v29;
        v29 = v30;
      }

      else
      {
        v31 = [v29 value];
      }

      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v44 = v27;
      v36 = *(v27 + 16);
      v35 = *(v27 + 24);
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        v27 = v44;
      }

      ++v26;
      *(v27 + 16) = v36 + 1;
      v37 = v27 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
    }

    while (v24 != v26);

    goto LABEL_44;
  }

  __break(1u);
  return result;
}

id CKShareParticipant.handle.getter()
{
  v1 = v0;
  v2 = [v0 userIdentity];
  v3 = [v2 lookupInfo];

  if (!v3)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.default);
    v8 = v1;
    v3 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35[0] = v11;
      *v10 = 136315138;
      v36 = v8;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x1E695BAD8);
      v12 = v8;
      v13 = String.init<A>(reflecting:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v35);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1AEE80000, v3, v9, "Missing user identity for participant: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B2715BA0](v11, -1, -1);
      MEMORY[0x1B2715BA0](v10, -1, -1);
    }

    goto LABEL_20;
  }

  v4 = [v3 emailAddress];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() normalizedEmailAddressHandleForValue_];

    if (!v6)
    {
LABEL_15:
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Log.default);
      v25 = v1;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v35[0] = v29;
        *v28 = 136315138;
        v36 = v25;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x1E695BAD8);
        v30 = v25;
        v31 = String.init<A>(reflecting:)();
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v35);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_1AEE80000, v26, v27, "Missing handle for participant: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x1B2715BA0](v29, -1, -1);
        MEMORY[0x1B2715BA0](v28, -1, -1);
      }

LABEL_20:
      return 0;
    }
  }

  else
  {
    v16 = [v3 phoneNumber];
    if (!v16)
    {
      goto LABEL_15;
    }

    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
    v21 = PNCopyBestGuessCountryCodeForNumber();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v35[0] = 43;
      v35[1] = 0xE100000000000000;
      MEMORY[0x1B27141F0](v18, v20);

      v23 = MEMORY[0x1B2714130](43, 0xE100000000000000);

      v22 = PNCopyBestGuessCountryCodeForNumber();
    }

    v6 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v17 isoCountryCode:v22];

    if (!v6)
    {
      goto LABEL_15;
    }
  }

  return v6;
}

uint64_t closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySo7CKShareC_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySo7CKShareC_GGMR);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7CKShareC_GMd, &_s7Combine9PublishedV9PublisherVySo7CKShareC_GMR);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo7CKShareC_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo7CKShareC_G_GMR);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:), 0, 0);
}

uint64_t closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  (*(**(v0 + 32) + 344))();
  v7 = lazy protocol witness table accessor for type Published<CKShare>.Publisher and conformance Published<A>.Publisher();
  MEMORY[0x1B2713ED0](v3, v7);
  (*(v2 + 8))(v1, v3);
  AsyncPublisher.makeAsyncIterator()();
  (*(v6 + 8))(v4, v5);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:);

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5(0, 0);
}

{
  v34 = v0;
  v1 = v0[15];
  if (v1)
  {
    if (one-time initialization token for ckShareGroupSessionProvider != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.ckShareGroupSessionProvider);

    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[4];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v33 = v9;
      *v8 = 136315394;
      v10 = (*(*v7 + 408))();
      v12 = v11;

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v33);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      v0[3] = v3;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
      v14 = v3;
      v15 = String.init<A>(reflecting:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v33);

      *(v8 + 14) = v17;
      _os_log_impl(&dword_1AEE80000, v4, v5, "%s Saw an updated CKShare: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v9, -1, -1);
      MEMORY[0x1B2715BA0](v8, -1, -1);
    }

    else
    {
    }

    (*(*v0[4] + 224))(v18);
    v0[2] = CKShare.members.getter();
    CurrentValueSubject.send(_:)();

    v30 = swift_task_alloc();
    v0[14] = v30;
    *v30 = v0;
    v30[1] = closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:);

    return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5(0, 0);
  }

  else
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    if (one-time initialization token for ckShareGroupSessionProvider != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.ckShareGroupSessionProvider);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[4];
    if (v22)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315138;
      v26 = (*(*v23 + 408))();
      v28 = v27;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v33);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1AEE80000, v20, v21, "%s Stopped listening for updated CKShares", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B2715BA0](v25, -1, -1);
      MEMORY[0x1B2715BA0](v24, -1, -1);
    }

    else
    {
    }

    v32 = v0[1];

    return v32();
  }
}

uint64_t closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1)
{
  *(*v2 + 120) = a1;

  if (!v1)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:), 0, 0);
  }

  return result;
}

uint64_t closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = type metadata accessor for AsyncSerialQueue();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySo7CKShareCs5Error_pGMd, &_sScsySo7CKShareCs5Error_pGMR);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVySo7CKShareCs5Error_p_GMd, &_sScs8IteratorVySo7CKShareCs5Error_p_GMR);
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:), 0, 0);
}

uint64_t closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)()
{
  v35 = v0;
  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v3, static Log.ckShareGroupSessionProvider);

  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[9];
    v33 = v0[10];
    v9 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136315650;
    v12 = (*(*v9 + 408))();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v34);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v0[6] = v8;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
    v16 = v8;
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v34);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2080;
    v0[7] = v33;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKContainer, 0x1E695B888);
    v20 = v33;
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v34);

    *(v10 + 24) = v23;
    _os_log_impl(&dword_1AEE80000, v6, v7, "%s Starting task to listen for CKShare updates on share: %s, container: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  else
  {
    v9 = v0[8];
  }

  v0[21] = v9;
  v25 = v0[15];
  v24 = v0[16];
  v26 = v0[14];
  v27 = v0[9];
  v28 = v0[10];
  type metadata accessor for ShareChangeObserver();
  swift_allocObject();
  v29 = ShareChangeObserver.init(share:container:)(v27, v28);
  v0[22] = v29;
  (*(*v29 + 128))();
  MEMORY[0x1B27145A0](v26);
  (*(v25 + 8))(v24, v26);
  v30 = swift_task_alloc();
  v0[23] = v30;
  *v30 = v0;
  v30[1] = closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:);
  v31 = v0[17];

  return MEMORY[0x1EEE6DB90](v0 + 2, 0, 0, v31, v0 + 3);
}

{

  if (v0)
  {
    v1 = closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:);
  }

  else
  {
    v1 = closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:);
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

{
  v33 = v0;
  v1 = v0[2];
  if (v1)
  {

    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[8];
      v6 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v6 = 136315650;
      v7 = (*(*v5 + 408))();
      v9 = v8;

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v32);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      v0[4] = v2;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
      v11 = v2;
      v12 = String.init<A>(reflecting:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v32);

      *(v6 + 14) = v14;
      *(v6 + 22) = 2080;
      v15 = [v11 participants];
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x1E695BAD8);
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v0[5] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18CKShareParticipantCGMd, &_sSaySo18CKShareParticipantCGMR);
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v32);

      *(v6 + 24) = v19;
      _os_log_impl(&dword_1AEE80000, v3, v4, "%s Saw share %s updated with participants: %s", v6, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v31, -1, -1);
      MEMORY[0x1B2715BA0](v6, -1, -1);
    }

    else
    {
    }

    v24 = v0[12];
    v23 = v0[13];
    v25 = v0[11];
    v26 = v0[8];
    (*(*v26 + 272))(v20);
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v2;

    v28 = v2;
    AsyncSerialQueue.perform(_:)();

    (*(v24 + 8))(v23, v25);
    v29 = swift_task_alloc();
    v0[23] = v29;
    *v29 = v0;
    v29[1] = closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:);
    v30 = v0[17];

    return MEMORY[0x1EEE6DB90](v0 + 2, 0, 0, v30, v0 + 3);
  }

  else
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v21 = v0[1];

    return v21();
  }
}

{
  v14 = v0;
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[3];

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = (*(*v4 + 408))(v6);
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v2, v3, "%s Share ended", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t closure #1 in closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:), 0, 0);
}

uint64_t closure #1 in closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)()
{
  (*(**(v0 + 16) + 400))(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CKShareGroupSessionProvider.updateShare(with:)(CKShare with)
{
  v2 = v1;
  v4 = *v1;
  v5 = [(objc_class *)with.super.super.isa recordChangeTag];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = (*(*v2 + 320))();
  v11 = [v10 recordChangeTag];

  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == v7 && v14 == v9)
  {

LABEL_11:

    goto LABEL_12;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    (*(*v2 + 328))(with.super.super.isa);
    return;
  }

LABEL_12:
  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Log.ckShareGroupSessionProvider);
  v18 = with.super.super.isa;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v38 = v4;
    v21 = 7104878;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v39 = v23;
    *v22 = 136315394;
    v24 = [(objc_class *)v18 recordChangeTag];
    if (v24)
    {
      v25 = v24;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = String.init<A>(reflecting:)();
      v28 = v27;
    }

    else
    {
      v28 = 0xE300000000000000;
      v26 = 7104878;
    }

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v39);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2080;
    v32 = (*(*v2 + 320))(v31);
    v33 = [v32 recordChangeTag];

    if (v33)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = String.init<A>(reflecting:)();
      v35 = v34;
    }

    else
    {
      v35 = 0xE300000000000000;
    }

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v35, &v39);

    *(v22 + 14) = v36;
    _os_log_impl(&dword_1AEE80000, v19, v20, "Dropping share because recordChangeTag %s <= %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v23, -1, -1);
    MEMORY[0x1B2715BA0](v22, -1, -1);

    v4 = v38;
  }

  else
  {
  }

  type metadata accessor for CKShareGroupSessionProvider.Errors(0, *(v4 + 80), *(v4 + 88), v29);
  swift_getWitnessTable();
  swift_allocError();
  *v37 = 0;
  swift_willThrow();
}

char *CKShareGroupSessionProvider.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.ckShareGroupSessionProvider);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = (*(*v0 + 408))();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v17);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v4, v5, "%s Deinit'd", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  else
  {
  }

  (*(*(*(v2 + 80) - 8) + 8))(v1 + *(*v1 + 120));
  outlined destroy of NSObject?(v1 + *(*v1 + 128), &_s15GroupActivities6Member_pSgMd, &_s15GroupActivities6Member_pSgMR);

  v12 = *(*v1 + 144);
  v13 = type metadata accessor for AsyncSerialQueue();
  (*(*(v13 - 8) + 8))(v1 + v12, v13);

  v14 = *(*v1 + 160);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7CKShareCGMd, &_s7Combine9PublishedVySo7CKShareCGMR);
  (*(*(v15 - 8) + 8))(v1 + v14, v15);

  return v1;
}

uint64_t CKShareGroupSessionProvider.__deallocating_deinit()
{
  CKShareGroupSessionProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t CKShareGroupSessionProvider.description.getter()
{
  _StringGuts.grow(_:)(49);
  MEMORY[0x1B27141F0](0xD00000000000001CLL, 0x80000001AF01BD30);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x1B27141F0](v1);

  MEMORY[0x1B27141F0](0x203A666C6573283ELL, 0xE800000000000000);
  _print_unlocked<A, B>(_:_:)();
  v2 = MEMORY[0x1B27141F0](0x203A6469202CLL, 0xE600000000000000);
  v3 = (*(*v0 + 176))(v2);
  MEMORY[0x1B27141F0](v3);

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for Identifiable.id.getter in conformance CKShareGroupSessionProvider<A>@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 176))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CKShareGroupSessionProvider.fetchMembershipUpdate()()
{
  v1[2] = v0;
  v2 = type metadata accessor for AsyncSerialQueue();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](CKShareGroupSessionProvider.fetchMembershipUpdate(), 0, 0);
}

{
  v17 = v0;
  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.ckShareGroupSessionProvider);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = *(*v5 + 408);

    v10 = v8(v9);
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v16);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v2, v3, "%s Received request to force fetch membership.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  else
  {
  }

  (*(**(v0 + 16) + 272))();

  v14 = swift_task_alloc();
  *(v0 + 48) = v14;
  *v14 = v0;
  v14[1] = CKShareGroupSessionProvider.fetchMembershipUpdate();

  return MEMORY[0x1EEDF8788]();
}

{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = CKShareGroupSessionProvider.fetchMembershipUpdate();
  }

  else
  {
    v5 = CKShareGroupSessionProvider.fetchMembershipUpdate();
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate()(uint64_t a1, void *a2)
{
  *(v2 + 152) = a2;
  *(v2 + 160) = *a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate(), 0, 0);
}

uint64_t closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate()()
{
  v1 = v0[19];
  v2 = (*v1 + 296);
  v3 = *v2;
  v4 = (*v2)();
  v5 = [v4 sharedCloudDatabase];

  v6 = *(*v1 + 320);
  v7 = v6();
  v8 = [v7 recordID];

  v9 = [v8 zoneID];
  v10 = [v9 ownerName];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

    goto LABEL_8;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
LABEL_8:
    v18 = (v3)(v17);
    v19 = [v18 privateCloudDatabase];

    v5 = v19;
  }

  v0[21] = v5;
  v20 = (v6)(v17);
  v21 = [v20 recordID];
  v0[22] = v21;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate();
  v22 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8CKRecordCs5Error_pGMd, &_sSccySo8CKRecordCs5Error_pGMR);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CKRecord?, @unowned NSError?) -> () with result type CKRecord;
  v0[13] = &block_descriptor_4;
  v0[14] = v22;
  [v5 fetchRecordWithID:v21 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate();
  }

  else
  {
    v2 = closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v35 = v0;
  v1 = *(v0 + 144);

  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.ckShareGroupSessionProvider);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34[0] = v33;
    *v8 = 136315394;
    v10 = (*(*v7 + 408))();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v3;
    *v9 = v3;
    v14 = v3;
    _os_log_impl(&dword_1AEE80000, v4, v5, "%s received manually fetched record: %@", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1B2715BA0](v33, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  else
  {
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = *(**(v0 + 152) + 400);
    v3 = v3;
    v17(v16);
  }

  else
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 152);
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34[0] = v23;
      *v22 = 136315138;
      v24 = (*(*v21 + 408))();
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v34);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1AEE80000, v18, v19, "%s Received invalid record (non-share) from manual fetch.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B2715BA0](v23, -1, -1);
      MEMORY[0x1B2715BA0](v22, -1, -1);
    }

    else
    {
    }

    v29 = *(v0 + 168);
    type metadata accessor for CKShareGroupSessionProvider.Errors(0, *(*(v0 + 160) + 80), *(*(v0 + 160) + 88), v28);
    swift_getWitnessTable();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate()(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[21];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) @Sendable (@unowned CKRecord?, @unowned NSError?) -> () with result type CKRecord(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t protocol witness for ErrorRecoveryGroupSessionProvider.fetchMembershipUpdate() in conformance CKShareGroupSessionProvider<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return CKShareGroupSessionProvider.fetchMembershipUpdate()();
}

uint64_t partial apply for closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in CKShareGroupSessionProvider.fetchMembershipUpdate()(a1, v1);
}

uint64_t instantiation function for generic protocol witness table for CKShareGroupSessionProvider<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for CKShareGroupSessionProvider(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncSerialQueue();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<CKShare>(319);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<CKShare>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<CKShare>)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<CKShare>);
    }
  }
}

uint64_t partial apply for closure #1 in closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(v2, v3);
}

unint64_t lazy protocol witness table accessor for type Published<CKShare>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<CKShare>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<CKShare>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVySo7CKShareC_GMd, &_s7Combine9PublishedV9PublisherVySo7CKShareC_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<CKShare>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t closure #1 in closure #1 in GroupSessionTable.cleanUpIfNotPresent(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v86 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v86 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v86 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v86 - v20;
  if (!*(a3 + 16) || (v22 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v23 & 1) == 0))
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Log.default);
    (*(v7 + 16))(v21, a1, v6);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v96[0] = v48;
      *v47 = 136315138;
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (*(v7 + 8))(v21, v6);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v96);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1AEE80000, v45, v46, "Allowing session id: %s to be cleaned up and invalidated because session is not present in the list", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x1B2715BA0](v48, -1, -1);
      MEMORY[0x1B2715BA0](v47, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v21, v6);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v53 = *(a2 + 8);
      ObjectType = swift_getObjectType();
      (*(v53 + 40))(ObjectType, v53);
      swift_unknownObjectRelease();
    }

    return 1;
  }

  v94 = *(*(a3 + 56) + 8 * v22);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = __swift_project_value_buffer(v24, static Log.default);
  outlined init with copy of GroupSessionTable.Storage(a2, v96);
  v91 = *(v7 + 16);
  v92 = v7 + 16;
  v91(v19, a1, v6);
  v93 = v25;
  v26 = v7;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v90 = v10;
    v30 = v29;
    v88 = swift_slowAlloc();
    v95 = v88;
    *v30 = 134218498;
    *(v30 + 4) = v94;
    *(v30 + 12) = 2048;
    v87 = v28;
    v31 = v26;
    v86[1] = v26;
    v32 = v96[2];
    outlined destroy of GroupSessionTable.Storage(v96);
    *(v30 + 14) = v32;
    *(v30 + 22) = 2080;
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v89 = v16;
    v34 = a2;
    v35 = v13;
    v37 = v36;
    v38 = *(v31 + 8);
    v38(v19, v6);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v37, &v95);
    v13 = v35;
    a2 = v34;
    v16 = v89;

    *(v30 + 24) = v39;
    v40 = v94;
    _os_log_impl(&dword_1AEE80000, v27, v87, "Comparing the current distributionCount %ld to the cached distribution count %ld for sessionID %s", v30, 0x20u);
    v41 = v88;
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x1B2715BA0](v41, -1, -1);
    v42 = v30;
    v10 = v90;
    MEMORY[0x1B2715BA0](v42, -1, -1);

    v43 = v38;
  }

  else
  {
    outlined destroy of GroupSessionTable.Storage(v96);

    v43 = *(v26 + 8);
    v43(v19, v6);
    v40 = v94;
  }

  if (*(a2 + 16) >= v40)
  {
    return 0;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    v91(v16, a1, v6);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v96[0] = v71;
      *v70 = 136315138;
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      v43(v16, v6);
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v96);

      *(v70 + 4) = v75;
      _os_log_impl(&dword_1AEE80000, v68, v69, "Allowing session id: %s to be cleaned up because we don't have a session tracked.", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x1B2715BA0](v71, -1, -1);
      MEMORY[0x1B2715BA0](v70, -1, -1);

      return 1;
    }

    v85 = v16;
LABEL_29:
    v43(v85, v6);
    return 1;
  }

  v56 = *(a2 + 8);
  v57 = swift_getObjectType();
  if ((*(v56 + 24))(v57, v56))
  {
    v91(v10, a1, v6);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v94 = v43;
      v61 = v10;
      v62 = v60;
      v63 = swift_slowAlloc();
      v96[0] = v63;
      *v62 = 136315138;
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      (v94)(v61, v6);
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v96);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_1AEE80000, v58, v59, "Allowing session id: %s to be cleaned up because the session is invalid", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x1B2715BA0](v63, -1, -1);
      MEMORY[0x1B2715BA0](v62, -1, -1);
      swift_unknownObjectRelease();

      return 1;
    }

    swift_unknownObjectRelease();
    v85 = v10;
    goto LABEL_29;
  }

  v91(v13, a1, v6);
  v76 = Logger.logObject.getter();
  v77 = v13;
  v78 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v76, v78))
  {
    v79 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v96[0] = v94;
    *v79 = 136315138;
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695E0]);
    v80 = dispatch thunk of CustomStringConvertible.description.getter();
    v82 = v81;
    v43(v77, v6);
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, v96);

    *(v79 + 4) = v83;
    _os_log_impl(&dword_1AEE80000, v76, v78, "Not allowing session id: %s to be cleaned up because app already has an un-joined valid session", v79, 0xCu);
    v84 = v94;
    __swift_destroy_boxed_opaque_existential_0(v94);
    MEMORY[0x1B2715BA0](v84, -1, -1);
    MEMORY[0x1B2715BA0](v79, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v43(v77, v6);
  }

  return 0;
}

uint64_t GroupSessionTable.registerIfNotPresent<A>(identifier:initialValue:registrationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a5;
  v25 = a4;
  v26 = a1;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  Lock.lock()();

  v15 = swift_beginAccess();
  if (!*(*(v7 + 24) + 16) || (, specialized __RawDictionaryStorage.find<A>(_:)(v26), v17 = v16, v15 = , (v17 & 1) == 0))
  {
    MEMORY[0x1EEE9AC00](v15);
    *(&v24 - 4) = a6;
    *(&v24 - 3) = a7;
    v23 = a3;
    v22 = a6;
    tryLog<A>(_:_:function:line:)();
    v18 = v27[0];
    if (v27[0])
    {
      (*(v12 + 16))(v14, v26, v11);
      v19 = *(a7 + 32);
      swift_unknownObjectRetain();
      v20 = v19(a6, a7);
      v27[1] = a7;
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      v27[2] = v20;
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v27, v14);
      swift_endAccess();
      v25(v18);
      swift_unknownObjectRelease();
    }
  }

  Lock.unlock()();
}

uint64_t GroupSessionTable.deinit()
{

  return v0;
}

uint64_t GroupSessionTable.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t GroupSessionTable.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for Lock();
  swift_allocObject();
  *(v0 + 16) = Lock.init()();
  *(v0 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities0E12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t GroupSessionTable.init()()
{
  type metadata accessor for Lock();
  swift_allocObject();
  *(v0 + 16) = Lock.init()();
  *(v0 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities0E12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t partial apply for implicit closure #1 in GroupSessionTable.registerIfNotPresent<A>(identifier:initialValue:registrationHandler:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695C8]);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

{
  v21 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

{
  v5 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      outlined init with copy of Participant(*(v2 + 48) + v12 * v10, v8);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v13 = v5[5];
      v14 = *&v8[v13];
      v15 = *&v8[v13 + 8];
      v16 = (a1 + v13);
      v17 = v14 == *v16 && v15 == v16[1];
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v8[v5[6]] != *(a1 + v5[6]))
      {
        goto LABEL_4;
      }

      v18 = v5[7];
      v19 = &v8[v18];
      v20 = *&v8[v18 + 8];
      v21 = (a1 + v18);
      v22 = v21[1];
      if (v20)
      {
        if (!v22)
        {
          goto LABEL_4;
        }

        v23 = *v19 == *v21 && v20 == v22;
        if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v22)
      {
        goto LABEL_4;
      }

      if (v8[v5[8]] == *(a1 + v5[8]) && v8[v5[9]] == *(a1 + v5[9]))
      {
        outlined destroy of Participant(v8);
        return v10;
      }

LABEL_4:
      outlined destroy of Participant(v8);
      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v6 = 0xD000000000000013;
          v7 = 0x80000001AF01A370;
        }

        else
        {
          v6 = 0xD000000000000010;
          v7 = 0x80000001AF01A390;
        }
      }

      else
      {
        v7 = 0xE600000000000000;
        v6 = 0x627553627550;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v8 = 0xD000000000000013;
        }

        else
        {
          v8 = 0xD000000000000010;
        }

        if (a1 == 1)
        {
          v9 = 0x80000001AF01A370;
        }

        else
        {
          v9 = 0x80000001AF01A390;
        }

        if (v6 != v8)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v9 = 0xE600000000000000;
        if (v6 != 0x627553627550)
        {
          goto LABEL_19;
        }
      }

      if (v7 == v9)
      {

        return v4;
      }

LABEL_19:
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV15GroupActivities0K12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_15k14Activities0J12mn14C7Storage33_64pqrstuvW7ALLVTG5AQxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjPIsgnndzo_Tf1nc_n04_s15k14Activities0A12mn76C19cleanUpIfNotPresentyySDy10Foundation4UUIDVSiGFyyXEfU_SbAG_AC7Storage33_64pqrstuvW10ALLVtXEfU_SDyAJSiGTf1nnc_n(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionTable.Storage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupSessionTable.Storage(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t outlined init with copy of Participant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Participant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Participant(uint64_t a1)
{
  v2 = type metadata accessor for Participant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Archived.init(from:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v10, v11);
    if (dispatch thunk of SingleValueDecodingContainer.decodeNil()())
    {
      a2 = 0;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v10, v11);
      lazy protocol witness table accessor for type Data and conformance Data();
      dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
      v5 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
      outlined copy of Data._Representation(v8, v9);
      v6 = specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)();
      outlined consume of Data._Representation(v8, v9);
      [v6 _enableStrictSecureDecodingMode];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      a2 = NSCoder.decodeTopLevelObject<A>(of:forKey:)();
      outlined consume of Data._Representation(v8, v9);
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a2;
}

uint64_t Archived.encode(to:)(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  if (a2)
  {
    v3 = objc_opt_self();
    v12 = 0;
    v4 = a2;
    v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v12];
    v6 = v12;
    if (v5)
    {
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v12 = v7;
      v13 = v9;
      __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
      lazy protocol witness table accessor for type Data and conformance Data();
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
      outlined consume of Data._Representation(v12, v13);
    }

    else
    {
      v10 = v6;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    dispatch thunk of SingleValueEncodingContainer.encodeNil()();
  }

  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t static Archived.== infix(_:_:)(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = a2;
      v4 = a1;
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

uint64_t protocol witness for Decodable.init(from:) in conformance Archived<A>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Archived.init(from:)(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:isa error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t type metadata instantiation function for Archived(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Archived(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for Archived(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

Swift::Void __swiftcall GroupSession.addAnalyticsReport(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  swift_retain_n();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136315394;
    v9 = Dictionary.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = GroupSession.description.getter();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v21);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Application called addAnalyticsReport(%s) on %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  else
  {
  }

  v16 = *&v2[*(*v2 + 296)];
  v17 = swift_allocObject();
  v17[2]._rawValue = v2;
  v17[3]._rawValue = a1._rawValue;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for closure #1 in GroupSession.addAnalyticsReport(_:);
  *(v18 + 24) = v17;
  v21[4] = _sIg_Ieg_TRTA_0;
  v21[5] = v18;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = thunk for @escaping @callee_guaranteed () -> ();
  v21[3] = &block_descriptor_5;
  v19 = _Block_copy(v21);

  dispatch_sync(v16, v19);
  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t closure #1 in GroupSession.addAnalyticsReport(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 288);
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = XPCClient.queue.getter();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in closure #1 in GroupSession.addAnalyticsReport(_:);
  *(v8 + 24) = v7;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_13_0;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v6, v9);

  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in GroupSession.addAnalyticsReport(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 288);
  swift_beginAccess();
  v4 = *(a1 + v3);
  XPCClient.withHost(body:errorHandler:)();
}

double block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroyTm_4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void partial apply for closure #1 in closure #1 in closure #1 in GroupSession.addAnalyticsReport(_:)(void **a1)
{
  v1 = *a1;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v1 addAnalyticsReport_];
}

uint64_t ShareChangeObserver.__allocating_init(share:container:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  ShareChangeObserver.init(share:container:)(a1, a2);
  return v4;
}

uint64_t ShareChangeObserver.shareChanges.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV15BufferingPolicyOySo7CKShareCs5Error_p__GMd, &_sScs12ContinuationV15BufferingPolicyOySo7CKShareCs5Error_p__GMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8790], v0);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in ShareChangeObserver.shareChanges.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo7CKShareCs5Error_p_GMd, &_sScs12ContinuationVySo7CKShareCs5Error_p_GMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter, v13);
  return AsyncThrowingStream.Continuation.onTermination.setter();
}

uint64_t closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for CKRecordChange.ChangeType();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  type metadata accessor for CKRecordObserver.RecordChanges.Iterator();
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19AsyncFilterSequenceV8IteratorVySo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_GMd, &_ss19AsyncFilterSequenceV8IteratorVySo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_GMR);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19AsyncFilterSequenceVySo16CKRecordObserverC12CloudKitCodeE13RecordChangesVGMd, &_ss19AsyncFilterSequenceVySo16CKRecordObserverC12CloudKitCodeE13RecordChangesVGMR);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo7CKShareCs5Error_p_GMd, &_sScs12ContinuationVySo7CKShareCs5Error_p_GMR);
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  v10 = type metadata accessor for CKRecordObserver.RecordChanges();
  v5[22] = v10;
  v5[23] = *(v10 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter, 0, 0);
}

uint64_t closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  CKRecordObserver.recordChanges.getter();
  (*(v2 + 16))(v1, v4, v3);
  v6 = *(v5 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 32) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v5 + 32) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v10 = v9 + 1;
    v6 = v21;
  }

  v11 = *(v0 + 192);
  v12 = *(v0 + 200);
  v13 = *(v0 + 176);
  v14 = *(v0 + 184);
  v16 = *(v0 + 160);
  v15 = *(v0 + 168);
  v17 = *(v0 + 152);
  v22 = *(v0 + 128);
  v6[2] = v10;
  (*(v16 + 32))(v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v9, v15, v17);
  *(v5 + 32) = v6;
  (*(v14 + 16))(v11, v12, v13);
  lazy protocol witness table accessor for type CKRecordObserver.RecordChanges and conformance CKRecordObserver.RecordChanges(&lazy protocol witness table cache variable for type CKRecordObserver.RecordChanges and conformance CKRecordObserver.RecordChanges, MEMORY[0x1E6994930], MEMORY[0x1E6994938]);

  AsyncFilterSequence.init(_:isIncluded:)();
  MEMORY[0x1B2714D00](v22);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncFilterSequence.isIncluded.getter();
  AsyncFilterSequence.Iterator.init(_:isIncluded:)();
  v18 = *MEMORY[0x1E6994918];
  *(v0 + 232) = *MEMORY[0x1E6994908];
  *(v0 + 236) = v18;
  *(v0 + 240) = *MEMORY[0x1E6994910];
  v19 = swift_task_alloc();
  *(v0 + 208) = v19;
  *v19 = v0;
  v19[1] = closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter;

  return _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5(0, 0);
}

{
  v53 = v0;
  v1 = *(v0 + 216);
  if (v1)
  {
    v2 = *(v0 + 232);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v0 + 72);
    CKRecordChange.changeType.getter();
    v6 = (*(v4 + 88))(v3, v5);
    if (v6 == v2 || v6 == *(v0 + 236))
    {
      v7 = *(v0 + 88);
      (*(*(v0 + 80) + 96))(v7, *(v0 + 72));
      v8 = *v7;
      v9 = v8;
      yieldShareFromRecord #1 (_:) in closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(v8, v1);

LABEL_5:
      v10 = swift_task_alloc();
      *(v0 + 208) = v10;
      *v10 = v0;
      v10[1] = closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter;

      return _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5(0, 0);
    }

    if (v6 == *(v0 + 240))
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Log.default);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = *(v0 + 56);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *(v0 + 40) = v24;
        *v23 = 136315138;
        v25 = [*(v22 + 16) recordID];
        if (v25)
        {
          *(v0 + 48) = v25;
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKRecordID, 0x1E695BA70);
          v26 = String.init<A>(reflecting:)();
          v28 = v27;
        }

        else
        {
          v28 = 0xE300000000000000;
          v26 = 7104878;
        }

        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, (v0 + 40));

        *(v23 + 4) = v45;
        _os_log_impl(&dword_1AEE80000, v20, v21, "Share was deleted on activity: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x1B2715BA0](v24, -1, -1);
        MEMORY[0x1B2715BA0](v23, -1, -1);
      }

      *(v0 + 32) = 0;
      AsyncThrowingStream.Continuation.finish(throwing:)();

      goto LABEL_5;
    }

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Log.default);
    v30 = v1;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 200);
    v35 = *(v0 + 176);
    v36 = *(v0 + 184);
    v38 = *(v0 + 136);
    v37 = *(v0 + 144);
    v50 = *(v0 + 120);
    v51 = *(v0 + 128);
    v39 = *(v0 + 112);
    v49 = *(v0 + 104);
    if (v33)
    {
      v48 = *(v0 + 200);
      v40 = swift_slowAlloc();
      v47 = v35;
      v41 = swift_slowAlloc();
      v52 = v41;
      *v40 = 136315138;
      *(v0 + 24) = v30;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKRecordChange, 0x1E695BA68);
      v46 = v30;
      v42 = String.init<A>(reflecting:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v52);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1AEE80000, v31, v32, "Unknown record change type: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1B2715BA0](v41, -1, -1);
      MEMORY[0x1B2715BA0](v40, -1, -1);

      (*(v39 + 8))(v50, v49);
      (*(v38 + 8))(v37, v51);
      (*(v36 + 8))(v48, v47);
    }

    else
    {

      (*(v39 + 8))(v50, v49);
      (*(v38 + 8))(v37, v51);
      (*(v36 + 8))(v34, v35);
    }

    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  }

  else
  {
    v12 = *(v0 + 200);
    v13 = *(v0 + 176);
    v14 = *(v0 + 184);
    v15 = *(v0 + 144);
    v16 = *(v0 + 128);
    v17 = *(v0 + 136);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    *(v0 + 16) = 0;
    AsyncThrowingStream.Continuation.finish(throwing:)();
    (*(v17 + 8))(v15, v16);
    (*(v14 + 8))(v12, v13);
  }

  v18 = *(v0 + 8);

  return v18();
}

{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter;
  }

  else
  {
    v4 = closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter, 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v3 = [*(v2 + 16) recordID];
  v4 = [v1 recordID];
  v5 = static NSObject.== infix(_:_:)();

  v6 = v0[1];

  return v6(v5 & 1);
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[12] = v4;
  v3[13] = v6;

  return MEMORY[0x1EEE6DFA0](_ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TY0_, v4, v6);
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TY0_()
{
  v0[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19AsyncFilterSequenceV8IteratorVySo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_GMd, &_ss19AsyncFilterSequenceV8IteratorVySo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_GMR);
  v0[15] = AsyncFilterSequence.Iterator.baseIterator.modify();
  v1 = type metadata accessor for CKRecordObserver.RecordChanges.Iterator();
  v2 = lazy protocol witness table accessor for type CKRecordObserver.RecordChanges and conformance CKRecordObserver.RecordChanges(&lazy protocol witness table cache variable for type CKRecordObserver.RecordChanges.Iterator and conformance CKRecordObserver.RecordChanges.Iterator, MEMORY[0x1E6994920], MEMORY[0x1E6994928]);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TQ1_;
  v4 = v0[9];
  v5 = v0[10];

  return MEMORY[0x1EEE6D8D0](v0 + 7, v4, v5, v0 + 8, v1, v2);
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TQ1_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TY3_;
  }

  else
  {
    (*(v2 + 120))();
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TY2_()
{
  v1 = v0[7];
  v0[17] = v1;
  if (v1)
  {
    v0[6] = v1;
    v2 = AsyncFilterSequence.isIncluded.getter();
    v0[18] = v3;
    v7 = (v2 + *v2);
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TQ4_;

    return v7(v0 + 6);
  }

  else
  {
    v6 = v0[1];

    return v6(0);
  }
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TY3_()
{
  (*(v0 + 120))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TQ4_(char a1)
{
  v2 = *v1;
  *(*v1 + 160) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return MEMORY[0x1EEE6DFA0](_ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TY5_, v4, v3);
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TY5_()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 8);
    v2 = *(v0 + 136);

    return v1(v2);
  }

  else
  {

    *(v0 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19AsyncFilterSequenceV8IteratorVySo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_GMd, &_ss19AsyncFilterSequenceV8IteratorVySo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_GMR);
    *(v0 + 120) = AsyncFilterSequence.Iterator.baseIterator.modify();
    v4 = type metadata accessor for CKRecordObserver.RecordChanges.Iterator();
    v5 = lazy protocol witness table accessor for type CKRecordObserver.RecordChanges and conformance CKRecordObserver.RecordChanges(&lazy protocol witness table cache variable for type CKRecordObserver.RecordChanges.Iterator and conformance CKRecordObserver.RecordChanges.Iterator, MEMORY[0x1E6994920], MEMORY[0x1E6994928]);
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *v6 = v0;
    v6[1] = _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo16CKRecordObserverC12CloudKitCodeE13RecordChangesV_Tg5TQ1_;
    v7 = *(v0 + 72);
    v8 = *(v0 + 80);

    return MEMORY[0x1EEE6D8D0](v0 + 56, v7, v8, v0 + 64, v4, v5);
  }
}

void yieldShareFromRecord #1 (_:) in closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationV11YieldResultOySo7CKShareCs5Error_p__GMd, &_sScs12ContinuationV11YieldResultOySo7CKShareCs5Error_p__GMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  if (a1 && (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
  {
    v23 = v8;
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo7CKShareCs5Error_p_GMd, &_sScs12ContinuationVySo7CKShareCs5Error_p_GMR);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.default);
    v11 = a2;
    v21 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v11;
      v23 = v14;
      *v13 = 136315138;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKRecordChange, 0x1E695BA68);
      v15 = v11;
      v16 = String.init<A>(reflecting:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v23);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1AEE80000, v21, v12, "Share missing from record change: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1B2715BA0](v14, -1, -1);
      MEMORY[0x1B2715BA0](v13, -1, -1);
    }

    else
    {
      v19 = v21;
    }
  }
}

void *ShareChangeObserver.init(share:container:)(void *a1, void *a2)
{
  v3 = v2;
  v3[4] = MEMORY[0x1E69E7CC0];
  v3[2] = a1;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKRecordObserver, 0x1E695BA78);
  v6 = a1;
  v7 = a2;
  static CKRecord.SystemType.share.getter();
  v3[3] = CKRecordObserver.init(container:recordType:)();
  if (one-time initialization token for shareChangeObserver != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.shareChangeObserver);
  v9 = v7;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v12 = 136315394;
    v15 = *(*v3 + 144);

    v17 = v15(v16);
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v23);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v21 = v9;
    _os_log_impl(&dword_1AEE80000, v10, v11, "%s Init with container: %@", v12, 0x16u);
    outlined destroy of NSObject?(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B2715BA0](v14, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  else
  {
  }

  return v3;
}

id *ShareChangeObserver.deinit()
{
  if (one-time initialization token for shareChangeObserver != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.shareChangeObserver);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = (*(*v0 + 18))();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1AEE80000, v2, v3, "%s Deinit", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  return v0;
}

uint64_t ShareChangeObserver.__deallocating_deinit()
{
  ShareChangeObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t ShareChangeObserver.description.getter()
{
  _StringGuts.grow(_:)(48);
  MEMORY[0x1B27141F0](0xD00000000000001ALL, 0x80000001AF01BE60);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](0xD000000000000011, 0x80000001AF01BE80);
  v1 = [*(v0 + 16) recordID];
  v2 = [v1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x1B27141F0](v3, v5);

  MEMORY[0x1B27141F0](41, 0xE100000000000000);
  return 0;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScs12ContinuationVySo7CKShareCs5Error_p_GMd, &_sScs12ContinuationVySo7CKShareCs5Error_p_GMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = SystemCoordinatorTable.systemCoordinator(for:);

  return closure #1 in closure #1 in closure #1 in ShareChangeObserver.shareChanges.getter(a1, v1);
}

uint64_t lazy protocol witness table accessor for type CKRecordObserver.RecordChanges and conformance CKRecordObserver.RecordChanges(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Publisher.dynamicThrottle<A>(for:after:scheduler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v124 = a3;
  v97 = a2;
  v123 = a1;
  v116 = a6;
  v10 = type metadata accessor for Publishers.Share();
  WitnessTable = swift_getWitnessTable();
  v122 = v10;
  v125 = type metadata accessor for Publishers.MeasureInterval();
  v120 = type metadata accessor for PublishRate(255, a5, a7, v11);
  v96 = swift_getWitnessTable();
  v12 = type metadata accessor for Publishers.Scan();
  v98 = swift_getWitnessTable();
  v13 = v12;
  v115 = v12;
  v14 = type metadata accessor for Publishers.Zip();
  v95 = swift_getWitnessTable();
  v90 = v14;
  v104 = type metadata accessor for Publishers.Share();
  v112 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v102 = swift_getWitnessTable();
  v15 = type metadata accessor for Publishers.CompactMap();
  v107 = swift_getWitnessTable();
  v16 = type metadata accessor for Publishers.Throttle();
  v109 = swift_getWitnessTable();
  v126 = v15;
  v127 = v16;
  v100 = v15;
  v106 = v16;
  v128 = v107;
  v129 = v109;
  v108 = type metadata accessor for Publishers.Merge();
  v111 = *(v108 - 8);
  v17 = MEMORY[0x1EEE9AC00](v108);
  v105 = &v81 - v18;
  v110 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v99 = &v81 - v20;
  v101 = *(v15 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v94 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v119 = &v81 - v24;
  v91 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v89 = &v81 - v25;
  v26 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v87 = swift_getAssociatedTypeWitness();
  v83 = *(v87 - 8);
  v86 = *(v83 + 64);
  v27 = MEMORY[0x1EEE9AC00](v87);
  v85 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v113 = &v81 - v30;
  v88 = *(v120 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v84 = &v81 - v32;
  v93 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v114 = &v81 - v33;
  v34 = swift_getAssociatedTypeWitness();
  v35 = type metadata accessor for Optional();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v81 - v38;
  v92 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v118 = &v81 - v40;
  v41 = v116;
  v117 = Publisher.share()();
  v126 = v117;
  (*(*(v34 - 8) + 56))(v39, 1, 1, v34);
  Publisher.measureInterval<A>(using:options:)();
  (*(v36 + 8))(v39, v35);
  v42 = v113;
  v43 = a7;
  default argument 0 of PublishRate.init(timeInGracePeriod:isThrottled:)(v26, a7);
  v44 = v84;
  v45 = v26;
  v81 = v26;
  v46 = v43;
  v82 = v43;
  PublishRate.init(timeInGracePeriod:isThrottled:)(v42, 0, v26, v43, v84);
  v47 = v83;
  v48 = *(v83 + 16);
  v49 = v42;
  v50 = v87;
  v48(v49, v123, v87);
  v51 = v85;
  v48(v85, v97, v50);
  v52 = *(v47 + 80);
  v53 = (v52 + 48) & ~v52;
  v54 = (v86 + v52 + v53) & ~v52;
  v55 = swift_allocObject();
  v56 = v113;
  *(v55 + 2) = v112;
  *(v55 + 3) = v45;
  *(v55 + 4) = v41;
  *(v55 + 5) = v46;
  v57 = *(v47 + 32);
  v57(&v55[v53], v56, v50);
  v57(&v55[v54], v51, v50);
  v58 = v120;
  Publisher.scan<A>(_:_:)();

  (*(v88 + 8))(v44, v58);
  v126 = v117;
  v59 = v89;
  Publisher.zip<A>(_:)();
  v60 = v90;
  v61 = Publisher.share()();
  (*(v91 + 8))(v59, v60);
  v126 = v61;
  v122 = v61;
  v62 = swift_allocObject();
  v63 = v112;
  v64 = v81;
  v62[2] = v112;
  v62[3] = v64;
  v65 = v116;
  v66 = v82;
  v62[4] = v116;
  v62[5] = v66;
  v67 = swift_allocObject();
  v67[2] = v63;
  v67[3] = v64;
  v67[4] = v65;
  v67[5] = v66;
  v67[6] = partial apply for closure #2 in Publisher.dynamicThrottle<A>(for:after:scheduler:);
  v67[7] = v62;
  Publisher.compactMap<A>(_:)();

  v126 = v61;
  v68 = swift_allocObject();
  v68[2] = v63;
  v68[3] = v64;
  v68[4] = v65;
  v68[5] = v66;
  v69 = swift_allocObject();
  v69[2] = v63;
  v69[3] = v64;
  v69[4] = v65;
  v69[5] = v66;
  v69[6] = partial apply for closure #3 in Publisher.dynamicThrottle<A>(for:after:scheduler:);
  v69[7] = v68;
  v70 = v94;
  Publisher.compactMap<A>(_:)();

  v71 = v99;
  v72 = v100;
  Publisher.throttle<A>(for:scheduler:latest:)();
  v73 = *(v101 + 8);
  v73(v70, v72);
  v74 = v105;
  v75 = v72;
  v76 = v106;
  v77 = v119;
  Publisher.merge<A>(with:)();
  v78 = v108;
  swift_getWitnessTable();
  v79 = Publisher.eraseToAnyPublisher()();

  (*(v111 + 8))(v74, v78);
  (*(v110 + 8))(v71, v76);
  v73(v77, v75);
  (*(v93 + 8))(v114, v115);
  (*(v92 + 8))(v118, v125);
  return v79;
}

uint64_t default argument 0 of PublishRate.init(timeInGracePeriod:isThrottled:)(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static AdditiveArithmetic.zero.getter();
}

uint64_t PublishRate.init(timeInGracePeriod:isThrottled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  result = type metadata accessor for PublishRate(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t closure #1 in Publisher.dynamicThrottle<A>(for:after:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v22[1] = a4;
  v23 = a1;
  v24 = a3;
  v26 = a7;
  swift_getAssociatedTypeWitness();
  v25 = a6;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22[0] = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - v13;
  swift_getAssociatedConformanceWitness();
  v15 = dispatch thunk of static Comparable.< infix(_:_:)();
  swift_getAssociatedConformanceWitness();
  if (v15)
  {
    v16 = v23;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v17 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v19 = v25;
    if ((v17 & 1) != 0 && (*(v16 + *(type metadata accessor for PublishRate(0, a5, v25, v18) + 36)) & 1) == 0)
    {
      (*(v22[0] + 32))(v12, v14, AssociatedTypeWitness);
      v20 = 0;
    }

    else
    {
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      (*(v22[0] + 8))(v14, AssociatedTypeWitness);
      v20 = 1;
    }
  }

  else
  {
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v20 = 0;
    v19 = v25;
  }

  return PublishRate.init(timeInGracePeriod:isThrottled:)(v12, v20, a5, v19, v26);
}

uint64_t partial apply for closure #1 in Publisher.dynamicThrottle<A>(for:after:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + 48) & ~v9;
  v11 = v3 + ((*(v8 + 64) + v9 + v10) & ~v9);

  return closure #1 in Publisher.dynamicThrottle<A>(for:after:scheduler:)(a1, v3 + v10, v11, v6, v7, a3);
}

uint64_t closure #2 in Publisher.dynamicThrottle<A>(for:after:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(a1 + *(type metadata accessor for PublishRate(0, a4, a6, a4) + 36));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v15 = *(AssociatedTypeWitness - 8);
    (*(v15 + 16))(a7, a2, AssociatedTypeWitness);
    v11 = v15;
    v12 = 0;
  }

  v13 = *(v11 + 56);

  return v13(a7, v12, 1, AssociatedTypeWitness);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed PublishRate<A1>, @in_guaranteed A.Publisher.Output) -> (@out A.Publisher.Output?)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for PublishRate(255, a5, a7, a4);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t closure #3 in Publisher.dynamicThrottle<A>(for:after:scheduler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(a1 + *(type metadata accessor for PublishRate(0, a4, a6, a4) + 36));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  if (v9 == 1)
  {
    v15 = *(AssociatedTypeWitness - 8);
    (*(v15 + 16))(a7, a2, AssociatedTypeWitness);
    v11 = v15;
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(v11 + 56);

  return v13(a7, v12, 1, AssociatedTypeWitness);
}

uint64_t type metadata completion function for PublishRate(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PublishRate(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v10 = v9 + 1;
    v11 = 8 * (v9 + 1);
    if ((v9 + 1) > 3)
    {
      goto LABEL_7;
    }

    v13 = ((a2 - v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v13 >= 2)
    {
LABEL_7:
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_25;
      }

LABEL_14:
      v14 = (v12 - 1) << v11;
      if (v10 > 3)
      {
        v14 = 0;
      }

      if (v10)
      {
        if (v10 > 3)
        {
          LODWORD(v10) = 4;
        }

        if (v10 > 2)
        {
          if (v10 == 3)
          {
            LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        else if (v10 == 1)
        {
          LODWORD(v10) = *a1;
        }

        else
        {
          LODWORD(v10) = *a1;
        }
      }

      v18 = v8 + (v10 | v14);
      return (v18 + 1);
    }
  }

LABEL_25:
  if (v7 < 0xFE)
  {
    v17 = *(a1 + v9);
    if (v17 < 2)
    {
      return 0;
    }

    v18 = (v17 + 2147483646) & 0x7FFFFFFF;
    return (v18 + 1);
  }

  v15 = *(v6 + 48);

  return v15(a1);
}

void storeEnumTagSinglePayload for PublishRate(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = v9 + 1;
  v12 = a3 - v10;
  if (a3 <= v10)
  {
    v13 = 0;
    if (v10 < a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = 1;
    if (v11 <= 3)
    {
      v14 = ((v12 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      v15 = HIWORD(v14);
      if (v14 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v14 >= 2)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v15)
      {
        v13 = 4;
      }

      else
      {
        v13 = v17;
      }
    }

    if (v10 < a2)
    {
LABEL_16:
      v18 = ~v10 + a2;
      if (v11 < 4)
      {
        v19 = (v18 >> (8 * v11)) + 1;
        if (v9 != -1)
        {
          v20 = v18 & ~(-1 << (8 * v11));
          bzero(a1, v11);
          if (v11 != 3)
          {
            if (v11 == 2)
            {
              *a1 = v20;
              if (v13 > 1)
              {
LABEL_44:
                if (v13 == 2)
                {
                  *&a1[v11] = v19;
                }

                else
                {
                  *&a1[v11] = v19;
                }

                return;
              }
            }

            else
            {
              *a1 = v18;
              if (v13 > 1)
              {
                goto LABEL_44;
              }
            }

            goto LABEL_41;
          }

          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        if (v13 > 1)
        {
          goto LABEL_44;
        }
      }

      else
      {
        bzero(a1, v11);
        *a1 = v18;
        v19 = 1;
        if (v13 > 1)
        {
          goto LABEL_44;
        }
      }

LABEL_41:
      if (v13)
      {
        a1[v11] = v19;
      }

      return;
    }
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    *&a1[v11] = 0;
  }

  else if (v13)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return;
  }

LABEL_32:
  if (v8 < 0xFE)
  {
    a1[v9] = a2 + 1;
  }

  else
  {
    v21 = *(v7 + 56);

    v21(a1, a2);
  }
}
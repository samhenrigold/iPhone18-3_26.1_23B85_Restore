AppleIntelligenceReporting::AppleIntelligenceAsset __swiftcall AppleIntelligenceAsset.init(assetIdentifier:version:)(Swift::String assetIdentifier, Swift::String_optional version)
{
  v2->value = assetIdentifier;
  v2[1] = version;
  result.internalVersion = version;
  result.internalAssetIdentifier = assetIdentifier;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for UUIDIdentifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for UUIDIdentifier;
  if (!type metadata singleton initialization cache for UUIDIdentifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_66_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_50();
  v6(v5);
  return v4;
}

uint64_t sub_1C0C95504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void _s26AppleIntelligenceReporting010BiomeEventC0PAAE013emitInferenceE05event6errors4type0H2IDyAA0abgE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_48();
  v136 = v9;
  v143 = v8;
  v146 = v7;
  v148 = v10;
  v147 = v11;
  v141 = v12;
  v152 = v13;
  v153 = v14;
  v16 = v15;
  v144 = type metadata accessor for AppleIntelligenceReportingUseCase();
  OUTLINED_FUNCTION_1();
  v156 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v135 = v19;
  v20 = OUTLINED_FUNCTION_19();
  v140 = type metadata accessor for AppleIntelligenceBiomeEvent(v20);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_0();
  v142 = v22;
  OUTLINED_FUNCTION_19();
  v154 = type metadata accessor for AppleIntelligenceReportingAsset();
  OUTLINED_FUNCTION_1();
  v155 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_29_0(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  OUTLINED_FUNCTION_29(v26);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v134 - v28;
  v165 = type metadata accessor for AppleIntelligenceReportingGeneralError();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_60();
  v134[0] = v33;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v134 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMd, &_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMR);
  OUTLINED_FUNCTION_29(v37);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_29(v40);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
  OUTLINED_FUNCTION_29(v43);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v134 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v48 = OUTLINED_FUNCTION_29(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_60();
  v145 = v49;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v50);
  v52 = v134 - v51;
  OUTLINED_FUNCTION_19();
  v139 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  OUTLINED_FUNCTION_1();
  v138 = v53;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_2();
  v57 = v56 - v55;
  AppleIntelligenceReportingInvocationStep.init()();

  OUTLINED_FUNCTION_26_4();
  v151 = v57;
  AppleIntelligenceReportingInvocationStep.subsystem.setter();
  v150 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
  v58 = v16;
  outlined init with copy of UUIDIdentifier?(v16 + *(v150 + 28), v46, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
  v59 = type metadata accessor for UUIDIdentifier(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v59);
  v137 = v29;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v46, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
    v61 = type metadata accessor for UUID();
    v62 = v52;
    v63 = 1;
    v64 = 1;
  }

  else
  {
    v65 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_9();
    (*(v66 + 16))(v52, v46, v65);
    _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v46, type metadata accessor for UUIDIdentifier);
    OUTLINED_FUNCTION_13_2();
    v61 = v65;
  }

  __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);
  AppleIntelligenceReportingInvocationStep.invocationID.setter();
  v67 = v150;
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_26_4();
  AppleIntelligenceReportingInvocationStep.stepIdentifier.setter();
  OUTLINED_FUNCTION_47_4(v16 + v67[8]);
  AppleIntelligenceReportingInvocationStep.clientRequestID.setter();
  OUTLINED_FUNCTION_47_4(v16 + v67[9]);
  AppleIntelligenceReportingInvocationStep.modelManagerRequestID.setter();
  OUTLINED_FUNCTION_47_4(v16 + v67[5]);
  AppleIntelligenceReportingInvocationStep.sessionID.setter();
  (*(v148 + 16))(v147);
  type metadata accessor for Date();
  v68 = OUTLINED_FUNCTION_16_4();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  AppleIntelligenceReportingInvocationStep.timestamp.setter();
  v72 = type metadata accessor for AppleIntelligenceReportingEventType();
  OUTLINED_FUNCTION_9();
  (*(v73 + 16))(v149, v152, v72);
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v72);
  AppleIntelligenceReportingInvocationStep.type.setter();
  v77 = v153;
  v78 = *(v153 + 16);
  v149 = v16;
  if (v78)
  {
    v159 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v79 = v159;
    v80 = v77 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v80, &v157);
      __swift_project_boxed_opaque_existential_1(&v157, *&v158[8]);
      OUTLINED_FUNCTION_50();
      AppleIntelligenceError.toGeneralReportingError.getter();
      __swift_destroy_boxed_opaque_existential_1(&v157);
      v159 = v79;
      v82 = *(v79 + 16);
      v81 = *(v79 + 24);
      if (v82 >= v81 >> 1)
      {
        OUTLINED_FUNCTION_25_1(v81);
        OUTLINED_FUNCTION_48_3();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v79 = v159;
      }

      *(v79 + 16) = v82 + 1;
      OUTLINED_FUNCTION_25_3();
      (*(v31 + 32))(v83 + *(v31 + 72) * v82, v36, v165);
      v80 += 40;
      --v78;
    }

    while (v78);
LABEL_19:
    v58 = v149;
    goto LABEL_20;
  }

  v153 = *(v16 + v67[10]);
  v84 = specialized Array.count.getter(v153);
  v85 = MEMORY[0x1E69E7CC0];
  if (v84)
  {
    v86 = v84;
    OUTLINED_FUNCTION_54_3();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v86 < 0)
    {
      __break(1u);
      return;
    }

    v87 = 0;
    OUTLINED_FUNCTION_53_4();
    v152 = v153 & 0xC000000000000001;
    v88 = v134[0];
    do
    {
      if (v152)
      {
        MEMORY[0x1C68E2790](v87, v153);
      }

      else
      {
      }

      specialized AppleIntelligenceError.toGeneralReportingError.getter(v88);

      OUTLINED_FUNCTION_54_3();
      v90 = *(v85 + 16);
      v89 = *(v85 + 24);
      if (v90 >= v89 >> 1)
      {
        OUTLINED_FUNCTION_25_1(v89);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        OUTLINED_FUNCTION_53_4();
      }

      ++v87;
      *(v85 + 16) = v90 + 1;
      OUTLINED_FUNCTION_25_3();
      (*(v31 + 32))(v91 + *(v31 + 72) * v90, v88, v165);
    }

    while (v86 != v87);
    goto LABEL_19;
  }

LABEL_20:
  v92 = v151;
  AppleIntelligenceReportingInvocationStep.errors.setter();
  v93 = v150;
  v94 = *(v58 + *(v150 + 68));
  v95 = *(v94 + 16);
  v96 = MEMORY[0x1E69E7CC0];
  if (v95)
  {
    OUTLINED_FUNCTION_54_3();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v95, 0);
    OUTLINED_FUNCTION_53_4();
    v92 = v155 + 32;
    v58 = v94 + 56;
    v97 = v134[1];
    do
    {

      AppleIntelligenceReportingAsset.init()();

      AppleIntelligenceReportingAsset.assetIdentifier.setter();

      AppleIntelligenceReportingAsset.version.setter();

      OUTLINED_FUNCTION_54_3();
      v99 = *(v96 + 16);
      v98 = *(v96 + 24);
      v93 = v97;
      if (v99 >= v98 >> 1)
      {
        v102 = OUTLINED_FUNCTION_25_1(v98);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v102, v99 + 1, 1);
        OUTLINED_FUNCTION_53_4();
      }

      v58 += 32;
      *(v96 + 16) = v99 + 1;
      OUTLINED_FUNCTION_25_3();
      (*(v101 + 32))(v100 + *(v101 + 72) * v99, v97, v154);
      --v95;
    }

    while (v95);
    OUTLINED_FUNCTION_36_3();
  }

  AppleIntelligenceReportingInvocationStep.assets.setter();
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_26_4();
  v103 = AppleIntelligenceReportingInvocationStep.assetBundleID.setter();
  v104 = v58 + *(v93 + 44);
  v105 = *(v104 + 8);
  v106 = v143;
  v107 = v137;
  if (v105)
  {
    v161[0] = *v104;
    v161[1] = v105;
    v108 = *(v104 + 32);
    v162 = *(v104 + 16);
    v163 = v108;
    v164 = *(v104 + 48);
    MEMORY[0x1EEE9AC00](v103);
    OUTLINED_FUNCTION_92();
    *(v109 - 16) = v161;
    v110 = v144;
    static Buildable.with(_:)();
    v111 = v110;
    v112 = 0;
  }

  else
  {
    v112 = 1;
    v111 = v144;
  }

  __swift_storeEnumTagSinglePayload(v107, v112, 1, v111);
  AppleIntelligenceReportingInvocationStep.primaryUseCase.setter();
  v113 = *(v58 + *(v93 + 48));
  v114 = *(v113 + 16);
  if (v114)
  {
    v159 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v116 = v159;
    v117 = (v113 + 32);
    v118 = v144;
    v92 = v135;
    do
    {
      v119 = *v117;
      v120 = v117[1];
      v121 = v117[3];
      v160[2] = v117[2];
      v160[3] = v121;
      v160[0] = v119;
      v160[1] = v120;
      MEMORY[0x1EEE9AC00](v115);
      v134[-2] = v160;
      outlined init with copy of AppleIntelligenceUseCase(v160, &v157);
      static Buildable.with(_:)();
      outlined destroy of AppleIntelligenceUseCase(v160);
      v159 = v116;
      v123 = *(v116 + 16);
      v122 = *(v116 + 24);
      if (v123 >= v122 >> 1)
      {
        OUTLINED_FUNCTION_25_1(v122);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v116 = v159;
      }

      *(v116 + 16) = v123 + 1;
      OUTLINED_FUNCTION_25_3();
      v115 = (*(v125 + 32))(v124 + *(v125 + 72) * v123, v92, v118);
      v117 += 4;
      --v114;
    }

    while (v114);
    OUTLINED_FUNCTION_36_3();
  }

  AppleIntelligenceReportingInvocationStep.additionalUseCases.setter();
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_26_4();
  AppleIntelligenceReportingInvocationStep.requestorBundleID.setter();
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_26_4();
  AppleIntelligenceReportingInvocationStep.onBehalfOfBundleID.setter();
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_26_4();
  AppleIntelligenceReportingInvocationStep.inferenceProviderIdentifier.setter();
  outlined init with copy of UUIDIdentifier?(v141, v145, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  AppleIntelligenceReportingInvocationStep.eventPairID.setter();
  OUTLINED_FUNCTION_30_4();
  v126 = v142;
  v127 = v139;
  v128(v142, v92, v139);
  swift_storeEnumTagMultiPayload();
  (*(v148 + 24))(v126, &v157, v147);
  OUTLINED_FUNCTION_0_7();
  _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v126, v129);
  v130 = OUTLINED_FUNCTION_43_3();
  v131(v130, v127);
  if (v106)
  {
    v132 = *v158;
    v133 = v136;
    *v136 = v157;
    v133[1] = v132;
    *(v133 + 25) = *&v158[9];
  }

  OUTLINED_FUNCTION_47();
}

void _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_48();
  v11 = v10;
  v12 = OUTLINED_FUNCTION_52_2();
  v13 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent(v12);
  v14 = OUTLINED_FUNCTION_29(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v18 = type metadata accessor for MinimalInferenceEvent(0);
  v19 = OUTLINED_FUNCTION_29(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  v23 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
  v24 = OUTLINED_FUNCTION_29(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v27 = v26 - v25;
  type metadata accessor for AppleIntelligenceEvent(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_4();
  _s26AppleIntelligenceReporting0aB5EventOWOcTm_0(v7, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWObTm_0(v9, v27);
      OUTLINED_FUNCTION_41_4();
      _s26AppleIntelligenceReporting010BiomeEventC0PAAE013emitInferenceE05event6errors4type0H2IDyAA0abgE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF(v30, v31, v32, v33, v34, v35, v36);
      v37 = v8;
      v38 = type metadata accessor for AppleIntelligenceInferenceEvent;
      v39 = v27;
    }

    else
    {
      _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWObTm_0(v9, v17);
      _s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKF();
      v37 = v8;
      v38 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent;
      v39 = v17;
    }
  }

  else
  {
    _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWObTm_0(v9, v22);
    OUTLINED_FUNCTION_41_4();
    _s26AppleIntelligenceReporting010BiomeEventC0PAAE020emitMinimalInferenceE05event6errors4type0I2IDyAA0ghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKF();
    v37 = v8;
    v38 = type metadata accessor for MinimalInferenceEvent;
    v39 = v22;
  }

  _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v39, v38);
  if (v37)
  {
    *v11 = v40;
    v11[1] = *v41;
    *(v11 + 25) = *&v41[9];
  }

  OUTLINED_FUNCTION_47();
}

double OUTLINED_FUNCTION_0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 45) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = v1;
  *(a1 + 68) = v2;
  return result;
}

void _s26AppleIntelligenceReporting13EventReporterC04emitabD09eventInfoyAA0abD0O_tAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_48();
  v31 = v9;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_29(v12);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for AppleIntelligenceReportingEventType();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  EventReporter.getBiomeEventReporter(for:)(v11, v34);
  OUTLINED_FUNCTION_28_3();
  (*(v18 + 104))(v22, *MEMORY[0x1E69AA0E0], v16);
  v23 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v23);
  OUTLINED_FUNCTION_26_3();
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKFfA0_();
  OUTLINED_FUNCTION_30_3();
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF(v24, v25, v26, v27, v28, v29, v30);

  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v18 + 8))(v22, v16);
  if (v8)
  {
    OUTLINED_FUNCTION_23_3(v31, v32, v33);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_47();
}

__n128 AppleIntelligenceInferenceEvent.init(subsystem:sessionIdentifier:stepIdentifier:invocationRequestIdentifier:clientRequestIdentifier:modelManagerRequestIdentifier:errors:useCaseIdentifier:additionalUseCaseIdentifiers:requestorBundleIdentifier:onBehalfOfBundleIdentifier:inferenceProviderIdentifier:assetBundleIdentifier:assets:metadata:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22)
{
  v42 = *a22;
  *a9 = a1;
  a9[1] = a2;
  v28 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
  outlined init with copy of UUID?(a3, a9 + v28[5], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v29 = (a9 + v28[6]);
  *v29 = a4;
  v29[1] = a5;
  outlined init with copy of UUID?(a6, a9 + v28[7], &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
  outlined init with copy of UUID?(a7, a9 + v28[8], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of UUID?(a8, a9 + v28[9], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v30 = *(a10 + 16);
  if (v30)
  {
    v44 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v31 = a10 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v31, v43);
      __swift_project_boxed_opaque_existential_1(v43, v43[3]);
      OUTLINED_FUNCTION_106();
      AppleIntelligenceError.toGeneral.getter();
      __swift_destroy_boxed_opaque_existential_1(v43);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v31 += 40;
      --v30;
    }

    while (v30);

    OUTLINED_FUNCTION_54_2(a8);
    OUTLINED_FUNCTION_54_2(a7);
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(a6, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
    OUTLINED_FUNCTION_54_2(a3);
    v32 = v44;
  }

  else
  {

    OUTLINED_FUNCTION_54_2(a8);
    OUTLINED_FUNCTION_54_2(a7);
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(a6, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
    OUTLINED_FUNCTION_54_2(a3);
    v32 = MEMORY[0x1E69E7CC0];
  }

  *(a9 + v28[10]) = v32;
  v33 = a9 + v28[11];
  v34 = *(a11 + 16);
  *v33 = *a11;
  *(v33 + 1) = v34;
  result = *(a11 + 32);
  v36 = *(a11 + 48);
  *(v33 + 2) = result;
  *(v33 + 3) = v36;
  *(a9 + v28[12]) = a12;
  v37 = (a9 + v28[13]);
  *v37 = a13;
  v37[1] = a14;
  v38 = (a9 + v28[14]);
  *v38 = a15;
  v38[1] = a16;
  v39 = (a9 + v28[15]);
  *v39 = a17;
  v39[1] = a18;
  v40 = (a9 + v28[16]);
  *v40 = a19;
  v40[1] = a20;
  *(a9 + v28[17]) = a21;
  *(a9 + v28[18]) = v42;
  return result;
}

double AppleIntelligenceUseCase.init(useCaseIdentifier:parameters:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 28) = 1;
  result = 0.0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  return result;
}

uint64_t storeEnumTagSinglePayload for AppleIntelligenceUseCase(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceReportingMetadata(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1C0C96CC0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void _s26AppleIntelligenceReporting18BiomeEventReporterC4sendyyAA0abdE0OAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  OUTLINED_FUNCTION_1();
  v69 = v3;
  v70 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v68 = v5 - v4;
  type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_1();
  v66 = v7;
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v65 = v9 - v8;
  type metadata accessor for MobileAssetInstrumentationEvent();
  OUTLINED_FUNCTION_1();
  v63 = v11;
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  OUTLINED_FUNCTION_1();
  v61 = v16;
  v62 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v19 = v18 - v17;
  v20 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  OUTLINED_FUNCTION_1();
  v60 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2();
  v25 = v24 - v23;
  v26 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  v32 = v31 - v30;
  v33 = type metadata accessor for AppleIntelligenceBiomeEvent(0);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2();
  v36 = v35 - v34;
  outlined init with copy of AppleIntelligenceBiomeEvent(a1, v35 - v34);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v60 + 32))(v25, v36, v20);
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
      OUTLINED_FUNCTION_7();
      v50 = *(v49 + 152);

      v50(v25);
      v39 = v72;
      if (v72)
      {
        (*(v60 + 8))(v25, v20);
        goto LABEL_14;
      }

      (*(v60 + 8))(v25, v20);
      goto LABEL_24;
    case 2u:
      (*(v61 + 32))(v19, v36, v62);
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
      OUTLINED_FUNCTION_7();
      v46 = *(v45 + 152);

      v46(v19);
      v39 = v72;
      if (v72)
      {
        (*(v61 + 8))(v19, v62);
        goto LABEL_14;
      }

      (*(v61 + 8))(v19, v62);
      goto LABEL_24;
    case 3u:
      (*(v63 + 32))(v14, v36, v64);
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
      OUTLINED_FUNCTION_7();
      v48 = *(v47 + 152);

      v48(v14);
      v39 = v72;
      if (v72)
      {
        (*(v63 + 8))(v14, v64);
        goto LABEL_14;
      }

      (*(v63 + 8))(v14, v64);
      goto LABEL_24;
    case 4u:
      v41 = v65;
      v40 = v66;
      v42 = OUTLINED_FUNCTION_11();
      v43 = v67;
      v44(v42);
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
      goto LABEL_12;
    case 5u:
      v41 = v68;
      v40 = v69;
      v51 = OUTLINED_FUNCTION_11();
      v43 = v70;
      v52(v51);
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
LABEL_12:
      OUTLINED_FUNCTION_7();
      v54 = *(v53 + 152);

      v54(v41);
      v39 = v72;
      if (v72)
      {
        (*(v40 + 8))(v41, v43);
        goto LABEL_14;
      }

      (*(v40 + 8))(v41, v43);
      goto LABEL_24;
    default:
      (*(v28 + 32))(v32, v36, v26);
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
      OUTLINED_FUNCTION_7();
      v38 = *(v37 + 152);

      v38(v32);
      v39 = v72;
      if (v72)
      {
        (*(v28 + 8))(v32, v26);
LABEL_14:
        v55 = v39;

        if (one-time initialization token for general != -1)
        {
          swift_once();
        }

        v56 = type metadata accessor for Logger();
        __swift_project_value_buffer(v56, static Logging.general);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_1C0C94000, v57, v58, "Failed to initialize stream for event", v59, 2u);
          MEMORY[0x1C68E2FD0](v59, -1, -1);
        }

        convertToAppleIntelligenceError(error:)(v55, a2);
        *(a2 + 40) = 1;
        lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
        swift_willThrowTypedImpl();
      }

      else
      {
        (*(v28 + 8))(v32, v26);
LABEL_24:
      }

      return;
  }
}

uint64_t outlined destroy of AppleIntelligenceAssetDeliveryEvent(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t outlined init with copy of any Source<Self.Stream == A>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of AppleIntelligenceBiomeEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceBiomeEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double _s26AppleIntelligenceReporting18BiomeEventReporterCAA0deC0A2aDP4sendyyAA0abdE0OAA0abC5ErrorOYKFTW(uint64_t a1, _OWORD *a2)
{
  _s26AppleIntelligenceReporting18BiomeEventReporterC4sendyyAA0abdE0OAA0abC5ErrorOYKF(a1, &v6);
  if (v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

void closure #1 in AppleIntelligenceUseCase.toReportingUseCase.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_48();
  v11 = v10;
  OUTLINED_FUNCTION_52_2();
  v12 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;

  AppleIntelligenceReportingUseCase.useCaseIdentifier.setter();
  AppleIntelligenceReportingUseCase.mode.setter();

  AppleIntelligenceReportingUseCase.countryCode.setter();

  AppleIntelligenceReportingUseCase.locale.setter();
  v19 = *(v11 + 16);
  v20 = *(v19 + 16);
  if (v20)
  {
    v52 = v18;
    v47 = v8;
    v59 = v9;
    v60 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v58 = v60;
    v21 = specialized Dictionary.startIndex.getter(v19);
    v24 = v21;
    v25 = 0;
    v57 = v19 + 64;
    v50 = v20;
    v51 = v14 + 32;
    v49 = v22;
    v48 = v19 + 72;
    v26 = v19;
    v53 = v14;
    while ((v24 & 0x8000000000000000) == 0 && v24 < 1 << *(v26 + 32))
    {
      v27 = v24 >> 6;
      if ((*(v57 + 8 * (v24 >> 6)) & (1 << v24)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v26 + 36) != v22)
      {
        goto LABEL_23;
      }

      v54 = v25;
      v55 = v22;
      v61 = v23;
      v56 = &v47;
      v28 = *(*(v26 + 48) + 16 * v24 + 8);
      v29 = *(*(v26 + 56) + 16 * v24 + 8);
      MEMORY[0x1EEE9AC00](v21);
      *(&v47 - 4) = v30;
      *(&v47 - 3) = v28;
      *(&v47 - 2) = v31;
      *(&v47 - 1) = v29;

      v32 = v26;
      v33 = v52;
      v34 = v59;
      static Buildable.with(_:)();
      v59 = v34;

      v35 = v58;
      v60 = v58;
      v36 = *(v58 + 16);
      if (v36 >= *(v58 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v35 = v60;
      }

      *(v35 + 16) = v36 + 1;
      v37 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v58 = v35;
      v21 = (*(v53 + 32))(v35 + v37 + *(v53 + 72) * v36, v33, v12);
      v38 = 1 << *(v32 + 32);
      if (v24 >= v38)
      {
        goto LABEL_24;
      }

      v39 = *(v57 + 8 * v27);
      if ((v39 & (1 << v24)) == 0)
      {
        goto LABEL_25;
      }

      v26 = v32;
      if (*(v32 + 36) != v55)
      {
        goto LABEL_26;
      }

      v40 = v39 & (-2 << (v24 & 0x3F));
      if (v40)
      {
        v38 = __clz(__rbit64(v40)) | v24 & 0x7FFFFFFFFFFFFFC0;
        v41 = v50;
      }

      else
      {
        v42 = v27 << 6;
        v43 = v27 + 1;
        v44 = (v48 + 8 * v27);
        v41 = v50;
        while (v43 < (v38 + 63) >> 6)
        {
          v46 = *v44++;
          v45 = v46;
          v42 += 64;
          ++v43;
          if (v46)
          {
            v21 = outlined consume of [String : String].Index._Variant(v24, v55, v61 & 1);
            v38 = __clz(__rbit64(v45)) + v42;
            goto LABEL_19;
          }
        }

        v21 = outlined consume of [String : String].Index._Variant(v24, v55, v61 & 1);
      }

LABEL_19:
      v23 = 0;
      v25 = v54 + 1;
      v24 = v38;
      v22 = v49;
      if (v54 + 1 == v41)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:
    AppleIntelligenceReportingUseCase.parameters.setter();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_47();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_32_2()
{
}

__n128 OUTLINED_FUNCTION_32_3(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 425);
  v4 = *(v2 + 416);
  *a2 = *(v2 + 400);
  *(a2 + 16) = v4;
  *(a2 + 25) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_2@<X0>(char a3@<W8>)
{
  *(v3 - 328) = a3;

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_1_3@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1)
{

  return static Buildable.with(_:)();
}

uint64_t OUTLINED_FUNCTION_43_0@<X0>(void *a1@<X8>)
{
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

uint64_t outlined init with copy of AppleIntelligenceEvent(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_52_2();
  v4(v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_50();
  v6(v5);
  return a2;
}

{
  v4 = type metadata accessor for AppleIntelligenceEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s26AppleIntelligenceReporting0aB5EventOWOcTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_52_2();
  v4(v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_50();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_26_1();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = *(v7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((v20 - v18) / v17);
LABEL_19:
  v7(0);
  OUTLINED_FUNCTION_39_0();
  if (v10)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8 + v22, v14, v19 + v22, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_27_1();
}

uint64_t outlined init with take of AppleIntelligenceAssetDeliveryEvent(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_52_2();
  v4(v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_50();
  v6(v5);
  return a2;
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWObTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_52_2();
  v4(v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_50();
  v6(v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceUseCase(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t OUTLINED_FUNCTION_22_2()
{
  v2 = *(v0 + 176);

  return _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v2, type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState);
}

uint64_t type metadata accessor for AppleIntelligenceBiomeEvent(uint64_t a1)
{
  result = type metadata singleton initialization cache for AppleIntelligenceBiomeEvent;
  if (!type metadata singleton initialization cache for AppleIntelligenceBiomeEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_12_2()
{
}

void OUTLINED_FUNCTION_29_1(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  AppleIntelligenceError.toGeneral.getter();
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_31_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_31_2()
{
}

uint64_t OUTLINED_FUNCTION_31_3()
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_31_4()
{
}

uint64_t sub_1C0C988A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_36_1(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, v0);
}

uint64_t specialized Array.count.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x1C68E2860);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t outlined init with take of any Source<Self.Stream == A>(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for GeneralAppleIntelligenceError(uint64_t a1)
{
  result = type metadata singleton initialization cache for GeneralAppleIntelligenceError;
  if (!type metadata singleton initialization cache for GeneralAppleIntelligenceError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void _s26AppleIntelligenceReporting13EventReporterC04emitab3EndD09eventInfo05startD10IdentifieryAA0abD0O_AA14UUIDIdentifierVSgtAA0abC5ErrorOYKF()
{
  OUTLINED_FUNCTION_48();
  v37 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
  OUTLINED_FUNCTION_29(v6);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_29(v10);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for AppleIntelligenceReportingEventType();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v38 = v5;
  EventReporter.getBiomeEventReporter(for:)(v5, v41);
  OUTLINED_FUNCTION_28_3();
  (*(v16 + 104))(v20, *MEMORY[0x1E69AA0D0], v14);
  outlined init with copy of UUIDIdentifier?(v3, v9);
  v21 = type metadata accessor for UUIDIdentifier(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v21) == 1)
  {
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v9, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
    v22 = type metadata accessor for UUID();
    v23 = v13;
    v24 = 1;
    v25 = 1;
  }

  else
  {
    v26 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_9();
    (*(v27 + 16))(v13, v9, v26);
    OUTLINED_FUNCTION_14_2();
    outlined destroy of UUIDIdentifier(v9, v28);
    OUTLINED_FUNCTION_13_2();
    v22 = v26;
  }

  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  OUTLINED_FUNCTION_26_3();
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKFfA0_();
  OUTLINED_FUNCTION_30_3();
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF(v29, v30, v31, v32, v33, v34, v35);

  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v16 + 8))(v20, v14);
  if (v0)
  {
    OUTLINED_FUNCTION_23_3(v37, v39, v40);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  OUTLINED_FUNCTION_47();
}

void type metadata completion function for GeneralAppleIntelligenceError(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t outlined init with copy of UUIDIdentifier?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_46(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_46_0(uint64_t a1)
{

  return BidirectionalCollection<>.joined(separator:)();
}

void *OUTLINED_FUNCTION_39_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  return __swift_project_boxed_opaque_existential_1((v3 - 128), v2);
}

__n128 sub_1C0C98F9C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C0C98FA8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySbGMd, &_s15Synchronization5MutexVySbGMR);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV0F4TypeO28AvailabilityChangeCodingKeys027_74E5A5FFCD3AA678926F1A3090M4B7D9LLOs0J3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys.init(stringValue:)(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0C9924C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 88);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C0C992D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 88) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

BOOL sub_1C0C9945C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_1C0C99490(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_32_0(a1);
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV0J7ReasonsVSYAASY8rawValuexSg03RawN0Qz_tcfCTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV0J7ReasonsVSYAASY8rawValue03RawN0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOs0L3KeyAAsAMP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV20UAFSubscriptionStateV18SubscriptionStatusOSYAASY8rawValue03RawL0QzvgTW_0@<X0>(_DWORD *a1@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV17AvailabilityStateV6StatusO14RestrictedInfoVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_62_0(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV17AvailabilityStateV6StatusO14RestrictedInfoVwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_1C0C998C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 1);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UUIDIdentifier(0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C0C99940(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 1) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UUIDIdentifier(0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0C99D58(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_49_2();
  }

  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 84) == a2)
  {
    v5 = *(a3 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
    v5 = *(a3 + 28);
  }

  v6 = OUTLINED_FUNCTION_59_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C0C99E28()
{
  OUTLINED_FUNCTION_60_1();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
      v8 = *(v5 + 28);
    }

    v9 = OUTLINED_FUNCTION_59_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1C0C99EF8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_49_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = OUTLINED_FUNCTION_59_1(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1C0C99F78()
{
  OUTLINED_FUNCTION_60_1();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v5 = OUTLINED_FUNCTION_59_1(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1C0C9A150()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySDys6UInt32V26AppleIntelligenceReporting010BiomeEventF0_pGGMd, &_s15Synchronization5MutexVySDys6UInt32V26AppleIntelligenceReporting010BiomeEventF0_pGGMR);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

unint64_t BiomeEventReporter.user.getter()
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  return *(v0 + 16) | (*(v0 + 20) << 32);
}

uint64_t BiomeEventReporter.user.setter()
{
  v2 = OUTLINED_FUNCTION_10();
  result = OUTLINED_FUNCTION_5(v2);
  *(v1 + 16) = v0;
  *(v1 + 20) = BYTE4(v0) & 1;
  return result;
}

uint64_t (*BiomeEventReporter.user.modify())(uint64_t a1)
{
  v0 = OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4(v0);
  return BiomeEventReporter.user.modify;
}

uint64_t key path setter for BiomeEventReporter.lazySource.source : <A>BiomeEventReporter.lazySource<A>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    outlined init with copy of any Source<Self.Stream == A>(a1, v5);
  }

  else
  {
    v3 = *(a1 + 16);
    v5[0] = *a1;
    v5[1] = v3;
    v6 = *(a1 + 32);
  }

  return (*(**a2 + 128))(v5);
}

__n128 BiomeEventReporter.lazySource.source.getter@<Q0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v1 + 40))
  {
    outlined init with copy of any Source<Self.Stream == A>(v1 + 16, a1);
  }

  else
  {
    result = *(v1 + 16);
    v4 = *(v1 + 32);
    *a1 = result;
    *(a1 + 16) = v4;
    *(a1 + 32) = *(v1 + 48);
  }

  return result;
}

uint64_t BiomeEventReporter.lazySource.source.setter()
{
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v2 = *(v0 + 24);
  if (!*(v1 + 40))
  {
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = *(v0 + 16);
    *(v1 + 16) = *v0;
    *(v1 + 32) = v3;
    *(v1 + 48) = *(v0 + 32);
    return swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  outlined init with take of any Source<Self.Stream == A>(v0, v1 + 16);
  return swift_endAccess();
}

uint64_t (*BiomeEventReporter.lazySource.source.modify())(uint64_t a1)
{
  v0 = OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4(v0);
  return BiomeEventReporter.lazySource.source.modify;
}

void BiomeEventReporter.lazySource.__allocating_init(user:)()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_9_0(v0);
  *(v2 + 68) = v1 & 1;
}

uint64_t BiomeEventReporter.lazySource.init(user:)(uint64_t a1)
{
  *(v1 + 45) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 64) = a1;
  *(v1 + 68) = BYTE4(a1) & 1;
  return OUTLINED_FUNCTION_8();
}

void BiomeEventReporter.lazySource.sendEvent(_:)(uint64_t a1)
{
  os_unfair_lock_lock(v1 + 14);
  _s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceC04sendE0yy0E4TypeQzKFySbzYuKYTXEfU_(&v1[15], v1, a1, &v3);
  os_unfair_lock_unlock(v1 + 14);
}

void *_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceC04sendE0yy0E4TypeQzKFySbzYuKYTXEfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  v9 = *(*a2 + 120);
  v9(v33, a1);
  v10 = 0x1EBE5E000uLL;
  if (v34)
  {
    v11 = __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else if (*(a2 + 68) == 1)
  {
    v35 = a3;
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logging.general);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C0C94000, v14, v15, "Creating general source", v16, 2u);
      v17 = v16;
      v10 = 0x1EBE5E000;
      MEMORY[0x1C68E2FD0](v17, -1, -1);
    }

    result = static StreamResource.source()();
    if (v4)
    {
      goto LABEL_22;
    }

    v11 = (*(*a2 + 128))(v33);
  }

  else
  {
    v30 = *(a2 + 64);
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logging.general);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v35 = a3;
      v27 = a4;
      v28 = v26;
      *v26 = 67109120;
      *(v26 + 4) = v30;
      _os_log_impl(&dword_1C0C94000, v24, v25, "Creating source with user: %u", v26, 8u);
      v29 = v28;
      a4 = v27;
      MEMORY[0x1C68E2FD0](v29, -1, -1);
    }

    result = static StreamResource.source(user:)();
    if (v4)
    {
      goto LABEL_22;
    }

    v11 = (*(*a2 + 128))(v33);
    v10 = 0x1EBE5E000;
  }

  v9(&v31, v11);
  if (v32)
  {
    outlined init with take of any Source<Self.Stream == A>(&v31, v33);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    dispatch thunk of Source.sendEvent(_:)();
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  if (*(v10 + 720) != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logging.general);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1C0C94000, v19, v20, "Stream resource not found.", v21, 2u);
    MEMORY[0x1C68E2FD0](v21, -1, -1);
  }

  lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
  v6 = swift_allocError();
  *v22 = 0xD000000000000019;
  *(v22 + 8) = 0x80000001C0CDED80;
  *(v22 + 40) = 0;
  result = swift_willThrow();
LABEL_22:
  *a4 = v6;
  return result;
}

uint64_t BiomeEventReporter.lazySource.deinit()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return v0;
}

uint64_t BiomeEventReporter.lazySource.__deallocating_deinit()
{
  BiomeEventReporter.lazySource.deinit();
  OUTLINED_FUNCTION_6();

  return MEMORY[0x1EEE6BDC0](v0);
}

uint64_t BiomeEventReporter.invocationStepSource.getter()
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
}

uint64_t BiomeEventReporter.invocationStepSource.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_5(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t BiomeEventReporter.availabilitySource.getter()
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
}

uint64_t BiomeEventReporter.availabilitySource.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_5(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t BiomeEventReporter.mobileAssetSource.getter()
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
}

uint64_t BiomeEventReporter.mobileAssetSource.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_5(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t BiomeEventReporter.mobileAssetSecondarySource.getter()
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
}

uint64_t BiomeEventReporter.mobileAssetSecondarySource.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_5(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t BiomeEventReporter.modelCatalogSource.getter()
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
}

uint64_t BiomeEventReporter.modelCatalogSource.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_5(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t BiomeEventReporter.unifiedAssetFrameworkSource.getter()
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
}

uint64_t BiomeEventReporter.unifiedAssetFrameworkSource.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_5(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t BiomeEventReporter.__allocating_init(user:)(unint64_t a1)
{
  v2 = swift_allocObject();
  BiomeEventReporter.init(user:)(a1 | ((HIDWORD(a1) & 1) << 32));
  return v2;
}

uint64_t BiomeEventReporter.init(user:)(unint64_t a1)
{
  v2 = a1;
  v3 = HIDWORD(a1) & 1;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 20) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O10InvocationO4StepOGMd, &_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O10InvocationO4StepOGMR);
  OUTLINED_FUNCTION_6();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_0(v4);
  *(v1 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O16AssetDeliveryLogO12AvailabilityOGMd, &_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O16AssetDeliveryLogO12AvailabilityOGMR);
  OUTLINED_FUNCTION_6();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_0(v6);
  *(v1 + 32) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O16AssetDeliveryLogO06MobileL0OGMd, &_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O16AssetDeliveryLogO06MobileL0OGMR);
  OUTLINED_FUNCTION_6();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_0(v8);
  *(v1 + 40) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO11MobileAssetO9LifeCycleO015InstrumentationE0OGMd, &_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO11MobileAssetO9LifeCycleO015InstrumentationE0OGMR);
  OUTLINED_FUNCTION_6();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_0(v10);
  *(v1 + 48) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O16AssetDeliveryLogO12ModelCatalogOGMd, &_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O16AssetDeliveryLogO12ModelCatalogOGMR);
  OUTLINED_FUNCTION_6();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_0(v12);
  *(v1 + 56) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O16AssetDeliveryLogO07UnifiedL9FrameworkOGMd, &_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O16AssetDeliveryLogO07UnifiedL9FrameworkOGMR);
  OUTLINED_FUNCTION_6();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_9_0(v14);
  *(v15 + 68) = v3;
  *(v1 + 64) = v15;
  return v1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *BiomeEventReporter.deinit()
{

  return v0;
}

uint64_t BiomeEventReporter.__deallocating_deinit()
{
  BiomeEventReporter.deinit();

  return MEMORY[0x1EEE6BDC0](v0);
}

unint64_t protocol witness for BiomeEventReporting.user.getter in conformance BiomeEventReporter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16) | (*(v1 + 20) << 32);
}

uint64_t BiomeEventReporterGenerator.getNewBiomeEventReporter(for:)@<X0>(unsigned int a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for BiomeEventReporter();
  v5 = swift_allocObject();
  result = BiomeEventReporter.init(user:)(a1);
  a2[3] = v4;
  a2[4] = &protocol witness table for BiomeEventReporter;
  *a2 = v5;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1)
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_9_0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 45) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = v1;
  return result;
}

uint64_t one-time initialization function for general()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.general);
  __swift_project_value_buffer(v0, static Logging.general);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for testing()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.testing);
  __swift_project_value_buffer(v0, static Logging.testing);
  return Logger.init(subsystem:category:)();
}

uint64_t Logging.general.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static Logging.general.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t toJSONString(_:)(void *a1)
{
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_2();
  v15 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v6 = (v5 - v4);
  v7 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMd, &_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMR);
  *(swift_allocObject() + 16) = xmmword_1C0CD7B10;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
  lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  *v6 = closure #1 in toJSONString(_:);
  v6[1] = 0;
  (*(v3 + 104))(v6, *MEMORY[0x1E6967FB8], v15);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v10 = v9;
  static String.Encoding.utf8.getter();
  v11 = String.init(data:encoding:)();
  v13 = v12;
  outlined consume of Data._Representation(v8, v10);

  if (!v13)
  {
    return 0xD000000000000013;
  }

  return v11;
}

unint64_t lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A];
  if (!lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t closure #1 in toJSONString(_:)(uint64_t a1, void *a2)
{
  v27 = a1;
  v3 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v20 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v7 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v18 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TimeZone();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = type metadata accessor for Date.ISO8601FormatStyle();
  v21 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  static TimeZone.current.getter();
  (*(v9 + 104))(v11, *MEMORY[0x1E6969360], v17);
  (*(v7 + 104))(v18, *MEMORY[0x1E6969358], v19);
  (*(v22 + 104))(v20, *MEMORY[0x1E6969370], v23);
  (*(v25 + 104))(v24, *MEMORY[0x1E6969380], v26);
  Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
  lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
  Date.formatted<A>(_:)();
  __swift_mutable_project_boxed_opaque_existential_1(v28, v28[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  (*(v21 + 8))(v15, v13);

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t UInt32.init<A>(safelyWrapping:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76 = *(AssociatedConformanceWitness + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v74 = &v71 - v6;
  v7 = swift_checkMetadataState();
  v8 = *(v7 - 8);
  v77 = v7;
  v78 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v71 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  v80 = v5;
  v16 = *(v5 + 16);
  v17 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v17);
  v81 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_0();
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    OUTLINED_FUNCTION_3_0();
    v16 = a1;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      v21 = v81;
      v22 = OUTLINED_FUNCTION_0_0();
      v23(v22);
      OUTLINED_FUNCTION_3_0();
      v24 = dispatch thunk of BinaryInteger._lowWord.getter();
      v25 = OUTLINED_FUNCTION_1_1();
      a1(v25);
      if (v24 < 0)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }

    v82 = 0;
    v31 = lazy protocol witness table accessor for type Int and conformance Int();
    OUTLINED_FUNCTION_7_0(v31, MEMORY[0x1E69E6530], v31);
    v29 = dispatch thunk of static Comparable.< infix(_:_:)();
    v21 = v81;
    v32 = OUTLINED_FUNCTION_1_1();
    a1(v32);
LABEL_9:
    v33 = v15;
    if (v29)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

  v71 = v12;
  OUTLINED_FUNCTION_3_0();
  v26 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v79 = a1;
  OUTLINED_FUNCTION_3_0();
  v27 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v26 & 1) == 0)
  {
    v16 = v79;
    v21 = v81;
    v12 = v71;
    if (v27 >= 64)
    {
      goto LABEL_33;
    }

    v33 = v15;
    v34 = OUTLINED_FUNCTION_0_0();
    v35(v34);
    OUTLINED_FUNCTION_3_0();
    v36 = dispatch thunk of BinaryInteger._lowWord.getter();
    v37 = OUTLINED_FUNCTION_1_1();
    a1(v37);
    if ((v36 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  if (v27 > 64)
  {
    v82 = 0;
    v28 = lazy protocol witness table accessor for type Int and conformance Int();
    OUTLINED_FUNCTION_7_0(v28, MEMORY[0x1E69E6530], v28);
    v29 = OUTLINED_FUNCTION_5_0();
    v21 = v81;
    v30 = OUTLINED_FUNCTION_1_1();
    a1(v30);
    v12 = v71;
    goto LABEL_9;
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v38 = OUTLINED_FUNCTION_5_0();
  v21 = v81;
  a1 = *(v81 + 1);
  (a1)(v20, a2);
  if (v38)
  {
    v12 = v71;
LABEL_16:
    v33 = v15;
    goto LABEL_17;
  }

  v66 = OUTLINED_FUNCTION_0_0();
  v67(v66);
  OUTLINED_FUNCTION_3_0();
  v68 = dispatch thunk of BinaryInteger._lowWord.getter();
  (a1)(v20, a2);
  v12 = v71;
  v33 = v15;
  if (v68 < 0)
  {
LABEL_17:
    dispatch thunk of Numeric.magnitude.getter();
    v39 = v77;
    v40 = swift_getAssociatedConformanceWitness();
    v41 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v81 = a1;
    if (v41)
    {
      v42 = v12;
      v43 = dispatch thunk of static BinaryInteger.isSigned.getter();
      OUTLINED_FUNCTION_2_2();
      v44 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v45 = v78;
      if (v43)
      {
        if (v44 <= 32)
        {
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v46 = dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v49 = OUTLINED_FUNCTION_6_0(v46, v47, v48, MEMORY[0x1E69E65D0], MEMORY[0x1E69E65B8]);
          OUTLINED_FUNCTION_8_0(v49);
          OUTLINED_FUNCTION_4_0();
          v50(v42, v39);
          if (v39)
          {
            goto LABEL_24;
          }

LABEL_23:
          OUTLINED_FUNCTION_2_2();
          if (dispatch thunk of BinaryInteger._lowWord.getter() != -1)
          {
LABEL_24:
            swift_getAssociatedConformanceWitness();
            v80 = v40;
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v79 = v16;
            v52 = v45;
            v53 = v72;
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
            v54 = *(v52 + 8);
            v54(v53, v39);
            lazy protocol witness table accessor for type UInt32 and conformance UInt32();
            FixedWidthInteger.init<A>(clamping:)();
            (v81)(v79, a2);
            v54(v33, v39);
            return ~v82;
          }

          goto LABEL_31;
        }
      }

      else if (v44 < 32)
      {
        OUTLINED_FUNCTION_2_2();
        if (dispatch thunk of BinaryInteger._lowWord.getter() != -1)
        {
          goto LABEL_24;
        }

        goto LABEL_31;
      }

      LODWORD(v82) = -1;
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v56 = v39;
      v62 = dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v65 = OUTLINED_FUNCTION_6_0(v62, v63, v64, MEMORY[0x1E69E65D0], MEMORY[0x1E69E65B8]);
      OUTLINED_FUNCTION_8_0(v65);
      OUTLINED_FUNCTION_4_0();
      v61 = v42;
    }

    else
    {
      OUTLINED_FUNCTION_2_2();
      v51 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v45 = v78;
      if (v51 < 32)
      {
        goto LABEL_23;
      }

      LODWORD(v82) = -1;
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v56 = v39;
      v57 = dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      OUTLINED_FUNCTION_6_0(v57, v58, v59, MEMORY[0x1E69E65D0], MEMORY[0x1E69E65B8]);
      dispatch thunk of static Comparable.< infix(_:_:)();
      OUTLINED_FUNCTION_4_0();
      v61 = v12;
    }

    v60(v61, v39);
    if (v56)
    {
      goto LABEL_24;
    }

LABEL_31:
    (v81)(v16, a2);
    (*(v45 + 8))(v33, v39);
    return 1;
  }

LABEL_33:
  v69 = OUTLINED_FUNCTION_0_0();
  v70(v69);
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  FixedWidthInteger.init<A>(clamping:)();
  (*(v21 + 1))(v16, a2);
  return v82;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

Swift::UInt32_optional __swiftcall UInt32.init(safelyWrapping:)(Swift::Double_optional safelyWrapping)
{
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v3 = round(*&safelyWrapping.is_nil);
    if (v3 > -1.0 && v3 < 4294967300.0)
    {
      v2 = v3;
    }

    else if (*&safelyWrapping.is_nil < 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = -1;
    }
  }

  return (v2 | ((v1 & 1) << 32));
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return dispatch thunk of static Comparable.< infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1)
{

  return dispatch thunk of static Comparable.< infix(_:_:)();
}

uint64_t UUIDIdentifier.init(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t UUIDIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUIDIdentifier(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    OUTLINED_FUNCTION_0_1();
    lazy protocol witness table accessor for type UUID and conformance UUID(v11, v12, MEMORY[0x1E69695D0]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    (*(v5 + 32))(v10, v7, v4);
    __swift_destroy_boxed_opaque_existential_1(v15);
    outlined init with take of UUIDIdentifier(v10, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t outlined init with take of UUIDIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUIDIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t UUIDIdentifier.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_1();
  lazy protocol witness table accessor for type UUID and conformance UUID(v1, v2, MEMORY[0x1E69695B0]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t UUIDIdentifier.internalUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UUIDIdentifier.hash(into:)(uint64_t a1)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_1();
  lazy protocol witness table accessor for type UUID and conformance UUID(v1, v2, MEMORY[0x1E69695B8]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int UUIDIdentifier.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_1();
  lazy protocol witness table accessor for type UUID and conformance UUID(v0, v1, MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UUIDIdentifier(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for UUIDIdentifier(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7964647562 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73676E6974746573 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x626967696C45736FLL && a2 == 0xED00007974696C69;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x80000001C0CDEE70 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7461436C65646F6DLL && a2 == 0xEC000000676F6C61;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x80000001C0CDEE90 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7341656C69626F6DLL && a2 == 0xEB00000000746573;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001CLL && 0x80000001C0CDEEB0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 1769105779 && a2 == 0xE400000000000000;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6573734169726973 && a2 == 0xEA00000000007374;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000018 && 0x80000001C0CDEED0 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7964647562;
  switch(a1)
  {
    case 1:
      result = 0x73676E6974746573;
      break;
    case 2:
      result = 0x626967696C45736FLL;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0x7461436C65646F6DLL;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x7341656C69626F6DLL;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 1769105779;
      break;
    case 9:
      result = 0x6573734169726973;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.Subsystem.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO34MobileAssistantFrameworkCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, "h|");
  OUTLINED_FUNCTION_1();
  v105 = v28;
  v106 = v27;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_19_0();
  v104 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO20SiriAssetsCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO20SiriAssetsCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v102 = v32;
  v103 = v31;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_19_0();
  v101 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO14SiriCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO14SiriCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v99 = v36;
  v100 = v35;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_19_0();
  v98 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO38GenerativeModelsAvailabilityCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO38GenerativeModelsAvailabilityCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v96 = v40;
  v97 = v39;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_19_0();
  v95 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO06MobileG10CodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO06MobileG10CodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v93 = v44;
  v94 = v43;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_19_0();
  v92 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO07UnifiedG19FrameworkCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO07UnifiedG19FrameworkCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v90 = v48;
  v91 = v47;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO22ModelCatalogCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO22ModelCatalogCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v51, &a17);
  v89[11] = v52;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO35CloudSubscriptionFeaturesCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO35CloudSubscriptionFeaturesCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v55, &a14);
  v89[8] = v56;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO23OsEligibilityCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO23OsEligibilityCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v59, &a11);
  v89[5] = v60;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO18SettingsCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO18SettingsCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v63, &v112);
  v89[2] = v64;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v65);
  v67 = v89 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO15BuddyCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO15BuddyCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v89[1] = v69;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_36();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO10CodingKeys027_74E5A5FFCD3AA678926F1A3090N4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO10CodingKeys027_74E5A5FFCD3AA678926F1A3090N4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v72 = v71;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v73);
  v75 = v89 - v74;
  v76 = *v24;
  v77 = v26[4];
  v78 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys();
  v107 = v75;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v79 = (v72 + 8);
  switch(v76)
  {
    case 1:
      v110 = 1;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys();
      v78 = v107;
      v77 = v108;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_24();
      v81 = v67;
      v84 = &v112;
      goto LABEL_9;
    case 2:
      v111 = 2;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys();
      v87 = v89[4];
      OUTLINED_FUNCTION_14_0(&unk_1F402E1E8, &v111);
      OUTLINED_FUNCTION_24();
      v81 = v87;
      v84 = &a11;
      goto LABEL_9;
    case 3:
      LOBYTE(a10) = 3;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys();
      v88 = v89[7];
      OUTLINED_FUNCTION_14_0(&unk_1F402E208, &a10);
      OUTLINED_FUNCTION_24();
      v81 = v88;
      v84 = &a14;
      goto LABEL_9;
    case 4:
      BYTE1(a10) = 4;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys();
      v83 = v89[10];
      OUTLINED_FUNCTION_14_0(&unk_1F402E228, &a10 + 1);
      OUTLINED_FUNCTION_24();
      v81 = v83;
      v84 = &a17;
LABEL_9:
      v82 = *(v84 - 32);
      break;
    case 5:
      BYTE2(a10) = 5;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys();
      v85 = v89[13];
      OUTLINED_FUNCTION_14_0(&unk_1F402E248, &a10 + 2);
      v86 = v90;
      v82 = v91;
      goto LABEL_14;
    case 6:
      BYTE3(a10) = 6;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys();
      v85 = v92;
      OUTLINED_FUNCTION_14_0(&unk_1F402E268, &a10 + 3);
      v86 = v93;
      v82 = v94;
      goto LABEL_14;
    case 7:
      BYTE4(a10) = 7;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys();
      v85 = v95;
      OUTLINED_FUNCTION_14_0(&unk_1F402E288, &a10 + 4);
      v86 = v96;
      v82 = v97;
      goto LABEL_14;
    case 8:
      BYTE5(a10) = 8;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys();
      v85 = v98;
      OUTLINED_FUNCTION_14_0(&unk_1F402E2A8, &a10 + 5);
      v86 = v99;
      v82 = v100;
      goto LABEL_14;
    case 9:
      BYTE6(a10) = 9;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys();
      v85 = v101;
      OUTLINED_FUNCTION_14_0(&unk_1F402E2C8, &a10 + 6);
      v86 = v102;
      v82 = v103;
      goto LABEL_14;
    case 10:
      HIBYTE(a10) = 10;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys();
      v85 = v104;
      OUTLINED_FUNCTION_14_0(&unk_1F402E2E8, &a10 + 7);
      v86 = v105;
      v82 = v106;
LABEL_14:
      v80 = *(v86 + 8);
      v81 = v85;
      break;
    default:
      v109 = 0;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys();
      v78 = v107;
      v77 = v108;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_24();
      v81 = v21;
      v82 = v68;
      break;
  }

  v80(v81, v82);
  (*v79)(v78, v77);
  OUTLINED_FUNCTION_47();
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys);
  }

  return result;
}

Swift::Int AppleIntelligenceAssetDeliveryEvent.Subsystem.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68E2B10](v1);
  return Hasher._finalize()();
}

void AppleIntelligenceAssetDeliveryEvent.Subsystem.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_48();
  a26 = v28;
  a27 = v29;
  v130 = v27;
  v31 = v30;
  v125 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO34MobileAssistantFrameworkCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO34MobileAssistantFrameworkCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v117 = v34;
  v118 = v33;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_19_0();
  v124 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO20SiriAssetsCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO20SiriAssetsCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v115 = v38;
  v116 = v37;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_19_0();
  v123 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO14SiriCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO14SiriCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v113 = v42;
  v114 = v41;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_19_0();
  v122 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO38GenerativeModelsAvailabilityCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO38GenerativeModelsAvailabilityCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v111 = v46;
  v112 = v45;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_19_0();
  v128 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO06MobileG10CodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO06MobileG10CodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v49, &a24);
  v110[17] = v50;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_19_0();
  v127 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO07UnifiedG19FrameworkCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO07UnifiedG19FrameworkCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v53, &a23);
  v110[14] = v54;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_19_0();
  v126 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO22ModelCatalogCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO22ModelCatalogCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v57, &a21);
  v110[12] = v58;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_19_0();
  v121 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO35CloudSubscriptionFeaturesCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO35CloudSubscriptionFeaturesCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v61, &a19);
  v110[10] = v62;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_19_0();
  v120 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO23OsEligibilityCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO23OsEligibilityCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v65, &a10);
  v110[8] = v66;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_19_0();
  v119 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO18SettingsCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO18SettingsCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v69, &v134);
  v110[6] = v70;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v71);
  v73 = v110 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO15BuddyCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO15BuddyCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v110[5] = v75;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v76);
  v78 = v110 - v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO10CodingKeys027_74E5A5FFCD3AA678926F1A3090N4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO10CodingKeys027_74E5A5FFCD3AA678926F1A3090N4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v80 = v79;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_36();
  v82 = v31[3];
  v129 = v31;
  __swift_project_boxed_opaque_existential_1(v31, v82);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys();
  v83 = v130;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v83)
  {
    goto LABEL_8;
  }

  v110[3] = v78;
  v110[2] = v74;
  v110[4] = v73;
  v84 = v127;
  v85 = v128;
  v130 = v80;
  v86 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC26AppleIntelligenceReporting0jK18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0R6ActionO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLO_Tt1g5(v86, 0);
  if (v89 == v90 >> 1)
  {
LABEL_7:
    v99 = type metadata accessor for DecodingError();
    swift_allocError();
    v101 = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v101 = &type metadata for AppleIntelligenceAssetDeliveryEvent.Subsystem;
    v102 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_65(v102);
    (*(*(v99 - 8) + 104))(v101, *MEMORY[0x1E69E6AF8], v99);
    swift_willThrow();
    swift_unknownObjectRelease();
    v103 = OUTLINED_FUNCTION_34();
    v104(v103);
LABEL_8:
    v105 = v129;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v105);
    OUTLINED_FUNCTION_47();
    return;
  }

  v110[1] = 0;
  if (v89 < (v90 >> 1))
  {
    v91 = *(v88 + v89);
    specialized ArraySlice.subscript.getter(v89 + 1, v90 >> 1, v87, v88, v89, v90);
    v93 = v92;
    v95 = v94;
    swift_unknownObjectRelease();
    if (v93 == v95 >> 1)
    {
      switch(v91)
      {
        case 1:
          v132 = 1;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys();
          OUTLINED_FUNCTION_10_0(&unk_1F402E1C8, &v132);
          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_21();
          v98 = &v134;
          goto LABEL_18;
        case 2:
          v133 = 2;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys();
          OUTLINED_FUNCTION_10_0(&unk_1F402E1E8, &v133);
          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_21();
          v98 = &a10;
          goto LABEL_18;
        case 3:
          a10 = 3;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys();
          OUTLINED_FUNCTION_10_0(&unk_1F402E208, &a10);
          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_21();
          v98 = &a19;
          goto LABEL_18;
        case 4:
          a11 = 4;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys();
          OUTLINED_FUNCTION_10_0(&unk_1F402E228, &a11);
          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_21();
          v98 = &a21;
          goto LABEL_18;
        case 5:
          a12 = 5;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys();
          OUTLINED_FUNCTION_13(&unk_1F402E248, &a12);
          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_21();
          v98 = &a23;
          goto LABEL_18;
        case 6:
          a13 = 6;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys();
          OUTLINED_FUNCTION_13(&unk_1F402E268, &a13);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_24();
          v96 = v84;
          v98 = &a24;
          goto LABEL_18;
        case 7:
          a14 = 7;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys();
          OUTLINED_FUNCTION_10_0(&unk_1F402E288, &a14);
          swift_unknownObjectRelease();
          v107 = v111;
          v106 = v112;
          goto LABEL_21;
        case 8:
          a15 = 8;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys();
          v85 = v122;
          OUTLINED_FUNCTION_10_0(&unk_1F402E2A8, &a15);
          swift_unknownObjectRelease();
          v107 = v113;
          v106 = v114;
          goto LABEL_21;
        case 9:
          a16 = 9;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys();
          v85 = v123;
          OUTLINED_FUNCTION_10_0(&unk_1F402E2C8, &a16);
          swift_unknownObjectRelease();
          v107 = v115;
          v106 = v116;
          goto LABEL_21;
        case 10:
          a17 = 10;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys();
          v85 = v124;
          OUTLINED_FUNCTION_10_0(&unk_1F402E2E8, &a17);
          swift_unknownObjectRelease();
          v107 = v117;
          v106 = v118;
LABEL_21:
          v97 = *(v107 + 8);
          v96 = v85;
          break;
        default:
          v131 = 0;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys();
          OUTLINED_FUNCTION_10_0(&unk_1F402E1A8, &v131);
          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_21();
          v98 = &v127;
LABEL_18:
          v106 = *(v98 - 32);
          break;
      }

      v97(v96, v106);
      v108 = OUTLINED_FUNCTION_34();
      v109(v108);
      v105 = v129;
      *v125 = v91;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t AppleIntelligenceAssetDeliveryEvent.useCaseIdentifier.getter@<X0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 24);
  v2 = *(v1 + 40);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 8);
  a1[1] = v4;
  a1[2] = v2;
  a1[3] = v5;
  return outlined init with copy of AppleIntelligenceUseCase?();
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.EventType.== infix(_:_:)(uint64_t a1, void *a2)
{
  v115 = a1;
  v116 = a2;
  v109 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v110 = (v7 - v6);
  type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_60();
  v111 = v9;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_45();
  v114 = v11;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_45();
  v112 = v13;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v109 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v109 - v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_58();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_45();
  v113 = v23;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v109 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV0F4TypeO_AEtMd, &_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV0F4TypeO_AEtMR);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_36();
  v29 = (v3 + *(v28 + 56));
  outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
  v116 = v29;
  outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
  v30 = v3;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      v76 = v113;
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      if (OUTLINED_FUNCTION_32() != 1)
      {
        OUTLINED_FUNCTION_3_1();
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v76, v99);
LABEL_41:
        outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v3, &_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV0F4TypeO_AEtMd, &_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV0F4TypeO_AEtMR);
LABEL_42:
        v30 = 0;
        return v30 & 1;
      }

      v77 = v110;
      outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
      if (*v76 != *v77 || v76[1] != v77[1])
      {
        OUTLINED_FUNCTION_3_1();
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v77, v78);
LABEL_26:
        OUTLINED_FUNCTION_3_1();
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v76, v79);
        goto LABEL_59;
      }

      v102 = static UUID.== infix(_:_:)();
      OUTLINED_FUNCTION_3_1();
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v77, v103);
      if ((v102 & 1) == 0)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_3_1();
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v76, v104);
      goto LABEL_65;
    case 2u:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      v45 = v2[1];
      v44 = v2[2];
      v47 = v2[3];
      v46 = v2[4];
      v48 = v116;
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        goto LABEL_41;
      }

      v49 = *v2;
      v50 = v48[2];
      v51 = v48[4];
      if (v49 != *v48 || ((v52 = v48[1], v53 = v48[3], v45 == v52) ? (v54 = v44 == v50) : (v54 = 0), !v54 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v47 != v53))
      {

        goto LABEL_59;
      }

      v55 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v46, v51);

      if ((v55 & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_65;
    case 3u:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      memcpy(__dst, v4, 0x50uLL);
      if (OUTLINED_FUNCTION_32() == 3)
      {
        v56 = OUTLINED_FUNCTION_56();
        memcpy(v56, v57, 0x50uLL);
        memcpy(v121, v4, 0x50uLL);
        v58 = OUTLINED_FUNCTION_55();
        memcpy(v58, v59, 0x50uLL);
        v60 = OUTLINED_FUNCTION_52();
        static AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.== infix(_:_:)(v60, v61);
        v62 = OUTLINED_FUNCTION_51();
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState(v62);
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState(__dst);
        goto LABEL_33;
      }

      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState(__dst);
      goto LABEL_41;
    case 4u:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      memcpy(__dst, v19, 0x68uLL);
      if (OUTLINED_FUNCTION_32() == 4)
      {
        v36 = OUTLINED_FUNCTION_56();
        memcpy(v36, v37, 0x68uLL);
        memcpy(v121, v19, 0x68uLL);
        v38 = OUTLINED_FUNCTION_55();
        memcpy(v38, v39, 0x68uLL);
        v40 = OUTLINED_FUNCTION_52();
        static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.== infix(_:_:)(v40, v41, v42);
        v43 = OUTLINED_FUNCTION_51();
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState(v43);
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState(__dst);
        goto LABEL_33;
      }

      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState(__dst);
      goto LABEL_41;
    case 5u:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      memcpy(__dst, v16, 0x48uLL);
      if (OUTLINED_FUNCTION_32() == 5)
      {
        v80 = OUTLINED_FUNCTION_56();
        memcpy(v80, v81, 0x48uLL);
        memcpy(v121, v16, 0x48uLL);
        v82 = OUTLINED_FUNCTION_55();
        memcpy(v82, v83, 0x48uLL);
        v84 = OUTLINED_FUNCTION_52();
        static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.== infix(_:_:)(v84, v85, v86);
        v87 = OUTLINED_FUNCTION_51();
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState(v87);
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState(__dst);
        goto LABEL_33;
      }

      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState(__dst);
      goto LABEL_41;
    case 6u:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      v88 = v112;
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      memcpy(__dst, v88, 0xA8uLL);
      if (OUTLINED_FUNCTION_32() == 6)
      {
        v89 = OUTLINED_FUNCTION_56();
        memcpy(v89, v90, 0xA8uLL);
        memcpy(v121, v88, 0xA8uLL);
        v91 = OUTLINED_FUNCTION_55();
        memcpy(v91, v92, 0xA8uLL);
        v93 = OUTLINED_FUNCTION_52();
        static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.== infix(_:_:)(v93, v94);
        v95 = OUTLINED_FUNCTION_51();
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState(v95);
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState(__dst);
        goto LABEL_33;
      }

      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState(__dst);
      goto LABEL_41;
    case 7u:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      v63 = v114;
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      v64 = v63[1];
      __dst[0] = *v63;
      __dst[1] = v64;
      v65 = v63[3];
      __dst[2] = v63[2];
      __dst[3] = v65;
      if (OUTLINED_FUNCTION_32() != 7)
      {
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState(__dst);
        goto LABEL_41;
      }

      v66 = v3[1];
      v122[0] = *v3;
      v122[1] = v66;
      v67 = v3[3];
      v69 = *v3;
      v68 = v3[1];
      v122[2] = v3[2];
      v122[3] = v67;
      v70 = v63[1];
      v121[0] = *v63;
      v121[1] = v70;
      v71 = v63[3];
      v121[2] = v63[2];
      v121[3] = v71;
      v117 = v69;
      v118 = v68;
      v72 = v3[3];
      v119 = v3[2];
      v120 = v72;
      v73 = OUTLINED_FUNCTION_52();
      static AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.== infix(_:_:)(v73, v74);
      v75 = OUTLINED_FUNCTION_51();
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState(v75);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState(__dst);
LABEL_33:
      OUTLINED_FUNCTION_5_1();
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v3, v98);
      return v30 & 1;
    case 8u:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      v96 = v111;
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      if (OUTLINED_FUNCTION_32() != 8)
      {
        goto LABEL_41;
      }

      v97 = *v3;
      LOWORD(__dst[0]) = *v96;
      LOWORD(v122[0]) = v97;
      v30 = static AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.== infix(_:_:)(__dst, v122);
      goto LABEL_33;
    default:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      v31 = *v26;
      v32 = v116;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_41;
      }

      v33 = *v32;
      v34 = *(v32 + 8);
      if (v26[8])
      {
        if (v26[8] != 1)
        {
          if (v31)
          {
            if (v34 != 2 || v33 != 1)
            {
              goto LABEL_59;
            }
          }

          else if (v34 != 2 || v33 != 0)
          {
            goto LABEL_59;
          }

          goto LABEL_65;
        }

        v35 = v34 == 1;
      }

      else
      {
        v35 = v34 == 0;
      }

      if (!v35 || v31 != v33)
      {
LABEL_59:
        OUTLINED_FUNCTION_5_1();
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v3, v106);
        goto LABEL_42;
      }

LABEL_65:
      OUTLINED_FUNCTION_5_1();
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v3, v108);
      v30 = 1;
      return v30 & 1;
  }
}

uint64_t AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001C0CDEEF0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001C0CDEF10 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001C0CDEF30 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x80000001C0CDEF50 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001C0CDEF70 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001C0CDEF90 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001C0CDEFB0 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000019 && 0x80000001C0CDEFD0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000014 && 0x80000001C0CDEFF0 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys.stringValue.getter(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
    case 8:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

Swift::Int AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68E2B10](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68E2B10](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.EventType.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v133 = v0;
  v2 = v1;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO015UafSubscriptionI10CodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO015UafSubscriptionI10CodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v110 = v3;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_0();
  v129 = v5;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG24AtomicInstanceCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG24AtomicInstanceCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v109[5] = v6;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_0();
  v128 = v8;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG16SecureCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG16SecureCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v109[4] = v9;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_0();
  v126 = v11;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobilegG16UpdateCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobilegG16UpdateCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v109[3] = v12;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_0();
  v124 = v14;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobilegG13JobCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobilegG13JobCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v109[2] = v15;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_19_0();
  v122 = v17;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG26SetConfigurationCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG26SetConfigurationCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v109[1] = v18;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_19_0();
  v120 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG19SchedulerCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG19SchedulerCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v118 = v22;
  v119 = v21;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_19_0();
  v117 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO34ModelCatalogSubscriptionCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO34ModelCatalogSubscriptionCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v115 = v26;
  v116 = v25;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_19_0();
  v114 = v28;
  v112 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  v113 = v31 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO28AvailabilityChangeCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO28AvailabilityChangeCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v111 = v33;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v109 - v35;
  type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2();
  v40 = (v39 - v38);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO10CodingKeys027_74E5A5FFCD3AA678926F1A3090N4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO10CodingKeys027_74E5A5FFCD3AA678926F1A3090N4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v132 = v41;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v109 - v43;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys();
  v134 = v44;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_0_2();
  outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v79 = v113;
      outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
      LOBYTE(v137) = 1;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys();
      OUTLINED_FUNCTION_8_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_30();
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(v80, v81, &protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v82 = OUTLINED_FUNCTION_20_0();
      v83(v82);
      OUTLINED_FUNCTION_3_1();
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v79, v84);
      v85 = OUTLINED_FUNCTION_11_0();
      goto LABEL_11;
    case 2u:
      v57 = *v40;
      v133 = v40[1];
      v58 = v40[2];
      v59 = v40[3];
      v60 = v40[4];
      LOBYTE(v137) = 2;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys();
      v61 = v117;
      v63 = v134;
      v62 = v135;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v137 = v57;
      *(&v137 + 1) = v133;
      *&v138 = v58;
      *(&v138 + 1) = v59;
      *&v139 = v60;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState();
      v64 = v119;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v118 + 8))(v61, v64);
      (*(v132 + 8))(v63, v62);

      break;
    case 3u:
      v65 = OUTLINED_FUNCTION_57();
      memcpy(v65, v66, 0x50uLL);
      LOBYTE(v136[0]) = 3;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys();
      OUTLINED_FUNCTION_8_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v67 = OUTLINED_FUNCTION_64();
      memcpy(v67, v68, 0x50uLL);
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState();
      OUTLINED_FUNCTION_42_0(v136);
      v69 = OUTLINED_FUNCTION_20_0();
      v70(v69);
      v71 = OUTLINED_FUNCTION_11_0();
      v72(v71);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState(&v137);
      break;
    case 4u:
      v49 = OUTLINED_FUNCTION_57();
      memcpy(v49, v50, 0x68uLL);
      LOBYTE(v136[0]) = 4;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys();
      OUTLINED_FUNCTION_8_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v51 = OUTLINED_FUNCTION_64();
      memcpy(v51, v52, 0x68uLL);
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState();
      OUTLINED_FUNCTION_42_0(v136);
      v53 = OUTLINED_FUNCTION_20_0();
      v54(v53);
      v55 = OUTLINED_FUNCTION_11_0();
      v56(v55);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState(&v137);
      break;
    case 5u:
      v88 = OUTLINED_FUNCTION_57();
      memcpy(v88, v89, 0x48uLL);
      LOBYTE(v136[0]) = 5;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys();
      OUTLINED_FUNCTION_8_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v90 = OUTLINED_FUNCTION_64();
      memcpy(v90, v91, 0x48uLL);
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState();
      OUTLINED_FUNCTION_42_0(v136);
      v92 = OUTLINED_FUNCTION_20_0();
      v93(v92);
      v94 = OUTLINED_FUNCTION_11_0();
      v95(v94);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState(&v137);
      break;
    case 6u:
      v96 = OUTLINED_FUNCTION_57();
      memcpy(v96, v97, 0xA8uLL);
      LOBYTE(v136[0]) = 6;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys();
      OUTLINED_FUNCTION_8_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v98 = OUTLINED_FUNCTION_64();
      memcpy(v98, v99, 0xA8uLL);
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState();
      OUTLINED_FUNCTION_42_0(v136);
      v100 = OUTLINED_FUNCTION_20_0();
      v101(v100);
      v102 = OUTLINED_FUNCTION_11_0();
      v103(v102);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState(&v137);
      break;
    case 7u:
      v73 = *(v40 + 1);
      v137 = *v40;
      v138 = v73;
      v74 = *(v40 + 3);
      v139 = *(v40 + 2);
      v140 = v74;
      LOBYTE(v136[0]) = 7;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys();
      OUTLINED_FUNCTION_8_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v136[0] = v137;
      v136[1] = v138;
      v136[2] = v139;
      v136[3] = v140;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState();
      OUTLINED_FUNCTION_42_0(v136);
      v75 = OUTLINED_FUNCTION_20_0();
      v76(v75);
      v77 = OUTLINED_FUNCTION_11_0();
      v78(v77);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState(&v137);
      break;
    case 8u:
      v104 = *v40;
      LOBYTE(v137) = 8;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys();
      v105 = v129;
      v107 = v134;
      v106 = v135;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOWORD(v137) = v104;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState();
      v108 = v131;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v110 + 8))(v105, v108);
      v87 = *(v132 + 8);
      v85 = v107;
      v86 = v106;
LABEL_11:
      v87(v85, v86);
      break;
    default:
      v45 = *v40;
      v46 = *(v40 + 8);
      LOBYTE(v137) = 0;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys();
      v48 = v134;
      v47 = v135;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v137 = v45;
      BYTE8(v137) = v46;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v111 + 8))(v36, v32);
      (*(v132 + 8))(v48, v47);
      break;
  }

  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.EventType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v186[0] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO015UafSubscriptionI10CodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO015UafSubscriptionI10CodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v29, &v201);
  v185 = v30;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG24AtomicInstanceCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG24AtomicInstanceCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v33, &v200);
  v179 = v34;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG16SecureCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG16SecureCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v37, &v199);
  v177 = v38;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobilegG16UpdateCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobilegG16UpdateCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v41, &v198);
  v176 = v42;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobilegG13JobCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobilegG13JobCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v45, &v197);
  v175 = v46;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG26SetConfigurationCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG26SetConfigurationCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v49, &v196);
  v174 = v50;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG19SchedulerCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG19SchedulerCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v53, &v193);
  v173 = v54;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO34ModelCatalogSubscriptionCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO34ModelCatalogSubscriptionCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v57, &v194);
  v171 = v58;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO28AvailabilityChangeCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO28AvailabilityChangeCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v61, &a14);
  v170 = v62;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO10CodingKeys027_74E5A5FFCD3AA678926F1A3090N4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO10CodingKeys027_74E5A5FFCD3AA678926F1A3090N4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v65, &a17);
  v186[1] = v66;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_36();
  v187 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v73);
  v75 = v163 - v74;
  MEMORY[0x1EEE9AC00](v76);
  v78 = v163 - v77;
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_58();
  MEMORY[0x1EEE9AC00](v81);
  v82 = v27[3];
  v192 = v27;
  __swift_project_boxed_opaque_existential_1(v27, v82);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys();
  v190 = v22;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    goto LABEL_10;
  }

  v164 = v23;
  v167 = v21;
  v165 = v78;
  v166 = v75;
  v83 = v188;
  v84 = v189;
  v85 = v187;
  v86 = v190;
  v87 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC26AppleIntelligenceReporting0jK18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0R6ActionO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLO_Tt1g5(v87, 0);
  if (v90 == v91 >> 1)
  {
    v92 = v86;
    v93 = v85;
LABEL_9:
    v101 = type metadata accessor for DecodingError();
    swift_allocError();
    v103 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v103 = v93;
    v104 = v191;
    v105 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_65(v105);
    (*(*(v101 - 8) + 104))(v103, *MEMORY[0x1E69E6AF8], v101);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_16();
    v106(v92, v104);
LABEL_10:
    v107 = OUTLINED_FUNCTION_62();
    __swift_destroy_boxed_opaque_existential_1(v107);
LABEL_11:
    OUTLINED_FUNCTION_47();
    return;
  }

  v163[1] = 0;
  if (v90 < (v91 >> 1))
  {
    v163[0] = *(v89 + v90);
    v94 = specialized ArraySlice.subscript.getter(v90 + 1, v91 >> 1, v88, v89, v90, v91);
    v96 = v95;
    v98 = v97;
    swift_unknownObjectRelease();
    v93 = v85;
    if (v96 == v98 >> 1)
    {
      v99 = v185;
      switch(v163[0])
      {
        case 1:
          LOBYTE(v193) = 1;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys();
          v124 = v181;
          OUTLINED_FUNCTION_46(&unk_1F402DD08, &v193);
          v189 = v94;
          type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(0);
          OUTLINED_FUNCTION_30();
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(v130, v131, &protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState);
          v132 = v172;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_38();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_24();
          v149(v124, v132);
          OUTLINED_FUNCTION_16();
          v150(v190, v86);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_2();
          goto LABEL_22;
        case 2:
          LOBYTE(v193) = 2;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys();
          v108 = v182;
          OUTLINED_FUNCTION_7_1(&unk_1F402DD98, &v193);
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState();
          OUTLINED_FUNCTION_23();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_38();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_24();
          v137(v108, v84);
          v138 = OUTLINED_FUNCTION_26();
          v139(v138);
          v140 = v195;
          v141 = v194;
          v142 = v165;
          *v165 = v193;
          v142[1] = v141;
          *(v142 + 4) = v140;
          OUTLINED_FUNCTION_41();
          goto LABEL_20;
        case 3:
          LOBYTE(v193) = 3;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys();
          OUTLINED_FUNCTION_7_1(&unk_1F402DE28, &v193);
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState();
          OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_67(v109);
          OUTLINED_FUNCTION_6_1();
          swift_unknownObjectRelease();
          v110 = OUTLINED_FUNCTION_22();
          v111(v110);
          v112 = OUTLINED_FUNCTION_26();
          v113(v112);
          v114 = OUTLINED_FUNCTION_63(v186);
          memcpy(v114, v115, 0x50uLL);
          OUTLINED_FUNCTION_41();
          goto LABEL_21;
        case 4:
          LOBYTE(v193) = 4;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys();
          OUTLINED_FUNCTION_46(&unk_1F402DEB8, &v193);
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState();
          OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_67(v129);
          OUTLINED_FUNCTION_6_1();
          swift_unknownObjectRelease();
          v133 = OUTLINED_FUNCTION_22();
          v134(v133);
          MEMORY[0](v98, v86);
          v135 = OUTLINED_FUNCTION_63(&v187);
          memcpy(v135, v136, 0x68uLL);
          OUTLINED_FUNCTION_41();
          goto LABEL_21;
        case 5:
          LOBYTE(v193) = 5;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys();
          v125 = v183;
          OUTLINED_FUNCTION_7_1(&unk_1F402DF48, &v193);
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState();
          v126 = v178;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_6_1();
          swift_unknownObjectRelease();
          (*v125)(v125, v126);
          v151 = OUTLINED_FUNCTION_54();
          v152(v151);
          v153 = OUTLINED_FUNCTION_63(&v188);
          memcpy(v153, v154, 0x48uLL);
          OUTLINED_FUNCTION_41();
          goto LABEL_21;
        case 6:
          LOBYTE(v193) = 6;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys();
          OUTLINED_FUNCTION_7_1(&unk_1F402DFD8, &v193);
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState();
          OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_67(v127);
          OUTLINED_FUNCTION_6_1();
          swift_unknownObjectRelease();
          v155 = OUTLINED_FUNCTION_22();
          v156(v155);
          v157 = OUTLINED_FUNCTION_26();
          v158(v157);
          v159 = OUTLINED_FUNCTION_63(&v189);
          memcpy(v159, v160, 0xA8uLL);
          OUTLINED_FUNCTION_41();
          goto LABEL_21;
        case 7:
          LOBYTE(v193) = 7;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys();
          OUTLINED_FUNCTION_7_1(&unk_1F402E068, &v193);
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState();
          OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_67(v116);
          OUTLINED_FUNCTION_6_1();
          swift_unknownObjectRelease();
          v117 = OUTLINED_FUNCTION_22();
          v118(v117);
          v119 = OUTLINED_FUNCTION_26();
          v120(v119);
          v121 = v194;
          v122 = v169;
          *v169 = v193;
          v122[1] = v121;
          v123 = v196;
          v122[2] = v195;
          v122[3] = v123;
          OUTLINED_FUNCTION_41();
          goto LABEL_21;
        case 8:
          LOBYTE(v193) = 8;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys();
          v128 = v184;
          OUTLINED_FUNCTION_7_1(&unk_1F402E0F8, &v193);
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState();
          OUTLINED_FUNCTION_23();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_38();
          swift_unknownObjectRelease();
          (*(v99 + 8))(v128, v128);
          v161 = OUTLINED_FUNCTION_26();
          v162(v161);
          *v168 = v193;
          OUTLINED_FUNCTION_41();
LABEL_21:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_2();
LABEL_22:
          outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
          v148 = v192;
          break;
        default:
          LOBYTE(v193) = 0;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys();
          v100 = v180;
          OUTLINED_FUNCTION_7_1(&unk_1F402DC78, &v193);
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_38();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_24();
          v143(v100, v83);
          v144 = OUTLINED_FUNCTION_26();
          v145(v144);
          v146 = BYTE8(v193);
          v147 = v164;
          *v164 = v193;
          *(v147 + 8) = v146;
          OUTLINED_FUNCTION_41();
LABEL_20:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_2();
          outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
          v148 = v192;
          break;
      }

      OUTLINED_FUNCTION_1_2();
      outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
      __swift_destroy_boxed_opaque_existential_1(v148);
      goto LABEL_11;
    }

    v92 = v86;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t AppleIntelligenceAssetDeliveryEvent.type.getter()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_2();
  return outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.init(subsystem:useCaseIdentifier:resourceSpecifiers:assetSetIdentifiers:errors:type:)@<X0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_2();
  LOBYTE(a1) = *a1;
  OUTLINED_FUNCTION_0_2();
  outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
  *a7 = a1;
  v15 = a2[1];
  *(a7 + 8) = *a2;
  *(a7 + 24) = v15;
  v16 = a2[3];
  *(a7 + 40) = a2[2];
  *(a7 + 56) = v16;
  *(a7 + 72) = a3;
  *(a7 + 80) = a4;
  v17 = specialized Array.count.getter(a5);
  if (!v17)
  {

    OUTLINED_FUNCTION_5_1();
    outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(a6, v23);
    v22 = MEMORY[0x1E69E7CC0];
LABEL_10:
    *(a7 + 88) = v22;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_1_2();
    result = outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
    *(a7 + 96) = 0u;
    *(a7 + 112) = 0u;
    *(a7 + 128) = 0;
    *(a7 + 132) = 1;
    return result;
  }

  v18 = v17;
  v24 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v18 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    do
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68E2790](v20, a5);
      }

      else
      {
      }

      ++v20;
      specialized AppleIntelligenceError.toGeneral.getter();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v18 != v20);
    OUTLINED_FUNCTION_5_1();
    outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(a6, v21);

    v22 = v24;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.init(subsystem:useCaseIdentifier:resourceSpecifiers:assetSetIdentifiers:errors:subscriptionName:subscriberName:userIdentifier:type:)@<X0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, int a11, char a12, uint64_t a13)
{
  v18 = a2[1];
  *(a9 + 8) = *a2;
  *(a9 + 24) = v18;
  v19 = a2[3];
  *(a9 + 40) = a2[2];
  *a9 = *a1;
  *(a9 + 56) = v19;
  *(a9 + 72) = a3;
  *(a9 + 80) = a4;
  v20 = specialized Array.count.getter(a5);
  if (!v20)
  {

    v26 = MEMORY[0x1E69E7CC0];
LABEL_10:
    *(a9 + 88) = v26;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_1_2();
    result = outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
    *(a9 + 112) = a8;
    *(a9 + 120) = a10;
    *(a9 + 96) = a6;
    *(a9 + 104) = a7;
    *(a9 + 128) = a11;
    *(a9 + 132) = a12 & 1;
    return result;
  }

  v21 = v20;
  v28 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v21 & 0x8000000000000000) == 0)
  {
    v27 = a8;
    v23 = a6;
    v24 = a7;
    v25 = 0;
    do
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68E2790](v25, a5);
      }

      else
      {
      }

      ++v25;
      specialized AppleIntelligenceError.toGeneral.getter();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v21 != v25);

    a7 = v24;
    a6 = v23;
    a8 = v27;
    v26 = v28;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void closure #1 in AppleIntelligenceAssetDeliveryEvent.toReportingAssetDeliveryEvent.getter()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v29 = type metadata accessor for AppleIntelligenceReportingGeneralError();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - v12;
  v14 = *(v2 + 16);
  if (v14)
  {
    v31[0] = *(v2 + 8);
    v31[1] = v14;
    v15 = *(v2 + 40);
    v32 = *(v2 + 24);
    v33 = v15;
    v34 = *(v2 + 56);
    v16 = type metadata accessor for AppleIntelligenceReportingUseCase();
    MEMORY[0x1EEE9AC00](v16);
    v27[-2] = v31;
    static Buildable.with(_:)();
    v17 = v13;
    v18 = 0;
    v19 = v16;
  }

  else
  {
    v19 = type metadata accessor for AppleIntelligenceReportingUseCase();
    v17 = v13;
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v18, 1, v19);
  AppleIntelligenceReportingAssetDeliveryEvent.useCase.setter();
  v20 = MEMORY[0x1E69E7CC0];

  AppleIntelligenceReportingAssetDeliveryEvent.resourceSpecifiers.setter();

  AppleIntelligenceReportingAssetDeliveryEvent.assetSetIdentifiers.setter();
  v30 = *(v2 + 88);
  v21 = specialized Array.count.getter(v30);
  if (!v21)
  {
LABEL_13:
    AppleIntelligenceReportingAssetDeliveryEvent.errors.setter();

    AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.setter();

    AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.setter();
    AppleIntelligenceReportingAssetDeliveryEvent.userIdentifier.setter();
    OUTLINED_FUNCTION_47();
    return;
  }

  v22 = v21;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v22 & 0x8000000000000000) == 0)
  {
    v27[2] = v0;
    v28 = v22;
    v27[0] = v2;
    v27[1] = v4;
    v23 = 0;
    v24 = v30 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        MEMORY[0x1C68E2790](v23, v30);
      }

      else
      {
      }

      specialized AppleIntelligenceError.toGeneralReportingError.getter(v10);

      v25 = v10;
      v26 = *(v20 + 16);
      if (v26 >= *(v20 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v23;
      *(v20 + 16) = v26 + 1;
      (*(v6 + 32))(v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26, v25, v29);
      v10 = v25;
    }

    while (v28 != v23);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v66 = v3;
    v67 = v2;
    v68 = v4;
    v69 = v5;
    OUTLINED_FUNCTION_61();
    v7 = *(v6 + 24);
    v58 = *(v6 + 8);
    v59 = v7;
    v8 = *(v6 + 56);
    v60 = *(v6 + 40);
    v61 = v8;
    v10 = *(v9 + 24);
    v62 = *(v9 + 8);
    v63 = v10;
    v11 = *(v9 + 56);
    v64 = *(v9 + 40);
    v65 = v11;
    v12 = v58;
    v13 = *(v6 + 40);
    v55 = *(v6 + 24);
    v56 = v13;
    v57 = *(v6 + 56);
    v14 = v62;
    v15 = *(v9 + 40);
    v52 = *(v9 + 24);
    v53 = v15;
    v54 = *(v9 + 56);
    if (*(&v58 + 1))
    {
      v44 = v58;
      v16 = *(v3 + 40);
      v45 = *(v3 + 24);
      v46 = v16;
      v47 = *(v3 + 56);
      v40 = v58;
      v41 = v45;
      v42 = v16;
      v43 = v47;
      if (*(&v62 + 1))
      {
        v17 = *(v2 + 40);
        v37 = *(v2 + 24);
        v38 = v17;
        v39 = *(v2 + 56);
        v36 = v62;
        OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_53();
        v18 = static AppleIntelligenceUseCase.== infix(_:_:)(&v40, &v36);
        v34[0] = v36;
        v34[1] = v37;
        v34[2] = v38;
        v34[3] = v39;
        outlined destroy of AppleIntelligenceUseCase(v34);
        v35[0] = v40;
        v35[1] = v41;
        v35[2] = v42;
        v35[3] = v43;
        outlined destroy of AppleIntelligenceUseCase(v35);
        v36 = v12;
        v37 = v55;
        v38 = v56;
        v39 = v57;
        outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(&v36, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMd, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMR);
        if (!v18)
        {
          goto LABEL_11;
        }

        goto LABEL_14;
      }

      v36 = v44;
      v37 = v45;
      v38 = v46;
      v39 = v47;
      OUTLINED_FUNCTION_44();
      outlined init with copy of AppleIntelligenceUseCase?();
      OUTLINED_FUNCTION_44();
      outlined init with copy of AppleIntelligenceUseCase?();
      OUTLINED_FUNCTION_44();
      outlined init with copy of AppleIntelligenceUseCase?();
      outlined destroy of AppleIntelligenceUseCase(&v36);
    }

    else
    {
      if (!*(&v62 + 1))
      {
        v44 = v58;
        v21 = *(v3 + 40);
        v45 = *(v3 + 24);
        v46 = v21;
        v47 = *(v3 + 56);
        outlined init with copy of AppleIntelligenceUseCase?();
        outlined init with copy of AppleIntelligenceUseCase?();
        outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(&v44, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMd, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMR);
LABEL_14:
        v22 = *(v3 + 72);
        v23 = *(v2 + 72);
        if (v22)
        {
          if (!v23 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v22, v23) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else if (v23)
        {
          goto LABEL_11;
        }

        v24 = *(v3 + 80);
        v25 = *(v2 + 80);
        if (v24)
        {
          if (!v25 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v24, v25) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else if (v25)
        {
          goto LABEL_11;
        }

        if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ26AppleIntelligenceReporting07GeneralbC5ErrorC_Tt1g5(*(v3 + 88), *(v2 + 88)))
        {
          v26 = *(v3 + 104);
          v27 = *(v2 + 104);
          if (v26)
          {
            if (!v27)
            {
              goto LABEL_11;
            }

            v28 = *(v3 + 96) == *(v2 + 96) && v26 == v27;
            if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          else if (v27)
          {
            goto LABEL_11;
          }

          v29 = *(v3 + 120);
          v30 = *(v2 + 120);
          if (v29)
          {
            if (v30)
            {
              v31 = *(v3 + 112) == *(v2 + 112) && v29 == v30;
              if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
LABEL_43:
                v32 = *(v2 + 132);
                if (*(v3 + 132))
                {
                  if (*(v2 + 132))
                  {
LABEL_49:
                    OUTLINED_FUNCTION_66();
                    v19 = static AppleIntelligenceAssetDeliveryEvent.EventType.== infix(_:_:)(v3 + v33, (v2 + v33));
                    return v19 & 1;
                  }
                }

                else
                {
                  if (*(v3 + 128) != *(v2 + 128))
                  {
                    v32 = 1;
                  }

                  if ((v32 & 1) == 0)
                  {
                    goto LABEL_49;
                  }
                }
              }
            }
          }

          else if (!v30)
          {
            goto LABEL_43;
          }
        }

LABEL_11:
        v19 = 0;
        return v19 & 1;
      }

      OUTLINED_FUNCTION_44();
      outlined init with copy of AppleIntelligenceUseCase?();
      OUTLINED_FUNCTION_44();
      outlined init with copy of AppleIntelligenceUseCase?();
    }

    v44 = v12;
    v45 = v55;
    v46 = v56;
    v47 = v57;
    v48 = v14;
    v49 = v52;
    v50 = v53;
    v51 = v54;
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(&v44, &_s26AppleIntelligenceReporting0aB7UseCaseVSg_ADtMd, &_s26AppleIntelligenceReporting0aB7UseCaseVSg_ADtMR);
    goto LABEL_11;
  }

  v19 = 0;
  return v19 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

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
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ26AppleIntelligenceReporting07GeneralbC5ErrorC_Tt1g5(unint64_t a1, unint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  v5 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x1C68E2860](v20);
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 != result)
  {
    return 0;
  }

  if (!v6)
  {
    return 1;
  }

  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  v4 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v8 = a1;
  }

  if (v5)
  {
    v4 = v8;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v4 == v10)
  {
    return 1;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    for (i = 4; ; ++i)
    {
      v13 = i - 4;
      v14 = i - 3;
      if (__OFADD__(i - 4, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        if ((a1 & 0x8000000000000000) != 0)
        {
          v19 = a1;
        }

        else
        {
          v19 = v4;
        }

        v6 = MEMORY[0x1C68E2860](v19);
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C68E2790](i - 4, a1);
        if (v11)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13 >= v4)
        {
          goto LABEL_41;
        }

        v5 = *(a1 + 8 * i);

        if (v11)
        {
LABEL_21:
          v15 = MEMORY[0x1C68E2790](i - 4, a2);
          goto LABEL_26;
        }
      }

      v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >= v4)
      {
        goto LABEL_42;
      }

      v15 = *(a2 + 8 * i);

LABEL_26:
      v16 = v5[2] == v15[2] && v5[3] == v15[3];
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        return 0;
      }

      v17 = v5[4];

      v5 = v15[4];

      result = v17 == v5;
      if (v17 != v5 || v14 == v6)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574737973627573 && a2 == 0xE90000000000006DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001C0CDF010 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C0CDF030 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001C0CDF050 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73726F727265 && a2 == 0xE600000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001C0CDF070 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6269726373627573 && a2 == 0xEE00656D614E7265;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E65644972657375 && a2 == 0xEE00726569666974;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 1701869940 && a2 == 0xE400000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

Swift::Int AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68E2B10](a1);
  return Hasher._finalize()();
}

unint64_t AppleIntelligenceAssetDeliveryEvent.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6574737973627573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x73726F727265;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6269726373627573;
      break;
    case 7:
      result = 0x6E65644972657375;
      break;
    case 8:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1C68E2B10](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV10CodingKeys027_74E5A5FFCD3AA678926F1A3090M4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV10CodingKeys027_74E5A5FFCD3AA678926F1A3090M4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29 = *v2;
  v28 = 0;
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem();
  OUTLINED_FUNCTION_39();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v11 = *(v2 + 8);
    v12 = *(v2 + 40);
    v25 = *(v2 + 24);
    v26 = v12;
    v27 = *(v2 + 56);
    v13 = *(v2 + 24);
    v20 = *(v2 + 8);
    v21 = v13;
    v22 = *(v2 + 40);
    v23 = *(v2 + 56);
    v24 = v11;
    v19[79] = 1;
    outlined init with copy of AppleIntelligenceUseCase?();
    lazy protocol witness table accessor for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_33();
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v19, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMd, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMR);
    v18 = *(v2 + 9);
    BYTE4(v17) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = *(v2 + 10);
    BYTE4(v17) = 3;
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = *(v2 + 11);
    BYTE4(v17) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    lazy protocol witness table accessor for type [GeneralAppleIntelligenceError] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeneralAppleIntelligenceError] and conformance <A> [A], &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError, &protocol conformance descriptor for GeneralAppleIntelligenceError, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v18) = 5;
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v18) = 6;
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = v2[132];
    LOBYTE(v18) = 7;
    BYTE4(v17) = v14;
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0);
    LOBYTE(v18) = 8;
    type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
    OUTLINED_FUNCTION_31();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(v15, v16, &protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.EventType);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_48();
  v25 = v24;
  v49[2] = v26;
  v27 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2();
  v49[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV10CodingKeys027_74E5A5FFCD3AA678926F1A3090M4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV10CodingKeys027_74E5A5FFCD3AA678926F1A3090M4B7D9LLOGMR);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v49 - v32;
  v34 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2();
  v50 = (v37 - v36);
  v51 = v25;
  v38 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys();
  v49[4] = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    OUTLINED_FUNCTION_25();
    __swift_destroy_boxed_opaque_existential_1(v51);
    if (v33)
    {

      if ((v30 & 1) == 0)
      {
LABEL_10:
        if (v27)
        {
LABEL_11:

          if ((v38 & 1) == 0)
          {
            goto LABEL_13;
          }

LABEL_12:

          goto LABEL_13;
        }

LABEL_6:
        if (!v38)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else if (!v30)
    {
      goto LABEL_10;
    }

    if (v27)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v49[1] = v34;
  LOBYTE(v52) = 0;
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39 = v50;
  *v50 = v53;
  lazy protocol witness table accessor for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v40 = v54;
  *(v39 + 8) = v53;
  *(v39 + 24) = v40;
  v41 = v56;
  *(v39 + 40) = v55;
  *(v39 + 56) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_43();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v39 + 72) = v52;
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_43();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v39 + 80) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
  lazy protocol witness table accessor for type [GeneralAppleIntelligenceError] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeneralAppleIntelligenceError] and conformance <A> [A], &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError, &protocol conformance descriptor for GeneralAppleIntelligenceError, MEMORY[0x1E69E6330]);
  OUTLINED_FUNCTION_43();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v39 + 88) = v52;
  OUTLINED_FUNCTION_28(5);
  *(v39 + 96) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v39 + 104) = v42;
  OUTLINED_FUNCTION_28(6);
  *(v39 + 112) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v39 + 120) = v43;
  OUTLINED_FUNCTION_28(7);
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v39 + 128) = v44;
  *(v39 + 132) = BYTE4(v44) & 1;
  LOBYTE(v52) = 8;
  OUTLINED_FUNCTION_31();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(v45, v46, &protocol conformance descriptor for AppleIntelligenceAssetDeliveryEvent.EventType);
  OUTLINED_FUNCTION_43();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = OUTLINED_FUNCTION_12();
  v48(v47);
  OUTLINED_FUNCTION_1_2();
  outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
  outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
  __swift_destroy_boxed_opaque_existential_1(v51);
  outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v39, type metadata accessor for AppleIntelligenceAssetDeliveryEvent);
LABEL_13:
  OUTLINED_FUNCTION_47();
}

uint64_t specialized == infix<A>(_:_:)()
{
  v0 = AppleIntelligenceErrorCategory.rawValue.getter();
  v2 = v1;
  if (v0 == AppleIntelligenceErrorCategory.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

void _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC26AppleIntelligenceReporting0jK18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0R6ActionO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_18();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState);
  }

  return result;
}

uint64_t outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState()
{
  OUTLINED_FUNCTION_61();
  v1(0);
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_50();
  v3(v2);
  return v0;
}

uint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [GeneralAppleIntelligenceError] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(a2, type metadata accessor for GeneralAppleIntelligenceError, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType()
{
  OUTLINED_FUNCTION_61();
  v1(0);
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_50();
  v3(v2);
  return v0;
}

void type metadata completion function for AppleIntelligenceAssetDeliveryEvent(uint64_t a1)
{
  type metadata accessor for AppleIntelligenceUseCase?(319, &lazy cache variable for type metadata for AppleIntelligenceUseCase?, &type metadata for AppleIntelligenceUseCase);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String]?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [GeneralAppleIntelligenceError](319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AppleIntelligenceUseCase?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for AppleIntelligenceUseCase?(319, &lazy cache variable for type metadata for UInt32?, MEMORY[0x1E69E7668]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [String]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [String]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [String]?);
    }
  }
}

void type metadata accessor for [GeneralAppleIntelligenceError](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [GeneralAppleIntelligenceError])
  {
    type metadata accessor for GeneralAppleIntelligenceError(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [GeneralAppleIntelligenceError]);
    }
  }
}

void type metadata accessor for AppleIntelligenceUseCase?(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t type metadata completion function for AppleIntelligenceAssetDeliveryEvent.EventType(uint64_t a1)
{
  result = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.Subsystem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.Subsystem(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of AppleIntelligenceUseCase?()
{
  OUTLINED_FUNCTION_61();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_50();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

__n128 OUTLINED_FUNCTION_33()
{
  v2 = *(v1 - 208);
  *(v1 - 304) = *(v1 - 224);
  *(v1 - 288) = v2;
  result = *(v1 - 192);
  v4 = *(v0 + 48);
  *(v1 - 272) = result;
  *(v1 - 256) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_0(uint64_t a1)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_53()
{

  return outlined init with copy of AppleIntelligenceUseCase?();
}

uint64_t OUTLINED_FUNCTION_65(uint64_t a1)
{

  return MEMORY[0x1EEE6A460](a1, 0xD00000000000002BLL, v1 | 0x8000000000000000, 0);
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO14RestrictedInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO14RestrictedInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_17_0(v1);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys();
  OUTLINED_FUNCTION_50_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons();
  OUTLINED_FUNCTION_130();
  v3 = OUTLINED_FUNCTION_58_0();
  v4(v3);
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_47();
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons);
  }

  return result;
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_54_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO14RestrictedInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO14RestrictedInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_4();
  v24 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys();
  OUTLINED_FUNCTION_31_0(&unk_1F402FE20, v25, v24);
  if (!v21)
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons();
    OUTLINED_FUNCTION_35_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = OUTLINED_FUNCTION_19_1();
    v27(v26);
    *v22 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E6F73616572 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_17_0(v1);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys();
  OUTLINED_FUNCTION_50_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons();
  OUTLINED_FUNCTION_130();
  v3 = OUTLINED_FUNCTION_58_0();
  v4(v3);
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_47();
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons);
  }

  return result;
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_54_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_4();
  v24 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys();
  OUTLINED_FUNCTION_31_0(&unk_1F402FD90, v25, v24);
  if (!v21)
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons();
    OUTLINED_FUNCTION_35_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = OUTLINED_FUNCTION_19_1();
    v27(v26);
    *v22 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_47();
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return v2 == v3;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    return v2 == v3;
  }

  if (v2)
  {
    if (v4 != 2 || v3 != 1)
    {
      return 0;
    }
  }

  else if (v4 != 2 || v3 != 0)
  {
    return 0;
  }

  return AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys.init(intValue:)();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7463697274736572 && a2 == 0xEA00000000006465;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6C62616C69617661;
      break;
    case 2:
      result = 0x7463697274736572;
      break;
    case 3:
      result = 0x616C696176616E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  v24 = v20;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO21UnavailableCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO21UnavailableCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  v54 = v27;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_19_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO20RestrictedCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO20RestrictedCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  v52 = v30;
  v53 = v29;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO19AvailableCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO19AvailableCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_125(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO17UnknownCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO17UnknownCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  v50 = v35;
  v51 = v34;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_12_0();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  v38 = v37;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_14();
  v40 = *v24;
  v41 = *(v24 + 8);
  OUTLINED_FUNCTION_28_0(v26, v26[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v41)
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys();
    v42 = v55;
    OUTLINED_FUNCTION_30_0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo();
    v43 = v53;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v45 = *(v52 + 8);
    v44 = v23;
    goto LABEL_5;
  }

  if (v41 == 1)
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys();
    v42 = v55;
    OUTLINED_FUNCTION_30_0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo();
    v43 = v54;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v44 = OUTLINED_FUNCTION_68();
LABEL_5:
    v45(v44, v43);
    (*(v38 + 8))(v21, v42);
    goto LABEL_10;
  }

  if (v40)
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys();
    v46 = v55;
    OUTLINED_FUNCTION_114();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v47 = OUTLINED_FUNCTION_123();
  }

  else
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys();
    v46 = v55;
    OUTLINED_FUNCTION_114();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v48 = v51;
    v49 = *(v50 + 8);
    v47 = v22;
  }

  v49(v47, v48);
  (*(v38 + 8))(v21, v46);
LABEL_10:
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_47();
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys);
  }

  return result;
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  v106 = v21;
  v23 = v22;
  v102 = v24;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO21UnavailableCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO21UnavailableCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  v100 = v25;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_22_0(v27, v90);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO20RestrictedCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO20RestrictedCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  v101 = v28;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_19_0();
  v103 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO19AvailableCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO19AvailableCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  v97 = v32;
  v98 = v31;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_20();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO17UnknownCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO17UnknownCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  v96 = v35;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v90 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  v41 = v40;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_36();
  v43 = v23[3];
  v105 = v23;
  OUTLINED_FUNCTION_28_0(v23, v43);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys();
  v44 = v106;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v44)
  {
    v93 = v34;
    v94 = v38;
    v95 = v20;
    v106 = v41;
    KeyedDecodingContainer.allKeys.getter();
    _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC26AppleIntelligenceReporting0jK18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLO_Tt1g5();
    v46 = v39;
    if (v47 != v45 >> 1)
    {
      OUTLINED_FUNCTION_61_0();
      v92 = 0;
      OUTLINED_FUNCTION_116();
      if (v50 == v51)
      {
        __break(1u);
        return;
      }

      v91 = *(v49 + v48);
      specialized ArraySlice.subscript.getter();
      v53 = v52;
      v55 = v54;
      swift_unknownObjectRelease();
      if (v53 == v55 >> 1)
      {
        v56 = v102;
        switch(v91)
        {
          case 1:
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys();
            OUTLINED_FUNCTION_10_1();
            v76 = v92;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (v76)
            {
              goto LABEL_15;
            }

            swift_unknownObjectRelease();
            v77 = OUTLINED_FUNCTION_89();
            v78(v77);
            v79 = OUTLINED_FUNCTION_24_0();
            v80(v79);
            v63 = 2;
            v62 = 1;
            goto LABEL_22;
          case 2:
            LOBYTE(a10) = 2;
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys();
            OUTLINED_FUNCTION_10_1();
            v72 = v92;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (v72)
            {
              goto LABEL_15;
            }

            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo();
            OUTLINED_FUNCTION_114();
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            swift_unknownObjectRelease();
            v81 = OUTLINED_FUNCTION_106();
            v82(v81);
            v83 = OUTLINED_FUNCTION_96();
            v84(v83);
            v63 = 0;
            v62 = a10;
            goto LABEL_22;
          case 3:
            LOBYTE(a10) = 3;
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys();
            OUTLINED_FUNCTION_10_1();
            v75 = v92;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (v75)
            {
              goto LABEL_15;
            }

            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo();
            OUTLINED_FUNCTION_114();
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            swift_unknownObjectRelease();
            v85 = OUTLINED_FUNCTION_106();
            v86(v85);
            v87 = OUTLINED_FUNCTION_96();
            v88(v87);
            v62 = a10;
            v63 = 1;
            goto LABEL_22;
          default:
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys();
            OUTLINED_FUNCTION_10_1();
            v57 = v92;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (v57)
            {
LABEL_15:
              v73 = OUTLINED_FUNCTION_24_0();
              v74(v73);
              swift_unknownObjectRelease();
              v71 = v105;
              goto LABEL_12;
            }

            swift_unknownObjectRelease();
            v58 = OUTLINED_FUNCTION_89();
            v59(v58, v93);
            v60 = OUTLINED_FUNCTION_24_0();
            v61(v60);
            v62 = 0;
            v63 = 2;
LABEL_22:
            v89 = v105;
            *v56 = v62;
            *(v56 + 8) = v63;
            __swift_destroy_boxed_opaque_existential_1(v89);
            break;
        }

        goto LABEL_13;
      }

      v46 = v39;
    }

    v64 = type metadata accessor for DecodingError();
    OUTLINED_FUNCTION_134(v64, MEMORY[0x1E69E6B28]);
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v66 = &type metadata for AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status;
    v67 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_65(v67);
    OUTLINED_FUNCTION_42();
    (*(v68 + 104))(v66);
    swift_willThrow();
    swift_unknownObjectRelease();
    v69 = OUTLINED_FUNCTION_68();
    v70(v69, v46);
  }

  v71 = v105;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v71);
LABEL_13:
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_47();
}

void closure #1 in AppleIntelligenceAssetDeliveryEvent.AvailabilityState.toReportingAvailabilityState.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMR);
  OUTLINED_FUNCTION_29(v5);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  if (a3 > 1u)
  {
    if (!a2)
    {
      return;
    }

    type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info();
    static Buildable.with(_:)();
  }

  else
  {
    v7 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_92();
    *(v8 - 16) = a2;
    static Buildable.with(_:)();
  }

  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  AppleIntelligenceReportingAvailabilityLog.AvailabilityState.info.setter();
}

uint64_t closure #1 in closure #1 in AppleIntelligenceAssetDeliveryEvent.AvailabilityState.toReportingAvailabilityState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = *MEMORY[0x1E69AA180];
  v4 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  return AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info.status.setter();
}

uint64_t closure #2 in closure #1 in AppleIntelligenceAssetDeliveryEvent.AvailabilityState.toReportingAvailabilityState.getter(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMR);
  OUTLINED_FUNCTION_29(v5);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_2();
  v7 = *a3;
  v8 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status();
  OUTLINED_FUNCTION_9();
  (*(v9 + 104))(v3, v7, v8);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v8);
  AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info.status.setter();
  return AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info.reasons.setter();
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.AvailabilityState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      if (v2)
      {
        if (v4 != 2 || v3 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2 || v3 != 0)
      {
        return 0;
      }

      return AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys.init(intValue:)();
    }

    v5 = v4 == 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5 || v2 != v3)
  {
    return 0;
  }

  return AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys.init(intValue:)();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_17_0(v1);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys();
  OUTLINED_FUNCTION_50_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v3 = OUTLINED_FUNCTION_58_0();
  v4(v3);
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_2_4();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys();
  OUTLINED_FUNCTION_39_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status();
    OUTLINED_FUNCTION_35_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v6 = OUTLINED_FUNCTION_18_0();
    v7(v6);
    *v4 = v8;
    *(v4 + 8) = v9;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C0CDEEF0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C616E7265746E69 && a2 == 0xEC0000006C6F6F54;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656C756465686373 && a2 == 0xE900000000000064)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x6C616E7265746E69;
      break;
    case 3:
      result = 0x656C756465686373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_112();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO19ScheduledCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO19ScheduledCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_22_0(v30, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO22InternalToolCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO22InternalToolCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_23_0(v32, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO28AvailabilityChangeCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO28AvailabilityChangeCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_125(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO17UnknownCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO17UnknownCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_3_2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  v38 = v37;
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_12_0();
  v40 = *v24;
  OUTLINED_FUNCTION_17_0(v26);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys();
  OUTLINED_FUNCTION_66_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v40)
  {
    case 1:
      OUTLINED_FUNCTION_119();
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys();
      OUTLINED_FUNCTION_26_0(&unk_1F402FA40, &a12);
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_122();
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys();
      OUTLINED_FUNCTION_26_0(&unk_1F402FA60, &a13);
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_91();
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys();
      OUTLINED_FUNCTION_26_0(&unk_1F402FA80, &a14);
LABEL_6:
      v41 = OUTLINED_FUNCTION_89();
      break;
    default:
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys();
      OUTLINED_FUNCTION_34_0();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v41 = OUTLINED_FUNCTION_123();
      break;
  }

  v42(v41);
  (*(v38 + 8))(v25, v36);
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_112();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO19ScheduledCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO19ScheduledCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_19_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO22InternalToolCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO22InternalToolCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_23_0(v30, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO28AvailabilityChangeCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO28AvailabilityChangeCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_7_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO17UnknownCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO17UnknownCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_8_2();
  v34 = v25[4];
  OUTLINED_FUNCTION_28_0(v25, v25[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.CodingKeys();
  OUTLINED_FUNCTION_67_0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v62)
  {
    OUTLINED_FUNCTION_87();
    _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC26AppleIntelligenceReporting0jK18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLO_Tt1g5();
    if (v36 != v35 >> 1)
    {
      OUTLINED_FUNCTION_61_0();
      OUTLINED_FUNCTION_116();
      if (v42 == v43)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_118(v37, v38, v39, v40, v41);
      specialized ArraySlice.subscript.getter();
      OUTLINED_FUNCTION_129();
      if (v24 == v34 >> 1)
      {
        OUTLINED_FUNCTION_117();
        switch(v44)
        {
          case 1:
            OUTLINED_FUNCTION_119();
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.AvailabilityChangeCodingKeys();
            OUTLINED_FUNCTION_27_0(&unk_1F402FA40, &a12);
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2:
            OUTLINED_FUNCTION_122();
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.InternalToolCodingKeys();
            OUTLINED_FUNCTION_27_0(&unk_1F402FA60, &a13);
            swift_unknownObjectRelease();
LABEL_14:
            v45 = OUTLINED_FUNCTION_88();
            goto LABEL_15;
          case 3:
            OUTLINED_FUNCTION_91();
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.ScheduledCodingKeys();
            OUTLINED_FUNCTION_44_0();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            swift_unknownObjectRelease();
            v55 = OUTLINED_FUNCTION_86();
            v56(v55);
            goto LABEL_16;
          default:
            a11 = 0;
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger.UnknownCodingKeys();
            OUTLINED_FUNCTION_27_0(&unk_1F402FA20, &a11);
            swift_unknownObjectRelease();
            v45 = OUTLINED_FUNCTION_88();
            v47 = v61;
LABEL_15:
            v46(v45, v47);
LABEL_16:
            v57 = OUTLINED_FUNCTION_63_0();
            v58(v57);
            MEMORY[0] = v60;
            __swift_destroy_boxed_opaque_existential_1(0);
            break;
        }

        goto LABEL_10;
      }
    }

    v48 = OUTLINED_FUNCTION_132();
    OUTLINED_FUNCTION_134(v48, MEMORY[0x1E69E6B28]);
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v50 = &type metadata for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.Trigger;
    v51 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_65(v51);
    OUTLINED_FUNCTION_42();
    (*(v52 + 104))(v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    v53 = OUTLINED_FUNCTION_86();
    v54(v53);
    v25 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_10:
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState.SubscriptionAction.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6269726373627573 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7263736275736E75 && a2 == 0xEB00000000656269)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}